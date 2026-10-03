package C1;

import androidx.recyclerview.widget.RecyclerView;
import com.minhub.gamehub.hub.GameDetailActivity;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class N0 extends P.E {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ GameDetailActivity f475d;

    public N0(GameDetailActivity gameDetailActivity) {
        this.f475d = gameDetailActivity;
        this.f1548a = -1;
    }

    public final int f(RecyclerView recyclerView, P.y0 viewHolder) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        b2 b2Var = this.f475d.f3774r;
        if (b2Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pluginManagerAdapter");
            b2Var = null;
        }
        return b2Var.f562j ? 196611 : 0;
    }
}
