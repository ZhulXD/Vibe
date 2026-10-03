package P;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Q f1599a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1600c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1601d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1602e;

    public I() {
        d();
    }

    public final void a() {
        this.f1600c = this.f1601d ? this.f1599a.g() : this.f1599a.k();
    }

    public final void b(View view, int i3) {
        if (this.f1601d) {
            int iB = this.f1599a.b(view);
            Q q2 = this.f1599a;
            this.f1600c = (Integer.MIN_VALUE == q2.f1635a ? 0 : q2.l() - q2.f1635a) + iB;
        } else {
            this.f1600c = this.f1599a.e(view);
        }
        this.b = i3;
    }

    public final void c(View view, int i3) {
        Q q2 = this.f1599a;
        int iL = Integer.MIN_VALUE == q2.f1635a ? 0 : q2.l() - q2.f1635a;
        if (iL >= 0) {
            b(view, i3);
            return;
        }
        this.b = i3;
        if (!this.f1601d) {
            int iE = this.f1599a.e(view);
            int iK = iE - this.f1599a.k();
            this.f1600c = iE;
            if (iK > 0) {
                int iG = (this.f1599a.g() - Math.min(0, (this.f1599a.g() - iL) - this.f1599a.b(view))) - (this.f1599a.c(view) + iE);
                if (iG < 0) {
                    this.f1600c -= Math.min(iK, -iG);
                    return;
                }
                return;
            }
            return;
        }
        int iG2 = (this.f1599a.g() - iL) - this.f1599a.b(view);
        this.f1600c = this.f1599a.g() - iG2;
        if (iG2 > 0) {
            int iC = this.f1600c - this.f1599a.c(view);
            int iK2 = this.f1599a.k();
            int iMin = iC - (Math.min(this.f1599a.e(view) - iK2, 0) + iK2);
            if (iMin < 0) {
                this.f1600c = Math.min(iG2, -iMin) + this.f1600c;
            }
        }
    }

    public final void d() {
        this.b = -1;
        this.f1600c = Integer.MIN_VALUE;
        this.f1601d = false;
        this.f1602e = false;
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.b + ", mCoordinate=" + this.f1600c + ", mLayoutFromEnd=" + this.f1601d + ", mValid=" + this.f1602e + '}';
    }
}
