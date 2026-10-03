package C1;

import android.view.View;
import android.widget.TextView;
import com.minhub.gamehub.R;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: C1.x1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0118x1 extends P.y0 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final TextView f711u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final TextView f712v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0118x1(View view) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        View viewFindViewById = view.findViewById(R.id.launchCandidatePath);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        this.f711u = (TextView) viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.launchCandidateEngine);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
        this.f712v = (TextView) viewFindViewById2;
    }
}
