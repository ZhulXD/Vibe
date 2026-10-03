package C1;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.ViewModelKt;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameRepository;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Z0 extends AndroidViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GameRepository f542a;
    public final LiveData b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Z0(Application app) {
        super(app);
        Intrinsics.checkNotNullParameter(app, "app");
        GameRepository gameRepository = new GameRepository(app);
        this.f542a = gameRepository;
        this.b = gameRepository.getGames();
    }

    public final void a(Game g) {
        Intrinsics.checkNotNullParameter(g, "g");
        V1.A.c(ViewModelKt.getViewModelScope(this), V1.H.b, new Y0(this, g, null, 2), 2);
    }
}
