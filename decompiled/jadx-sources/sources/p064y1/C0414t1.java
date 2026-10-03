package p064y1;

import A1.C0036q;
import A1.r;
import G1.n;
import G1.p;
import G1.q;
import G1.s;
import Q1.d;
import S1.b;
import android.util.Base64;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.bumptech.glide.c;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.RpgMakerSaveStore;
import com.minhub.gamehub.game.GameActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.unsigned.a;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: y1.t1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0414t1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GameActivity f6356a;
    public final Game b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s f6357c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f6358d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6359e;
    public final C0430z f;
    public final C0036q g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0430z f6360h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C0427y f6361i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C0427y f6362j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final r f6363k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final A f6364l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final B f6365m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final d f6366n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f6367o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public volatile String f6368p;

    public C0414t1(GameActivity ctx, Game game, s snapshot, String patchFontFamily, int i3, C0430z onExit, C0036q onSave, C0430z onScreenshot, C0427y c0427y, C0427y c0427y2, r rVar, A a3, B b, d session) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Intrinsics.checkNotNullParameter(game, "game");
        Intrinsics.checkNotNullParameter(snapshot, "utilitySnapshot");
        Intrinsics.checkNotNullParameter(patchFontFamily, "patchFontFamily");
        Intrinsics.checkNotNullParameter(onExit, "onExit");
        Intrinsics.checkNotNullParameter(onSave, "onSave");
        Intrinsics.checkNotNullParameter(onScreenshot, "onScreenshot");
        Intrinsics.checkNotNullParameter(session, "session");
        this.f6356a = ctx;
        this.b = game;
        this.f6357c = snapshot;
        this.f6358d = patchFontFamily;
        this.f6359e = i3;
        this.f = onExit;
        this.g = onSave;
        this.f6360h = onScreenshot;
        this.f6361i = c0427y;
        this.f6362j = c0427y2;
        this.f6363k = rVar;
        this.f6364l = a3;
        this.f6365m = b;
        this.f6366n = session;
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        List list = q.f1036a;
        s sVarB = q.b(snapshot.a());
        p023i1.r rVar2 = new p023i1.r();
        Iterator it = q.f1036a.iterator();
        while (it.hasNext()) {
            p pVar = ((n) it.next()).f1013a;
            rVar2.h(pVar.b, Boolean.valueOf(sVarB.b(pVar)));
        }
        String string = rVar2.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        this.f6367o = string;
    }

    public static void a(WebView wv, int i3) {
        Intrinsics.checkNotNullParameter(wv, "wv");
        wv.evaluateJavascript(StringsKt.trimIndent("\n            (function(){\n              try {\n                var v = " + (RangesKt.coerceIn(i3, 0, 100) / 100.0f) + ";\n                if (typeof AudioManager !== 'undefined') {\n                  AudioManager.masterVolume = v;\n                  if (AudioManager._masterVolume !== undefined) AudioManager._masterVolume = v;\n                  if (typeof AudioManager.updateBgmParameters === 'function' && AudioManager._currentBgm) {\n                    AudioManager.updateBgmParameters(AudioManager._currentBgm);\n                  }\n                }\n                if (typeof WebAudio !== 'undefined' && WebAudio._masterGainNode && WebAudio._masterGainNode.gain) {\n                  WebAudio._masterGainNode.gain.value = v;\n                }\n                document.querySelectorAll('audio,video').forEach(function(a){ a.volume = v; });\n              } catch(e) { console && console.error && console.error('[MinHub] volume', e); }\n            })();\n        "), null);
    }

    public static String b(GameEngine gameEngine, String str) {
        return StringsKt.trimIndent("\n        (function(){\n          try {\n            window.__minhubOtaCtx = window.__minhubOtaCtx || {};\n            window.__minhubOtaCtx.engine = '" + gameEngine.name() + "';\n            // The bundle reads window.__minhubUtilities (flags) and window.__minhubOtaCtx.engine.\n            " + str + "\n          } catch(e) {\n            try { window.MinHub && window.MinHub.log && window.MinHub.log('[OTA] patch error: ' + e); } catch(_) {}\n          }\n        })();\n    ");
    }

    public static boolean g(File file, String str) {
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        File file2 = new File(file.getParentFile(), a.g(file.getName(), ".minhub-new"));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                byte[] bytes = str.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                fileOutputStream.write(bytes);
                fileOutputStream.getFD().sync();
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
                if (file2.renameTo(file)) {
                    return true;
                }
                file2.delete();
                return false;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Exception unused) {
            file2.delete();
            return false;
        }
    }

    @JavascriptInterface
    public final boolean backupExists(int i3) {
        File fileD = d(i3, true);
        return fileD != null && fileD.exists();
    }

    @JavascriptInterface
    public final boolean backupExistsByName(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        File fileE = e(name, true);
        return fileE != null && fileE.exists();
    }

    public final File c() {
        b bVarK;
        File file = new File(this.b.getGamePath());
        if (!file.exists()) {
            file = null;
        }
        if (file == null || (bVarK = c.K(file)) == null) {
            return null;
        }
        return bVarK.f2056a;
    }

    public final File d(int i3, boolean z2) {
        GameEngine.Companion companion = GameEngine.INSTANCE;
        Game game = this.b;
        GameEngine gameEngineFromString = companion.fromString(game.getEngine());
        if (gameEngineFromString != GameEngine.MV && gameEngineFromString != GameEngine.MZ) {
            return null;
        }
        RpgMakerSaveStore rpgMakerSaveStore = RpgMakerSaveStore.INSTANCE;
        File fileSaveDir = rpgMakerSaveStore.saveDir(game);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdirs();
        }
        return new File(fileSaveDir, z2 ? rpgMakerSaveStore.backupFileNameForSlot(gameEngineFromString, i3) : rpgMakerSaveStore.fileNameForSlot(gameEngineFromString, i3));
    }

    public final File e(String str, boolean z2) {
        GameEngine.Companion companion = GameEngine.INSTANCE;
        Game game = this.b;
        GameEngine gameEngineFromString = companion.fromString(game.getEngine());
        if (gameEngineFromString != GameEngine.MV && gameEngineFromString != GameEngine.MZ) {
            return null;
        }
        RpgMakerSaveStore rpgMakerSaveStore = RpgMakerSaveStore.INSTANCE;
        File fileSaveDir = rpgMakerSaveStore.saveDir(game);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdirs();
        }
        String strExtension = rpgMakerSaveStore.extension(gameEngineFromString);
        String strReplace = new Regex("[^a-zA-Z0-9_\\-]").replace(str, "_");
        return new File(fileSaveDir, z2 ? a.h(strReplace, strExtension, ".bak") : a.g(strReplace, strExtension));
    }

    @JavascriptInterface
    public final void exit() {
        if (this.f6366n.f1850c) {
            this.f.invoke();
        }
    }

    public final File f(String str) throws IOException {
        File fileC = c();
        if (fileC != null) {
            String strF = StringsKt.F(str, '\\', '/');
            if (StringsKt.N(strF, "./")) {
                strF = strF.substring(2);
                Intrinsics.checkNotNullExpressionValue(strF, "substring(...)");
            }
            if (!StringsKt.isBlank(strF)) {
                File canonicalFile = fileC.getCanonicalFile();
                File canonicalFile2 = new File(fileC, strF).getCanonicalFile();
                if (Intrinsics.areEqual(canonicalFile2, canonicalFile)) {
                    return canonicalFile2;
                }
                String path = canonicalFile2.getPath();
                Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
                if (StringsKt.N(path, canonicalFile.getPath() + File.separator)) {
                    return canonicalFile2;
                }
            }
        }
        return null;
    }

    @JavascriptInterface
    public final boolean fsAppendFile(String relativePath, String base64Data) {
        File parentFile;
        File parentFile2;
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        Intrinsics.checkNotNullParameter(base64Data, "base64Data");
        try {
            File fileF = f(relativePath);
            if (fileF != null && ((parentFile = fileF.getParentFile()) == null || parentFile.mkdirs() || ((parentFile2 = fileF.getParentFile()) != null && parentFile2.isDirectory()))) {
                byte[] bArrDecode = Base64.decode(base64Data, 0);
                Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(...)");
                FilesKt.appendBytes(fileF, bArrDecode);
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    @JavascriptInterface
    public final boolean fsExists(String relativePath) {
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        try {
            File fileF = f(relativePath);
            return fileF != null && fileF.exists();
        } catch (Exception unused) {
        }
    }

    @JavascriptInterface
    public final boolean fsMkdir(String relativePath) {
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        try {
            File fileF = f(relativePath);
            if (fileF == null) {
                return false;
            }
            return fileF.isDirectory() || fileF.mkdirs();
        } catch (Exception unused) {
            return false;
        }
    }

    @JavascriptInterface
    public final String fsReadDir(String relativePath) {
        Collection collectionEmptyList;
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        try {
            File fileF = f(relativePath);
            if (fileF == null || !fileF.isDirectory()) {
                return "[]";
            }
            File[] fileArrListFiles = fileF.listFiles();
            if (fileArrListFiles != null) {
                collectionEmptyList = new ArrayList(fileArrListFiles.length);
                for (File file : fileArrListFiles) {
                    collectionEmptyList.add(file.getName());
                }
            } else {
                collectionEmptyList = CollectionsKt.emptyList();
            }
            String string = new JSONArray(collectionEmptyList).toString();
            Intrinsics.checkNotNull(string);
            return string;
        } catch (Exception unused) {
            return "[]";
        }
    }

    @JavascriptInterface
    public final boolean fsRmdir(String relativePath) {
        File canonicalFile;
        File fileF;
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        try {
            File fileC = c();
            return (fileC == null || (canonicalFile = fileC.getCanonicalFile()) == null || (fileF = f(relativePath)) == null || Intrinsics.areEqual(fileF, canonicalFile) || !fileF.isDirectory() || !fileF.delete()) ? false : true;
        } catch (Exception unused) {
        }
    }

    @JavascriptInterface
    public final String fsStat(String relativePath) {
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        try {
            File fileF = f(relativePath);
            if (fileF == null || !fileF.exists()) {
                return "{}";
            }
            String string = new JSONObject().put("file", fileF.isFile()).put("directory", fileF.isDirectory()).put("size", fileF.length()).toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        } catch (Exception unused) {
            return "{}";
        }
    }

    @JavascriptInterface
    public final boolean fsUnlink(String relativePath) {
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        try {
            File fileF = f(relativePath);
            return fileF != null && fileF.isFile() && fileF.delete();
        } catch (Exception unused) {
        }
    }

    @JavascriptInterface
    public final boolean fsWriteFile(String relativePath, String base64Data) {
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        Intrinsics.checkNotNullParameter(base64Data, "base64Data");
        try {
            File fileF = f(relativePath);
            if (fileF == null) {
                return false;
            }
            File parentFile = fileF.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            byte[] bArrDecode = Base64.decode(base64Data, 0);
            Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(...)");
            FilesKt.writeBytes(fileF, bArrDecode);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @JavascriptInterface
    public final int getQuickSaveSlot() {
        return 999;
    }

    @JavascriptInterface
    public final String getRenderMode() {
        Set set = S1.d.f2060a;
        return S1.d.f(this.f6356a);
    }

    @JavascriptInterface
    public final String getTransColor() {
        Set set = S1.d.f2060a;
        return S1.d.h(this.f6356a);
    }

    @JavascriptInterface
    public final String getTransFont() {
        Set set = S1.d.f2060a;
        return S1.d.i(this.f6356a);
    }

    @JavascriptInterface
    public final int getTransFontSize() {
        Set set = S1.d.f2060a;
        return S1.d.j(this.f6356a);
    }

    @JavascriptInterface
    public final String getTransSource() {
        Set set = S1.d.f2060a;
        return S1.d.k(this.f6356a);
    }

    @JavascriptInterface
    public final String getTransTarget() {
        Set set = S1.d.f2060a;
        return S1.d.l(this.f6356a);
    }

    @JavascriptInterface
    public final String getUtilities() {
        return this.f6367o;
    }

    @JavascriptInterface
    public final void hideSubtitle() {
        C0427y c0427y;
        if (!this.f6366n.f1850c || (c0427y = this.f6362j) == null) {
            return;
        }
        c0427y.invoke(null);
    }

    @JavascriptInterface
    public final boolean isTranslationEnabled() {
        Set set = S1.d.f2060a;
        return S1.d.m(this.f6356a);
    }

    @JavascriptInterface
    public final String loadBackup(int i3) {
        try {
            File fileD = d(i3, true);
            if (fileD != null && fileD.exists() && fileD.isFile()) {
                return FilesKt__FileReadWriteKt.readText$default(fileD, null, 1, null);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @JavascriptInterface
    public final String loadBackupByName(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        try {
            File fileE = e(name, true);
            if (fileE != null && fileE.exists() && fileE.isFile()) {
                return FilesKt__FileReadWriteKt.readText$default(fileE, null, 1, null);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @JavascriptInterface
    public final String loadGame(int i3) {
        try {
            File fileD = d(i3, false);
            if (fileD != null && fileD.exists() && fileD.isFile()) {
                return FilesKt__FileReadWriteKt.readText$default(fileD, null, 1, null);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @JavascriptInterface
    public final String loadGameByName(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        try {
            File fileE = e(name, false);
            if (fileE != null && fileE.exists() && fileE.isFile()) {
                return FilesKt__FileReadWriteKt.readText$default(fileE, null, 1, null);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @JavascriptInterface
    public final void log(String line) {
        Intrinsics.checkNotNullParameter(line, "msg");
        if (this.f6366n.f1850c) {
            Log.i("MinHub-JS", StringsKt.takeLast(line, 36000));
            d dVar = this.f6366n;
            synchronized (dVar) {
                Intrinsics.checkNotNullParameter(line, "line");
                if (dVar.f1850c) {
                    Iterator<String> it = StringsKt.lineSequence(StringsKt.takeLast(line, 36000)).iterator();
                    while (it.hasNext()) {
                        dVar.f1853h.addLast(StringsKt.takeLast(it.next(), 300));
                        while (dVar.f1853h.size() > 120) {
                            dVar.f1853h.removeFirst();
                        }
                    }
                }
            }
        }
    }

    @JavascriptInterface
    public final boolean removeBackup(int i3) {
        try {
            File fileD = d(i3, true);
            if (fileD == null) {
                return false;
            }
            return !fileD.exists() || fileD.delete();
        } catch (Exception unused) {
            return false;
        }
    }

    @JavascriptInterface
    public final boolean removeBackupByName(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        try {
            File fileE = e(name, true);
            if (fileE == null) {
                return false;
            }
            return !fileE.exists() || fileE.delete();
        } catch (Exception unused) {
            return false;
        }
    }

    @JavascriptInterface
    public final boolean removeSave(int i3) {
        try {
            File fileD = d(i3, false);
            return fileD != null && (!fileD.exists() || fileD.delete());
        } catch (Exception unused) {
        }
    }

    @JavascriptInterface
    public final boolean removeSaveByName(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        try {
            File fileE = e(name, false);
            return fileE != null && (!fileE.exists() || fileE.delete());
        } catch (Exception unused) {
        }
    }

    @JavascriptInterface
    public final void reportActualRenderer(String mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        boolean z2 = this.f6366n.f1850c;
    }

    @JavascriptInterface
    public final boolean reportError(String title, String str) {
        Intrinsics.checkNotNullParameter(title, "title");
        if (!this.f6366n.f1850c) {
            return false;
        }
        E.b.x("game error reported: ", StringsKt.take(title, 220), "MinHub-BugReport");
        A a3 = this.f6364l;
        if (a3 != null) {
            return ((Boolean) a3.invoke(StringsKt.take(title, 1024), str != null ? StringsKt.take(str, 1500) : null)).booleanValue();
        }
        return false;
    }

    @JavascriptInterface
    public final void requestBootReload(String str) {
        if (this.f6366n.f1850c) {
            E.b.x("Boot watchdog requested reload: ", str, "MinHub-Launch");
            r rVar = this.f6363k;
            if (rVar != null) {
                rVar.invoke(str);
            }
        }
    }

    @JavascriptInterface
    public final void requestKeyboard(int i3, String title, String defaultValue) {
        B b;
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (1 > i3 || i3 >= 5001 || !this.f6366n.f1850c || (b = this.f6365m) == null) {
            return;
        }
        b.invoke(Integer.valueOf(i3), StringsKt.take(title, 100), StringsKt.take(defaultValue, 500));
    }

    @JavascriptInterface
    public final void save() {
        if (this.f6366n.f1850c) {
            this.g.getClass();
            int i3 = GameActivity.f3676L;
            Unit unit = Unit.INSTANCE;
        }
    }

    @JavascriptInterface
    public final boolean saveBackup(int i3, String str) {
        if (str == null) {
            return false;
        }
        try {
            File fileD = d(i3, true);
            if (fileD == null) {
                return false;
            }
            return g(fileD, str);
        } catch (Exception unused) {
            return false;
        }
    }

    @JavascriptInterface
    public final boolean saveBackupByName(String name, String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (str == null) {
            return false;
        }
        try {
            File fileE = e(name, true);
            if (fileE == null) {
                return false;
            }
            return g(fileE, str);
        } catch (Exception unused) {
            return false;
        }
    }

    @JavascriptInterface
    public final boolean saveExists(int i3) {
        File fileD = d(i3, false);
        return fileD != null && fileD.exists();
    }

    @JavascriptInterface
    public final boolean saveExistsByName(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        File fileE = e(name, false);
        return fileE != null && fileE.exists();
    }

    @JavascriptInterface
    public final boolean saveGame(int i3, String str) {
        if (str != null) {
            try {
                File fileD = d(i3, false);
                if (fileD != null) {
                    return g(fileD, str);
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    @JavascriptInterface
    public final boolean saveGameByName(String name, String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (str != null) {
            try {
                File fileE = e(name, false);
                if (fileE != null) {
                    return g(fileE, str);
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    @JavascriptInterface
    public final void screenshot() {
        if (this.f6366n.f1850c) {
            this.f6360h.invoke();
        }
    }

    @JavascriptInterface
    public final void setFps(int i3) {
        C0427y c0427y;
        if (!this.f6366n.f1850c || (c0427y = this.f6361i) == null) {
            return;
        }
        c0427y.invoke(Integer.valueOf(i3));
    }

    @JavascriptInterface
    public final void showSubtitle(String text) {
        C0427y c0427y;
        Intrinsics.checkNotNullParameter(text, "text");
        if (!this.f6366n.f1850c || (c0427y = this.f6362j) == null) {
            return;
        }
        c0427y.invoke(text);
    }
}
