package C1;

import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import com.minhub.gamehub.R;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f2 extends P.y0 {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final TextView f587A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final Button f588B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final ImageButton f589C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final /* synthetic */ g2 f590D;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final TextView f591u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final TextView f592v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final TextView f593w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final TextView f594x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final TextView f595y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final TextView f596z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f2(g2 g2Var, View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        this.f590D = g2Var;
        View viewFindViewById = itemView.findViewById(R.id.tv_slot_number);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        this.f591u = (TextView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R.id.tv_slot_label);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
        this.f592v = (TextView) viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R.id.tv_chapter);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(...)");
        this.f593w = (TextView) viewFindViewById3;
        View viewFindViewById4 = itemView.findViewById(R.id.tv_playtime);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "findViewById(...)");
        this.f594x = (TextView) viewFindViewById4;
        View viewFindViewById5 = itemView.findViewById(R.id.tv_leader);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById5, "findViewById(...)");
        this.f595y = (TextView) viewFindViewById5;
        View viewFindViewById6 = itemView.findViewById(R.id.tv_size);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById6, "findViewById(...)");
        this.f596z = (TextView) viewFindViewById6;
        View viewFindViewById7 = itemView.findViewById(R.id.tv_time);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById7, "findViewById(...)");
        this.f587A = (TextView) viewFindViewById7;
        View viewFindViewById8 = itemView.findViewById(R.id.btn_export);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById8, "findViewById(...)");
        this.f588B = (Button) viewFindViewById8;
        View viewFindViewById9 = itemView.findViewById(R.id.btn_delete);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById9, "findViewById(...)");
        this.f589C = (ImageButton) viewFindViewById9;
    }
}
