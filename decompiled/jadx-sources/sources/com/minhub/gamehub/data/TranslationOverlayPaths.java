package com.minhub.gamehub.data;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b¨\u0006\f"}, d2 = {"Lcom/minhub/gamehub/data/TranslationOverlayPaths;", "", "<init>", "()V", "gameRoot", "Ljava/io/File;", "filesDir", "gameId", "", "backupRoot", "workRoot", "cacheDir", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class TranslationOverlayPaths {
    public static final TranslationOverlayPaths INSTANCE = new TranslationOverlayPaths();

    private TranslationOverlayPaths() {
    }

    public final File backupRoot(File filesDir, int gameId) {
        Intrinsics.checkNotNullParameter(filesDir, "filesDir");
        return new File(gameRoot(filesDir, gameId), "backup");
    }

    public final File gameRoot(File filesDir, int gameId) {
        Intrinsics.checkNotNullParameter(filesDir, "filesDir");
        return new File(filesDir, E.b.i(gameId, "translation-overlays/game-"));
    }

    public final File workRoot(File cacheDir, int gameId) {
        Intrinsics.checkNotNullParameter(cacheDir, "cacheDir");
        return new File(cacheDir, E.b.i(gameId, "translation-overlays/game-"));
    }
}
