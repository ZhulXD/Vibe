# MinHub: memory saver for Ren'Py on phones. Written into the game folder by MinHub at launch.
#
# What it does, and why (measured on a device, see docs/renpy-memory.md):
#
#  1. Live2D models load when a character is first shown, not when the game defines the image.
#     Ren'Py loads every `image x = Live2D(...)` model during init. A model is roughly the size of
#     its .moc3 file -- 60 MB each in one game -- so three definitions cost 265 MB before the title
#     screen, whether or not those characters ever appeared.
#  2. Live2D models that have not been drawn for a while are released. Ren'Py keeps every model it
#     ever loaded until the game quits. Loading one back takes about 0.1 s.
#  3. The image cache budget follows the phone's RAM instead of Ren'Py's desktop default (400 MB of
#     textures, which on a phone is system RAM).
#  4. When the phone runs low on memory, idle models are released sooner and, as a last resort,
#     Ren'Py's caches are flushed -- a short stutter instead of the game being killed.
#  5. GPU textures are freed again on Ren'Py 7 runtimes built with Cython 3 (the 7.8.7 core). There
#     Python 2 never runs GLTexture.__del__, so no texture is ever deleted: a title screen playing a
#     webm leaked 30 textures, ~240 MB, per second and the phone killed the game within a minute.
#     This one is a bug fix, so it stays on even when the memory saver is switched off.
#
#  6. Translations that are not in use are not loaded (MinHub moves their tl/ folders aside before
#     launch). Switching to one asks the player to reload the game, which keeps their progress.
#
# Everything is guarded: if anything here fails, the game runs exactly as it would without MinHub.
# Set MINHUB_RENPY_MEMORY_SAVER=0 in the environment to turn it off.

