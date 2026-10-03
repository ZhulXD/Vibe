package com.minhub.gamehub.data;

import C1.AbstractC0082l0;
import C1.C0079k0;
import android.util.Log;
import com.bumptech.glide.c;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/minhub/gamehub/data/GameMetadataSync;", "", "<init>", "()V", "TAG", "", "syncFromDisk", "Lcom/minhub/gamehub/data/Game;", "game", "engineCache", "Lcom/minhub/gamehub/data/EngineCache;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameMetadataSync.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameMetadataSync.kt\ncom/minhub/gamehub/data/GameMetadataSync\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"})
public final class GameMetadataSync {
    public static final GameMetadataSync INSTANCE = new GameMetadataSync();
    private static final String TAG = "GameMetadataSync";

    private GameMetadataSync() {
    }

    public static /* synthetic */ Game syncFromDisk$default(GameMetadataSync gameMetadataSync, Game game, EngineCache engineCache, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            engineCache = null;
        }
        return gameMetadataSync.syncFromDisk(game, engineCache);
    }

    @JvmOverloads
    public final Game syncFromDisk(Game game) {
        Intrinsics.checkNotNullParameter(game, "game");
        return syncFromDisk$default(this, game, null, 2, null);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002f A[PHI: r2
      0x002f: PHI (r2v15 java.io.File) = (r2v6 java.io.File), (r2v7 java.io.File), (r2v16 java.io.File) binds: [B:23:0x0046, B:27:0x0057, B:14:0x002c] A[DONT_GENERATE, DONT_INLINE]] */
    @JvmOverloads
    public final Game syncFromDisk(Game game, EngineCache engineCache) {
        File file;
        File file2;
        EngineDetector.Result resultDetect;
        File parentFile;
        String iconPath;
        String bgPath;
        Intrinsics.checkNotNullParameter(game, "game");
        String gamePath = game.getGamePath();
        File file3 = null;
        if (StringsKt.isBlank(gamePath)) {
            gamePath = null;
        }
        if (gamePath == null) {
            return game;
        }
        File file4 = new File(gamePath);
        S1.b bVarK = c.K(file4);
        if (bVarK == null || (file = bVarK.f2056a) == null) {
            file = file4;
        }
        if (bVarK == null || (file2 = bVarK.f2057c) == null) {
            file2 = new File(file4, "gameconfig.txt");
            if (!file2.exists() || !file2.isFile()) {
                file2 = null;
            }
            if (file2 == null) {
                file2 = new File(file, "gameconfig.txt");
                if (file2.exists() && file2.isFile()) {
                    file3 = file2;
                }
            } else {
                file3 = file2;
            }
        } else {
            file3 = file2;
        }
        C0079k0 c0079k0B = file3 != null ? AbstractC0082l0.b(file3) : new C0079k0();
        String str = c0079k0B.f631d;
        if (engineCache == null || (resultDetect = engineCache.resolve(file, str)) == null) {
            resultDetect = EngineDetector.INSTANCE.detect(file, str);
        }
        String strName = resultDetect.getEngine().name();
        if (!StringsKt.isBlank(game.getEngine()) && !StringsKt.equals(game.getEngine(), strName, true)) {
            String title = game.getTitle();
            String engine = game.getEngine();
            String evidence = resultDetect.getEvidence();
            if (evidence == null) {
                evidence = "none, label/HTML fallback";
            }
            String absolutePath = file.getAbsolutePath();
            StringBuilder sbJ = kotlin.collections.unsigned.a.j("engine reclassified for '", title, "': ", engine, " -> ");
            kotlin.collections.unsigned.a.n(sbJ, strName, " (evidence=", evidence, ", path=");
            sbJ.append(absolutePath);
            sbJ.append(")");
            Log.w(TAG, sbJ.toString());
        }
        if (file3 == null || (parentFile = file3.getParentFile()) == null) {
            parentFile = file;
        }
        File fileI = c.I(parentFile, c0079k0B.b);
        File fileI2 = c.I(parentFile, c0079k0B.f630c);
        String title2 = c0079k0B.f629a;
        if (title2 == null) {
            title2 = game.getTitle();
        }
        String version = c0079k0B.f632e;
        if (version == null) {
            version = game.getVersion();
        }
        String absolutePath2 = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
        if (fileI == null || (iconPath = fileI.getAbsolutePath()) == null) {
            iconPath = game.getIconPath();
        }
        String str2 = iconPath;
        if (fileI2 == null || (bgPath = fileI2.getAbsolutePath()) == null) {
            bgPath = game.getBgPath();
        }
        String str3 = bgPath;
        GamePluginScanner gamePluginScanner = GamePluginScanner.INSTANCE;
        return Game.copy$default(game, 0, title2, strName, version, null, absolutePath2, str2, str3, null, null, null, false, 0, 0L, 0, null, 0, gamePluginScanner.toPluginsJson(gamePluginScanner.scanEnabledPluginNames(file)), null, null, null, null, false, 0L, null, null, null, 134086417, null);
    }
}
