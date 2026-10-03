package androidx.recyclerview.widget;

import A1.C0013d;
import E.b;
import P.AbstractC0147g0;
import P.B;
import P.C0149h0;
import P.C0166y;
import P.I;
import P.J;
import P.K;
import P.o0;
import P.u0;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f2922E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public int f2923F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int[] f2924G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public View[] f2925H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final SparseIntArray f2926I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final SparseIntArray f2927J;
    public final C0013d K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Rect f2928L;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i3, int i4) {
        super(context, attributeSet, i3, i4);
        this.f2922E = false;
        this.f2923F = -1;
        this.f2926I = new SparseIntArray();
        this.f2927J = new SparseIntArray();
        this.K = new C0013d(4);
        this.f2928L = new Rect();
        t1(AbstractC0147g0.L(context, attributeSet, i3, i4).b);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, P.AbstractC0147g0
    public final boolean F0() {
        return this.f2943z == null && !this.f2922E;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void H0(u0 u0Var, K k2, C0166y c0166y) {
        int i3;
        int i4 = this.f2923F;
        for (int i5 = 0; i5 < this.f2923F && (i3 = k2.f1611d) >= 0 && i3 < u0Var.b() && i4 > 0; i5++) {
            c0166y.a(k2.f1611d, Math.max(0, k2.g));
            this.K.getClass();
            i4--;
            k2.f1611d += k2.f1612e;
        }
    }

    @Override // P.AbstractC0147g0
    public final int M(o0 o0Var, u0 u0Var) {
        if (this.f2933p == 0) {
            return this.f2923F;
        }
        if (u0Var.b() < 1) {
            return 0;
        }
        return p1(u0Var.b() - 1, o0Var, u0Var) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View U0(o0 o0Var, u0 u0Var, boolean z2, boolean z3) {
        int i3;
        int iV;
        int iV2 = v();
        int i4 = 1;
        if (z3) {
            iV = v() - 1;
            i3 = -1;
            i4 = -1;
        } else {
            i3 = iV2;
            iV = 0;
        }
        int iB = u0Var.b();
        M0();
        int iK = this.f2935r.k();
        int iG = this.f2935r.g();
        View view = null;
        View view2 = null;
        while (iV != i3) {
            View viewU = u(iV);
            int iK2 = AbstractC0147g0.K(viewU);
            if (iK2 >= 0 && iK2 < iB && q1(iK2, o0Var, u0Var) == 0) {
                if (((C0149h0) viewU.getLayoutParams()).f1687a.h()) {
                    if (view2 == null) {
                        view2 = viewU;
                    }
                } else {
                    if (this.f2935r.e(viewU) < iG && this.f2935r.b(viewU) >= iK) {
                        return viewU;
                    }
                    if (view == null) {
                        view = viewU;
                    }
                }
            }
            iV += i4;
        }
        return view != null ? view : view2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e0, code lost:
    
        if (r13 == (r2 > r15)) goto L57;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, P.AbstractC0147g0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View W(android.view.View r23, int r24, P.o0 r25, P.u0 r26) {
        /*
            Method dump skipped, instruction units count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.W(android.view.View, int, P.o0, P.u0):android.view.View");
    }

    @Override // P.AbstractC0147g0
    public final void Y(o0 o0Var, u0 u0Var, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.Y(o0Var, u0Var, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(GridView.class.getName());
    }

    @Override // P.AbstractC0147g0
    public final void Z(o0 o0Var, u0 u0Var, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof B)) {
            a0(view, accessibilityNodeInfoCompat);
            return;
        }
        B b = (B) layoutParams;
        int iP1 = p1(b.f1687a.b(), o0Var, u0Var);
        if (this.f2933p == 0) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(b.f1526e, b.f, iP1, 1, false, false));
        } else {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(iP1, 1, b.f1526e, b.f, false, false));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v23, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v26 */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v34 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void a1(o0 o0Var, u0 u0Var, K k2, J j2) {
        int i3;
        int i4;
        int i5;
        int iD;
        int iH;
        int iD2;
        int iW;
        int iW2;
        ?? r12;
        int i6;
        View viewB;
        int iJ = this.f2935r.j();
        boolean z2 = iJ != 1073741824;
        int i7 = v() > 0 ? this.f2924G[this.f2923F] : 0;
        if (z2) {
            u1();
        }
        boolean z3 = k2.f1612e == 1;
        int iQ1 = this.f2923F;
        if (!z3) {
            iQ1 = q1(k2.f1611d, o0Var, u0Var) + r1(k2.f1611d, o0Var, u0Var);
        }
        int i8 = 0;
        while (i8 < this.f2923F && (i6 = k2.f1611d) >= 0 && i6 < u0Var.b() && iQ1 > 0) {
            int i9 = k2.f1611d;
            int iR1 = r1(i9, o0Var, u0Var);
            if (iR1 > this.f2923F) {
                StringBuilder sbP = b.p("Item at position ", i9, iR1, " requires ", " spans but GridLayoutManager has only ");
                sbP.append(this.f2923F);
                sbP.append(" spans.");
                throw new IllegalArgumentException(sbP.toString());
            }
            iQ1 -= iR1;
            if (iQ1 < 0 || (viewB = k2.b(o0Var)) == null) {
                break;
            }
            this.f2925H[i8] = viewB;
            i8++;
        }
        if (i8 == 0) {
            j2.b = true;
            return;
        }
        if (z3) {
            i5 = 1;
            i4 = i8;
            i3 = 0;
        } else {
            i3 = i8 - 1;
            i4 = -1;
            i5 = -1;
        }
        int i10 = 0;
        while (i3 != i4) {
            View view = this.f2925H[i3];
            B b = (B) view.getLayoutParams();
            int iR2 = r1(AbstractC0147g0.K(view), o0Var, u0Var);
            b.f = iR2;
            b.f1526e = i10;
            i10 += iR2;
            i3 += i5;
        }
        float f = 0.0f;
        int i11 = 0;
        for (int i12 = 0; i12 < i8; i12++) {
            View view2 = this.f2925H[i12];
            if (k2.f1616k != null) {
                r12 = 0;
                r12 = 0;
                if (z3) {
                    b(view2, -1, true);
                } else {
                    b(view2, 0, true);
                }
            } else if (z3) {
                r12 = 0;
                b(view2, -1, false);
            } else {
                r12 = 0;
                b(view2, 0, false);
            }
            RecyclerView recyclerView = this.b;
            Rect rect = this.f2928L;
            if (recyclerView == null) {
                rect.set(r12, r12, r12, r12);
            } else {
                rect.set(recyclerView.L(view2));
            }
            s1(view2, iJ, r12);
            int iC = this.f2935r.c(view2);
            if (iC > i11) {
                i11 = iC;
            }
            float fD = (this.f2935r.d(view2) * 1.0f) / ((B) view2.getLayoutParams()).f;
            if (fD > f) {
                f = fD;
            }
        }
        if (z2) {
            m1(Math.max(Math.round(f * this.f2923F), i7));
            i11 = 0;
            for (int i13 = 0; i13 < i8; i13++) {
                View view3 = this.f2925H[i13];
                s1(view3, 1073741824, true);
                int iC2 = this.f2935r.c(view3);
                if (iC2 > i11) {
                    i11 = iC2;
                }
            }
        }
        for (int i14 = 0; i14 < i8; i14++) {
            View view4 = this.f2925H[i14];
            if (this.f2935r.c(view4) != i11) {
                B b3 = (B) view4.getLayoutParams();
                Rect rect2 = b3.b;
                int i15 = rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) b3).topMargin + ((ViewGroup.MarginLayoutParams) b3).bottomMargin;
                int i16 = rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) b3).leftMargin + ((ViewGroup.MarginLayoutParams) b3).rightMargin;
                int iO1 = o1(b3.f1526e, b3.f);
                if (this.f2933p == 1) {
                    iW2 = AbstractC0147g0.w(iO1, 1073741824, i16, ((ViewGroup.MarginLayoutParams) b3).width, false);
                    iW = View.MeasureSpec.makeMeasureSpec(i11 - i15, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i11 - i16, 1073741824);
                    iW = AbstractC0147g0.w(iO1, 1073741824, i15, ((ViewGroup.MarginLayoutParams) b3).height, false);
                    iW2 = iMakeMeasureSpec;
                }
                if (C0(view4, iW2, iW, (C0149h0) view4.getLayoutParams())) {
                    view4.measure(iW2, iW);
                }
            }
        }
        int iJ2 = 0;
        j2.f1606a = i11;
        if (this.f2933p != 1) {
            if (k2.f == -1) {
                int i17 = k2.b;
                iH = i17 - i11;
                iD = i17;
            } else {
                int i18 = k2.b;
                iD = i18 + i11;
                iH = i18;
            }
            iD2 = iJ2;
        } else if (k2.f == -1) {
            iD2 = k2.b;
            iJ2 = iD2 - i11;
            iH = 0;
            iD = 0;
        } else {
            int i19 = k2.b;
            iD = 0;
            iJ2 = i19;
            iD2 = i19 + i11;
            iH = 0;
        }
        for (int i20 = 0; i20 < i8; i20++) {
            View view5 = this.f2925H[i20];
            B b4 = (B) view5.getLayoutParams();
            if (this.f2933p != 1) {
                iJ2 = J() + this.f2924G[b4.f1526e];
                iD2 = this.f2935r.d(view5) + iJ2;
            } else if (Z0()) {
                int iH2 = H() + this.f2924G[this.f2923F - b4.f1526e];
                iD = iH2;
                iH = iH2 - this.f2935r.d(view5);
            } else {
                iH = H() + this.f2924G[b4.f1526e];
                iD = this.f2935r.d(view5) + iH;
            }
            AbstractC0147g0.Q(view5, iH, iJ2, iD, iD2);
            if (b4.f1687a.h() || b4.f1687a.k()) {
                j2.f1607c = true;
            }
            j2.f1608d = view5.hasFocusable() | j2.f1608d;
        }
        Arrays.fill(this.f2925H, (Object) null);
    }

    @Override // P.AbstractC0147g0
    public final void b0(int i3, int i4) {
        C0013d c0013d = this.K;
        c0013d.s();
        ((SparseIntArray) c0013d.f178d).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void b1(o0 o0Var, u0 u0Var, I i3, int i4) {
        u1();
        if (u0Var.b() > 0 && !u0Var.g) {
            boolean z2 = i4 == 1;
            int iQ1 = q1(i3.b, o0Var, u0Var);
            if (z2) {
                while (iQ1 > 0) {
                    int i5 = i3.b;
                    if (i5 <= 0) {
                        break;
                    }
                    int i6 = i5 - 1;
                    i3.b = i6;
                    iQ1 = q1(i6, o0Var, u0Var);
                }
            } else {
                int iB = u0Var.b() - 1;
                int i7 = i3.b;
                while (i7 < iB) {
                    int i8 = i7 + 1;
                    int iQ2 = q1(i8, o0Var, u0Var);
                    if (iQ2 <= iQ1) {
                        break;
                    }
                    i7 = i8;
                    iQ1 = iQ2;
                }
                i3.b = i7;
            }
        }
        n1();
    }

    @Override // P.AbstractC0147g0
    public final void c0() {
        C0013d c0013d = this.K;
        c0013d.s();
        ((SparseIntArray) c0013d.f178d).clear();
    }

    @Override // P.AbstractC0147g0
    public final void d0(int i3, int i4) {
        C0013d c0013d = this.K;
        c0013d.s();
        ((SparseIntArray) c0013d.f178d).clear();
    }

    @Override // P.AbstractC0147g0
    public final void e0(int i3, int i4) {
        C0013d c0013d = this.K;
        c0013d.s();
        ((SparseIntArray) c0013d.f178d).clear();
    }

    @Override // P.AbstractC0147g0
    public final boolean f(C0149h0 c0149h0) {
        return c0149h0 instanceof B;
    }

    @Override // P.AbstractC0147g0
    public final void f0(int i3, int i4) {
        C0013d c0013d = this.K;
        c0013d.s();
        ((SparseIntArray) c0013d.f178d).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, P.AbstractC0147g0
    public final void g0(o0 o0Var, u0 u0Var) {
        boolean z2 = u0Var.g;
        SparseIntArray sparseIntArray = this.f2927J;
        SparseIntArray sparseIntArray2 = this.f2926I;
        if (z2) {
            int iV = v();
            for (int i3 = 0; i3 < iV; i3++) {
                B b = (B) u(i3).getLayoutParams();
                int iB = b.f1687a.b();
                sparseIntArray2.put(iB, b.f);
                sparseIntArray.put(iB, b.f1526e);
            }
        }
        super.g0(o0Var, u0Var);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, P.AbstractC0147g0
    public final void h0(u0 u0Var) {
        super.h0(u0Var);
        this.f2922E = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void i1(boolean z2) {
        if (z2) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.i1(false);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, P.AbstractC0147g0
    public final int k(u0 u0Var) {
        return J0(u0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, P.AbstractC0147g0
    public final int l(u0 u0Var) {
        return K0(u0Var);
    }

    public final void m1(int i3) {
        int i4;
        int[] iArr = this.f2924G;
        int i5 = this.f2923F;
        if (iArr == null || iArr.length != i5 + 1 || iArr[iArr.length - 1] != i3) {
            iArr = new int[i5 + 1];
        }
        int i6 = 0;
        iArr[0] = 0;
        int i7 = i3 / i5;
        int i8 = i3 % i5;
        int i9 = 0;
        for (int i10 = 1; i10 <= i5; i10++) {
            i6 += i8;
            if (i6 <= 0 || i5 - i6 >= i8) {
                i4 = i7;
            } else {
                i4 = i7 + 1;
                i6 -= i5;
            }
            i9 += i4;
            iArr[i10] = i9;
        }
        this.f2924G = iArr;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, P.AbstractC0147g0
    public final int n(u0 u0Var) {
        return J0(u0Var);
    }

    public final void n1() {
        View[] viewArr = this.f2925H;
        if (viewArr == null || viewArr.length != this.f2923F) {
            this.f2925H = new View[this.f2923F];
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, P.AbstractC0147g0
    public final int o(u0 u0Var) {
        return K0(u0Var);
    }

    public final int o1(int i3, int i4) {
        if (this.f2933p != 1 || !Z0()) {
            int[] iArr = this.f2924G;
            return iArr[i4 + i3] - iArr[i3];
        }
        int[] iArr2 = this.f2924G;
        int i5 = this.f2923F;
        return iArr2[i5 - i3] - iArr2[(i5 - i3) - i4];
    }

    public final int p1(int i3, o0 o0Var, u0 u0Var) {
        boolean z2 = u0Var.g;
        C0013d c0013d = this.K;
        if (!z2) {
            int i4 = this.f2923F;
            c0013d.getClass();
            return C0013d.r(i3, i4);
        }
        int iB = o0Var.b(i3);
        if (iB != -1) {
            int i5 = this.f2923F;
            c0013d.getClass();
            return C0013d.r(iB, i5);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i3);
        return 0;
    }

    public final int q1(int i3, o0 o0Var, u0 u0Var) {
        boolean z2 = u0Var.g;
        C0013d c0013d = this.K;
        if (!z2) {
            int i4 = this.f2923F;
            c0013d.getClass();
            return i3 % i4;
        }
        int i5 = this.f2927J.get(i3, -1);
        if (i5 != -1) {
            return i5;
        }
        int iB = o0Var.b(i3);
        if (iB != -1) {
            int i6 = this.f2923F;
            c0013d.getClass();
            return iB % i6;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i3);
        return 0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, P.AbstractC0147g0
    public final C0149h0 r() {
        return this.f2933p == 0 ? new B(-2, -1) : new B(-1, -2);
    }

    public final int r1(int i3, o0 o0Var, u0 u0Var) {
        boolean z2 = u0Var.g;
        C0013d c0013d = this.K;
        if (!z2) {
            c0013d.getClass();
            return 1;
        }
        int i4 = this.f2926I.get(i3, -1);
        if (i4 != -1) {
            return i4;
        }
        if (o0Var.b(i3) != -1) {
            c0013d.getClass();
            return 1;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i3);
        return 1;
    }

    @Override // P.AbstractC0147g0
    public final C0149h0 s(Context context, AttributeSet attributeSet) {
        B b = new B(context, attributeSet);
        b.f1526e = -1;
        b.f = 0;
        return b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, P.AbstractC0147g0
    public final int s0(int i3, o0 o0Var, u0 u0Var) {
        u1();
        n1();
        return super.s0(i3, o0Var, u0Var);
    }

    public final void s1(View view, int i3, boolean z2) {
        int iW;
        int iW2;
        B b = (B) view.getLayoutParams();
        Rect rect = b.b;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) b).topMargin + ((ViewGroup.MarginLayoutParams) b).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) b).leftMargin + ((ViewGroup.MarginLayoutParams) b).rightMargin;
        int iO1 = o1(b.f1526e, b.f);
        if (this.f2933p == 1) {
            iW2 = AbstractC0147g0.w(iO1, i3, i5, ((ViewGroup.MarginLayoutParams) b).width, false);
            iW = AbstractC0147g0.w(this.f2935r.l(), this.f1683m, i4, ((ViewGroup.MarginLayoutParams) b).height, true);
        } else {
            int iW3 = AbstractC0147g0.w(iO1, i3, i4, ((ViewGroup.MarginLayoutParams) b).height, false);
            int iW4 = AbstractC0147g0.w(this.f2935r.l(), this.f1682l, i5, ((ViewGroup.MarginLayoutParams) b).width, true);
            iW = iW3;
            iW2 = iW4;
        }
        C0149h0 c0149h0 = (C0149h0) view.getLayoutParams();
        if (z2 ? C0(view, iW2, iW, c0149h0) : A0(view, iW2, iW, c0149h0)) {
            view.measure(iW2, iW);
        }
    }

    @Override // P.AbstractC0147g0
    public final C0149h0 t(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            B b = new B((ViewGroup.MarginLayoutParams) layoutParams);
            b.f1526e = -1;
            b.f = 0;
            return b;
        }
        B b3 = new B(layoutParams);
        b3.f1526e = -1;
        b3.f = 0;
        return b3;
    }

    public final void t1(int i3) {
        if (i3 == this.f2923F) {
            return;
        }
        this.f2922E = true;
        if (i3 < 1) {
            throw new IllegalArgumentException(b.i(i3, "Span count should be at least 1. Provided "));
        }
        this.f2923F = i3;
        this.K.s();
        r0();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, P.AbstractC0147g0
    public final int u0(int i3, o0 o0Var, u0 u0Var) {
        u1();
        n1();
        return super.u0(i3, o0Var, u0Var);
    }

    public final void u1() {
        int iG;
        int iJ;
        if (this.f2933p == 1) {
            iG = this.f1684n - I();
            iJ = H();
        } else {
            iG = this.f1685o - G();
            iJ = J();
        }
        m1(iG - iJ);
    }

    @Override // P.AbstractC0147g0
    public final int x(o0 o0Var, u0 u0Var) {
        if (this.f2933p == 1) {
            return this.f2923F;
        }
        if (u0Var.b() < 1) {
            return 0;
        }
        return p1(u0Var.b() - 1, o0Var, u0Var) + 1;
    }

    @Override // P.AbstractC0147g0
    public final void x0(Rect rect, int i3, int i4) {
        int iG;
        int iG2;
        if (this.f2924G == null) {
            super.x0(rect, i3, i4);
        }
        int I2 = I() + H();
        int iG3 = G() + J();
        if (this.f2933p == 1) {
            iG2 = AbstractC0147g0.g(i4, rect.height() + iG3, ViewCompat.getMinimumHeight(this.b));
            int[] iArr = this.f2924G;
            iG = AbstractC0147g0.g(i3, iArr[iArr.length - 1] + I2, ViewCompat.getMinimumWidth(this.b));
        } else {
            iG = AbstractC0147g0.g(i3, rect.width() + I2, ViewCompat.getMinimumWidth(this.b));
            int[] iArr2 = this.f2924G;
            iG2 = AbstractC0147g0.g(i4, iArr2[iArr2.length - 1] + iG3, ViewCompat.getMinimumHeight(this.b));
        }
        this.b.setMeasuredDimension(iG, iG2);
    }

    public GridLayoutManager(int i3) {
        super(1);
        this.f2922E = false;
        this.f2923F = -1;
        this.f2926I = new SparseIntArray();
        this.f2927J = new SparseIntArray();
        this.K = new C0013d(4);
        this.f2928L = new Rect();
        t1(i3);
    }

    public GridLayoutManager() {
        super(1);
        this.f2922E = false;
        this.f2923F = -1;
        this.f2926I = new SparseIntArray();
        this.f2927J = new SparseIntArray();
        this.K = new C0013d(4);
        this.f2928L = new Rect();
        t1(2);
    }
}