init -1500 python hide:
    def install():
        import sys
        import types

        # Ren'Py 7 compiles this block with unicode_literals and even rebinds str to unicode, but
        # Python 2 wants byte strings for module names and compile(); encode explicitly there.
        def native(text):
            return text.encode("ascii") if sys.version_info[0] == 2 else text

        name = native("_minhub_memory")
        if name in sys.modules:
            # An in-process restart (reload, utter_restart) resets Ren'Py's modules; patch them again.
            module = sys.modules[name]
            module.install(renpy, config)
            return module

        source = r'''
import gc
import os
import time

MB = 1024 * 1024
log_prefix = "[MinHub memory] "


def log(message):
    try:
        print(log_prefix + message)
    except Exception:
        pass


def meminfo_mb(field):
    try:
        with open("/proc/meminfo") as f:
            for line in f:
                if line.startswith(field):
                    return int(line.split()[1]) // 1024
    except Exception:
        pass
    return -1


def rss_mb():
    try:
        with open("/proc/self/status") as f:
            for line in f:
                if line.startswith("VmRSS:"):
                    return int(line.split()[1]) // 1024
    except Exception:
        pass
    return -1


def image_cache_budget_mb(total_mb):
    """
    Largest image cache, in MB, for a phone with total_mb of RAM.

    Above 8 GB this is Ren'Py's own default. It is still a cap there, because the limit is what
    stops a game that set config.image_cache_size = 1024 from filling the phone.
    """
    if total_mb <= 0:
        return 400
    if total_mb <= 3 * 1024:
        return 128
    if total_mb <= 4 * 1024:
        return 160
    if total_mb <= 6 * 1024:
        return 224
    if total_mb <= 8 * 1024:
        return 300
    return 400


def effective_image_cache_mb(image_cache_size, image_cache_size_mb, screen_width, screen_height):
    """
    The cache limit Ren'Py will actually use, in MB, mirroring renpy.display.im.Cache.init().

    config.image_cache_size, when set, wins over image_cache_size_mb and counts screens:
    2 * size * width * height pixels at 4 bytes each. Games copied the old advice of 1024 for it,
    which at 1920x1080 is about 17 GB -- no limit at all -- and Ren'Py 6.99.14-era games get 16
    from renpy/common/00compat.rpy.
    """
    if image_cache_size is not None:
        return 2 * image_cache_size * screen_width * screen_height * 4 // MB
    if image_cache_size_mb is None:
        return None
    return image_cache_size_mb


# Where MinHub writes smaller copies of oversized Live2D textures, mirroring the original paths.
TEXTURE_CACHE_PREFIX = "minhub_cache/live2d/"


class RecorderMiss(Exception):
    """Live2D.__init__ needed more from the model than its setup calls; load it for real."""


class Recorder(object):
    """
    Stands in for a Live2D model while its image is being defined.

    Ren'Py's Live2D.__init__ loads the model only to call apply_nonexclusive / apply_aliases /
    apply_seamless and to set a few callbacks on it. Those are recorded here and replayed onto the
    model whenever it is really loaded -- including after it has been released and loaded again.
    If a model for the same definition is already loaded, the calls are also made on it at once,
    exactly as Ren'Py would have.
    """

    def __init__(self, saver, definition, target):
        object.__setattr__(self, "_saver", saver)
        object.__setattr__(self, "_definition", definition)
        object.__setattr__(self, "_target", target)

    def __getattr__(self, name):
        if name.startswith("apply_"):
            def record(*args, **kwargs):
                saver = object.__getattribute__(self, "_saver")
                definition = object.__getattribute__(self, "_definition")
                target = object.__getattribute__(self, "_target")
                saver.record(definition, ("call", name, args, kwargs))
                if target is not None:
                    getattr(target, name)(*args, **kwargs)
            return record
        raise RecorderMiss(name)

    def __setattr__(self, name, value):
        saver = object.__getattribute__(self, "_saver")
        definition = object.__getattribute__(self, "_definition")
        target = object.__getattribute__(self, "_target")
        saver.record(definition, ("set", name, value, None))
        if target is not None:
            setattr(target, name, value)


class Live2DSaver(object):

    def __init__(self, live2d_module):
        self.module = live2d_module
        self.Live2D = live2d_module.Live2D
        self.cache = live2d_module.common_cache
        # Ren'Py 7.7+ keys models by (filename, default_fade) and keeps default_fade on the class;
        # earlier versions key by filename alone.
        self.tuple_keys = "default_fade" in self.Live2D.__dict__
        self.defining = None
        self.definitions = []       # [(filename, fade, [ops])] in definition order
        self.first_fade = {}        # filename -> default_fade of its first definition
        self.last_used = {}         # key -> time the model was last asked for
        self.loads = 0
        self.releases = 0

    # ---- recording definitions -----------------------------------------------------------------

    def fade_of(self, displayable, args):
        if args and isinstance(args[0], (int, float)) and not isinstance(args[0], bool):
            return args[0]
        fade = displayable.__dict__.get("default_fade", None)
        if fade is not None:
            return fade
        return self.first_fade.get(displayable.filename, 1.0)

    def key_for(self, filename, fade):
        return (filename, fade) if self.tuple_keys else filename

    def record(self, definition, op):
        # Showing a Live2D image with attributes builds a new Live2D through __init__, so the same
        # setup can arrive many times over a session. Keep one copy per model, or the list grows
        # with every show and every reload replays it again.
        for def_filename, def_fade, ops in self.definitions:
            if def_filename != definition[0] or def_fade != definition[1]:
                continue
            for existing in ops:
                try:
                    if existing == op:
                        return
                except Exception:
                    pass
        ops = definition[2]
        if not ops:
            self.definitions.append(definition)
        ops.append(op)

    def recorder(self, displayable, args):
        filename = displayable.filename
        fade = self.fade_of(displayable, args)
        self.first_fade.setdefault(filename, fade)
        definition = (filename, fade, [])
        target = self.cache.get(self.key_for(filename, fade if self.tuple_keys else None))
        return Recorder(self, definition, target)

    # ---- loading and releasing -----------------------------------------------------------------

    def load(self, displayable, args):
        filename = displayable.filename
        fade = self.fade_of(displayable, args)
        key = self.key_for(filename, fade)
        common = self.cache.get(key, None)
        if common is None:
            before = rss_mb()
            started = time.time()
            common = self.module.Live2DCommon(filename, fade)
            swapped = self.use_smaller_textures(common)
            for def_filename, def_fade, ops in self.definitions:
                if def_filename != filename or (self.tuple_keys and def_fade != fade):
                    continue
                for kind, name, value, kwargs in ops:
                    if kind == "call":
                        getattr(common, name)(*value, **kwargs)
                    else:
                        setattr(common, name, value)
            self.cache[key] = common
            self.loads += 1
            log("loaded Live2D %s (+%d MB, %.2fs%s)" % (
                filename, rss_mb() - before, time.time() - started,
                ", %d smaller texture(s)" % swapped if swapped else ""))
        self.last_used[key] = time.time()
        return common

    def use_smaller_textures(self, common):
        """
        Points the model at MinHub's smaller copies of its textures, where they exist.

        Live2D atlases are often 8192x8192: 256 MB once decoded, with several copies alive while
        it is uploaded -- one character appearing pushed a game from 603 to 1279 MB. Many phones
        cannot even use a texture that large. MinHub writes 4096 copies before launch; texture
        coordinates in a model are relative, so the model draws the same from either.
        """
        import renpy
        try:
            names = common.model_json["FileReferences"]["Textures"]
        except Exception:
            return 0
        im = renpy.display.im
        swapped = 0
        for index, name in enumerate(names):
            try:
                # MinHub writes copies by their path in the game folder. A model named relative to
                # images/ (Live2D("sprites/eileen")) has a base without that prefix, so try both.
                smaller = None
                for candidate in (TEXTURE_CACHE_PREFIX + common.base + name,
                                  TEXTURE_CACHE_PREFIX + "images/" + common.base + name):
                    if renpy.loader.loadable(candidate):
                        smaller = candidate
                        break
                if smaller is None:
                    continue
                replacement = renpy.easy.displayable(smaller)
                original = common.textures[index]
                # Ren'Py 7.7+ wraps each texture in unoptimized_texture; keep the same wrapping.
                if hasattr(im, "unoptimized_texture") and not isinstance(original, im.Image):
                    replacement = im.unoptimized_texture(replacement)
                common.textures[index] = replacement
                swapped += 1
            except Exception as e:
                log("could not use smaller texture for %s: %r" % (name, e))
        return swapped

    def release_idle(self, idle_seconds):
        now = time.time()
        released = []
        for key in list(self.cache.keys()):
            if now - self.last_used.get(key, 0) >= idle_seconds:
                del self.cache[key]
                self.last_used.pop(key, None)
                released.append(key)
        if released:
            self.releases += len(released)
            before = rss_mb()
            gc.collect(0)
            log("released %d idle Live2D model(s) %r, rss %d -> %d MB" % (len(released), released, before, rss_mb()))
        return len(released)

    # ---- installing ----------------------------------------------------------------------------

    def install(self):
        saver = self
        Live2D = self.Live2D
        # Classes survive Ren'Py's in-process restarts (reload, utter_restart) while this module is
        # installed again, so always wrap Ren'Py's own __init__, never a previous install's.
        original_init = Live2D.__dict__.get("_minhub_original_init")
        if original_init is None:
            original_init = Live2D.__dict__.get("__init__", Live2D.__init__)
            Live2D._minhub_original_init = original_init

        def create_common(self, *args):
            if saver.defining is self:
                return saver.recorder(self, args)
            return saver.load(self, args)

        def common(self):
            if saver.defining is self:
                return saver.recorder(self, ())
            return saver.load(self, ())

        def __init__(self, *args, **kwargs):
            outer = saver.defining
            saver.defining = self
            try:
                try:
                    original_init(self, *args, **kwargs)
                except RecorderMiss as miss:
                    log("Live2D %r needs its model at definition; loading it now (%s)" % (getattr(self, "filename", "?"), miss))
                    saver.defining = None
                    original_init(self, *args, **kwargs)
            finally:
                saver.defining = outer
            # Never pin the model to the displayable, so a released model can really be freed.
            self.common_cache = None

        Live2D.create_common = create_common
        Live2D.common = property(common)
        Live2D.__init__ = __init__


class TextureLeakFix(object):
    """
    Deletes GL textures that Ren'Py 7.8.7 on Android leaks.

    renpy.gl2.gl2texture.GLTexture frees its texture in __del__, by queueing the number on its
    loader. GLTexture is a Cython class, so Ren'Py wraps it in the plain Python subclass Texture
    ("to make sure __del__ works"): Python 2 only calls __del__ on classes that have one in their
    dict. Cython 0.29 put GLTexture.__del__ there. Cython 3 compiles it into tp_finalize instead,
    which Python 2 never calls -- and the 7.8.7 runtime is built with Cython 3.0.11. Every texture,
    from every image and every movie frame, stays on the GPU.

    Giving Texture a __del__ again makes Python 2 call it. The loader's own queue is not reachable
    from Python, so numbers are queued here and deleted through renpy.uguu right after the next
    frame is drawn, on the thread and GL context that made them. Numbers from a loader that has
    since been replaced (display reset, app backgrounded) are dropped: that context is gone and
    its loader deleted everything when it quit.

    Only for Python 2. On Python 3 the original finalizer runs, and adding this would delete a
    texture twice -- possibly after its number was handed to a live one.
    """

    def __init__(self, gl2texture, uguu, draw_module, python2):
        self.gl2texture = gl2texture
        self.uguu = uguu
        self.draw_module = draw_module      # the module holding .draw (renpy.display)
        self.python2 = python2
        self.pending = []                   # (loader, number)
        self.deleted = 0
        self.installed = False

    def needed(self):
        Texture = getattr(self.gl2texture, "Texture", None)
        return self.python2 and Texture is not None and not hasattr(Texture, "__del__")

    def install(self):
        if not self.needed():
            return False
        fix = self

        def __del__(texture):
            try:
                if texture.loaded and texture.number:
                    draw = fix.draw_module.draw
                    loader = getattr(draw, "texture_loader", None)
                    if loader is not None:
                        fix.pending.append((loader, texture.number))
            except Exception:
                pass    # never raise from a finalizer, least of all at shutdown

        self.gl2texture.Texture.__del__ = __del__
        self.installed = True
        return True

    def flush(self):
        """Deletes queued textures. Call only right after a frame, with the GL context current."""
        if not self.pending:
            return 0
        pending = self.pending
        self.pending = []
        draw = self.draw_module.draw
        current = getattr(draw, "texture_loader", None)
        numbers = [number for loader, number in pending if loader is current]
        if not numbers:
            return 0
        self.uguu.glDeleteTextures(len(numbers), self.uguu.IntBuffer(numbers))
        self.deleted += len(numbers)
        return len(numbers)


def install_texture_leak_fix(renpy):
    """Installs TextureLeakFix when the runtime needs it. Independent of the memory saver switch."""
    import sys
    try:
        import renpy.gl2.gl2texture as gl2texture
        from renpy.uguu import uguu
    except Exception as e:
        log("texture fix not available: %r" % (e,))
        return None
    # After an in-process restart Texture still has the __del__ installed before; keep that fix.
    fix = getattr(getattr(gl2texture, "Texture", None), "_minhub_fix", None)
    if fix is None:
        fix = TextureLeakFix(gl2texture, uguu, renpy.display, sys.version_info[0] == 2)
        if not fix.install():
            return None
        gl2texture.Texture._minhub_fix = fix

    Interface = renpy.display.core.Interface
    if getattr(Interface.draw_screen, "_minhub_flushes", False):
        return fix
    original = Interface.draw_screen

    def draw_screen(self, *args, **kwargs):
        try:
            return original(self, *args, **kwargs)
        finally:
            try:
                fix.flush()
            except Exception as e:
                log("texture flush failed: %r" % (e,))
                fix.pending = []

    draw_screen._minhub_flushes = True
    Interface.draw_screen = draw_screen
    log("texture leak fix installed (Texture had no __del__ under Python 2)")
    return fix


class MemorySaver(object):

    CHECK_EVERY = 2.0

    def __init__(self, renpy, config):
        self.renpy = renpy
        self.config = config
        self.total_mb = meminfo_mb("MemTotal:")
        self.live2d = None
        self.last_check = 0.0
        self.last_flush = 0.0

    def install(self):
        try:
            import renpy.gl2.live2d as live2d_module
            if hasattr(live2d_module, "common_cache") and hasattr(live2d_module.Live2D, "create_common"):
                saver = Live2DSaver(live2d_module)
                saver.install()
                self.live2d = saver
        except Exception as e:
            log("Live2D saver not installed: %r" % (e,))
        log("installed (RAM %d MB, lazy Live2D %s)" % (self.total_mb, "on" if self.live2d else "off"))

    def after_game_init(self):
        """Runs after the game's own init code, so the game's settings are known."""
        config = self.config
        budget = image_cache_budget_mb(self.total_mb)
        size = getattr(config, "image_cache_size", None)
        size_mb = getattr(config, "image_cache_size_mb", None)
        try:
            current = effective_image_cache_mb(size, size_mb, config.screen_width, config.screen_height)
        except Exception:
            current = None
        if current is None or current > budget:
            # Clearing image_cache_size is what makes Ren'Py read image_cache_size_mb at all.
            config.image_cache_size = None
            config.image_cache_size_mb = budget
            log("image cache %s -> %d MB for this phone" % (
                "image_cache_size=%s (%s MB)" % (size, current) if size is not None else "%s MB" % current,
                budget))
        config.periodic_callbacks.append(self.periodic)

    def periodic(self):
        now = time.time()
        if now - self.last_check < self.CHECK_EVERY:
            return
        self.last_check = now
        try:
            self.check(now)
        except Exception as e:
            log("check failed: %r" % (e,))

    def check(self, now):
        available = meminfo_mb("MemAvailable:")
        total = self.total_mb
        low = available >= 0 and total > 0 and available < max(600, total * 12 // 100)
        critical = available >= 0 and total > 0 and available < max(350, total * 7 // 100)

        if self.live2d is not None:
            idle = 1.0 if critical else (4.0 if low else 20.0)
            self.live2d.release_idle(idle)

        if critical and now - self.last_flush > 30:
            self.last_flush = now
            before = rss_mb()
            self.renpy.exports.free_memory()
            log("memory critical (%d MB available): flushed caches, rss %d -> %d MB" % (available, before, rss_mb()))


# ---- translations ----------------------------------------------------------------------------------
#
# Every tl/<language> folder is loaded at startup, whichever language is in use: one game spent
# 85 MB on four translations nobody was reading. Before launch MinHub moves the folders of unused
# languages into game/.minhub_tl_parked/ (Ren'Py skips names starting with "."), going by the
# state file written here. Switching to a moved language needs the folder back and the script
# loaded again, so the player is told the game will reload; Ren'Py's reload keeps their progress.
#
# Only translations that are nothing but translations are moved. A tl file that also defines a
# screen, an image, a label or init code does something in every language, so its language stays.

PARK_DIR = ".minhub_tl_parked"
STATE_FILE = "state.txt"


def native_str(text):
    """Python 2 APIs such as jnius want byte strings; Ren'Py 7 hands us unicode."""
    if bytes is str and not isinstance(text, bytes):
        return text.encode("utf-8")
    return text


def tl_language_of(filename):
    """The language of a script under tl/<language>/, or None."""
    if not filename:
        return None
    parts = filename.replace("\\", "/").split("/")
    for i in range(len(parts) - 2):
        if parts[i] == "tl":
            return parts[i + 1]
    return None


def translation_only(node, statements=None):
    """
    True when a statement has no effect unless its language is selected. statements is
    renpy.statements, used to ask whether a user statement (nvl clear, voice...) does anything at
    init: on Ren'Py 7 UserStatement.get_init() answers yes for every one of them.
    """
    kind = type(node).__name__
    if kind in ("Label", "EarlyPython"):
        return False
    # Ren'Py 7 parses every user statement while running init; Ren'Py 8 leaves the ones without
    # init work unparsed, and there get_init() below is accurate.
    parsed = getattr(node, "parsed", None)
    if kind == "UserStatement" and statements is not None and parsed is not None:
        try:
            return not any(statements.get(key, parsed) for key in ("init", "execute_init", "execute_default"))
        except Exception:
            return False
    if kind == "Init":
        # `translate x strings:` is an Init of TranslateString statements; anything else in an
        # init block (define, screen, image, python...) runs in every language.
        return all(type(child).__name__ == "TranslateString" for child in (node.block or ()))
    get_init = getattr(node, "get_init", None)
    try:
        return get_init is None or get_init() is None
    except Exception:
        return False


def unsafe_languages(nodes, reasons=None, statements=None):
    """
    Languages whose tl/<language> scripts do something besides translating. When reasons is a
    dict, the first such statement of each language is recorded there, for the log.
    """
    unsafe = set()
    languages = {}
    for node in nodes:
        filename = getattr(node, "filename", None)
        if filename not in languages:
            languages[filename] = tl_language_of(filename)
        language = languages[filename]
        if language is None or language in unsafe:
            continue
        if not translation_only(node, statements):
            unsafe.add(language)
            if reasons is not None:
                reasons[language] = "%s at %s:%s" % (type(node).__name__, filename, getattr(node, "linenumber", "?"))
    return unsafe


def format_state(language, parkable, unsafe):
    lines = ["# MinHub: which translations this game can start without. Read by RenpyTranslations.kt.",
             "language=" + (language or "")]
    lines.extend("parkable=" + name for name in sorted(parkable))
    lines.extend("unsafe=" + name for name in sorted(unsafe))
    return "\n".join(lines) + "\n"


def parse_state(text):
    """(language, parkable, unsafe) from a state file; language is None for the default language."""
    language = None
    parkable = set()
    unsafe = set()
    for line in text.splitlines():
        key, sep, value = line.strip().partition("=")
        if not sep or key.startswith("#"):
            continue
        if key == "language":
            language = value or None
        elif key == "parkable" and value:
            parkable.add(value)
        elif key == "unsafe" and value:
            unsafe.add(value)
    return language, parkable, unsafe


class AndroidAsker(object):
    """Asks through MinHub's own dialog, which reads well whatever fonts the game has."""

    PENDING, OK, CANCEL = 1, 2, 3

    def __init__(self):
        self.activity = None

    def activity_class(self):
        if self.activity is None:
            from jnius import autoclass
            self.activity = autoclass(native_str("org.renpy.android.PythonSDLActivity"))
        return self.activity

    def ask(self):
        self.activity_class().askLanguageReload()

    def answer(self):
        """True for OK, False for Cancel, None while there is no answer."""
        value = self.activity_class().languageReloadAnswer()
        if value == self.OK:
            return True
        if value == self.CANCEL:
            return False
        return None


class ScreenAsker(object):
    """Ren'Py's own yes/no screen, where MinHub's dialog is not available."""

    MESSAGE = "The game needs to reload to use this language. Reload now?"

    def __init__(self, renpy):
        self.renpy = renpy
        self.value = None

    def set(self, value):
        self.value = value

    def ask(self):
        self.value = None
        store = self.renpy.store
        store.layout.yesno_screen(self.MESSAGE,
                                  yes=store.Function(self.set, True),
                                  no=store.Function(self.set, False))

    def answer(self):
        value, self.value = self.value, None
        return value


class Translations(object):

    CLASSIFY_AFTER = 3.0

    def __init__(self, gamedir, askers=(), statements=None):
        self.statements = statements
        self.park_root = os.path.join(gamedir, PARK_DIR)
        self.tl_root = os.path.join(gamedir, "tl")
        self.askers = list(askers)
        self.asker = None
        self.started_at = None
        self.language = None
        self.language_known = False
        self.unsafe = None          # languages loaded this run that must stay loaded
        self.written = None
        self.pending = None         # (language, previous language) while the player decides
        self.restart_pending = False

    # ---- folders -------------------------------------------------------------------------------

    def folders(self, root):
        try:
            names = os.listdir(root)
        except OSError:
            return set()
        return set(name for name in names if os.path.isdir(os.path.join(root, name)))

    def parked(self):
        return self.folders(self.park_root)

    def is_parked(self, language):
        return (language is not None
                and os.path.isdir(os.path.join(self.park_root, language))
                and not os.path.exists(os.path.join(self.tl_root, language)))

    def unpark(self, language):
        try:
            if not os.path.isdir(self.tl_root):
                os.makedirs(self.tl_root)
            os.rename(os.path.join(self.park_root, language), os.path.join(self.tl_root, language))
            log("restored translation %s" % language)
            return True
        except OSError as e:
            log("could not restore translation %s: %r" % (language, e))
            return False

    # ---- state ---------------------------------------------------------------------------------

    def read_state(self):
        try:
            with open(os.path.join(self.park_root, STATE_FILE), "rb") as f:
                return parse_state(f.read().decode("utf-8"))
        except (IOError, OSError, ValueError):
            return None, set(), set()

    def state_text(self, language, nodes):
        if self.unsafe is None:
            started = time.time()
            reasons = {}
            self.unsafe = unsafe_languages(nodes, reasons, self.statements)
            log("checked translations in %.2fs; must stay loaded: %s" % (
                time.time() - started,
                "; ".join("%s (%s)" % (name, reasons[name]) for name in sorted(reasons)) or "none"))
        _, previous_parkable, _ = self.read_state()
        loaded = self.folders(self.tl_root) - set(["None"])
        parkable = (loaded - self.unsafe) | (self.parked() & previous_parkable)
        return format_state(language, parkable, loaded & self.unsafe)

    def record(self, language):
        self.language = language
        self.language_known = True

    def write_state(self, nodes):
        """Writes the state for the current language; nodes are the loaded script's statements."""
        if not self.language_known:
            return False
        if not self.folders(self.tl_root) and not self.parked():
            return False
        text = self.state_text(self.language, nodes())
        if text == self.written:
            return False
        path = os.path.join(self.park_root, STATE_FILE)
        temporary = path + ".tmp"
        try:
            if not os.path.isdir(self.park_root):
                os.makedirs(self.park_root)
            with open(temporary, "wb") as f:
                f.write(text.encode("utf-8"))
            if os.name == "nt" and os.path.exists(path):
                os.remove(path)
            os.rename(temporary, path)
            self.written = text
            return True
        except (IOError, OSError) as e:
            log("could not write translation state: %r" % (e,))
            return False

    # ---- hooks ---------------------------------------------------------------------------------

    def started(self):
        return self.started_at is not None

    def interacted(self, *args):
        if self.started_at is None:
            self.started_at = time.time()

    def change_language(self, original, language, args, kwargs, current_language, persist=None):
        """
        Runs Ren'Py's change_language. If the language's folder is parked, restores it: at startup
        straight away, restarting once the game is on screen (poll); later only once the player agrees.

        The startup restart waits for the first interaction because Ren'Py cannot restart before
        its display exists: reload_all() calls draw.quit() on None and the game closes, and asking
        it to keep a renderer it does not have starts the game with no display at all.

        A choice the player makes is saved to persistent data at once (persist). Otherwise closing
        the app right after leaves Ren'Py starting in the old language while the state file already
        names the new one, and MinHub parks the language the game is about to start with.
        """
        ask = False
        previous = None
        if self.started() and persist is not None:
            try:
                previous_choice = current_language()
            except Exception:
                previous_choice = language
        else:
            previous_choice = language
        if self.is_parked(language):
            if not self.started():
                if self.unpark(language):
                    log("%s will be loaded by a restart once the game is on screen" % language)
                    self.restart_pending = True
            else:
                ask = True
                previous = current_language()
        rv = original(language, *args, **kwargs)
        self.record(language)
        if previous_choice != language:
            try:
                persist()
            except Exception as e:
                log("could not save the language choice: %r" % (e,))
        if ask:
            self.ask(language, previous)
        return rv

    def ask(self, language, previous):
        for asker in self.askers:
            try:
                asker.ask()
                self.asker = asker
                self.pending = (language, previous)
                return True
            except Exception as e:
                log("could not ask with %s: %r" % (type(asker).__name__, e))
        return False

    def poll(self, reload, revert, nodes, restart):
        """Call periodically. Acts on the player's answer and keeps the state file current."""
        if self.restart_pending and self.started():
            self.restart_pending = False
            self.write_state(nodes)
            log("restarting to load translation %s" % self.language)
            restart()
            return
        if self.pending is not None:
            answer = self.asker.answer()
            if answer is not None:
                language, previous = self.pending
                self.pending = None
                if answer and self.unpark(language):
                    self.write_state(nodes)
                    log("reloading to load translation %s" % language)
                    reload()
                    return
                log("switching back to %r" % (previous,))
                revert(previous)
                self.record(previous)
        if self.started_at is not None and time.time() - self.started_at >= self.CLASSIFY_AFTER:
            self.write_state(nodes)

    def known_languages(self, known):
        return set(known) | self.parked()


def install_translations(renpy, config):
    translations = Translations(config.gamedir, askers=(
        [AndroidAsker()] if getattr(renpy, "android", False) else []) + [ScreenAsker(renpy)],
        statements=renpy.statements)
    exports = renpy.exports

    def nodes():
        return list(renpy.game.script.namemap.values())

    def restart():
        exports.utter_restart()

    def reload():
        exports.reload_script()
        exports.utter_restart()     # reload_script returns without reloading during a replay

    change_original = getattr(exports.change_language, "_minhub_original", exports.change_language)
    known_original = getattr(exports.known_languages, "_minhub_original", exports.known_languages)

    def current_language():
        return renpy.game.preferences.language

    def change_language(language, *args, **kwargs):
        return translations.change_language(change_original, language, args, kwargs, current_language,
                                            persist=exports.save_persistent)

    def known_languages():
        return translations.known_languages(known_original())

    def revert(language):
        change_original(language)
        exports.save_persistent()

    def periodic():
        try:
            translations.poll(reload, revert, nodes, restart)
        except Exception as e:
            if type(e).__name__ in ("UtterRestartException", "FullRestartException"):
                raise
            log("translation check failed: %r" % (e,))
            translations.pending = None

    change_language._minhub_original = change_original
    known_languages._minhub_original = known_original
    exports.change_language = change_language
    exports.known_languages = known_languages
    config.interact_callbacks.append(translations.interacted)
    config.periodic_callbacks.append(periodic)
    parked = translations.parked()
    if parked:
        log("translations not loaded: %s" % ", ".join(sorted(parked)))
    return translations


saver = None
texture_fix = None
translations = None


def install(renpy, config):
    """Installs everything. Runs again after each in-process restart, which undoes module patches."""
    global saver, texture_fix, translations
    try:
        texture_fix = install_texture_leak_fix(renpy)
    except Exception as e:
        log("texture fix failed to install: %r" % (e,))
    if os.environ.get("MINHUB_RENPY_MEMORY_SAVER", "1") == "0":
        log("disabled by MINHUB_RENPY_MEMORY_SAVER=0")
        saver = None
        translations = None
        return None
    saver = MemorySaver(renpy, config)
    saver.install()
    translations = None
    return saver


def after_game_init(renpy, config):
    """Runs after the game's own init code, before the language is set up and the game starts."""
    global translations
    if saver is None:
        return
    saver.after_game_init()
    try:
        translations = install_translations(renpy, config)
    except Exception as e:
        translations = None
        log("translation loading not installed: %r" % (e,))
'''

        module = types.ModuleType(name)
        exec(compile(source, native("minhub_memory.py"), native("exec")), module.__dict__)
        sys.modules[name] = module
        module.install(renpy, config)
        return module

    try:
        install()
    except Exception as error:
        print("[MinHub memory] not installed: %r" % (error,))

init 1500 python hide:
    try:
        import sys
        name = "_minhub_memory"
        module = sys.modules.get(name.encode("ascii") if sys.version_info[0] == 2 else name)
        if module is not None:
            module.after_game_init(renpy, config)
    except Exception as error:
        print("[MinHub memory] late setup failed: %r" % (error,))
