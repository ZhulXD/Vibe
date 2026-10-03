package C1;

import A1.C0015e;
import V1.InterfaceC0207x;
import android.util.Log;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.data.GamePluginScanner;
import com.minhub.gamehub.data.TranslationOverlayInstaller;
import com.minhub.gamehub.data.TranslationOverlayPaths;
import com.minhub.gamehub.data.TranslationOverlayResult;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.catalog.OnlineTranslationPackage;
import com.minhub.gamehub.hub.catalog.RemoteZipImporter;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class T0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Game f500c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public /* synthetic */ Object f501d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f502e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T0(Game game, G1.s sVar, Continuation continuation) {
        super(2, continuation);
        this.f500c = game;
        this.f502e = sVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                return new T0((GameDetailActivity) this.f501d, this.f500c, (OnlineTranslationPackage) this.f502e, continuation);
            default:
                T0 t2 = new T0(this.f500c, (G1.s) this.f502e, continuation);
                t2.f501d = obj;
                return t2;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        InterfaceC0207x interfaceC0207x = (InterfaceC0207x) obj;
        Continuation continuation = (Continuation) obj2;
        switch (this.b) {
            case 0:
                break;
        }
        return ((T0) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        TranslationOverlayResult translationOverlayResult;
        File file;
        Object objM9constructorimpl;
        Object objM9constructorimpl2;
        H1.b bVarT;
        File file2;
        String strRmCoreEngine;
        int i3 = this.b;
        Object obj2 = this.f502e;
        Game g = this.f500c;
        switch (i3) {
            case 0:
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                GameDetailActivity gameDetailActivity = (GameDetailActivity) this.f501d;
                OnlineTranslationPackage pkg = (OnlineTranslationPackage) obj2;
                Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
                Intrinsics.checkNotNullParameter(g, "g");
                Intrinsics.checkNotNullParameter(pkg, "pkg");
                File file3 = new File(g.getGamePath());
                if (file3.exists() && file3.isDirectory()) {
                    TranslationOverlayPaths translationOverlayPaths = TranslationOverlayPaths.INSTANCE;
                    File cacheDir = gameDetailActivity.getCacheDir();
                    Intrinsics.checkNotNullExpressionValue(cacheDir, "getCacheDir(...)");
                    File fileWorkRoot = translationOverlayPaths.workRoot(cacheDir, g.getId());
                    RemoteZipImporter remoteZipImporter = RemoteZipImporter.INSTANCE;
                    File fileResolve = FilesKt.resolve(fileWorkRoot, remoteZipImporter.resolveArchiveFileName(g.getTitle(), pkg.getUrl()));
                    File fileResolve2 = FilesKt.resolve(fileWorkRoot, "staging");
                    try {
                        try {
                            fileWorkRoot.mkdirs();
                            RemoteZipImporter.downloadZip$default(remoteZipImporter, pkg.getUrl(), fileResolve, null, null, 12, null);
                            File file4 = new File(file3, "game.zip");
                            if (GameKt.getEngineEnum(g) != GameEngine.RENPY8 && (GameKt.getEngineEnum(g) != GameEngine.RENPY7 || !file4.exists())) {
                                TranslationOverlayInstaller translationOverlayInstaller = TranslationOverlayInstaller.INSTANCE;
                                translationOverlayInstaller.extractOverlayArchive(fileResolve, fileResolve2);
                                translationOverlayResult = translationOverlayInstaller.installOverlayFromDirectory(file3, fileResolve2, com.bumptech.glide.d.a0(gameDetailActivity, g));
                                if (translationOverlayResult.getSuccess() && (file = (File) SequencesKt.firstOrNull(SequencesKt___SequencesKt.filter(FilesKt.walkTopDown(file3), new C0015e(17)))) != null) {
                                    try {
                                        Result.Companion companion = Result.INSTANCE;
                                        objM9constructorimpl = Result.m9constructorimpl(StringsKt.take(TextStreamsKt.readText(new BufferedReader(new InputStreamReader(new FileInputStream(file), Charsets.UTF_8), 8192)), 200));
                                    } catch (Throwable th) {
                                        Result.Companion companion2 = Result.INSTANCE;
                                        objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                                    }
                                    if (Result.m15isFailureimpl(objM9constructorimpl)) {
                                        objM9constructorimpl = "<err>";
                                    }
                                    Log.d("MinHub-Diag", "Sample KS after install (" + file.getName() + "): " + ((String) objM9constructorimpl));
                                }
                                fileResolve.delete();
                                FilesKt.deleteRecursively(fileResolve2);
                                break;
                            }
                            TranslationOverlayResult translationOverlayResultInstallRenpyGameZipPatch = TranslationOverlayInstaller.INSTANCE.installRenpyGameZipPatch(file3, fileResolve, com.bumptech.glide.d.a0(gameDetailActivity, g));
                            fileResolve.delete();
                            FilesKt.deleteRecursively(fileResolve2);
                            return translationOverlayResultInstallRenpyGameZipPatch;
                        } catch (Exception e2) {
                            TranslationOverlayResult translationOverlayResult2 = new TranslationOverlayResult(false, com.bumptech.glide.d.n(gameDetailActivity, e2), 0, 0, 12, null);
                            fileResolve.delete();
                            FilesKt.deleteRecursively(fileResolve2);
                            translationOverlayResult = translationOverlayResult2;
                        }
                    } catch (Throwable th2) {
                        fileResolve.delete();
                        FilesKt.deleteRecursively(fileResolve2);
                        throw th2;
                    }
                } else {
                    translationOverlayResult = new TranslationOverlayResult(false, "Game directory missing", 0, 0, 12, null);
                }
                return translationOverlayResult;
            default:
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                if (!StringsKt.isBlank(g.getStreamUrl())) {
                    return null;
                }
                G1.s sVar = (G1.s) obj2;
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    S1.b bVarK = com.bumptech.glide.c.K(new File(g.getGamePath()));
                    if (bVarK == null || (file2 = bVarK.f2056a) == null || (strRmCoreEngine = GameKt.rmCoreEngine(file2)) == null) {
                        bVarT = null;
                    } else {
                        String lowerCase = strRmCoreEngine.toLowerCase(Locale.ROOT);
                        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                        if (lowerCase != null && (Intrinsics.areEqual(lowerCase, "mv") || Intrinsics.areEqual(lowerCase, "mz"))) {
                            String strValueOf = String.valueOf(g.getId());
                            List<String> listScanEnabledPluginNames = GamePluginScanner.INSTANCE.scanEnabledPluginNames(file2);
                            LinkedHashMap linkedHashMapA = sVar.a();
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            for (Map.Entry entry : linkedHashMapA.entrySet()) {
                                if (((Boolean) entry.getValue()).booleanValue()) {
                                    linkedHashMap.put(entry.getKey(), entry.getValue());
                                }
                            }
                            bVarT = com.bumptech.glide.d.T(new H1.a(lowerCase, strValueOf, listScanEnabledPluginNames, linkedHashMap.keySet()));
                        } else {
                            bVarT = null;
                        }
                    }
                    objM9constructorimpl2 = Result.m9constructorimpl(bVarT);
                    break;
                } catch (Throwable th3) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th3));
                }
                return (H1.b) (Result.m15isFailureimpl(objM9constructorimpl2) ? null : objM9constructorimpl2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T0(GameDetailActivity gameDetailActivity, Game game, OnlineTranslationPackage onlineTranslationPackage, Continuation continuation) {
        super(2, continuation);
        this.f501d = gameDetailActivity;
        this.f500c = game;
        this.f502e = onlineTranslationPackage;
    }
}
