package com.minhub.gamehub.data;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0012\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\"\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\"\u0015\u0010\t\u001a\u00020\n*\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\"\u0015\u0010\r\u001a\u00020\u0001*\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"rmCoreEngine", "", "root", "Ljava/io/File;", "engineEnum", "Lcom/minhub/gamehub/data/GameEngine;", "Lcom/minhub/gamehub/data/Game;", "getEngineEnum", "(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;", "statusEnum", "Lcom/minhub/gamehub/data/GameStatus;", "getStatusEnum", "(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameStatus;", "playtimeLabel", "getPlaytimeLabel", "(Lcom/minhub/gamehub/data/Game;)Ljava/lang/String;", "app_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class GameKt {
    public static final GameEngine getEngineEnum(Game game) {
        Intrinsics.checkNotNullParameter(game, "<this>");
        return GameEngine.INSTANCE.fromString(game.getEngine());
    }

    public static final String getPlaytimeLabel(Game game) {
        Intrinsics.checkNotNullParameter(game, "<this>");
        if (game.getPlaytimeMinutes() == 0) {
            return "0h";
        }
        int playtimeMinutes = game.getPlaytimeMinutes() / 60;
        int playtimeMinutes2 = game.getPlaytimeMinutes() % 60;
        if (playtimeMinutes2 == 0) {
            return playtimeMinutes + "h";
        }
        return playtimeMinutes + "h " + playtimeMinutes2 + "m";
    }

    public static final GameStatus getStatusEnum(Game game) {
        Intrinsics.checkNotNullParameter(game, "<this>");
        return GameStatus.valueOf(game.getStatus());
    }

    public static final String rmCoreEngine(File root) {
        Intrinsics.checkNotNullParameter(root, "root");
        if (new File(root, "js/rmmz_core.js").isFile()) {
            return "MZ";
        }
        if (new File(root, "js/rpg_core.js").isFile()) {
            return "MV";
        }
        return null;
    }
}
