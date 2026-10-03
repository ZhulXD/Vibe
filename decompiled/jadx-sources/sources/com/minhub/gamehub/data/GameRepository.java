package com.minhub.gamehub.data;

import android.content.Context;
import androidx.lifecycle.LiveData;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000bJ\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000bJ\u000e\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u000bJ\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000bJ\u0016\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0016\u001a\u00020\u0017R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u001a"}, d2 = {"Lcom/minhub/gamehub/data/GameRepository;", "", "ctx", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "storage", "Lcom/minhub/gamehub/data/GameStorage;", "games", "Landroidx/lifecycle/LiveData;", "", "Lcom/minhub/gamehub/data/Game;", "getGames", "()Landroidx/lifecycle/LiveData;", "insert", "g", "update", "", "replaceInstall", "delete", "toggleFavorite", "addPlaytime", "id", "", "minutes", "findById", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class GameRepository {
    private final LiveData<List<Game>> games;
    private final GameStorage storage;

    public GameRepository(Context ctx) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        GameStorage gameStorage = GameStorage.INSTANCE.get(ctx);
        this.storage = gameStorage;
        this.games = gameStorage.getGames();
    }

    public final void addPlaytime(int id, int minutes) {
        this.storage.addPlaytime(id, minutes, System.currentTimeMillis());
    }

    public final Object delete(Game g) {
        Intrinsics.checkNotNullParameter(g, "g");
        return this.storage.delete(g);
    }

    public final Game findById(int id) {
        return this.storage.findById(id);
    }

    public final LiveData<List<Game>> getGames() {
        return this.games;
    }

    public final Game insert(Game g) {
        Intrinsics.checkNotNullParameter(g, "g");
        return this.storage.insert(g);
    }

    public final void replaceInstall(Game g) {
        Intrinsics.checkNotNullParameter(g, "g");
        this.storage.replaceInstall(g);
    }

    public final void toggleFavorite(Game g) {
        Intrinsics.checkNotNullParameter(g, "g");
        this.storage.setFavorite(g.getId(), !g.getFavorite());
    }

    public final void update(Game g) throws Throwable {
        Intrinsics.checkNotNullParameter(g, "g");
        this.storage.update(g);
    }
}
