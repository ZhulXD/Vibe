package org.renpy.android;

import M1.k;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import p064y1.B1;
import p064y1.C0429y1;
import p064y1.EnumC0420v1;
import p064y1.G1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class PythonSDLActivityRenpy7 extends PythonSDLActivity {
    private static final String LEGACY_KEY = "renpy7";
    private static final String LIB_NAME = "librenpython7.so";
    private static final String PLUGIN_PRIVATE_NAME = "private.mp3";
    private static final String TAG = "PythonSDL-Renpy7";
    private String runtimeKey;

    private File pluginPrivateFile() {
        return new File(new File(getFilesDir(), "engine-plugins/" + runtimeKey()), PLUGIN_PRIVATE_NAME);
    }

    private String privDirName() {
        return G1.d(runtimeKey());
    }

    private String privVersionName() {
        return G1.e(runtimeKey());
    }

    private String runtimeKey() {
        if (this.runtimeKey == null) {
            String stringExtra = getIntent() == null ? null : getIntent().getStringExtra("renpyRuntimeKey");
            L1.a aVarC = G1.c(stringExtra);
            String strA = aVarC != null ? aVarC.a() : null;
            this.runtimeKey = strA != null ? strA : LEGACY_KEY;
            StringBuilder sb = new StringBuilder("Ren'Py 7 core: ");
            sb.append(this.runtimeKey);
            sb.append((stringExtra == null || strA != null) ? "" : E.b.m(" (ignored unknown ", stringExtra, ")"));
            Log.i(TAG, sb.toString());
        }
        return this.runtimeKey;
    }

    @Override // org.renpy.android.PythonSDLActivity, org.libsdl.app.SDLActivity
    public String getMainSharedObject() {
        String strResolveRenpyAbi = resolveRenpyAbi();
        if (strResolveRenpyAbi == null) {
            throw new IllegalStateException("Ren'Py 7 ABI is unsupported");
        }
        File file = new File(getFilesDir(), "engine-plugins/" + runtimeKey() + "/" + strResolveRenpyAbi + "/librenpython7.so");
        if (file.isFile()) {
            return file.getAbsolutePath();
        }
        throw new IllegalStateException("Ren'Py 7 main shared object is missing: " + file);
    }

    @Override // org.renpy.android.PythonSDLActivity
    public String getRenpyPluginKey() {
        return runtimeKey();
    }

    @Override // org.renpy.android.PythonSDLActivity, org.libsdl.app.SDLActivity
    public void loadLibraries() {
        try {
            String strResolveRenpyAbi = resolveRenpyAbi();
            if (strResolveRenpyAbi == null) {
                throw new UnsatisfiedLinkError("Thiet bi khong ho tro ABI cho Ren'Py 7");
            }
            File file = new File(getFilesDir(), "engine-plugins/" + runtimeKey() + "/" + strResolveRenpyAbi + "/librenpython7.so");
            StringBuilder sb = new StringBuilder("Loading librenpython7.so from: ");
            sb.append(file.getAbsolutePath());
            Log.i(TAG, sb.toString());
            String installKey = runtimeKey();
            Regex regex = G1.f6072a;
            Intrinsics.checkNotNullParameter(this, "context");
            Intrinsics.checkNotNullParameter(installKey, "installKey");
            C0429y1 c0429y1 = C0429y1.f6409a;
            EnumC0420v1 plugin = EnumC0420v1.RENPY7;
            L1.a aVarC = G1.c(installKey);
            Intrinsics.checkNotNullParameter(this, "context");
            Intrinsics.checkNotNullParameter(plugin, "plugin");
            if (!C0429y1.r(aVarC, this, plugin).f1381a) {
                throw new UnsatisfiedLinkError("Ren'Py 7 runtime is missing or failed validation");
            }
            String installKey2 = runtimeKey();
            Intrinsics.checkNotNullParameter(this, "context");
            Intrinsics.checkNotNullParameter(installKey2, "installKey");
            L1.a aVarC2 = G1.c(installKey2);
            Intrinsics.checkNotNullParameter(this, "context");
            Intrinsics.checkNotNullParameter(plugin, "plugin");
            k kVarR = C0429y1.r(aVarC2, this, plugin);
            if (!kVarR.f1381a || !kVarR.f1383d) {
                Log.w(TAG, "Loading legacy Ren'Py 7 runtime without signed metadata");
            }
            System.load(file.getAbsolutePath());
            Log.i(TAG, "librenpython7.so loaded OK");
        } catch (UnsatisfiedLinkError e2) {
            Log.e(TAG, "Failed to load librenpython7.so: " + e2.getMessage());
            throw e2;
        }
    }

    @Override // org.renpy.android.PythonSDLActivity
    public void preparePrivateData() {
        Object objM9constructorimpl;
        String text$default;
        File file = new File(getFilesDir(), privDirName());
        File file2 = new File(getFilesDir(), privVersionName());
        long jCurrentTimeMillis = System.currentTimeMillis();
        RenpyPrivateArchive.Result resultPrepare = RenpyPrivateArchive.prepare(pluginPrivateFile(), file, file2);
        if (resultPrepare.ok()) {
            StringBuilder sb = new StringBuilder();
            sb.append(resultPrepare.extracted ? "Extracted" : "Reused");
            sb.append(" Ren'Py 7 private data at ");
            sb.append(file.getAbsolutePath());
            sb.append(" in ");
            sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
            sb.append(" ms");
            Log.i(TAG, sb.toString());
            nativeSetEnv("ANDROID_PRIVATE", file.getAbsolutePath());
            return;
        }
        Log.e(TAG, "Ren'Py 7 private data unusable (" + runtimeKey() + "): " + resultPrepare.failure);
        String installKey = runtimeKey();
        Regex regex = G1.f6072a;
        Intrinsics.checkNotNullParameter(this, "context");
        Intrinsics.checkNotNullParameter(installKey, "installKey");
        C0429y1 c0429y1 = C0429y1.f6409a;
        C0429y1.q(G1.c(installKey), this, EnumC0420v1.RENPY7);
        String detail = kotlin.collections.unsigned.a.i(new StringBuilder("Ren'Py 7 support pack is damaged. It will be downloaded again the next time you press Play. ("), resultPrepare.failure, ")");
        List list = B1.f6038a;
        Intrinsics.checkNotNullParameter(this, "context");
        Intrinsics.checkNotNullParameter(detail, "detail");
        List list2 = B1.f6038a;
        try {
            Result.Companion companion = Result.INSTANCE;
            File fileC = B1.c(this);
            if (fileC != null) {
                List listEmptyList = null;
                File file3 = fileC.isFile() ? fileC : null;
                if (file3 != null && (text$default = FilesKt__FileReadWriteKt.readText$default(file3, null, 1, null)) != null) {
                    listEmptyList = StringsKt__StringsKt.lines(text$default);
                }
                if (listEmptyList == null) {
                    listEmptyList = CollectionsKt.emptyList();
                }
                String str = (String) CollectionsKt.firstOrNull(listEmptyList);
                if (str != null && StringsKt.N(str, "started:")) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : listEmptyList) {
                        String str2 = (String) obj;
                        if (!StringsKt.isBlank(str2) && !StringsKt.N(str2, "detail=")) {
                            arrayList.add(obj);
                        }
                    }
                    FilesKt__FileReadWriteKt.writeText$default(fileC, CollectionsKt.o(CollectionsKt___CollectionsKt.plus((Collection<? extends String>) ((Collection<? extends Object>) arrayList), "detail=" + StringsKt.take(StringsKt.F(StringsKt.F(detail, '\n', ' '), '\r', ' '), 500)), "\n", null, null, null, 62), null, 2, null);
                    objM9constructorimpl = Result.m9constructorimpl(Unit.INSTANCE);
                    Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl);
                    if (thM12exceptionOrNullimpl != null) {
                        E.b.x("Could not record failure detail: ", thM12exceptionOrNullimpl.getMessage(), "MinHub-RenpyBoot");
                    }
                }
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        toastError(detail);
        throw new IllegalStateException("Ren'Py 7 private data unusable: " + resultPrepare.failure);
    }
}
