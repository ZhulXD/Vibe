package P;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: P.e0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0143e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1662a;
    public final /* synthetic */ AbstractC0147g0 b;

    public /* synthetic */ C0143e0(AbstractC0147g0 abstractC0147g0, int i3) {
        this.f1662a = i3;
        this.b = abstractC0147g0;
    }

    public final int a(View view) {
        int iD;
        int i3;
        switch (this.f1662a) {
            case 0:
                C0149h0 c0149h0 = (C0149h0) view.getLayoutParams();
                iD = AbstractC0147g0.D(view);
                i3 = ((ViewGroup.MarginLayoutParams) c0149h0).rightMargin;
                break;
            default:
                C0149h0 c0149h1 = (C0149h0) view.getLayoutParams();
                iD = AbstractC0147g0.y(view);
                i3 = ((ViewGroup.MarginLayoutParams) c0149h1).bottomMargin;
                break;
        }
        return iD + i3;
    }

    public final int b(View view) {
        int iA;
        int i3;
        switch (this.f1662a) {
            case 0:
                C0149h0 c0149h0 = (C0149h0) view.getLayoutParams();
                iA = AbstractC0147g0.A(view);
                i3 = ((ViewGroup.MarginLayoutParams) c0149h0).leftMargin;
                break;
            default:
                C0149h0 c0149h1 = (C0149h0) view.getLayoutParams();
                iA = AbstractC0147g0.E(view);
                i3 = ((ViewGroup.MarginLayoutParams) c0149h1).topMargin;
                break;
        }
        return iA - i3;
    }

    public final int c() {
        int i3;
        int I2;
        switch (this.f1662a) {
            case 0:
                AbstractC0147g0 abstractC0147g0 = this.b;
                i3 = abstractC0147g0.f1684n;
                I2 = abstractC0147g0.I();
                break;
            default:
                AbstractC0147g0 abstractC0147g1 = this.b;
                i3 = abstractC0147g1.f1685o;
                I2 = abstractC0147g1.G();
                break;
        }
        return i3 - I2;
    }

    public final int d() {
        switch (this.f1662a) {
            case 0:
                return this.b.H();
            default:
                return this.b.J();
        }
    }
}
