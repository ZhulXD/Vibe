package P;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class S extends M {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ T f1637q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public S(T t2, Context context) {
        super(context);
        this.f1637q = t2;
    }

    @Override // P.M
    public final float d(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // P.M
    public final int e(int i3) {
        return Math.min(100, super.e(i3));
    }

    @Override // P.M
    public final void h(View view, s0 s0Var) {
        T t2 = this.f1637q;
        int[] iArrB = t2.b(t2.f1638a.getLayoutManager(), view);
        int i3 = iArrB[0];
        int i4 = iArrB[1];
        int iCeil = (int) Math.ceil(((double) e(Math.max(Math.abs(i3), Math.abs(i4)))) / 0.3356d);
        if (iCeil > 0) {
            s0Var.f1748a = i3;
            s0Var.b = i4;
            s0Var.f1749c = iCeil;
            s0Var.f1751e = this.f1626j;
            s0Var.f = true;
        }
    }
}
