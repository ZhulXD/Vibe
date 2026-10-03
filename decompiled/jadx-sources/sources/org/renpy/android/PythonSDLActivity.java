package org.renpy.android;

import A1.v0;
import C1.ViewOnClickListenerC0075j;
import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.MediaStore;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.RenpySaveIsolation;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import org.godotengine.godot.j;
import org.libsdl.app.SDLActivity;
import org.libsdl.app.SDLSurface;
import p064y1.AbstractC0369e0;
import p064y1.AbstractC0372f0;
import p064y1.B1;
import p064y1.C0363c0;
import p064y1.E1;
import p064y1.F1;
import p064y1.L1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class PythonSDLActivity extends SDLActivity {
    public static final int LANGUAGE_RELOAD_CANCEL = 3;
    public static final int LANGUAGE_RELOAD_NONE = 0;
    public static final int LANGUAGE_RELOAD_OK = 2;
    public static final int LANGUAGE_RELOAD_PENDING = 1;
    private static final String URM_BUILD = "6";
    public static PythonSDLActivity mActivity;
    private static volatile int sLanguageReloadAnswer;
    private View mCheatBtn;
    private View mFloatingMenuBtn;
    private EditText mFontSizeEdit;
    public FrameLayout mFrameLayout;
    private View mLoadingOverlay;
    private Runnable mLoadingTick;
    private View mMenuOverlayPanel;
    public LinearLayout mVbox;
    ResourceManager resourceManager;
    public ImageView mPresplash = null;
    private String mGamePath = null;
    private int mGameId = -1;
    private final long mSessionStartMs = System.currentTimeMillis();
    private boolean mCheatActive = false;
    private final Handler mLoadingHandler = new Handler(Looper.getMainLooper());
    private volatile boolean mInterfaceReady = false;
    private v0 mLifecycleAdapter = null;
    public boolean mStopDone = true;
    public PowerManager.WakeLock wakeLock = null;

    private void applyEarlyWindowBackground() {
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("coverColor1");
        String stringExtra2 = intent.getStringExtra("coverColor2");
        String stringExtra3 = intent.getStringExtra("iconPath");
        int color = -15066578;
        if (stringExtra != null) {
            try {
                if (!stringExtra.isEmpty()) {
                    color = Color.parseColor(stringExtra);
                }
            } catch (Exception unused) {
            }
        }
        int color2 = -16381160;
        if (stringExtra2 != null) {
            try {
                if (!stringExtra2.isEmpty()) {
                    color2 = Color.parseColor(stringExtra2);
                }
            } catch (Exception unused2) {
            }
        }
        Drawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[]{color, color2});
        if (stringExtra3 != null && !stringExtra3.isEmpty()) {
            try {
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(stringExtra3);
                if (bitmapDecodeFile != null) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), bitmapDecodeFile);
                    bitmapDrawable.setGravity(17);
                    gradientDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, bitmapDrawable});
                }
            } catch (Exception unused3) {
            }
        }
        getWindow().setBackgroundDrawable(gradientDrawable);
    }

    private void applyFontSizeFromEdit() {
        int i3;
        EditText editText = this.mFontSizeEdit;
        if (editText == null) {
            return;
        }
        try {
            i3 = Integer.parseInt(editText.getText().toString().trim());
        } catch (Exception unused) {
            i3 = 0;
        }
        getSharedPreferences("minhub_prefs", 0).edit().putInt("renpy_font_px", Math.max(0, Math.min(200, i3))).apply();
        Toast.makeText(this, getString(R.string.renpy_font_restart), 0).show();
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(this.mFontSizeEdit.getWindowToken(), 0);
        }
        this.mFontSizeEdit.clearFocus();
    }

    public static void askLanguageReload() {
        PythonSDLActivity pythonSDLActivity = mActivity;
        if (pythonSDLActivity == null || pythonSDLActivity.isFinishing()) {
            sLanguageReloadAnswer = 2;
        } else {
            sLanguageReloadAnswer = 1;
            pythonSDLActivity.runOnUiThread(new a(pythonSDLActivity, 1));
        }
    }

    private void bindMenuOverlay(View view) {
        final int i3 = 4;
        view.setOnClickListener(new View.OnClickListener(this) { // from class: org.renpy.android.c

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PythonSDLActivity f5194c;

            {
                this.f5194c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i3) {
                    case 0:
                        this.f5194c.lambda$bindMenuOverlay$5(view2);
                        break;
                    case 1:
                        this.f5194c.lambda$bindMenuOverlay$8(view2);
                        break;
                    case 2:
                        this.f5194c.lambda$bindMenuOverlay$9(view2);
                        break;
                    case 3:
                        this.f5194c.lambda$bindMenuOverlay$10(view2);
                        break;
                    default:
                        this.f5194c.lambda$bindMenuOverlay$3(view2);
                        break;
                }
            }
        });
        final int i4 = 0;
        view.findViewById(R.id.layout_menu_card).setOnClickListener(new b(i4));
        setupDraggableMenuCard(view);
        view.findViewById(R.id.btn_menu_screenshot).setOnClickListener(new View.OnClickListener(this) { // from class: org.renpy.android.c

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PythonSDLActivity f5194c;

            {
                this.f5194c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i4) {
                    case 0:
                        this.f5194c.lambda$bindMenuOverlay$5(view2);
                        break;
                    case 1:
                        this.f5194c.lambda$bindMenuOverlay$8(view2);
                        break;
                    case 2:
                        this.f5194c.lambda$bindMenuOverlay$9(view2);
                        break;
                    case 3:
                        this.f5194c.lambda$bindMenuOverlay$10(view2);
                        break;
                    default:
                        this.f5194c.lambda$bindMenuOverlay$3(view2);
                        break;
                }
            }
        });
        Button button = (Button) view.findViewById(R.id.btn_menu_cheat);
        button.setOnClickListener(new ViewOnClickListenerC0075j(23, this, button));
        this.mFontSizeEdit = (EditText) view.findViewById(R.id.et_font_size);
        int i5 = getSharedPreferences("minhub_prefs", 0).getInt("renpy_font_px", 0);
        if (i5 > 0) {
            this.mFontSizeEdit.setText(String.valueOf(i5));
        }
        this.mFontSizeEdit.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.renpy.android.d
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i6, KeyEvent keyEvent) {
                return this.b.lambda$bindMenuOverlay$7(textView, i6, keyEvent);
            }
        });
        final int i6 = 1;
        view.findViewById(R.id.btn_font_apply).setOnClickListener(new View.OnClickListener(this) { // from class: org.renpy.android.c

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PythonSDLActivity f5194c;

            {
                this.f5194c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i6) {
                    case 0:
                        this.f5194c.lambda$bindMenuOverlay$5(view2);
                        break;
                    case 1:
                        this.f5194c.lambda$bindMenuOverlay$8(view2);
                        break;
                    case 2:
                        this.f5194c.lambda$bindMenuOverlay$9(view2);
                        break;
                    case 3:
                        this.f5194c.lambda$bindMenuOverlay$10(view2);
                        break;
                    default:
                        this.f5194c.lambda$bindMenuOverlay$3(view2);
                        break;
                }
            }
        });
        final int i7 = 2;
        view.findViewById(R.id.btn_font_reset).setOnClickListener(new View.OnClickListener(this) { // from class: org.renpy.android.c

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PythonSDLActivity f5194c;

            {
                this.f5194c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i7) {
                    case 0:
                        this.f5194c.lambda$bindMenuOverlay$5(view2);
                        break;
                    case 1:
                        this.f5194c.lambda$bindMenuOverlay$8(view2);
                        break;
                    case 2:
                        this.f5194c.lambda$bindMenuOverlay$9(view2);
                        break;
                    case 3:
                        this.f5194c.lambda$bindMenuOverlay$10(view2);
                        break;
                    default:
                        this.f5194c.lambda$bindMenuOverlay$3(view2);
                        break;
                }
            }
        });
        final int i8 = 3;
        view.findViewById(R.id.btn_menu_exit).setOnClickListener(new View.OnClickListener(this) { // from class: org.renpy.android.c

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PythonSDLActivity f5194c;

            {
                this.f5194c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i8) {
                    case 0:
                        this.f5194c.lambda$bindMenuOverlay$5(view2);
                        break;
                    case 1:
                        this.f5194c.lambda$bindMenuOverlay$8(view2);
                        break;
                    case 2:
                        this.f5194c.lambda$bindMenuOverlay$9(view2);
                        break;
                    case 3:
                        this.f5194c.lambda$bindMenuOverlay$10(view2);
                        break;
                    default:
                        this.f5194c.lambda$bindMenuOverlay$3(view2);
                        break;
                }
            }
        });
    }

    private void closeMenuOverlay() {
        View view = this.mMenuOverlayPanel;
        if (view != null) {
            view.setVisibility(8);
        }
        if (this.mFontSizeEdit != null) {
            InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(this.mFontSizeEdit.getWindowToken(), 0);
            }
            this.mFontSizeEdit.clearFocus();
        }
    }

    private void hideSystemBars() {
        View decorView = getWindow().getDecorView();
        if (Build.VERSION.SDK_INT < 30) {
            decorView.setSystemUiVisibility(5894);
            return;
        }
        getWindow().setDecorFitsSystemWindows(false);
        WindowInsetsController windowInsetsController = decorView.getWindowInsetsController();
        if (windowInsetsController != null) {
            windowInsetsController.hide(WindowInsets.Type.systemBars());
            windowInsetsController.setSystemBarsBehavior(2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0064 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private void injectDefaultDejaVuFont(File file) {
        if (file == null || !file.isDirectory()) {
            return;
        }
        File file2 = new File(file, "DejaVuSans.ttf");
        if (file2.isFile()) {
            return;
        }
        try {
            InputStream inputStreamOpen = getAssets().open("x-renpy/x-common/x-DejaVuSans.ttf");
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[16384];
                    while (true) {
                        int i3 = inputStreamOpen.read(bArr);
                        if (i3 == -1) {
                            Log.i("MinHub-Font", "Injected fallback DejaVuSans.ttf into " + file);
                            fileOutputStream.close();
                            inputStreamOpen.close();
                            return;
                        }
                        fileOutputStream.write(bArr, 0, i3);
                        if (inputStreamOpen != null) {
                            try {
                                inputStreamOpen.close();
                            } catch (Throwable th) {
                                th.addSuppressed(th);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                if (inputStreamOpen != null) {
                    inputStreamOpen.close();
                }
                throw th4;
            }
        } catch (IOException e2) {
            Log.e("MinHub-Font", "Could not inject fallback DejaVuSans.ttf", e2);
        }
    }

    private void injectFontRpy(File file, int i3) {
        if (file == null || !file.exists()) {
            return;
        }
        File file2 = new File(file, "minhub_font.rpy");
        if (i3 <= 0) {
            file2.delete();
        } else if (writeRpyIfChanged(file2, "init 999 python:\n    import os as _mh_os\n    _mh_px = 0\n    try:\n        _mh_px = int(_mh_os.environ.get(\"MINHUB_FONT_SIZE\", \"0\"))\n    except Exception:\n        pass\n    if _mh_px > 0:\n        def _mh_apply_fs():\n            try:\n                style.default.size = _mh_px\n            except Exception:\n                pass\n            try:\n                _mh_base = float(style.default.size or 22)\n                _preferences.font_size = float(_mh_px) / _mh_base\n            except Exception:\n                pass\n        _mh_apply_fs()\n        _mh_fs_done = [False]\n        def _mh_fs_cb():\n            if not _mh_fs_done[0]:\n                _mh_fs_done[0] = True\n                _mh_apply_fs()\n        try:\n            config.interact_callbacks.append(_mh_fs_cb)\n        except Exception:\n            pass\n")) {
            Log.i("MinHub-Font", "Injected minhub_font.rpy (px=" + i3 + ")");
        }
    }

    private void injectMemorySaverRpy(File file) {
        if (file == null || !file.isDirectory()) {
            return;
        }
        try {
            InputStream inputStreamOpen = getAssets().open("renpy/zzz_minhub_memory.rpy");
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[16384];
                while (true) {
                    int i3 = inputStreamOpen.read(bArr);
                    if (i3 == -1) {
                        writeRpyIfChanged(new File(file, "zzz_minhub_memory.rpy"), byteArrayOutputStream.toString("UTF-8"));
                        inputStreamOpen.close();
                        return;
                    }
                    byteArrayOutputStream.write(bArr, 0, i3);
                    Log.e("MinHub-Renpy", "Could not inject the memory saver", e);
                }
            } catch (Throwable th) {
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e2) {
            Log.e("MinHub-Renpy", "Could not inject the memory saver", e2);
        }
    }

    private void injectSetTimerCompatRpy(File file) {
        if (file != null && file.exists() && writeRpyIfChanged(new File(file, "minhub_settimer_compat.rpy"), "init -1100 python hide:\n    def _mh_patch_set_timer(_mod):\n        try:\n            _orig = _mod.set_timer\n        except Exception:\n            return\n        if getattr(_orig, \"_mh_patched\", False):\n            return\n        def _st(*a, **k):\n            if \"once\" in k:\n                _o = k.pop(\"once\")\n                if \"loops\" not in k:\n                    k[\"loops\"] = 1 if _o else 0\n            try:\n                return _orig(*a, **k)\n            except TypeError:\n                k.pop(\"loops\", None)\n                return _orig(*a, **k)\n        try:\n            _st._mh_patched = True\n            _mod.set_timer = _st\n        except Exception:\n            pass\n    for _mn in (\"renpy.pygame.pygame_time\", \"pygame_sdl2.time\"):\n        try:\n            _m = __import__(_mn, fromlist=[\"set_timer\"])\n            _mh_patch_set_timer(_m)\n        except Exception:\n            pass\n")) {
            Log.i("MinHub-Renpy", "Injected minhub_settimer_compat.rpy");
        }
    }

    private void injectStoreCompatRpy(File file) {
        if (file != null && file.exists() && writeRpyIfChanged(new File(file, "zzz_minhub_compat.rpy"), "init -1100 python hide:\n    try:\n        from renpy.display.viewport import VPGrid as _MhVPGrid\n        if not getattr(_MhVPGrid, \"_mh_patched\", False):\n            _mh_orig_add = _MhVPGrid.add\n            def _mh_vpgrid_add(self, d):\n                try:\n                    _mh_orig_add(self, d)\n                except Exception as e:\n                    if \"overfull\" not in str(e).lower():\n                        raise\n                    n = len(self.children)\n                    grew = False\n                    for cn, rn in ((\"grid_cols\", \"grid_rows\"), (\"cols\", \"rows\")):\n                        c = getattr(self, cn, None)\n                        r = getattr(self, rn, None)\n                        if c:\n                            setattr(self, rn, (n + c - 1) // c)\n                            grew = True\n                            break\n                        if r:\n                            setattr(self, cn, (n + r - 1) // r)\n                            grew = True\n                            break\n                    if not grew:\n                        raise\n            _MhVPGrid.add = _mh_vpgrid_add\n            _MhVPGrid._mh_patched = True\n    except Exception:\n        pass\n\ninit -1500 python hide:\n    try:\n        import os, sys\n        import renpy.gl2.live2d as _mh_l2d\n        def _mh_l2d_log(m):\n            try:\n                import renpy.display.log as _mh_llog\n                _mh_llog.write(\"%s\", m)\n            except Exception:\n                pass\n        if not getattr(_mh_l2d, \"_mh_live2d_checked\", False):\n            _mh_l2d._mh_live2d_checked = True\n            _mh_model = getattr(_mh_l2d, \"live2dmodel\", None)\n            _mh_core_ok = False\n            _mh_exe = sys.executable or \"\"\n            _mh_plug = os.environ.get(\"MINHUB_RENPY_PLUGIN_DIR\", \"\")\n            _mh_l2d_log(\"MinHub: Live2D probe exe=[\" + _mh_exe + \"] plugdir=[\" + _mh_plug + \"]\")\n            _mh_cands = []\n            if _mh_exe and os.path.dirname(_mh_exe):\n                _mh_cands.append(os.path.join(os.path.dirname(_mh_exe), \"libLive2DCubismCore.so\"))\n            if _mh_plug:\n                _mh_cands.append(os.path.join(_mh_plug, \"libLive2DCubismCore.so\"))\n            _mh_cands.append(\"libLive2DCubismCore.so\")\n            if _mh_model is not None:\n                _mh_tried = []\n                for _mh_c in _mh_cands:\n                    _mh_ex = os.path.exists(_mh_c)\n                    _mh_ld = False\n                    if _mh_ex or _mh_c == \"libLive2DCubismCore.so\":\n                        try:\n                            _mh_ld = bool(_mh_model.load(_mh_c.encode(\"utf-8\")))\n                        except Exception as _mh_e:\n                            _mh_l2d_log(\"MinHub: Live2D load exc [\" + _mh_c + \"]: \" + str(_mh_e))\n                    _mh_tried.append(_mh_c + \" exists=\" + str(_mh_ex) + \" load=\" + str(_mh_ld))\n                    if _mh_ld:\n                        _mh_core_ok = True\n                        break\n                _mh_l2d_log(\"MinHub: Live2D tried: \" + \" | \".join(_mh_tried))\n                try:\n                    import ctypes as _mh_ct\n                    _mh_cdll_err = \"\"\n                    try:\n                        _mh_h = _mh_ct.CDLL(_mh_cands[1] if len(_mh_cands) > 1 else _mh_cands[0])\n                        _mh_cdll_err = \"CDLL-ok handle=\" + str(bool(_mh_h))\n                    except Exception as _mh_e2:\n                        _mh_cdll_err = \"CDLL-fail: \" + str(_mh_e2)\n                    _mh_l2d_log(\"MinHub: Live2D \" + _mh_cdll_err)\n                except Exception as _mh_e3:\n                    _mh_l2d_log(\"MinHub: Live2D ctypes missing: \" + str(_mh_e3))\n            _mh_l2d_log(\"MinHub: Live2D Cubism Core \" + (\"loaded\" if _mh_core_ok else \"missing\"))\n            if not _mh_core_ok:\n                def _mh_no_live2d(*a, **k):\n                    raise Exception(\"Live2D is not available: the Cubism Core library is missing.\")\n                _mh_l2d._has_live2d = False\n                _mh_l2d.init = _mh_no_live2d\n                _mh_l2d.onetime_init = _mh_no_live2d\n    except Exception:\n        pass\n\ninit -1100 python:\n    class _MhNull(str):\n        def __new__(cls):\n            return str.__new__(cls, \"\")\n        def __call__(self, *a, **k):\n            return self\n        def __getattr__(self, name):\n            if name.startswith('__') and name.endswith('__'):\n                raise AttributeError(name)\n            return self\n        def __bool__(self):\n            return False\n        def __int__(self):\n            return 0\n        def __float__(self):\n            return 0.0\n        def __index__(self):\n            return 0\n        def __iter__(self):\n            return iter(())\n        def __getitem__(self, k):\n            return self\n        def _mh_pair(self, other):\n            if isinstance(other, bool):\n                return 0, int(other)\n            if isinstance(other, (int, float)):\n                return 0, other\n            return \"\", other\n        def __eq__(self, other):\n            a, b = self._mh_pair(other)\n            return a == b\n        def __ne__(self, other):\n            return not self.__eq__(other)\n        def __lt__(self, other):\n            a, b = self._mh_pair(other)\n            return a < b\n        def __le__(self, other):\n            a, b = self._mh_pair(other)\n            return a <= b\n        def __gt__(self, other):\n            a, b = self._mh_pair(other)\n            return a > b\n        def __ge__(self, other):\n            a, b = self._mh_pair(other)\n            return a >= b\n        def __hash__(self):\n            return 0\n        def __radd__(self, other):\n            return other\n\n    def _mh_null_call(*a, **k):\n        return _MhNull()\n\ninit -1099 python hide:\n    try:\n        import renpy.game as _mh_rgame\n        if getattr(_mh_rgame, \"FunctionLib\", None) is None:\n            class _MhFunctionLib(object):\n                def max_min_float_value(self, value, maximum=None, minimum=None):\n                    try:\n                        v = value + 0\n                    except Exception:\n                        return 0\n                    if maximum is not None and v > maximum:\n                        return maximum\n                    if minimum is not None and v < minimum:\n                        return minimum\n                    return v\n                def __getattr__(self, name):\n                    return _mh_null_call\n            _mh_rgame.FunctionLib = _MhFunctionLib()\n    except Exception:\n        pass\n\n    try:\n        _mh_pnames = frozenset((\n            \"add_subs_in_table\", \"all_sponsors\", \"asdzzxa\", \"avaera\",\n            \"connection_pymysql\", \"create_cross_save_folder\",\n            \"cross_save_load_in_folder_with_game\", \"func_for_game\",\n            \"gift_from_npcs\", \"info_about_modification\", \"load_save_in_folder\",\n            \"non_avaera\", \"openAI_request\", \"search_name\", \"self_function\",\n            \"send_to_AI\", \"translate_via_server\",\n        ))\n        _MhP = type(persistent)\n        if not getattr(_MhP, \"_mh_patched\", False):\n            _mh_orig_ga = _MhP.__getattr__\n            def _mh_persistent_getattr(self, name, _o=_mh_orig_ga, _n=_mh_pnames):\n                value = _o(self, name)\n                if value is None and name in _n:\n                    return _mh_null_call\n                return value\n            _MhP.__getattr__ = _mh_persistent_getattr\n            _MhP._mh_patched = True\n    except Exception:\n        pass\n\ninit -100 python hide:\n    try:\n        import renpy, struct, sys\n        _orig = getattr(renpy, \"image_size\", None)\n        if _orig is None:\n            from renpy.exports import displayexports as _de\n            _orig = _de.image_size\n        _cache = {}\n        _mh_pcount = [0]\n        try:\n            import os as _mh_os\n            _mh_pdir = _mh_os.environ.get(\"RENPY_GAME_DIR\")\n        except Exception:\n            _mh_pdir = None\n\n        def _mh_dims(path):\n            f = renpy.loader.load(path)\n            try:\n                d = f.read(65536)\n            finally:\n                try:\n                    f.close()\n                except Exception:\n                    pass\n            if not d or len(d) < 16:\n                return None\n            if d[:8] == b\"\\x89PNG\\r\\n\\x1a\\n\":\n                if d[12:16] == b\"IHDR\":\n                    return struct.unpack(\">II\", d[16:24])\n                return None\n            if d[:6] in (b\"GIF87a\", b\"GIF89a\"):\n                return struct.unpack(\"<HH\", d[6:10])\n            if d[:4] == b\"RIFF\" and d[8:12] == b\"WEBP\":\n                c = d[12:16]\n                if c == b\"VP8X\":\n                    return ((d[24] | (d[25] << 8) | (d[26] << 16)) + 1,\n                            (d[27] | (d[28] << 8) | (d[29] << 16)) + 1)\n                if c == b\"VP8 \" and d[23:26] == b\"\\x9d\\x01\\x2a\":\n                    return (struct.unpack(\"<H\", d[26:28])[0] & 0x3FFF,\n                            struct.unpack(\"<H\", d[28:30])[0] & 0x3FFF)\n                if c == b\"VP8L\":\n                    bits = d[21] | (d[22] << 8) | (d[23] << 16) | (d[24] << 24)\n                    return ((bits & 0x3FFF) + 1, ((bits >> 14) & 0x3FFF) + 1)\n                return None\n            if d[:2] == b\"\\xff\\xd8\":\n                i, L = 2, len(d)\n                while i + 9 < L:\n                    if d[i] != 0xFF:\n                        i += 1\n                        continue\n                    m = d[i + 1]\n                    if m == 0xD8 or m == 0x01 or 0xD0 <= m <= 0xD7:\n                        i += 2\n                        continue\n                    seglen = struct.unpack(\">H\", d[i + 2:i + 4])[0]\n                    if 0xC0 <= m <= 0xCF and m not in (0xC4, 0xC8, 0xCC):\n                        h, w = struct.unpack(\">HH\", d[i + 5:i + 9])\n                        return (w, h)\n                    i += 2 + seglen\n                return None\n            return None\n\n        def _mh_image_size(im):\n            key = im if isinstance(im, str) else getattr(im, \"filename\", None)\n            if not isinstance(key, str):\n                return _orig(im)\n            if key in _cache:\n                return _cache[key]\n            r = None\n            try:\n                r = _mh_dims(key)\n            except Exception:\n                r = None\n            if r is None:\n                r = _orig(im)\n            _cache[key] = r\n            _mh_pcount[0] += 1\n            if _mh_pdir and (_mh_pcount[0] % 8) == 0:\n                try:\n                    with open(_mh_pdir + \"/.minhub_boot_progress\", \"w\") as _mh_pf:\n                        _mh_pf.write(\"images:\" + str(_mh_pcount[0]))\n                except Exception:\n                    pass\n            return r\n\n        for _mn in (\"renpy\", \"renpy.exports\", \"renpy.exports.displayexports\"):\n            _m = sys.modules.get(_mn)\n            if _m is not None and getattr(_m, \"image_size\", None) is not None:\n                setattr(_m, \"image_size\", _mh_image_size)\n        renpy.image_size = _mh_image_size\n    except Exception:\n        pass\n\ninit python:\n    import builtins as _mh_builtins\n    _mh_shadowed = {}\n    for _mh_n in (\n        \"sorted\", \"filter\", \"map\", \"input\", \"id\", \"type\", \"list\", \"dict\",\n        \"str\", \"int\", \"len\", \"next\", \"min\", \"max\", \"sum\", \"round\", \"format\",\n        \"open\", \"range\", \"set\", \"abs\", \"any\", \"all\", \"tuple\", \"bool\",\n    ):\n        _mh_v = globals().get(_mh_n, None)\n        if _mh_v is not None and not callable(_mh_v):\n            globals()[_mh_n] = getattr(_mh_builtins, _mh_n)\n")) {
            Log.i("MinHub-Renpy", "Injected zzz_minhub_compat.rpy");
        }
    }

    private void injectUrm(File file) {
        File file2;
        File file3;
        String strConcat;
        ZipInputStream zipInputStream;
        int i3;
        String str = "1";
        Log.d("MinHub-URM", "injectUrm: gameRoot=" + file);
        if (!file.exists()) {
            Log.w("MinHub-URM", "gameRoot does not exist: " + file);
            return;
        }
        try {
            try {
                String str2 = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
                if (str2 != null) {
                    str = str2;
                }
                while (true) {
                    try {
                        ZipEntry nextEntry = zipInputStream.getNextEntry();
                        if (nextEntry == null) {
                            Log.i("MinHub-URM", "Extracted " + i3 + " files to " + file2.getAbsolutePath());
                            zipInputStream.close();
                            FileOutputStream fileOutputStream = new FileOutputStream(file3);
                            try {
                                fileOutputStream.write(strConcat.getBytes("UTF-8"));
                                fileOutputStream.close();
                                return;
                            } catch (Throwable th) {
                                try {
                                    fileOutputStream.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        }
                        String strReplace = nextEntry.getName().replace('\\', '/');
                        if (strReplace.startsWith("0x52-URM/")) {
                            strReplace = strReplace.substring(9);
                        }
                        if (strReplace.isEmpty()) {
                            zipInputStream.closeEntry();
                        } else {
                            File file4 = new File(file2, strReplace);
                            if (nextEntry.isDirectory()) {
                                file4.mkdirs();
                            } else {
                                file4.getParentFile().mkdirs();
                                FileOutputStream fileOutputStream2 = new FileOutputStream(file4);
                                try {
                                    byte[] bArr = new byte[8192];
                                    while (true) {
                                        int i4 = zipInputStream.read(bArr);
                                        if (i4 == -1) {
                                            break;
                                        } else {
                                            fileOutputStream2.write(bArr, 0, i4);
                                        }
                                        try {
                                            zipInputStream.close();
                                        } catch (Throwable th3) {
                                            th.addSuppressed(th3);
                                        }
                                        throw th;
                                    }
                                    fileOutputStream2.close();
                                    i3++;
                                } catch (Throwable th4) {
                                    try {
                                        fileOutputStream2.close();
                                    } catch (Throwable th5) {
                                        th4.addSuppressed(th5);
                                    }
                                    throw th4;
                                }
                            }
                            zipInputStream.closeEntry();
                        }
                    } catch (Throwable th6) {
                        zipInputStream.close();
                        throw th6;
                    }
                    Log.e("MinHub-URM", "URM injection failed", e);
                    return;
                }
            } catch (Exception unused) {
            }
            recursiveDelete(file2);
            file2.mkdirs();
            zipInputStream = new ZipInputStream(getAssets().open("Cheat/Renpy/urm.zip"));
            i3 = 0;
        } catch (Exception e2) {
            Log.e("MinHub-URM", "URM injection failed", e2);
            return;
        }
        file2 = new File(file, "0x52-URM");
        file3 = new File(file, ".minhub_urm");
        strConcat = str.concat("_urm6");
        if (file2.exists() && file3.exists()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file3);
                try {
                    byte[] bArr2 = new byte[64];
                    int i5 = fileInputStream.read(bArr2);
                    if (i5 > 0 && new String(bArr2, 0, i5, "UTF-8").equals(strConcat)) {
                        Log.d("MinHub-URM", "URM already injected (" + strConcat + ")");
                        fileInputStream.close();
                        return;
                    }
                    fileInputStream.close();
                } catch (Throwable th7) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th8) {
                        th7.addSuppressed(th8);
                    }
                    throw th7;
                }
            } catch (Exception unused2) {
            }
        }
        Log.i("MinHub-URM", "Injecting URM into " + file.getAbsolutePath());
    }

    private boolean isUserPatreon() {
        return getSharedPreferences("minhub_prefs", 0).getBoolean("is_patreon", false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$bindMenuOverlay$10(View view) {
        closeMenuOverlay();
        showExitDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$bindMenuOverlay$3(View view) {
        closeMenuOverlay();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$bindMenuOverlay$5(View view) {
        closeMenuOverlay();
        takeScreenshot();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$bindMenuOverlay$6(Button button, View view) {
        if (!isUserPatreon()) {
            closeMenuOverlay();
            showCheatPatreonDialog();
            return;
        }
        View view2 = this.mCheatBtn;
        boolean z2 = view2 != null && view2.getVisibility() == 0;
        View view3 = this.mCheatBtn;
        if (view3 != null) {
            view3.setVisibility(z2 ? 8 : 0);
        }
        button.setText(getString(z2 ? R.string.menu_cheat_off : R.string.menu_cheat_on));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$bindMenuOverlay$7(TextView textView, int i3, KeyEvent keyEvent) {
        if (i3 != 6) {
            return false;
        }
        applyFontSizeFromEdit();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$bindMenuOverlay$8(View view) {
        applyFontSizeFromEdit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$bindMenuOverlay$9(View view) {
        this.mFontSizeEdit.setText("");
        getSharedPreferences("minhub_prefs", 0).edit().putInt("renpy_font_px", 0).apply();
        Toast.makeText(this, getString(R.string.renpy_font_restart), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        view.post(new a(this, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$setupDraggableMenuCard$11(View view, float[] fArr, float[] fArr2, boolean[] zArr, int i3, float f, View view2, MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R.id.layout_menu_card);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            fArr[0] = motionEvent.getRawX();
            fArr[1] = motionEvent.getRawY();
            fArr2[0] = viewFindViewById.getTranslationX();
            fArr2[1] = viewFindViewById.getTranslationY();
            zArr[0] = false;
            viewFindViewById.bringToFront();
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                float rawX = motionEvent.getRawX() - fArr[0];
                float rawY = motionEvent.getRawY() - fArr[1];
                if (!zArr[0]) {
                    float f3 = i3;
                    if (Math.abs(rawX) > f3 || Math.abs(rawY) > f3) {
                        zArr[0] = true;
                    }
                }
                if (zArr[0]) {
                    View view3 = (View) viewFindViewById.getParent();
                    float left = f - viewFindViewById.getLeft();
                    float fMax = Math.max(left, (view3.getWidth() - f) - viewFindViewById.getRight());
                    float top = f - viewFindViewById.getTop();
                    float fMax2 = Math.max(top, (view3.getHeight() - f) - viewFindViewById.getBottom());
                    viewFindViewById.setTranslationX(Math.max(left, Math.min(fArr2[0] + rawX, fMax)));
                    viewFindViewById.setTranslationY(Math.max(top, Math.min(fArr2[1] + rawY, fMax2)));
                }
            } else if (actionMasked != 3) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setupFloatingMenu$1(float[] fArr, float[] fArr2, boolean[] zArr, int i3, int i4, View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            fArr[0] = motionEvent.getRawX();
            fArr[1] = motionEvent.getRawY();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            fArr2[0] = layoutParams.leftMargin;
            fArr2[1] = layoutParams.topMargin;
            zArr[0] = false;
            return true;
        }
        if (actionMasked == 1) {
            if (!zArr[0]) {
                openMenuOverlay();
            }
            return true;
        }
        if (actionMasked != 2) {
            return false;
        }
        float rawX = motionEvent.getRawX() - fArr[0];
        float rawY = motionEvent.getRawY() - fArr[1];
        if (!zArr[0]) {
            float f = i3;
            if (Math.abs(rawX) > f || Math.abs(rawY) > f) {
                zArr[0] = true;
            }
        }
        if (zArr[0]) {
            View view2 = (View) view.getParent();
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view.getLayoutParams();
            layoutParams2.leftMargin = (int) Math.max(0.0f, Math.min(fArr2[0] + rawX, view2.getWidth() - i4));
            layoutParams2.topMargin = (int) Math.max(0.0f, Math.min(fArr2[1] + rawY, view2.getHeight() - i4));
            view.setLayoutParams(layoutParams2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setupFloatingMenu$2(float[] fArr, float[] fArr2, boolean[] zArr, int i3, int i4, View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            fArr[0] = motionEvent.getRawX();
            fArr[1] = motionEvent.getRawY();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            fArr2[0] = layoutParams.leftMargin;
            fArr2[1] = layoutParams.topMargin;
            zArr[0] = false;
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                return false;
            }
            float rawX = motionEvent.getRawX() - fArr[0];
            float rawY = motionEvent.getRawY() - fArr[1];
            if (!zArr[0]) {
                float f = i3;
                if (Math.abs(rawX) > f || Math.abs(rawY) > f) {
                    zArr[0] = true;
                }
            }
            if (zArr[0]) {
                View view2 = (View) view.getParent();
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view.getLayoutParams();
                layoutParams2.leftMargin = (int) Math.max(0.0f, Math.min(fArr2[0] + rawX, view2.getWidth() - i4));
                layoutParams2.topMargin = (int) Math.max(0.0f, Math.min(fArr2[1] + rawY, view2.getHeight() - i4));
                view.setLayoutParams(layoutParams2);
                return true;
            }
        } else if (!zArr[0] && (this.mCheatActive || L1.g(this, GameEngine.RENPY8))) {
            toggleUrmViaSignal();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showExitDialog$13(AlertDialog alertDialog, View view) {
        alertDialog.dismiss();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showLanguageReloadDialog$14(AlertDialog alertDialog, View view) {
        sLanguageReloadAnswer = 3;
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showLanguageReloadDialog$15(AlertDialog alertDialog, View view) {
        sLanguageReloadAnswer = 2;
        alertDialog.dismiss();
    }

    public static int languageReloadAnswer() {
        int i3 = sLanguageReloadAnswer;
        if (i3 != 2 && i3 != 3) {
            return i3;
        }
        sLanguageReloadAnswer = 0;
        return i3;
    }

    private Bitmap loadGamePresplash() {
        if (this.mGamePath == null) {
            return null;
        }
        String[] strArr = {"presplash.png", "presplash.jpg", "android-presplash.png", "android-presplash.jpg"};
        for (int i3 = 0; i3 < 4; i3++) {
            File file = new File(this.mGamePath, strArr[i3]);
            if (file.isFile()) {
                try {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inSampleSize = 2;
                    Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
                    if (bitmapDecodeFile != null) {
                        return bitmapDecodeFile;
                    }
                } catch (Exception unused) {
                    continue;
                }
            }
        }
        return null;
    }

    private void openMenuOverlay() {
        View view = this.mMenuOverlayPanel;
        if (view == null) {
            return;
        }
        view.setVisibility(0);
        this.mMenuOverlayPanel.bringToFront();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String readBootStage() {
        try {
            if (this.mGamePath != null) {
                File file = new File(this.mGamePath, ".minhub_boot_progress");
                if (file.isFile() && System.currentTimeMillis() - file.lastModified() < 2000) {
                    byte[] bArr = new byte[32];
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        int i3 = fileInputStream.read(bArr);
                        fileInputStream.close();
                        if (i3 > 0) {
                            int i4 = 0;
                            String strTrim = new String(bArr, 0, i3, "UTF-8").trim();
                            if (strTrim.startsWith("images:")) {
                                try {
                                    i4 = Integer.parseInt(strTrim.substring(7).trim());
                                } catch (NumberFormatException unused) {
                                }
                                return getString(R.string.renpy_loading_stage_images, Integer.valueOf(i4));
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
            }
        } catch (Exception unused2) {
        }
        return getString(R.string.renpy_loading_stage_boot);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeLoadingOverlay() {
        Runnable runnable = this.mLoadingTick;
        if (runnable != null) {
            this.mLoadingHandler.removeCallbacks(runnable);
            this.mLoadingTick = null;
        }
        View view = this.mLoadingOverlay;
        if (view != null) {
            SDLActivity.mLayout.removeView(view);
            this.mLoadingOverlay = null;
        }
    }

    private boolean saveBitmapToGallery(Bitmap bitmap, String str) {
        try {
            if (Build.VERSION.SDK_INT < 29) {
                File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "MinHub");
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, str);
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    fileOutputStream.close();
                    MediaScannerConnection.scanFile(this, new String[]{file2.getAbsolutePath()}, new String[]{"image/png"}, null);
                    return true;
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("_display_name", str);
            contentValues.put("mime_type", "image/png");
            contentValues.put("relative_path", Environment.DIRECTORY_PICTURES + "/MinHub");
            contentValues.put("is_pending", (Integer) 1);
            Uri uriInsert = getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
            if (uriInsert == null) {
                return false;
            }
            OutputStream outputStreamOpenOutputStream = getContentResolver().openOutputStream(uriInsert);
            if (outputStreamOpenOutputStream != null) {
                try {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStreamOpenOutputStream);
                } catch (Throwable th3) {
                    try {
                        outputStreamOpenOutputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            }
            if (outputStreamOpenOutputStream != null) {
                outputStreamOpenOutputStream.close();
            }
            contentValues.clear();
            contentValues.put("is_pending", (Integer) 0);
            getContentResolver().update(uriInsert, contentValues, null, null);
            return true;
        } catch (Throwable th5) {
            Log.e("python", "saveBitmap failed", th5);
            return false;
        }
        Log.e("python", "saveBitmap failed", th5);
        return false;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void setupDraggableMenuCard(final View view) {
        final float f = getResources().getDisplayMetrics().density * 16.0f;
        final int scaledTouchSlop = ViewConfiguration.get(this).getScaledTouchSlop();
        final float[] fArr = {0.0f, 0.0f};
        final float[] fArr2 = {0.0f, 0.0f};
        final boolean[] zArr = {false};
        view.findViewById(R.id.tv_menu_title).setOnTouchListener(new View.OnTouchListener() { // from class: org.renpy.android.f
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return PythonSDLActivity.lambda$setupDraggableMenuCard$11(view, fArr, fArr2, zArr, scaledTouchSlop, f, view2, motionEvent);
            }
        });
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void setupFloatingMenu() {
        float f = getResources().getDisplayMetrics().density;
        final int i3 = (int) (44.0f * f);
        ImageView imageView = new ImageView(this);
        imageView.setImageResource(R.drawable.ic_menu_selector);
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_CENTER;
        imageView.setScaleType(scaleType);
        float f3 = f * 8.0f;
        imageView.setElevation(f3);
        imageView.setContentDescription(getString(R.string.arrange_menu_title));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i3);
        layoutParams.gravity = 8388659;
        int i4 = (int) f3;
        layoutParams.topMargin = i4;
        layoutParams.leftMargin = i4;
        final int scaledTouchSlop = ViewConfiguration.get(this).getScaledTouchSlop();
        final float[] fArr = {0.0f, 0.0f};
        final float[] fArr2 = {0.0f, 0.0f};
        final boolean[] zArr = {false};
        final int i5 = 0;
        imageView.setOnTouchListener(new View.OnTouchListener(this) { // from class: org.renpy.android.g

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PythonSDLActivity f5199c;

            {
                this.f5199c = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                switch (i5) {
                    case 0:
                        return this.f5199c.lambda$setupFloatingMenu$1(fArr, fArr2, zArr, scaledTouchSlop, i3, view, motionEvent);
                    default:
                        return this.f5199c.lambda$setupFloatingMenu$2(fArr, fArr2, zArr, scaledTouchSlop, i3, view, motionEvent);
                }
            }
        });
        this.mFrameLayout.addView(imageView, layoutParams);
        this.mFloatingMenuBtn = imageView;
        ImageView imageView2 = new ImageView(this);
        imageView2.setImageResource(R.drawable.cheat_icon);
        imageView2.setScaleType(scaleType);
        imageView2.setElevation(f3);
        imageView2.setAlpha(0.7f);
        imageView2.setContentDescription(getString(R.string.menu_cheat));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i3, i3);
        layoutParams2.gravity = 8388659;
        layoutParams2.topMargin = layoutParams.topMargin + i3 + i4;
        layoutParams2.leftMargin = i4;
        imageView2.setVisibility(8);
        final float[] fArr3 = {0.0f, 0.0f};
        final float[] fArr4 = {0.0f, 0.0f};
        final boolean[] zArr2 = {false};
        final int i6 = 1;
        imageView2.setOnTouchListener(new View.OnTouchListener(this) { // from class: org.renpy.android.g

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PythonSDLActivity f5199c;

            {
                this.f5199c = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                switch (i6) {
                    case 0:
                        return this.f5199c.lambda$setupFloatingMenu$1(fArr3, fArr4, zArr2, scaledTouchSlop, i3, view, motionEvent);
                    default:
                        return this.f5199c.lambda$setupFloatingMenu$2(fArr3, fArr4, zArr2, scaledTouchSlop, i3, view, motionEvent);
                }
            }
        });
        this.mFrameLayout.addView(imageView2, layoutParams2);
        this.mCheatBtn = imageView2;
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.view_renpy_menu_overlay, (ViewGroup) this.mFrameLayout, false);
        bindMenuOverlay(viewInflate);
        this.mFrameLayout.addView(viewInflate, new FrameLayout.LayoutParams(-1, -1));
        this.mMenuOverlayPanel = viewInflate;
    }

    private void showCheatPatreonDialog() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_cheat_patreon, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setView(viewInflate).create();
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
        viewInflate.findViewById(R.id.btn_cheat_patreon_ok).setOnClickListener(new e(alertDialogCreate, 3));
        alertDialogCreate.show();
    }

    private void showExitDialog() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_exit_confirm, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setView(viewInflate).create();
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
        viewInflate.findViewById(R.id.btn_exit_cancel).setOnClickListener(new e(alertDialogCreate, 0));
        viewInflate.findViewById(R.id.btn_exit_confirm).setOnClickListener(new ViewOnClickListenerC0075j(24, this, alertDialogCreate));
        alertDialogCreate.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLanguageReloadDialog() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_renpy_language_reload, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setView(viewInflate).setCancelable(false).create();
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
        viewInflate.findViewById(R.id.btn_language_reload_cancel).setOnClickListener(new e(alertDialogCreate, 1));
        viewInflate.findViewById(R.id.btn_language_reload_ok).setOnClickListener(new e(alertDialogCreate, 2));
        alertDialogCreate.show();
    }

    private void showLoadingOverlay() {
        Bitmap bitmapDecodeFile;
        try {
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.overlay_renpy_loading, (ViewGroup) null);
            String stringExtra = getIntent() != null ? getIntent().getStringExtra("iconPath") : null;
            if (stringExtra != null && !stringExtra.isEmpty() && (bitmapDecodeFile = BitmapFactory.decodeFile(stringExtra)) != null) {
                ImageView imageView = (ImageView) viewInflate.findViewById(R.id.img_renpy_icon);
                imageView.setImageBitmap(bitmapDecodeFile);
                imageView.setVisibility(0);
            }
            Bitmap bitmapLoadGamePresplash = loadGamePresplash();
            if (bitmapLoadGamePresplash != null) {
                ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.img_renpy_backdrop);
                imageView2.setImageBitmap(bitmapLoadGamePresplash);
                imageView2.setVisibility(0);
            }
            final TextView textView = (TextView) viewInflate.findViewById(R.id.tv_renpy_loading_status);
            final TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_renpy_loading_stage);
            final long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                Runnable runnable = new Runnable() { // from class: org.renpy.android.PythonSDLActivity.2
                    @Override // java.lang.Runnable
                    public void run() {
                        textView.setText(PythonSDLActivity.this.getString(R.string.renpy_loading_elapsed, Integer.valueOf((int) ((System.currentTimeMillis() - jCurrentTimeMillis) / 1000))));
                        textView2.setText(PythonSDLActivity.this.readBootStage());
                        PythonSDLActivity.this.mLoadingHandler.postDelayed(this, 250L);
                    }
                };
                this.mLoadingTick = runnable;
                runnable.run();
                this.mLoadingOverlay = viewInflate;
                SDLActivity.mLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
            } catch (Exception e2) {
                e = e2;
                Log.w("MinHub-Renpy", "Could not show loading overlay: " + e.getMessage());
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    private void takeScreenshot() {
        try {
            View view = SDLActivity.mSurface;
            if (view == null) {
                view = SDLActivity.mLayout;
            }
            if (view == null) {
                return;
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(Math.max(view.getWidth(), 1), Math.max(view.getHeight(), 1), Bitmap.Config.ARGB_8888);
            view.draw(new Canvas(bitmapCreateBitmap));
            StringBuilder sb = new StringBuilder("MinHub_renpy_");
            sb.append(System.currentTimeMillis());
            sb.append(".png");
            Toast.makeText(this, getString(saveBitmapToGallery(bitmapCreateBitmap, sb.toString()) ? R.string.screenshot_ok : R.string.screenshot_fail), 0).show();
        } catch (Throwable th) {
            Log.e("python", "screenshot failed", th);
            Toast.makeText(this, getString(R.string.error_message_format, th.getMessage()), 0).show();
        }
    }

    private void toggleUrmViaSignal() {
        if (this.mGamePath == null) {
            return;
        }
        boolean z2 = this.mCheatActive;
        this.mCheatActive = !z2;
        View view = this.mCheatBtn;
        if (view != null) {
            view.setAlpha(!z2 ? 1.0f : 0.5f);
        }
        File file = new File(this.mGamePath, ".minhub_urm_open");
        try {
            file.createNewFile();
            Log.d("MinHub-URM", "Signal created (active=" + this.mCheatActive + "): " + file.getAbsolutePath());
        } catch (IOException e2) {
            Log.e("MinHub-URM", "Failed to create signal", e2);
        }
    }

    private boolean writeRpyIfChanged(File file, String str) {
        StringBuilder sb = new StringBuilder("writeRpyIfChanged ");
        sb.append(file.getName());
        sb.append(" existing=");
        sb.append(file.isFile() ? file.length() : -1L);
        sb.append(" newlen=");
        sb.append(str == null ? -1 : str.length());
        Log.i("MinHub-Renpy", sb.toString());
        try {
            if (file.isFile()) {
                int length = (int) file.length();
                byte[] bArr = new byte[length];
                FileInputStream fileInputStream = new FileInputStream(file);
                int i3 = 0;
                while (i3 < length) {
                    try {
                        int i4 = fileInputStream.read(bArr, i3, length - i3);
                        if (i4 <= 0) {
                            break;
                        }
                        i3 += i4;
                    } catch (Throwable th) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                fileInputStream.close();
                if (new String(bArr, "UTF-8").equals(str)) {
                    return false;
                }
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(str.getBytes("UTF-8"));
                fileOutputStream.close();
                return true;
            } catch (Throwable th3) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (Exception e2) {
            Log.e("MinHub-Renpy", "writeRpyIfChanged failed for " + file.getName(), e2);
            return false;
        }
    }

    public void addView(View view, int i3) {
        this.mVbox.addView(view, i3, new LinearLayout.LayoutParams(-1, -2, 0.0f));
    }

    public void armOnStop() {
        Log.v("python", "armOnStop()");
        this.mStopDone = false;
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context base) {
        int i3 = S1.c.f2058d;
        Intrinsics.checkNotNullParameter(base, "base");
        super.attachBaseContext(com.bumptech.glide.d.a(base, S1.d.d(base)));
    }

    public void finishOnStop() {
        Log.v("python", "finishOnStop()");
        synchronized (this) {
            this.mStopDone = true;
            notifyAll();
        }
    }

    public Bitmap getBitmap(String str) {
        try {
            InputStream inputStreamOpen = getAssets().open(str);
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen);
            inputStreamOpen.close();
            return bitmapDecodeStream;
        } catch (IOException unused) {
            return null;
        }
    }

    public int getDPI() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.densityDpi;
    }

    public String getGamePath() {
        return this.mGamePath;
    }

    @Override // org.libsdl.app.SDLActivity
    public String[] getLibraries() {
        return new String[0];
    }

    @Override // org.libsdl.app.SDLActivity
    public String getMainSharedObject() {
        try {
            String strResolveRenpyAbi = resolveRenpyAbi();
            if (strResolveRenpyAbi != null) {
                File file = new File(getFilesDir(), "engine-plugins/renpy/" + strResolveRenpyAbi + "/librenpython.so");
                if (file.exists()) {
                    return file.getAbsolutePath();
                }
            }
        } catch (Exception e2) {
            Log.e("PythonSDL", "getMainSharedObject error: " + e2.getMessage());
        }
        return super.getMainSharedObject();
    }

    public String getRenpyPluginKey() {
        return "renpy";
    }

    public void hidePresplash() {
        Object objM9constructorimpl;
        Unit unit;
        this.mInterfaceReady = true;
        List list = B1.f6038a;
        Intrinsics.checkNotNullParameter(this, "context");
        List list2 = B1.f6038a;
        try {
            Result.Companion companion = Result.INSTANCE;
            File fileC = B1.c(this);
            if (fileC != null) {
                FilesKt__FileReadWriteKt.writeText$default(fileC, "ok:" + System.currentTimeMillis(), null, 2, null);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            objM9constructorimpl = Result.m9constructorimpl(unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl);
        if (thM12exceptionOrNullimpl != null) {
            E.b.x("Could not clear boot state: ", thM12exceptionOrNullimpl.getMessage(), "MinHub-RenpyBoot");
        }
        runOnUiThread(new Runnable() { // from class: org.renpy.android.PythonSDLActivity.3
            @Override // java.lang.Runnable
            public void run() {
                if (PythonSDLActivity.mActivity.mPresplash != null) {
                    SDLActivity.mLayout.removeView(PythonSDLActivity.mActivity.mPresplash);
                    PythonSDLActivity.mActivity.mPresplash = null;
                }
                PythonSDLActivity.mActivity.removeLoadingOverlay();
                PythonSDLActivity.mActivity.reassertFloatMenuOnTop();
            }
        });
    }

    @Override // org.libsdl.app.SDLActivity
    public void loadLibraries() {
        try {
            String strResolveRenpyAbi = resolveRenpyAbi();
            if (strResolveRenpyAbi == null) {
                throw new UnsatisfiedLinkError("Thiết bị không hỗ trợ ABI cho Ren'Py");
            }
            File file = new File(getFilesDir(), "engine-plugins/renpy/" + strResolveRenpyAbi + "/librenpython.so");
            StringBuilder sb = new StringBuilder("Loading librenpython from: ");
            sb.append(file.getAbsolutePath());
            Log.i("PythonSDL", sb.toString());
            System.load(file.getAbsolutePath());
            Log.i("PythonSDL", "librenpython.so loaded OK");
        } catch (UnsatisfiedLinkError e2) {
            Log.e("PythonSDL", "Failed to load librenpython.so: " + e2.getMessage());
            throw e2;
        }
    }

    public native void nativeSetEnv(String str, String str2);

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    @Deprecated
    public void onBackPressed() {
        View view = this.mMenuOverlayPanel;
        if (view == null || view.getVisibility() != 0) {
            openMenuOverlay();
        } else {
            closeMenuOverlay();
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x008f  */
    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String strF;
        Object objM9constructorimpl;
        Object next;
        Object objM9constructorimpl2;
        Unit unit;
        Object objM9constructorimpl3;
        String strF2;
        Intrinsics.checkNotNullParameter(this, "activity");
        Intrinsics.checkNotNullParameter("renpy", "engineKey");
        Integer numValueOf = null;
        this.mLifecycleAdapter = p000a.a.r(this, "renpy", null, null);
        Log.i("python", "onCreate()");
        Intent intent = getIntent();
        if (intent != null && intent.hasExtra("gamePath")) {
            this.mGamePath = intent.getStringExtra("gamePath");
        }
        if (intent != null) {
            this.mGameId = intent.getIntExtra("game_id", -1);
        }
        AbstractC0369e0.a(this, this.mGameId);
        applyEarlyWindowBackground();
        String str = this.mGamePath;
        List list = B1.f6038a;
        Intrinsics.checkNotNullParameter(this, "context");
        if (str == null) {
            strF = null;
        } else {
            if (StringsKt.isBlank(str)) {
                str = null;
            }
            if (str != null) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM9constructorimpl3 = Result.m9constructorimpl(B1.b(new File(str)));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl3 = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m15isFailureimpl(objM9constructorimpl3)) {
                    objM9constructorimpl3 = null;
                }
                String str2 = (String) objM9constructorimpl3;
                if (str2 == null || (strF2 = StringsKt.F(str2, ':', ' ')) == null) {
                    strF = null;
                } else {
                    strF = StringsKt.F(strF2, '\n', ' ');
                }
            } else {
                strF = null;
            }
        }
        if (strF == null) {
            strF = "";
        }
        List list2 = B1.f6038a;
        try {
            Result.Companion companion3 = Result.INSTANCE;
            File fileC = B1.c(this);
            if (fileC != null) {
                FilesKt__FileReadWriteKt.writeText$default(fileC, "started:" + System.currentTimeMillis() + ":" + strF, null, 2, null);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            objM9constructorimpl = Result.m9constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th2));
        }
        Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl);
        if (thM12exceptionOrNullimpl != null) {
            E.b.x("Could not write boot state: ", thM12exceptionOrNullimpl.getMessage(), "MinHub-RenpyBoot");
        }
        super.onCreate(bundle);
        SDLSurface surface = SDLActivity.mSurface;
        int i3 = 1;
        if (surface != null) {
            Intrinsics.checkNotNullParameter(this, "context");
            Intrinsics.checkNotNullParameter(surface, "surface");
            Intrinsics.checkNotNullParameter(this, "context");
            C0363c0 c0363c0 = F1.f6065c;
            String string = getSharedPreferences("minhub_prefs", 0).getString("renpy_render_resolution", null);
            c0363c0.getClass();
            Iterator<E> it = F1.f.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.areEqual(((F1) next).b, string));
            F1 mode = (F1) next;
            if (mode == null) {
                mode = F1.AUTO;
            }
            try {
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                Object systemService = getSystemService("activity");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
                objM9constructorimpl2 = Result.m9constructorimpl(Long.valueOf(memoryInfo.totalMem / ((long) 1048576)));
            } catch (Throwable th3) {
                Result.Companion companion5 = Result.INSTANCE;
                objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th3));
            }
            if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                objM9constructorimpl2 = 0L;
            }
            long jLongValue = ((Number) objM9constructorimpl2).longValue();
            Intrinsics.checkNotNullParameter(mode, "mode");
            int iOrdinal = mode.ordinal();
            int i4 = 1080;
            if (iOrdinal == 0) {
                if (1 <= jLongValue && jLongValue < 4097) {
                    i4 = 720;
                }
                numValueOf = Integer.valueOf(i4);
            } else if (iOrdinal == 1) {
                numValueOf = 1080;
            } else if (iOrdinal == 2) {
                numValueOf = 720;
            } else if (iOrdinal != 3) {
                throw new NoWhenBranchMatchedException();
            }
            if (numValueOf == null) {
                Log.i("RenpyRenderResolution", "Ren'Py renders at native resolution");
            } else {
                surface.addOnLayoutChangeListener(new j(i3, numValueOf, new Ref.ObjectRef()));
            }
        }
        if (!SDLActivity.mBrokenLibraries) {
            preparePython();
        }
        if (SDLActivity.mLayout == null) {
            return;
        }
        Bitmap bitmap = getBitmap("android-presplash.png");
        if (bitmap == null) {
            bitmap = getBitmap("android-presplash.jpg");
        }
        if (bitmap != null) {
            ImageView imageView = new ImageView(this);
            this.mPresplash = imageView;
            imageView.setBackgroundColor(bitmap.getPixel(0, 0));
            this.mPresplash.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.mPresplash.setImageBitmap(bitmap);
            SDLActivity.mLayout.addView(this.mPresplash, new ViewGroup.LayoutParams(-1, -1));
        } else {
            showLoadingOverlay();
        }
        if (this.mFrameLayout != null) {
            setupFloatingMenu();
            FrameLayout frameLayout = this.mFrameLayout;
            if (frameLayout != null) {
                frameLayout.addOnLayoutChangeListener(new K0.a(i3, this));
            }
        }
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    public void onDestroy() {
        Log.v("python", "onDestroy()");
        v0 v0Var = this.mLifecycleAdapter;
        if (v0Var != null) {
            v0Var.b();
        }
        this.mLifecycleAdapter = null;
        a2.e eVar = AbstractC0372f0.f6225a;
        AbstractC0372f0.a(this, this.mGameId, this.mSessionStartMs);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        Log.v("python", "onNewIntent()");
        setIntent(intent);
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        hideSystemBars();
        reassertFloatMenuOnTop();
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    public void onStop() {
        Log.v("python", "onStop() start.");
        super.onStop();
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (this) {
            while (!this.mStopDone && 8000 + jCurrentTimeMillis >= System.currentTimeMillis()) {
                try {
                    wait(100L);
                } catch (InterruptedException unused) {
                }
            }
        }
        Log.v("python", "onStop() done.");
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            hideSystemBars();
            reassertFloatMenuOnTop();
        }
    }

    public void openUrl(String str) {
        SDLActivity.openURL(str);
    }

    public void preparePrivateData() {
        unpackData("private", getFilesDir());
        nativeSetEnv("ANDROID_PRIVATE", getFilesDir().getAbsolutePath());
    }

    public void preparePython() {
        Object objM9constructorimpl;
        Object objM9constructorimpl2;
        String str;
        String text$default;
        Sequence<String> sequenceLineSequence;
        String str2;
        Log.i("python", "Starting preparePython.");
        mActivity = this;
        this.resourceManager = new ResourceManager(this);
        File logDir = getExternalFilesDir(null);
        if (logDir == null) {
            logDir = new File(Environment.getExternalStorageDirectory(), getPackageName());
        }
        preparePrivateData();
        File filePrepare = RenpySaveIsolation.INSTANCE.prepare(logDir, this.mGameId, this.mGamePath == null ? null : new File(this.mGamePath));
        if (filePrepare != null) {
            logDir = filePrepare;
        }
        List list = B1.f6038a;
        Intrinsics.checkNotNullParameter(this, "context");
        Intrinsics.checkNotNullParameter(logDir, "logDir");
        List list2 = B1.f6038a;
        try {
            Result.Companion companion = Result.INSTANCE;
            File fileC = B1.c(this);
            if (fileC != null) {
                File file = fileC.isFile() ? fileC : null;
                String string = (file == null || (text$default = FilesKt__FileReadWriteKt.readText$default(file, null, 1, null)) == null || (sequenceLineSequence = StringsKt.lineSequence(text$default)) == null || (str2 = (String) SequencesKt.firstOrNull(sequenceLineSequence)) == null) ? null : StringsKt.trim((CharSequence) str2).toString();
                if (string != null && StringsKt.N(string, "started:")) {
                    FilesKt__FileReadWriteKt.writeText$default(fileC, string + "\nlogdir=" + logDir.getAbsolutePath(), null, 2, null);
                    objM9constructorimpl = Result.m9constructorimpl(Unit.INSTANCE);
                    Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl);
                    if (thM12exceptionOrNullimpl != null) {
                        E.b.x("Could not record log dir: ", thM12exceptionOrNullimpl.getMessage(), "MinHub-RenpyBoot");
                    }
                }
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        Intrinsics.checkNotNullParameter(logDir, "logDir");
        try {
            File file2 = new File(logDir, "renpy_boot.log");
            if (file2.isFile() && file2.length() > 64000) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "r");
                try {
                    randomAccessFile.seek(randomAccessFile.length() - ((long) 16000));
                    byte[] bArr = new byte[16000];
                    randomAccessFile.readFully(bArr);
                    CloseableKt.closeFinally(randomAccessFile, null);
                    int i3 = 0;
                    while (true) {
                        if (i3 >= 16000) {
                            i3 = -1;
                            break;
                        } else if (bArr[i3] == 10) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                    FilesKt.writeBytes(file2, ArraysKt.copyOfRange(bArr, i3 < 0 ? 0 : i3 + 1, 16000));
                    objM9constructorimpl2 = Result.m9constructorimpl(Unit.INSTANCE);
                    Throwable thM12exceptionOrNullimpl2 = Result.m12exceptionOrNullimpl(objM9constructorimpl2);
                    if (thM12exceptionOrNullimpl2 != null) {
                        E.b.x("Could not trim renpy_boot.log: ", thM12exceptionOrNullimpl2.getMessage(), "MinHub-RenpyBoot");
                    }
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.closeFinally(randomAccessFile, th2);
                        throw th3;
                    }
                }
            }
        } catch (Throwable th4) {
            Result.Companion companion3 = Result.INSTANCE;
            objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th4));
        }
        nativeSetEnv("ANDROID_PUBLIC", logDir.getAbsolutePath());
        nativeSetEnv("ANDROID_OLD_PUBLIC", logDir.getAbsolutePath());
        try {
            String strResolveRenpyAbi = resolveRenpyAbi();
            if (strResolveRenpyAbi != null) {
                nativeSetEnv("MINHUB_RENPY_PLUGIN_DIR", new File(getFilesDir(), "engine-plugins/" + getRenpyPluginKey() + "/" + strResolveRenpyAbi).getAbsolutePath());
            }
        } catch (Exception e2) {
            Log.w("python", e2);
        }
        try {
            str = getApplication().getPackageManager().getApplicationInfo(getPackageName(), 0).sourceDir;
        } catch (PackageManager.NameNotFoundException unused) {
            str = "";
        }
        nativeSetEnv("ANDROID_APK", str);
        String str3 = this.mGamePath;
        if (str3 != null) {
            nativeSetEnv("RENPY_GAME_DIR", str3);
            new File(this.mGamePath, ".minhub_boot_progress").delete();
            if (isUserPatreon()) {
                injectUrm(new File(this.mGamePath));
            }
            int i4 = getSharedPreferences("minhub_prefs", 0).getInt("renpy_font_px", 0);
            nativeSetEnv("MINHUB_FONT_SIZE", String.valueOf(i4));
            injectDefaultDejaVuFont(new File(this.mGamePath));
            injectFontRpy(new File(this.mGamePath), i4);
            injectSetTimerCompatRpy(new File(this.mGamePath));
            injectStoreCompatRpy(new File(this.mGamePath));
            nativeSetEnv("MINHUB_RENPY_MEMORY_SAVER", getSharedPreferences("minhub_prefs", 0).getBoolean("renpy_memory_saver", true) ? "1" : "0");
            Set set = E1.f6058a;
            injectMemorySaverRpy(E1.c(new File(this.mGamePath)));
        }
        Log.i("python", "Finished preparePython.");
    }

    public void reassertFloatMenuOnTop() {
        if (this.mFrameLayout == null) {
            return;
        }
        View view = this.mFloatingMenuBtn;
        if (view != null && view.getParent() == this.mFrameLayout) {
            this.mFloatingMenuBtn.bringToFront();
        }
        View view2 = this.mCheatBtn;
        if (view2 != null && view2.getParent() == this.mFrameLayout) {
            this.mCheatBtn.bringToFront();
        }
        View view3 = this.mMenuOverlayPanel;
        if (view3 != null && view3.getParent() == this.mFrameLayout) {
            this.mMenuOverlayPanel.bringToFront();
        }
        this.mFrameLayout.invalidate();
    }

    public void recursiveDelete(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                recursiveDelete(file2);
            }
        }
        file.delete();
    }

    public void removeView(View view) {
        this.mVbox.removeView(view);
    }

    public String resolveRenpyAbi() {
        String property = System.getProperty("os.arch", "");
        if (property.contains("aarch64")) {
            return "arm64-v8a";
        }
        if (property.contains("arm")) {
            return "armeabi-v7a";
        }
        if (property.contains("x86_64") || property.contains("amd64")) {
            return "x86_64";
        }
        for (String str : Build.SUPPORTED_ABIS) {
            if (str.equals("arm64-v8a") || str.equals("armeabi-v7a") || str.equals("x86_64")) {
                return str;
            }
        }
        return null;
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        FrameLayout frameLayout = new FrameLayout(this);
        this.mFrameLayout = frameLayout;
        frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(this);
        this.mVbox = linearLayout;
        linearLayout.setOrientation(1);
        this.mVbox.addView(this.mFrameLayout, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        super.setContentView(this.mVbox);
    }

    public void setGamePath(String str) {
        this.mGamePath = str;
    }

    public void setWakeLock(boolean z2) {
        if (this.wakeLock == null) {
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) getSystemService("power")).newWakeLock(10, "Screen On");
            this.wakeLock = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
        }
        if (z2) {
            this.wakeLock.acquire();
        } else {
            this.wakeLock.release();
        }
    }

    public void toastError(final String str) {
        runOnUiThread(new Runnable() { // from class: org.renpy.android.PythonSDLActivity.1
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(this, str, 1).show();
            }
        });
        synchronized (this) {
            try {
                wait(1000L);
            } catch (InterruptedException unused) {
            }
        }
    }

    public void unpackData(String str, File file) {
        String str2;
        new File(file, "main.pyo").delete();
        String string = this.resourceManager.getString(str + "_version");
        String str3 = file.getAbsolutePath() + "/" + str + ".version";
        if (string != null) {
            try {
                byte[] bArr = new byte[64];
                FileInputStream fileInputStream = new FileInputStream(str3);
                str2 = new String(bArr, 0, fileInputStream.read(bArr));
                fileInputStream.close();
            } catch (Exception unused) {
                str2 = "";
            }
            if (string.equals(str2)) {
                return;
            }
        }
        Log.v("python", "Extracting " + str + " assets.");
        recursiveDelete(new File(file, "lib"));
        recursiveDelete(new File(file, "renpy"));
        file.mkdirs();
        if (!new AssetExtract(this).extractTar(kotlin.collections.unsigned.a.g(str, ".mp3"), file.getAbsolutePath())) {
            toastError("Could not extract " + str + " data.");
        }
        try {
            new File(file, ".nomedia").createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(str3);
            if (string == null) {
                string = "1";
            }
            fileOutputStream.write(string.getBytes());
            fileOutputStream.close();
        } catch (Exception e2) {
            Log.w("python", e2);
        }
    }

    public void vibrate(double d3) {
        Vibrator vibrator = (Vibrator) getSystemService("vibrator");
        if (vibrator != null) {
            if (Build.VERSION.SDK_INT >= 26) {
                vibrator.vibrate(VibrationEffect.createOneShot((int) (d3 * 1000.0d), -1));
            } else {
                vibrator.vibrate((int) (d3 * 1000.0d));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$bindMenuOverlay$4(View view) {
    }

    @Override // org.libsdl.app.SDLActivity
    public void setOrientationBis(int i3, int i4, boolean z2, String str) {
    }
}
