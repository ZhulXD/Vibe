package C1;

import android.view.View;
import android.widget.TextView;
import com.minhub.gamehub.R;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class W1 extends P.y0 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final TextView f519u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final TextView f520v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final TextView f521w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final TextView f522x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final View f523y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final /* synthetic */ C0076j0 f524z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W1(C0076j0 c0076j0, View view) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        this.f524z = c0076j0;
        this.f519u = (TextView) view.findViewById(R.id.tv_catalog_plugin_title);
        this.f520v = (TextView) view.findViewById(R.id.tv_catalog_plugin_version);
        this.f521w = (TextView) view.findViewById(R.id.tv_catalog_plugin_desc);
        this.f522x = (TextView) view.findViewById(R.id.tv_catalog_plugin_tags);
        this.f523y = view.findViewById(R.id.btn_catalog_plugin_install);
    }
}
