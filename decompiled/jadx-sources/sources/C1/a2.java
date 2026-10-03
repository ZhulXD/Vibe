package C1;

import android.view.View;
import android.widget.TextView;
import com.minhub.gamehub.R;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a2 extends P.y0 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final View f547u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final TextView f548v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final TextView f549w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final TextView f550x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final TextView f551y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final /* synthetic */ b2 f552z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a2(b2 b2Var, View view) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        this.f552z = b2Var;
        this.f547u = view.findViewById(R.id.iv_drag_handle);
        this.f548v = (TextView) view.findViewById(R.id.tv_plugin_name);
        this.f549w = (TextView) view.findViewById(R.id.tv_plugin_description);
        this.f550x = (TextView) view.findViewById(R.id.tv_plugin_status);
        this.f551y = (TextView) view.findViewById(R.id.btn_edit_parameters);
    }
}
