package com.minhub.gamehub.data;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import p064y1.AbstractC0367d1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\tJ\u0018\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0002J0\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u000e2\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u0015R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/minhub/gamehub/data/GameStorageMaintenance;", "", "<init>", "()V", "TAG", "", "removeGameSideData", "", "context", "Landroid/content/Context;", "gameId", "", "sweepEmptyGameFolders", "installedGamePaths", "", "app", "removeEmptyGameFolders", "gamesRoot", "Ljava/io/File;", "inUsePaths", "minAgeMs", "", "now", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameStorageMaintenance.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameStorageMaintenance.kt\ncom/minhub/gamehub/data/GameStorageMaintenance\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1#2:123\n1#2:126\n1#2:131\n1625#3:124\n1869#3:125\n1870#3:127\n1626#3:128\n1625#3:129\n1869#3:130\n1870#3:132\n1626#3:133\n*S KotlinDebug\n*F\n+ 1 GameStorageMaintenance.kt\ncom/minhub/gamehub/data/GameStorageMaintenance\n*L\n75#1:126\n103#1:131\n75#1:124\n75#1:125\n75#1:127\n75#1:128\n103#1:129\n103#1:130\n103#1:132\n103#1:133\n*E\n"})
public final class GameStorageMaintenance {
    public static final GameStorageMaintenance INSTANCE = new GameStorageMaintenance();
    private static final String TAG = "MinHub-GameStorage";

    private GameStorageMaintenance() {
    }

    private final Set<String> installedGamePaths(Context app) {
        Object objM9constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            File file = new File(app.getFilesDir(), GameStorage.FILE_NAME);
            if (!file.isFile()) {
                return SetsKt.emptySet();
            }
            List storedGamesJson$default = GameStorageKt.parseStoredGamesJson$default(FilesKt__FileReadWriteKt.readText$default(file, null, 1, null), null, 2, null);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = storedGamesJson$default.iterator();
            while (it.hasNext()) {
                String gamePath = ((Game) it.next()).getGamePath();
                if (StringsKt.isBlank(gamePath)) {
                    gamePath = null;
                }
                if (gamePath != null) {
                    linkedHashSet.add(gamePath);
                }
            }
            objM9constructorimpl = Result.m9constructorimpl(linkedHashSet);
            return (Set) (Result.m15isFailureimpl(objM9constructorimpl) ? null : objM9constructorimpl);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static /* synthetic */ int removeEmptyGameFolders$default(GameStorageMaintenance gameStorageMaintenance, File file, Set set, long j2, long j3, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            j2 = 600000;
        }
        long j4 = j2;
        if ((i3 & 8) != 0) {
            j3 = System.currentTimeMillis();
        }
        return gameStorageMaintenance.removeEmptyGameFolders(file, set, j4, j3);
    }

