package P;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class P extends Q {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1634d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ P(AbstractC0147g0 abstractC0147g0, int i3) {
        super(abstractC0147g0);
        this.f1634d = i3;
    }

    @Override // P.Q
    public final int b(View view) {
        int iD;
        int i3;
        switch (this.f1634d) {
            case 0:
                C0149h0 c0149h0 = (C0149h0) view.getLayoutParams();
                ((AbstractC0147g0) this.b).getClass();
                iD = AbstractC0147g0.D(view);
                i3 = ((ViewGroup.MarginLayoutParams) c0149h0).rightMargin;
                break;
            default:
                C0149h0 c0149h1 = (C0149h0) view.getLayoutParams();
                ((AbstractC0147g0) this.b).getClass();
                iD = AbstractC0147g0.y(view);
                i3 = ((ViewGroup.MarginLayoutParams) c0149h1).bottomMargin;
                break;
        }
        return iD + i3;
    }

    @Override // P.Q
    public final int c(View view) {
        int iC;
        int i3;
        switch (this.f1634d) {
            case 0:
                C0149h0 c0149h0 = (C0149h0) view.getLayoutParams();
                ((AbstractC0147g0) this.b).getClass();
                iC = AbstractC0147g0.C(view) + ((ViewGroup.MarginLayoutParams) c0149h0).leftMargin;
                i3 = ((ViewGroup.MarginLayoutParams) c0149h0).rightMargin;
                break;
            default:
                C0149h0 c0149h1 = (C0149h0) view.getLayoutParams();
                ((AbstractC0147g0) this.b).getClass();
                iC = AbstractC0147g0.B(view) + ((ViewGroup.MarginLayoutParams) c0149h1).topMargin;
                i3 = ((ViewGroup.MarginLayoutParams) c0149h1).bottomMargin;
                break;
        }
        return iC + i3;
    }

    @Override // P.Q
    public final int d(View view) {
        int iB;
        int i3;
        switch (this.f1634d) {
            case 0:
                C0149h0 c0149h0 = (C0149h0) view.getLayoutParams();
                ((AbstractC0147g0) this.b).getClass();
                iB = AbstractC0147g0.B(view) + ((ViewGroup.MarginLayoutParams) c0149h0).topMargin;
                i3 = ((ViewGroup.MarginLayoutParams) c0149h0).bottomMargin;
                break;
            default:
                C0149h0 c0149h1 = (C0149h0) view.getLayoutParams();
                ((AbstractC0147g0) this.b).getClass();
                iB = AbstractC0147g0.C(view) + ((ViewGroup.MarginLayoutParams) c0149h1).leftMargin;
                i3 = ((ViewGroup.MarginLayoutParams) c0149h1).rightMargin;
                break;
        }
        return iB + i3;
    }

    @Override // P.Q
    public final int e(View view) {
        int iA;
        int i3;
        switch (this.f1634d) {
            case 0:
                C0149h0 c0149h0 = (C0149h0) view.getLayoutParams();
                ((AbstractC0147g0) this.b).getClass();
                iA = AbstractC0147g0.A(view);
                i3 = ((ViewGroup.MarginLayoutParams) c0149h0).leftMargin;
                break;
            default:
                C0149h0 c0149h1 = (C0149h0) view.getLayoutParams();
                ((AbstractC0147g0) this.b).getClass();
                iA = AbstractC0147g0.E(view);
                i3 = ((ViewGroup.MarginLayoutParams) c0149h1).topMargin;
                break;
        }
        return iA - i3;
    }

    @Override // P.Q
    public final int f() {
        switch (this.f1634d) {
            case 0:
                return ((AbstractC0147g0) this.b).f1684n;
            default:
                return ((AbstractC0147g0) this.b).f1685o;
        }
    }

    @Override // P.Q
    public final int g() {
        int i3;
        int I2;
        switch (this.f1634d) {
            case 0:
                AbstractC0147g0 abstractC0147g0 = (AbstractC0147g0) this.b;
                i3 = abstractC0147g0.f1684n;
                I2 = abstractC0147g0.I();
                break;
            default:
                AbstractC0147g0 abstractC0147g1 = (AbstractC0147g0) this.b;
                i3 = abstractC0147g1.f1685o;
                I2 = abstractC0147g1.G();
                break;
        }
        return i3 - I2;
    }

    @Override // P.Q
    public final int h() {
        switch (this.f1634d) {
            case 0:
                return ((AbstractC0147g0) this.b).I();
            default:
                return ((AbstractC0147g0) this.b).G();
        }
    }

    @Override // P.Q
    public final int i() {
        switch (this.f1634d) {
            case 0:
                return ((AbstractC0147g0) this.b).f1682l;
            default:
                return ((AbstractC0147g0) this.b).f1683m;
        }
    }

    @Override // P.Q
    public final int j() {
        switch (this.f1634d) {
            case 0:
                return ((AbstractC0147g0) this.b).f1683m;
            default:
                return ((AbstractC0147g0) this.b).f1682l;
        }
    }

    @Override // P.Q
    public final int k() {
        switch (this.f1634d) {
            case 0:
                return ((AbstractC0147g0) this.b).H();
            default:
                return ((AbstractC0147g0) this.b).J();
        }
    }

    @Override // P.Q
    public final int l() {
        int iH;
        int I2;
        switch (this.f1634d) {
            case 0:
                AbstractC0147g0 abstractC0147g0 = (AbstractC0147g0) this.b;
                iH = abstractC0147g0.f1684n - abstractC0147g0.H();
                I2 = abstractC0147g0.I();
                break;
            default:
                AbstractC0147g0 abstractC0147g1 = (AbstractC0147g0) this.b;
                iH = abstractC0147g1.f1685o - abstractC0147g1.J();
                I2 = abstractC0147g1.G();
                break;
        }
        return iH - I2;
    }

    @Override // P.Q
    public final int m(View view) {
        switch (this.f1634d) {
            case 0:
                AbstractC0147g0 abstractC0147g0 = (AbstractC0147g0) this.b;
                Rect rect = (Rect) this.f1636c;
                abstractC0147g0.N(view, rect);
                return rect.right;
            default:
                AbstractC0147g0 abstractC0147g1 = (AbstractC0147g0) this.b;
                Rect rect2 = (Rect) this.f1636c;
                abstractC0147g1.N(view, rect2);
                return rect2.bottom;
        }
    }

    @Override // P.Q
    public final int n(View view) {
        switch (this.f1634d) {
            case 0:
                AbstractC0147g0 abstractC0147g0 = (AbstractC0147g0) this.b;
                Rect rect = (Rect) this.f1636c;
                abstractC0147g0.N(view, rect);
                return rect.left;
            default:
                AbstractC0147g0 abstractC0147g1 = (AbstractC0147g0) this.b;
                Rect rect2 = (Rect) this.f1636c;
                abstractC0147g1.N(view, rect2);
                return rect2.top;
        }
    }

    @Override // P.Q
    public final void o(int i3) {
        switch (this.f1634d) {
            case 0:
                ((AbstractC0147g0) this.b).R(i3);
                break;
            default:
                ((AbstractC0147g0) this.b).S(i3);
                break;
        }
    }
}
