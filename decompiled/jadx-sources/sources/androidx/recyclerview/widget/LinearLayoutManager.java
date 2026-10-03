package androidx.recyclerview.widget;

import E.b;
import P.AbstractC0138c;
import P.AbstractC0147g0;
import P.C0145f0;
import P.C0149h0;
import P.C0166y;
import P.I;
import P.J;
import P.K;
import P.L;
import P.M;
import P.Q;
import P.o0;
import P.t0;
import P.u0;
import P.y0;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentTransaction;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutManager extends AbstractC0147g0 implements t0 {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final I f2929A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final J f2930B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final int f2931C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final int[] f2932D;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2933p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public K f2934q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Q f2935r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f2936s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f2937t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f2938u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f2939v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final boolean f2940w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f2941x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f2942y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public L f2943z;

    public LinearLayoutManager(int i3) {
        this.f2933p = 1;
        this.f2937t = false;
        this.f2938u = false;
        this.f2939v = false;
        this.f2940w = true;
        this.f2941x = -1;
        this.f2942y = Integer.MIN_VALUE;
        this.f2943z = null;
        this.f2929A = new I();
        this.f2930B = new J();
        this.f2931C = 2;
        this.f2932D = new int[2];
        h1(i3);
        c(null);
        if (this.f2937t) {
            this.f2937t = false;
            r0();
        }
    }

    @Override // P.AbstractC0147g0
    public final boolean B0() {
        if (this.f1683m != 1073741824 && this.f1682l != 1073741824) {
            int iV = v();
            for (int i3 = 0; i3 < iV; i3++) {
                ViewGroup.LayoutParams layoutParams = u(i3).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // P.AbstractC0147g0
    public void D0(RecyclerView recyclerView, int i3) {
        M m2 = new M(recyclerView.getContext());
        m2.f1620a = i3;
        E0(m2);
    }

    @Override // P.AbstractC0147g0
    public boolean F0() {
        return this.f2943z == null && this.f2936s == this.f2939v;
    }

    public void G0(u0 u0Var, int[] iArr) {
        int i3;
        int iL = u0Var.f1759a != -1 ? this.f2935r.l() : 0;
        if (this.f2934q.f == -1) {
            i3 = 0;
        } else {
            i3 = iL;
            iL = 0;
        }
        iArr[0] = iL;
        iArr[1] = i3;
    }

    public void H0(u0 u0Var, K k2, C0166y c0166y) {
        int i3 = k2.f1611d;
        if (i3 < 0 || i3 >= u0Var.b()) {
            return;
        }
        c0166y.a(i3, Math.max(0, k2.g));
    }

    public final int I0(u0 u0Var) {
        if (v() == 0) {
            return 0;
        }
        M0();
        Q q2 = this.f2935r;
        boolean z2 = !this.f2940w;
        return AbstractC0138c.a(u0Var, q2, P0(z2), O0(z2), this, this.f2940w);
    }

    public final int J0(u0 u0Var) {
        if (v() == 0) {
            return 0;
        }
        M0();
        Q q2 = this.f2935r;
        boolean z2 = !this.f2940w;
        return AbstractC0138c.b(u0Var, q2, P0(z2), O0(z2), this, this.f2940w, this.f2938u);
    }

    public final int K0(u0 u0Var) {
        if (v() == 0) {
            return 0;
        }
        M0();
        Q q2 = this.f2935r;
        boolean z2 = !this.f2940w;
        return AbstractC0138c.c(u0Var, q2, P0(z2), O0(z2), this, this.f2940w);
    }

    public final int L0(int i3) {
        if (i3 == 1) {
            return (this.f2933p != 1 && Z0()) ? 1 : -1;
        }
        if (i3 == 2) {
            return (this.f2933p != 1 && Z0()) ? -1 : 1;
        }
        if (i3 == 17) {
            return this.f2933p == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i3 == 33) {
            return this.f2933p == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i3 != 66) {
            return (i3 == 130 && this.f2933p == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.f2933p == 0 ? 1 : Integer.MIN_VALUE;
    }

    public final void M0() {
        if (this.f2934q == null) {
            K k2 = new K();
            k2.f1609a = true;
            k2.f1613h = 0;
            k2.f1614i = 0;
            k2.f1616k = null;
            this.f2934q = k2;
        }
    }

    public final int N0(o0 o0Var, K k2, u0 u0Var, boolean z2) {
        int i3;
        int i4 = k2.f1610c;
        int i5 = k2.g;
        if (i5 != Integer.MIN_VALUE) {
            if (i4 < 0) {
                k2.g = i5 + i4;
            }
            c1(o0Var, k2);
        }
        int i6 = k2.f1610c + k2.f1613h;
        while (true) {
            if ((!k2.f1617l && i6 <= 0) || (i3 = k2.f1611d) < 0 || i3 >= u0Var.b()) {
                break;
            }
            J j2 = this.f2930B;
            j2.f1606a = 0;
            j2.b = false;
            j2.f1607c = false;
            j2.f1608d = false;
            a1(o0Var, u0Var, k2, j2);
            if (!j2.b) {
                int i7 = k2.b;
                int i8 = j2.f1606a;
                k2.b = (k2.f * i8) + i7;
                if (!j2.f1607c || k2.f1616k != null || !u0Var.g) {
                    k2.f1610c -= i8;
                    i6 -= i8;
                }
                int i9 = k2.g;
                if (i9 != Integer.MIN_VALUE) {
                    int i10 = i9 + i8;
                    k2.g = i10;
                    int i11 = k2.f1610c;
                    if (i11 < 0) {
                        k2.g = i10 + i11;
                    }
                    c1(o0Var, k2);
                }
                if (z2 && j2.f1608d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i4 - k2.f1610c;
    }

    @Override // P.AbstractC0147g0
    public final boolean O() {
        return true;
    }

    public final View O0(boolean z2) {
        return this.f2938u ? T0(0, v(), z2) : T0(v() - 1, -1, z2);
    }

    public final View P0(boolean z2) {
        return this.f2938u ? T0(v() - 1, -1, z2) : T0(0, v(), z2);
    }

    public final int Q0() {
        View viewT0 = T0(0, v(), false);
        if (viewT0 == null) {
            return -1;
        }
        return AbstractC0147g0.K(viewT0);
    }

    public final int R0() {
        View viewT0 = T0(v() - 1, -1, false);
        if (viewT0 == null) {
            return -1;
        }
        return AbstractC0147g0.K(viewT0);
    }

    public final View S0(int i3, int i4) {
        int i5;
        int i6;
        M0();
        if (i4 <= i3 && i4 >= i3) {
            return u(i3);
        }
        if (this.f2935r.e(u(i3)) < this.f2935r.k()) {
            i5 = 16644;
            i6 = 16388;
        } else {
            i5 = 4161;
            i6 = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
        }
        return this.f2933p == 0 ? this.f1675c.k(i3, i4, i5, i6) : this.f1676d.k(i3, i4, i5, i6);
    }

    public final View T0(int i3, int i4, boolean z2) {
        M0();
        int i5 = z2 ? 24579 : 320;
        return this.f2933p == 0 ? this.f1675c.k(i3, i4, i5, 320) : this.f1676d.k(i3, i4, i5, 320);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0075  */
    /* JADX WARN: Code duplicated, block: B:35:0x0079  */
    public View U0(o0 o0Var, u0 u0Var, boolean z2, boolean z3) {
        int i3;
        int iV;
        int i4;
        M0();
        int iV2 = v();
        if (z3) {
            iV = v() - 1;
            i3 = -1;
            i4 = -1;
        } else {
            i3 = iV2;
            iV = 0;
            i4 = 1;
        }
        int iB = u0Var.b();
        int iK = this.f2935r.k();
        int iG = this.f2935r.g();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (iV != i3) {
            View viewU = u(iV);
            int iK2 = AbstractC0147g0.K(viewU);
            int iE = this.f2935r.e(viewU);
            int iB2 = this.f2935r.b(viewU);
            if (iK2 >= 0 && iK2 < iB) {
                if (!((C0149h0) viewU.getLayoutParams()).f1687a.h()) {
                    boolean z4 = iB2 <= iK && iE < iK;
                    boolean z5 = iE >= iG && iB2 > iG;
                    if (!z4 && !z5) {
                        return viewU;
                    }
                    if (z2) {
                        if (z5) {
                            view2 = viewU;
                        } else if (view == null) {
                            view = viewU;
                        }
                    } else if (z4) {
                        view2 = viewU;
                    } else if (view == null) {
                        view = viewU;
                    }
                } else if (view3 == null) {
                    view3 = viewU;
                }
            }
            iV += i4;
        }
        if (view != null) {
            return view;
        }
        return view2 != null ? view2 : view3;
    }

    public final int V0(int i3, o0 o0Var, u0 u0Var, boolean z2) {
        int iG;
        int iG2 = this.f2935r.g() - i3;
        if (iG2 <= 0) {
            return 0;
        }
        int i4 = -f1(-iG2, o0Var, u0Var);
        int i5 = i3 + i4;
        if (!z2 || (iG = this.f2935r.g() - i5) <= 0) {
            return i4;
        }
        this.f2935r.o(iG);
        return iG + i4;
    }

    @Override // P.AbstractC0147g0
    public View W(View view, int i3, o0 o0Var, u0 u0Var) {
        int iL0;
        View viewS0;
        e1();
        if (v() != 0 && (iL0 = L0(i3)) != Integer.MIN_VALUE) {
            M0();
            j1(iL0, (int) (this.f2935r.l() * 0.33333334f), false, u0Var);
            K k2 = this.f2934q;
            k2.g = Integer.MIN_VALUE;
            k2.f1609a = false;
            N0(o0Var, k2, u0Var, true);
            if (iL0 == -1) {
                viewS0 = this.f2938u ? S0(v() - 1, -1) : S0(0, v());
            } else {
                viewS0 = this.f2938u ? S0(0, v()) : S0(v() - 1, -1);
            }
            View viewY0 = iL0 == -1 ? Y0() : X0();
            if (!viewY0.hasFocusable()) {
                return viewS0;
            }
            if (viewS0 != null) {
                return viewY0;
            }
        }
        return null;
    }

    public final int W0(int i3, o0 o0Var, u0 u0Var, boolean z2) {
        int iK;
        int iK2 = i3 - this.f2935r.k();
        if (iK2 <= 0) {
            return 0;
        }
        int i4 = -f1(iK2, o0Var, u0Var);
        int i5 = i3 + i4;
        if (!z2 || (iK = i5 - this.f2935r.k()) <= 0) {
            return i4;
        }
        this.f2935r.o(-iK);
        return i4 - iK;
    }

    @Override // P.AbstractC0147g0
    public final void X(AccessibilityEvent accessibilityEvent) {
        super.X(accessibilityEvent);
        if (v() > 0) {
            accessibilityEvent.setFromIndex(Q0());
            accessibilityEvent.setToIndex(R0());
        }
    }

    public final View X0() {
        return u(this.f2938u ? 0 : v() - 1);
    }

    public final View Y0() {
        return u(this.f2938u ? v() - 1 : 0);
    }

    public final boolean Z0() {
        return ViewCompat.getLayoutDirection(this.b) == 1;
    }

    @Override // P.t0
    public final PointF a(int i3) {
        if (v() == 0) {
            return null;
        }
        int i4 = (i3 < AbstractC0147g0.K(u(0))) != this.f2938u ? -1 : 1;
        return this.f2933p == 0 ? new PointF(i4, 0.0f) : new PointF(0.0f, i4);
    }

    public void a1(o0 o0Var, u0 u0Var, K k2, J j2) {
        int iH;
        int i3;
        int i4;
        int iD;
        View viewB = k2.b(o0Var);
        if (viewB == null) {
            j2.b = true;
            return;
        }
        C0149h0 c0149h0 = (C0149h0) viewB.getLayoutParams();
        if (k2.f1616k == null) {
            if (this.f2938u == (k2.f == -1)) {
                b(viewB, -1, false);
            } else {
                b(viewB, 0, false);
            }
        } else {
            if (this.f2938u == (k2.f == -1)) {
                b(viewB, -1, true);
            } else {
                b(viewB, 0, true);
            }
        }
        C0149h0 c0149h1 = (C0149h0) viewB.getLayoutParams();
        Rect rectL = this.b.L(viewB);
        int i5 = rectL.left + rectL.right;
        int i6 = rectL.top + rectL.bottom;
        int iW = AbstractC0147g0.w(this.f1684n, this.f1682l, I() + H() + ((ViewGroup.MarginLayoutParams) c0149h1).leftMargin + ((ViewGroup.MarginLayoutParams) c0149h1).rightMargin + i5, ((ViewGroup.MarginLayoutParams) c0149h1).width, d());
        int iW2 = AbstractC0147g0.w(this.f1685o, this.f1683m, G() + J() + ((ViewGroup.MarginLayoutParams) c0149h1).topMargin + ((ViewGroup.MarginLayoutParams) c0149h1).bottomMargin + i6, ((ViewGroup.MarginLayoutParams) c0149h1).height, e());
        if (A0(viewB, iW, iW2, c0149h1)) {
            viewB.measure(iW, iW2);
        }
        j2.f1606a = this.f2935r.c(viewB);
        if (this.f2933p == 1) {
            if (Z0()) {
                iD = this.f1684n - I();
                iH = iD - this.f2935r.d(viewB);
            } else {
                iH = H();
                iD = this.f2935r.d(viewB) + iH;
            }
            if (k2.f == -1) {
                i3 = k2.b;
                i4 = i3 - j2.f1606a;
            } else {
                i4 = k2.b;
                i3 = j2.f1606a + i4;
            }
        } else {
            int iJ = J();
            int iD2 = this.f2935r.d(viewB) + iJ;
            if (k2.f == -1) {
                int i7 = k2.b;
                int i8 = i7 - j2.f1606a;
                iD = i7;
                i3 = iD2;
                iH = i8;
                i4 = iJ;
            } else {
                int i9 = k2.b;
                int i10 = j2.f1606a + i9;
                iH = i9;
                i3 = iD2;
                i4 = iJ;
                iD = i10;
            }
        }
        AbstractC0147g0.Q(viewB, iH, i4, iD, i3);
        if (c0149h0.f1687a.h() || c0149h0.f1687a.k()) {
            j2.f1607c = true;
        }
        j2.f1608d = viewB.hasFocusable();
    }

    @Override // P.AbstractC0147g0
    public final void c(String str) {
        if (this.f2943z == null) {
            super.c(str);
        }
    }

    public final void c1(o0 o0Var, K k2) {
        if (!k2.f1609a || k2.f1617l) {
            return;
        }
        int i3 = k2.g;
        int i4 = k2.f1614i;
        if (k2.f == -1) {
            int iV = v();
            if (i3 < 0) {
                return;
            }
            int iF = (this.f2935r.f() - i3) + i4;
            if (this.f2938u) {
                for (int i5 = 0; i5 < iV; i5++) {
                    View viewU = u(i5);
                    if (this.f2935r.e(viewU) < iF || this.f2935r.n(viewU) < iF) {
                        d1(o0Var, 0, i5);
                        return;
                    }
                }
                return;
            }
            int i6 = iV - 1;
            for (int i7 = i6; i7 >= 0; i7--) {
                View viewU2 = u(i7);
                if (this.f2935r.e(viewU2) < iF || this.f2935r.n(viewU2) < iF) {
                    d1(o0Var, i6, i7);
                    return;
                }
            }
            return;
        }
        if (i3 < 0) {
            return;
        }
        int i8 = i3 - i4;
        int iV2 = v();
        if (!this.f2938u) {
            for (int i9 = 0; i9 < iV2; i9++) {
                View viewU3 = u(i9);
                if (this.f2935r.b(viewU3) > i8 || this.f2935r.m(viewU3) > i8) {
                    d1(o0Var, 0, i9);
                    return;
                }
            }
            return;
        }
        int i10 = iV2 - 1;
        for (int i11 = i10; i11 >= 0; i11--) {
            View viewU4 = u(i11);
            if (this.f2935r.b(viewU4) > i8 || this.f2935r.m(viewU4) > i8) {
                d1(o0Var, i10, i11);
                return;
            }
        }
    }

    @Override // P.AbstractC0147g0
    public final boolean d() {
        return this.f2933p == 0;
    }

    public final void d1(o0 o0Var, int i3, int i4) {
        if (i3 == i4) {
            return;
        }
        if (i4 <= i3) {
            while (i3 > i4) {
                View viewU = u(i3);
                p0(i3);
                o0Var.h(viewU);
                i3--;
            }
            return;
        }
        for (int i5 = i4 - 1; i5 >= i3; i5--) {
            View viewU2 = u(i5);
            p0(i5);
            o0Var.h(viewU2);
        }
    }

    @Override // P.AbstractC0147g0
    public final boolean e() {
        return this.f2933p == 1;
    }

    public final void e1() {
        if (this.f2933p == 1 || !Z0()) {
            this.f2938u = this.f2937t;
        } else {
            this.f2938u = !this.f2937t;
        }
    }

    public final int f1(int i3, o0 o0Var, u0 u0Var) {
        if (v() != 0 && i3 != 0) {
            M0();
            this.f2934q.f1609a = true;
            int i4 = i3 > 0 ? 1 : -1;
            int iAbs = Math.abs(i3);
            j1(i4, iAbs, true, u0Var);
            K k2 = this.f2934q;
            int iN0 = N0(o0Var, k2, u0Var, false) + k2.g;
            if (iN0 >= 0) {
                if (iAbs > iN0) {
                    i3 = i4 * iN0;
                }
                this.f2935r.o(-i3);
                this.f2934q.f1615j = i3;
                return i3;
            }
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:104:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:111:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:114:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:118:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:122:0x020f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:124:0x0213  */
    /* JADX WARN: Code duplicated, block: B:126:0x0216 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:128:0x021a  */
    /* JADX WARN: Code duplicated, block: B:130:0x021d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:131:0x021f  */
    /* JADX WARN: Code duplicated, block: B:133:0x0223  */
    /* JADX WARN: Code duplicated, block: B:135:0x0227  */
    /* JADX WARN: Code duplicated, block: B:137:0x022e  */
    /* JADX WARN: Code duplicated, block: B:138:0x0234  */
    /* JADX WARN: Code duplicated, block: B:95:0x0192  */
    @Override // P.AbstractC0147g0
    public void g0(o0 o0Var, u0 u0Var) {
        View focusedChild;
        int iB;
        RecyclerView recyclerView;
        View focusedChild2;
        boolean z2;
        boolean z3;
        View viewU0;
        int iE;
        int iB2;
        int iK;
        int iG;
        boolean z4;
        boolean z5;
        C0149h0 c0149h0;
        int i3;
        int iE2;
        int i4;
        int i5;
        List list;
        int i6;
        int i7;
        int iV0;
        int i8;
        View viewQ;
        int iE3;
        int iG2;
        int i9;
        int i10 = -1;
        if (!(this.f2943z == null && this.f2941x == -1) && u0Var.b() == 0) {
            m0(o0Var);
            return;
        }
        L l2 = this.f2943z;
        if (l2 != null && (i9 = l2.b) >= 0) {
            this.f2941x = i9;
        }
        M0();
        this.f2934q.f1609a = false;
        e1();
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 == null || (focusedChild = recyclerView2.getFocusedChild()) == null || this.f1674a.f1691c.contains(focusedChild)) {
            focusedChild = null;
        }
        I i11 = this.f2929A;
        if (!i11.f1602e || this.f2941x != -1 || this.f2943z != null) {
            i11.d();
            i11.f1601d = this.f2938u ^ this.f2939v;
            if (u0Var.g || (i3 = this.f2941x) == -1) {
                if (v() != 0) {
                    recyclerView = this.b;
                    if (recyclerView != null || (focusedChild2 = recyclerView.getFocusedChild()) == null || this.f1674a.f1691c.contains(focusedChild2)) {
                        focusedChild2 = null;
                    }
                    if (focusedChild2 != null) {
                        c0149h0 = (C0149h0) focusedChild2.getLayoutParams();
                        if (!c0149h0.f1687a.h() || c0149h0.f1687a.b() < 0 || c0149h0.f1687a.b() >= u0Var.b()) {
                            z2 = this.f2936s;
                            z3 = this.f2939v;
                            if (z2 == z3 || (viewU0 = U0(o0Var, u0Var, i11.f1601d, z3)) == null) {
                                i11.a();
                                if (this.f2939v) {
                                    iB = u0Var.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                i11.b = iB;
                            } else {
                                i11.b(viewU0, AbstractC0147g0.K(viewU0));
                                if (!u0Var.g && F0()) {
                                    iE = this.f2935r.e(viewU0);
                                    iB2 = this.f2935r.b(viewU0);
                                    iK = this.f2935r.k();
                                    iG = this.f2935r.g();
                                    if (iB2 <= iK || iE >= iK) {
                                        z4 = false;
                                    } else {
                                        z4 = true;
                                    }
                                    if (iE >= iG || iB2 <= iG) {
                                        z5 = false;
                                    } else {
                                        z5 = true;
                                    }
                                    if (z4 || z5) {
                                        if (i11.f1601d) {
                                            iK = iG;
                                        }
                                        i11.f1600c = iK;
                                    }
                                }
                            }
                        } else {
                            i11.c(focusedChild2, AbstractC0147g0.K(focusedChild2));
                        }
                    } else {
                        z2 = this.f2936s;
                        z3 = this.f2939v;
                        if (z2 == z3) {
                            i11.a();
                            if (this.f2939v) {
                                iB = u0Var.b() - 1;
                            } else {
                                iB = 0;
                            }
                            i11.b = iB;
                        } else {
                            i11.b(viewU0, AbstractC0147g0.K(viewU0));
                            if (!u0Var.g) {
                                iE = this.f2935r.e(viewU0);
                                iB2 = this.f2935r.b(viewU0);
                                iK = this.f2935r.k();
                                iG = this.f2935r.g();
                                if (iB2 <= iK) {
                                    z4 = false;
                                } else {
                                    z4 = false;
                                }
                                if (iE >= iG) {
                                    z5 = false;
                                } else {
                                    z5 = false;
                                }
                                if (z4) {
                                    if (i11.f1601d) {
                                        iK = iG;
                                    }
                                    i11.f1600c = iK;
                                } else {
                                    if (i11.f1601d) {
                                        iK = iG;
                                    }
                                    i11.f1600c = iK;
                                }
                            }
                        }
                    }
                } else {
                    i11.a();
                    if (this.f2939v) {
                        iB = u0Var.b() - 1;
                    } else {
                        iB = 0;
                    }
                    i11.b = iB;
                }
            } else if (i3 < 0 || i3 >= u0Var.b()) {
                this.f2941x = -1;
                this.f2942y = Integer.MIN_VALUE;
                if (v() != 0) {
                    recyclerView = this.b;
                    if (recyclerView != null) {
                        focusedChild2 = null;
                    } else {
                        focusedChild2 = null;
                    }
                    if (focusedChild2 != null) {
                        c0149h0 = (C0149h0) focusedChild2.getLayoutParams();
                        if (c0149h0.f1687a.h()) {
                            z2 = this.f2936s;
                            z3 = this.f2939v;
                            if (z2 == z3) {
                                i11.a();
                                if (this.f2939v) {
                                    iB = u0Var.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                i11.b = iB;
                            } else {
                                i11.b(viewU0, AbstractC0147g0.K(viewU0));
                                if (!u0Var.g) {
                                    iE = this.f2935r.e(viewU0);
                                    iB2 = this.f2935r.b(viewU0);
                                    iK = this.f2935r.k();
                                    iG = this.f2935r.g();
                                    if (iB2 <= iK) {
                                        z4 = false;
                                    } else {
                                        z4 = false;
                                    }
                                    if (iE >= iG) {
                                        z5 = false;
                                    } else {
                                        z5 = false;
                                    }
                                    if (z4) {
                                        if (i11.f1601d) {
                                            iK = iG;
                                        }
                                        i11.f1600c = iK;
                                    } else {
                                        if (i11.f1601d) {
                                            iK = iG;
                                        }
                                        i11.f1600c = iK;
                                    }
                                }
                            }
                        } else {
                            z2 = this.f2936s;
                            z3 = this.f2939v;
                            if (z2 == z3) {
                                i11.a();
                                if (this.f2939v) {
                                    iB = u0Var.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                i11.b = iB;
                            } else {
                                i11.b(viewU0, AbstractC0147g0.K(viewU0));
                                if (!u0Var.g) {
                                    iE = this.f2935r.e(viewU0);
                                    iB2 = this.f2935r.b(viewU0);
                                    iK = this.f2935r.k();
                                    iG = this.f2935r.g();
                                    if (iB2 <= iK) {
                                        z4 = false;
                                    } else {
                                        z4 = false;
                                    }
                                    if (iE >= iG) {
                                        z5 = false;
                                    } else {
                                        z5 = false;
                                    }
                                    if (z4) {
                                        if (i11.f1601d) {
                                            iK = iG;
                                        }
                                        i11.f1600c = iK;
                                    } else {
                                        if (i11.f1601d) {
                                            iK = iG;
                                        }
                                        i11.f1600c = iK;
                                    }
                                }
                            }
                        }
                    } else {
                        z2 = this.f2936s;
                        z3 = this.f2939v;
                        if (z2 == z3) {
                            i11.a();
                            if (this.f2939v) {
                                iB = u0Var.b() - 1;
                            } else {
                                iB = 0;
                            }
                            i11.b = iB;
                        } else {
                            i11.b(viewU0, AbstractC0147g0.K(viewU0));
                            if (!u0Var.g) {
                                iE = this.f2935r.e(viewU0);
                                iB2 = this.f2935r.b(viewU0);
                                iK = this.f2935r.k();
                                iG = this.f2935r.g();
                                if (iB2 <= iK) {
                                    z4 = false;
                                } else {
                                    z4 = false;
                                }
                                if (iE >= iG) {
                                    z5 = false;
                                } else {
                                    z5 = false;
                                }
                                if (z4) {
                                    if (i11.f1601d) {
                                        iK = iG;
                                    }
                                    i11.f1600c = iK;
                                } else {
                                    if (i11.f1601d) {
                                        iK = iG;
                                    }
                                    i11.f1600c = iK;
                                }
                            }
                        }
                    }
                } else {
                    i11.a();
                    if (this.f2939v) {
                        iB = u0Var.b() - 1;
                    } else {
                        iB = 0;
                    }
                    i11.b = iB;
                }
            } else {
                int i12 = this.f2941x;
                i11.b = i12;
                L l3 = this.f2943z;
                if (l3 != null && l3.b >= 0) {
                    boolean z6 = l3.f1619d;
                    i11.f1601d = z6;
                    if (z6) {
                        i11.f1600c = this.f2935r.g() - this.f2943z.f1618c;
                    } else {
                        i11.f1600c = this.f2935r.k() + this.f2943z.f1618c;
                    }
                } else if (this.f2942y == Integer.MIN_VALUE) {
                    View viewQ2 = q(i12);
                    if (viewQ2 == null) {
                        if (v() > 0) {
                            i11.f1601d = (this.f2941x < AbstractC0147g0.K(u(0))) == this.f2938u;
                        }
                        i11.a();
                    } else if (this.f2935r.c(viewQ2) > this.f2935r.l()) {
                        i11.a();
                    } else if (this.f2935r.e(viewQ2) - this.f2935r.k() < 0) {
                        i11.f1600c = this.f2935r.k();
                        i11.f1601d = false;
                    } else if (this.f2935r.g() - this.f2935r.b(viewQ2) < 0) {
                        i11.f1600c = this.f2935r.g();
                        i11.f1601d = true;
                    } else {
                        if (i11.f1601d) {
                            int iB3 = this.f2935r.b(viewQ2);
                            Q q2 = this.f2935r;
                            iE2 = (Integer.MIN_VALUE == q2.f1635a ? 0 : q2.l() - q2.f1635a) + iB3;
                        } else {
                            iE2 = this.f2935r.e(viewQ2);
                        }
                        i11.f1600c = iE2;
                    }
                } else {
                    boolean z7 = this.f2938u;
                    i11.f1601d = z7;
                    if (z7) {
                        i11.f1600c = this.f2935r.g() - this.f2942y;
                    } else {
                        i11.f1600c = this.f2935r.k() + this.f2942y;
                    }
                }
            }
            i11.f1602e = true;
        } else if (focusedChild != null && (this.f2935r.e(focusedChild) >= this.f2935r.g() || this.f2935r.b(focusedChild) <= this.f2935r.k())) {
            i11.c(focusedChild, AbstractC0147g0.K(focusedChild));
        }
        K k2 = this.f2934q;
        k2.f = k2.f1615j >= 0 ? 1 : -1;
        int[] iArr = this.f2932D;
        iArr[0] = 0;
        iArr[1] = 0;
        G0(u0Var, iArr);
        int iK2 = this.f2935r.k() + Math.max(0, iArr[0]);
        int iH = this.f2935r.h() + Math.max(0, iArr[1]);
        if (u0Var.g && (i8 = this.f2941x) != -1 && this.f2942y != Integer.MIN_VALUE && (viewQ = q(i8)) != null) {
            if (this.f2938u) {
                iG2 = this.f2935r.g() - this.f2935r.b(viewQ);
                iE3 = this.f2942y;
            } else {
                iE3 = this.f2935r.e(viewQ) - this.f2935r.k();
                iG2 = this.f2942y;
            }
            int i13 = iG2 - iE3;
            if (i13 > 0) {
                iK2 += i13;
            } else {
                iH -= i13;
            }
        }
        if (!i11.f1601d ? !this.f2938u : this.f2938u) {
            i10 = 1;
        }
        b1(o0Var, u0Var, i11, i10);
        p(o0Var);
        this.f2934q.f1617l = this.f2935r.i() == 0 && this.f2935r.f() == 0;
        this.f2934q.getClass();
        this.f2934q.f1614i = 0;
        if (i11.f1601d) {
            l1(i11.b, i11.f1600c);
            K k3 = this.f2934q;
            k3.f1613h = iK2;
            N0(o0Var, k3, u0Var, false);
            K k4 = this.f2934q;
            i5 = k4.b;
            int i14 = k4.f1611d;
            int i15 = k4.f1610c;
            if (i15 > 0) {
                iH += i15;
            }
            k1(i11.b, i11.f1600c);
            K k5 = this.f2934q;
            k5.f1613h = iH;
            k5.f1611d += k5.f1612e;
            N0(o0Var, k5, u0Var, false);
            K k6 = this.f2934q;
            i4 = k6.b;
            int i16 = k6.f1610c;
            if (i16 > 0) {
                l1(i14, i5);
                K k7 = this.f2934q;
                k7.f1613h = i16;
                N0(o0Var, k7, u0Var, false);
                i5 = this.f2934q.b;
            }
        } else {
            k1(i11.b, i11.f1600c);
            K k8 = this.f2934q;
            k8.f1613h = iH;
            N0(o0Var, k8, u0Var, false);
            K k9 = this.f2934q;
            i4 = k9.b;
            int i17 = k9.f1611d;
            int i18 = k9.f1610c;
            if (i18 > 0) {
                iK2 += i18;
            }
            l1(i11.b, i11.f1600c);
            K k10 = this.f2934q;
            k10.f1613h = iK2;
            k10.f1611d += k10.f1612e;
            N0(o0Var, k10, u0Var, false);
            K k11 = this.f2934q;
            int i19 = k11.b;
            int i20 = k11.f1610c;
            if (i20 > 0) {
                k1(i17, i4);
                K k12 = this.f2934q;
                k12.f1613h = i20;
                N0(o0Var, k12, u0Var, false);
                i4 = this.f2934q.b;
            }
            i5 = i19;
        }
        if (v() > 0) {
            if (this.f2938u ^ this.f2939v) {
                int iV1 = V0(i4, o0Var, u0Var, true);
                i6 = i5 + iV1;
                i7 = i4 + iV1;
                iV0 = W0(i6, o0Var, u0Var, false);
            } else {
                int iW0 = W0(i5, o0Var, u0Var, true);
                i6 = i5 + iW0;
                i7 = i4 + iW0;
                iV0 = V0(i7, o0Var, u0Var, false);
            }
            i5 = i6 + iV0;
            i4 = i7 + iV0;
        }
        if (u0Var.f1766k && v() != 0 && !u0Var.g && F0()) {
            List list2 = o0Var.f1723d;
            int size = list2.size();
            int iK3 = AbstractC0147g0.K(u(0));
            int iC = 0;
            int iC2 = 0;
            for (int i21 = 0; i21 < size; i21++) {
                y0 y0Var = (y0) list2.get(i21);
                boolean zH = y0Var.h();
                View view = y0Var.f1807a;
                if (!zH) {
                    if ((y0Var.b() < iK3) != this.f2938u) {
                        iC += this.f2935r.c(view);
                    } else {
                        iC2 += this.f2935r.c(view);
                    }
                }
            }
            this.f2934q.f1616k = list2;
            if (iC > 0) {
                l1(AbstractC0147g0.K(Y0()), i5);
                K k13 = this.f2934q;
                k13.f1613h = iC;
                k13.f1610c = 0;
                k13.a(null);
                N0(o0Var, this.f2934q, u0Var, false);
            }
            if (iC2 > 0) {
                k1(AbstractC0147g0.K(X0()), i4);
                K k14 = this.f2934q;
                k14.f1613h = iC2;
                k14.f1610c = 0;
                list = null;
                k14.a(null);
                N0(o0Var, this.f2934q, u0Var, false);
            } else {
                list = null;
            }
            this.f2934q.f1616k = list;
        }
        if (u0Var.g) {
            i11.d();
        } else {
            Q q3 = this.f2935r;
            q3.f1635a = q3.l();
        }
        this.f2936s = this.f2939v;
    }

    public final void g1(int i3, int i4) {
        this.f2941x = i3;
        this.f2942y = i4;
        L l2 = this.f2943z;
        if (l2 != null) {
            l2.b = -1;
        }
        r0();
    }

    @Override // P.AbstractC0147g0
    public final void h(int i3, int i4, u0 u0Var, C0166y c0166y) {
        if (this.f2933p != 0) {
            i3 = i4;
        }
        if (v() == 0 || i3 == 0) {
            return;
        }
        M0();
        j1(i3 > 0 ? 1 : -1, Math.abs(i3), true, u0Var);
        H0(u0Var, this.f2934q, c0166y);
    }

    @Override // P.AbstractC0147g0
    public void h0(u0 u0Var) {
        this.f2943z = null;
        this.f2941x = -1;
        this.f2942y = Integer.MIN_VALUE;
        this.f2929A.d();
    }

    public final void h1(int i3) {
        if (i3 != 0 && i3 != 1) {
            throw new IllegalArgumentException(b.i(i3, "invalid orientation:"));
        }
        c(null);
        if (i3 != this.f2933p || this.f2935r == null) {
            Q qA = Q.a(this, i3);
            this.f2935r = qA;
            this.f2929A.f1599a = qA;
            this.f2933p = i3;
            r0();
        }
    }

    @Override // P.AbstractC0147g0
    public final void i(int i3, C0166y c0166y) {
        boolean z2;
        int i4;
        L l2 = this.f2943z;
        if (l2 == null || (i4 = l2.b) < 0) {
            e1();
            z2 = this.f2938u;
            i4 = this.f2941x;
            if (i4 == -1) {
                i4 = z2 ? i3 - 1 : 0;
            }
        } else {
            z2 = l2.f1619d;
        }
        int i5 = z2 ? -1 : 1;
        for (int i6 = 0; i6 < this.f2931C && i4 >= 0 && i4 < i3; i6++) {
            c0166y.a(i4, 0);
            i4 += i5;
        }
    }

    @Override // P.AbstractC0147g0
    public final void i0(Parcelable parcelable) {
        if (parcelable instanceof L) {
            L l2 = (L) parcelable;
            this.f2943z = l2;
            if (this.f2941x != -1) {
                l2.b = -1;
            }
            r0();
        }
    }

    public void i1(boolean z2) {
        c(null);
        if (this.f2939v == z2) {
            return;
        }
        this.f2939v = z2;
        r0();
    }

    @Override // P.AbstractC0147g0
    public final int j(u0 u0Var) {
        return I0(u0Var);
    }

    @Override // P.AbstractC0147g0
    public final Parcelable j0() {
        L l2 = this.f2943z;
        if (l2 != null) {
            L l3 = new L();
            l3.b = l2.b;
            l3.f1618c = l2.f1618c;
            l3.f1619d = l2.f1619d;
            return l3;
        }
        L l4 = new L();
        if (v() <= 0) {
            l4.b = -1;
            return l4;
        }
        M0();
        boolean z2 = this.f2936s ^ this.f2938u;
        l4.f1619d = z2;
        if (z2) {
            View viewX0 = X0();
            l4.f1618c = this.f2935r.g() - this.f2935r.b(viewX0);
            l4.b = AbstractC0147g0.K(viewX0);
            return l4;
        }
        View viewY0 = Y0();
        l4.b = AbstractC0147g0.K(viewY0);
        l4.f1618c = this.f2935r.e(viewY0) - this.f2935r.k();
        return l4;
    }

    public final void j1(int i3, int i4, boolean z2, u0 u0Var) {
        int iK;
        this.f2934q.f1617l = this.f2935r.i() == 0 && this.f2935r.f() == 0;
        this.f2934q.f = i3;
        int[] iArr = this.f2932D;
        iArr[0] = 0;
        iArr[1] = 0;
        G0(u0Var, iArr);
        int iMax = Math.max(0, iArr[0]);
        int iMax2 = Math.max(0, iArr[1]);
        boolean z3 = i3 == 1;
        K k2 = this.f2934q;
        int i5 = z3 ? iMax2 : iMax;
        k2.f1613h = i5;
        if (!z3) {
            iMax = iMax2;
        }
        k2.f1614i = iMax;
        if (z3) {
            k2.f1613h = this.f2935r.h() + i5;
            View viewX0 = X0();
            K k3 = this.f2934q;
            k3.f1612e = this.f2938u ? -1 : 1;
            int iK2 = AbstractC0147g0.K(viewX0);
            K k4 = this.f2934q;
            k3.f1611d = iK2 + k4.f1612e;
            k4.b = this.f2935r.b(viewX0);
            iK = this.f2935r.b(viewX0) - this.f2935r.g();
        } else {
            View viewY0 = Y0();
            K k5 = this.f2934q;
            k5.f1613h = this.f2935r.k() + k5.f1613h;
            K k6 = this.f2934q;
            k6.f1612e = this.f2938u ? 1 : -1;
            int iK3 = AbstractC0147g0.K(viewY0);
            K k7 = this.f2934q;
            k6.f1611d = iK3 + k7.f1612e;
            k7.b = this.f2935r.e(viewY0);
            iK = (-this.f2935r.e(viewY0)) + this.f2935r.k();
        }
        K k8 = this.f2934q;
        k8.f1610c = i4;
        if (z2) {
            k8.f1610c = i4 - iK;
        }
        k8.g = iK;
    }

    @Override // P.AbstractC0147g0
    public int k(u0 u0Var) {
        return J0(u0Var);
    }

    public final void k1(int i3, int i4) {
        this.f2934q.f1610c = this.f2935r.g() - i4;
        K k2 = this.f2934q;
        k2.f1612e = this.f2938u ? -1 : 1;
        k2.f1611d = i3;
        k2.f = 1;
        k2.b = i4;
        k2.g = Integer.MIN_VALUE;
    }

    @Override // P.AbstractC0147g0
    public int l(u0 u0Var) {
        return K0(u0Var);
    }

    public final void l1(int i3, int i4) {
        this.f2934q.f1610c = i4 - this.f2935r.k();
        K k2 = this.f2934q;
        k2.f1611d = i3;
        k2.f1612e = this.f2938u ? 1 : -1;
        k2.f = -1;
        k2.b = i4;
        k2.g = Integer.MIN_VALUE;
    }

    @Override // P.AbstractC0147g0
    public final int m(u0 u0Var) {
        return I0(u0Var);
    }

    @Override // P.AbstractC0147g0
    public int n(u0 u0Var) {
        return J0(u0Var);
    }

    @Override // P.AbstractC0147g0
    public int o(u0 u0Var) {
        return K0(u0Var);
    }

    @Override // P.AbstractC0147g0
    public final View q(int i3) {
        int iV = v();
        if (iV == 0) {
            return null;
        }
        int iK = i3 - AbstractC0147g0.K(u(0));
        if (iK >= 0 && iK < iV) {
            View viewU = u(iK);
            if (AbstractC0147g0.K(viewU) == i3) {
                return viewU;
            }
        }
        return super.q(i3);
    }

    @Override // P.AbstractC0147g0
    public C0149h0 r() {
        return new C0149h0(-2, -2);
    }

    @Override // P.AbstractC0147g0
    public int s0(int i3, o0 o0Var, u0 u0Var) {
        if (this.f2933p == 1) {
            return 0;
        }
        return f1(i3, o0Var, u0Var);
    }

    @Override // P.AbstractC0147g0
    public final void t0(int i3) {
        this.f2941x = i3;
        this.f2942y = Integer.MIN_VALUE;
        L l2 = this.f2943z;
        if (l2 != null) {
            l2.b = -1;
        }
        r0();
    }

    @Override // P.AbstractC0147g0
    public int u0(int i3, o0 o0Var, u0 u0Var) {
        if (this.f2933p == 0) {
            return 0;
        }
        return f1(i3, o0Var, u0Var);
    }

    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i3, int i4) {
        this.f2933p = 1;
        this.f2937t = false;
        this.f2938u = false;
        this.f2939v = false;
        this.f2940w = true;
        this.f2941x = -1;
        this.f2942y = Integer.MIN_VALUE;
        this.f2943z = null;
        this.f2929A = new I();
        this.f2930B = new J();
        this.f2931C = 2;
        this.f2932D = new int[2];
        C0145f0 c0145f0L = AbstractC0147g0.L(context, attributeSet, i3, i4);
        h1(c0145f0L.f1668a);
        boolean z2 = c0145f0L.f1669c;
        c(null);
        if (z2 != this.f2937t) {
            this.f2937t = z2;
            r0();
        }
        i1(c0145f0L.f1670d);
    }

    @Override // P.AbstractC0147g0
    public final void V(RecyclerView recyclerView) {
    }

    public void b1(o0 o0Var, u0 u0Var, I i3, int i4) {
    }
}