    public final int removeEmptyGameFolders(File gamesRoot, Set<String> inUsePaths, long minAgeMs, long now) {
        Object objM9constructorimpl;
        Object objM9constructorimpl2;
        Object objM9constructorimpl3;
        Object objM9constructorimpl4;
        Object objM9constructorimpl5;
        Object objM9constructorimpl6;
        Intrinsics.checkNotNullParameter(gamesRoot, "gamesRoot");
        Intrinsics.checkNotNullParameter(inUsePaths, "inUsePaths");
        if (!gamesRoot.isDirectory()) {
            return 0;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = inUsePaths.iterator();
        while (true) {
            if (it.hasNext()) {
                String str = (String) it.next();
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM9constructorimpl6 = Result.m9constructorimpl(new File(str).getCanonicalPath());
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl6 = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                String str2 = (String) (Result.m15isFailureimpl(objM9constructorimpl6) ? null : objM9constructorimpl6);
                if (str2 != null) {
                    linkedHashSet.add(str2);
                }
            } else {
                try {
                    break;
                } catch (Throwable th2) {
                    Result.Companion companion3 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th2));
                }
            }
        }
        Result.Companion companion4 = Result.INSTANCE;
        objM9constructorimpl = Result.m9constructorimpl(gamesRoot.listFiles());
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = null;
        }
        File[] fileArr = (File[]) objM9constructorimpl;
        if (fileArr == null) {
            return 0;
        }
        int i3 = 0;
        for (File file : fileArr) {
            if (file.isDirectory()) {
                try {
                    Result.Companion companion5 = Result.INSTANCE;
                    objM9constructorimpl2 = Result.m9constructorimpl(file.list());
                } catch (Throwable th3) {
                    Result.Companion companion6 = Result.INSTANCE;
                    objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th3));
                }
                if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                    objM9constructorimpl2 = null;
                }
                String[] strArr = (String[]) objM9constructorimpl2;
                if (strArr != null) {
                    if (strArr.length == 0) {
                        try {
                            objM9constructorimpl3 = Result.m9constructorimpl(Long.valueOf(file.lastModified()));
                        } catch (Throwable th4) {
                            Result.Companion companion7 = Result.INSTANCE;
                            objM9constructorimpl3 = Result.m9constructorimpl(ResultKt.createFailure(th4));
                        }
                        if (Result.m15isFailureimpl(objM9constructorimpl3)) {
                            objM9constructorimpl3 = 0L;
                        }
                        long jLongValue = ((Number) objM9constructorimpl3).longValue();
                        if (jLongValue <= 0 || now - jLongValue >= minAgeMs) {
                            try {
                                objM9constructorimpl4 = Result.m9constructorimpl(file.getCanonicalPath());
                            } catch (Throwable th5) {
                                Result.Companion companion8 = Result.INSTANCE;
                                objM9constructorimpl4 = Result.m9constructorimpl(ResultKt.createFailure(th5));
                            }
                            if (Result.m15isFailureimpl(objM9constructorimpl4)) {
                                objM9constructorimpl4 = null;
                            }
                            String str3 = (String) objM9constructorimpl4;
                            if (str3 == null || !linkedHashSet.contains(str3)) {
                                try {
                                    objM9constructorimpl5 = Result.m9constructorimpl(Boolean.valueOf(file.delete()));
                                } catch (Throwable th6) {
                                    Result.Companion companion9 = Result.INSTANCE;
                                    objM9constructorimpl5 = Result.m9constructorimpl(ResultKt.createFailure(th6));
                                }
                                Boolean bool = Boolean.FALSE;
                                if (Result.m15isFailureimpl(objM9constructorimpl5)) {
                                    objM9constructorimpl5 = bool;
                                }
                                if (((Boolean) objM9constructorimpl5).booleanValue()) {
                                    i3++;
                                }
                            }
                        }
                    }
                }
            }
        }
        if (i3 > 0) {
            Log.i(TAG, "Removed " + i3 + " empty game folder(s)");
        }
        return i3;
    }

    public final void removeGameSideData(Context context, int gameId) {
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        TranslationOverlayPaths translationOverlayPaths = TranslationOverlayPaths.INSTANCE;
        File filesDir = applicationContext.getFilesDir();
        Intrinsics.checkNotNullExpressionValue(filesDir, "getFilesDir(...)");
        File fileGameRoot = translationOverlayPaths.gameRoot(filesDir, gameId);
        File cacheDir = applicationContext.getCacheDir();
        Intrinsics.checkNotNullExpressionValue(cacheDir, "getCacheDir(...)");
        File fileWorkRoot = translationOverlayPaths.workRoot(cacheDir, gameId);
        Set set = AbstractC0367d1.f6210a;
        File filesDir2 = applicationContext.getFilesDir();
        Intrinsics.checkNotNullExpressionValue(filesDir2, "getFilesDir(...)");
        for (File file : CollectionsKt.listOf((Object[]) new File[]{fileGameRoot, fileWorkRoot, AbstractC0367d1.c(filesDir2, gameId)})) {
            if (file.exists()) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(Boolean.valueOf(FilesKt.deleteRecursively(file)));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                Boolean bool = Boolean.FALSE;
                if (Result.m15isFailureimpl(objM9constructorimpl)) {
                    objM9constructorimpl = bool;
                }
                Log.i(TAG, ((Boolean) objM9constructorimpl).booleanValue() ? "Removed " + file.getName() + " data for game " + gameId : kotlin.collections.unsigned.a.o("Could not remove ", file.getAbsolutePath()));
            }
        }
    }

    public final int sweepEmptyGameFolders(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNull(applicationContext);
        Set<String> setInstalledGamePaths = installedGamePaths(applicationContext);
        if (setInstalledGamePaths == null) {
            Log.w(TAG, "Could not read the stored library; skipping the sweep");
            return 0;
        }
        File externalFilesDir = applicationContext.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            externalFilesDir = applicationContext.getFilesDir();
        }
        return removeEmptyGameFolders$default(this, new File(externalFilesDir, "games"), setInstalledGamePaths, 0L, 0L, 12, null);
    }
}
