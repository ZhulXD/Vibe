package androidx.recyclerview.widget;

import A1.C0013d;
import A1.u0;
import P.AbstractC0138c;
import P.AbstractC0147g0;
import P.C0;
import P.C0145f0;
import P.C0149h0;
import P.C0166y;
import P.D0;
import P.E0;
import P.F0;
import P.G0;
import P.H;
import P.M;
import P.Q;
import P.o0;
import P.t0;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager extends AbstractC0147g0 implements t0 {

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final C0013d f3023B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final int f3024C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public boolean f3025D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f3026E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public F0 f3027F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Rect f3028G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0 f3029H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f3030I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int[] f3031J;
    public final u0 K;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f3032p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final G0[] f3033q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Q f3034r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Q f3035s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f3036t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f3037u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final H f3038v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f3039w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final BitSet f3041y;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f3040x = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f3042z = -1;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f3022A = Integer.MIN_VALUE;

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i3, int i4) {
        this.f3032p = -1;
        this.f3039w = false;
        C0013d c0013d = new C0013d(5, false);
        this.f3023B = c0013d;
        this.f3024C = 2;
        this.f3028G = new Rect();
        this.f3029H = new C0(this);
        this.f3030I = true;
        this.K = new u0(5, this);
        C0145f0 c0145f0L = AbstractC0147g0.L(context, attributeSet, i3, i4);
        int i5 = c0145f0L.f1668a;
        if (i5 != 0 && i5 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        c(null);
        if (i5 != this.f3036t) {
            this.f3036t = i5;
            Q q2 = this.f3034r;
            this.f3034r = this.f3035s;
            this.f3035s = q2;
            r0();
        }
        int i6 = c0145f0L.b;
        c(null);
        if (i6 != this.f3032p) {
            c0013d.g();
            r0();
            this.f3032p = i6;
            this.f3041y = new BitSet(this.f3032p);
            this.f3033q = new G0[this.f3032p];
            for (int i7 = 0; i7 < this.f3032p; i7++) {
                this.f3033q[i7] = new G0(this, i7);
            }
            r0();
        }
        boolean z2 = c0145f0L.f1669c;
        c(null);
        F0 f3 = this.f3027F;
        if (f3 != null && f3.f1557i != z2) {
            f3.f1557i = z2;
        }
        this.f3039w = z2;
        r0();
        H h2 = new H();
        h2.f1589a = true;
        h2.f = 0;
        h2.g = 0;
        this.f3038v = h2;
        this.f3034r = Q.a(this, this.f3036t);
        this.f3035s = Q.a(this, 1 - this.f3036t);
    }

    public static int g1(int i3, int i4, int i5) {
        int mode;
        return (!(i4 == 0 && i5 == 0) && ((mode = View.MeasureSpec.getMode(i3)) == Integer.MIN_VALUE || mode == 1073741824)) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i3) - i4) - i5), mode) : i3;
    }

    @Override // P.AbstractC0147g0
    public final void D0(RecyclerView recyclerView, int i3) {
        M m2 = new M(recyclerView.getContext());
        m2.f1620a = i3;
        E0(m2);
    }

    @Override // P.AbstractC0147g0
    public final boolean F0() {
        return this.f3027F == null;
    }

    public final boolean G0() {
        int iN0;
        if (v() != 0 && this.f3024C != 0 && this.g) {
            if (this.f3040x) {
                iN0 = O0();
                N0();
            } else {
                iN0 = N0();
                O0();
            }
            if (iN0 == 0 && S0() != null) {
                this.f3023B.g();
                this.f = true;
                r0();
                return true;
            }
        }
        return false;
    }

    public final int H0(P.u0 u0Var) {
        if (v() == 0) {
            return 0;
        }
        boolean z2 = !this.f3030I;
        return AbstractC0138c.b(u0Var, this.f3034r, K0(z2), J0(z2), this, this.f3030I, this.f3040x);
    }

    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v3, types: [boolean, int] */
    public final int I0(o0 o0Var, H h2, P.u0 u0Var) {
        G0 g3;
        ?? r8;
        int iH;
        int iC;
        int iK;
        int iC2;
        int i3;
        int i4;
        int i5;
        int i6 = 0;
        int i7 = 1;
        this.f3041y.set(0, this.f3032p, true);
        H h3 = this.f3038v;
        int i8 = h3.f1594i ? h2.f1592e == 1 ? IntCompanionObject.MAX_VALUE : Integer.MIN_VALUE : h2.f1592e == 1 ? h2.g + h2.b : h2.f - h2.b;
        int i9 = h2.f1592e;
        for (int i10 = 0; i10 < this.f3032p; i10++) {
            if (!this.f3033q[i10].f1585a.isEmpty()) {
                f1(this.f3033q[i10], i9, i8);
            }
        }
        int iG = this.f3040x ? this.f3034r.g() : this.f3034r.k();
        boolean z2 = false;
        while (true) {
            int i11 = h2.f1590c;
            if (i11 < 0 || i11 >= u0Var.b() || (!h3.f1594i && this.f3041y.isEmpty())) {
                break;
            }
            View view = o0Var.k(h2.f1590c, Long.MAX_VALUE).f1807a;
            h2.f1590c += h2.f1591d;
            D0 d3 = (D0) view.getLayoutParams();
            int iB = d3.f1687a.b();
            C0013d c0013d = this.f3023B;
            int[] iArr = (int[]) c0013d.f177c;
            int i12 = (iArr == null || iB >= iArr.length) ? -1 : iArr[iB];
            if (i12 == -1) {
                if (W0(h2.f1592e)) {
                    i5 = this.f3032p - i7;
                    i4 = -1;
                    i3 = -1;
                } else {
                    i3 = i7;
                    i4 = this.f3032p;
                    i5 = i6;
                }
                G0 g4 = null;
                if (h2.f1592e == i7) {
                    int iK2 = this.f3034r.k();
                    int i13 = IntCompanionObject.MAX_VALUE;
                    while (i5 != i4) {
                        G0 g5 = this.f3033q[i5];
                        int iF = g5.f(iK2);
                        if (iF < i13) {
                            i13 = iF;
                            g4 = g5;
                        }
                        i5 += i3;
                    }
                } else {
                    int iG2 = this.f3034r.g();
                    int i14 = Integer.MIN_VALUE;
                    while (i5 != i4) {
                        G0 g6 = this.f3033q[i5];
                        int iH2 = g6.h(iG2);
                        if (iH2 > i14) {
                            g4 = g6;
                            i14 = iH2;
                        }
                        i5 += i3;
                    }
                }
                g3 = g4;
                c0013d.j(iB);
                ((int[]) c0013d.f177c)[iB] = g3.f1588e;
            } else {
                g3 = this.f3033q[i12];
            }
            d3.f1546e = g3;
            if (h2.f1592e == 1) {
                r8 = 0;
                b(view, -1, false);
            } else {
                r8 = 0;
                b(view, 0, false);
            }
            if (this.f3036t == 1) {
                U0(view, AbstractC0147g0.w(this.f3037u, this.f1682l, r8, ((ViewGroup.MarginLayoutParams) d3).width, r8), AbstractC0147g0.w(this.f1685o, this.f1683m, G() + J(), ((ViewGroup.MarginLayoutParams) d3).height, true));
            } else {
                U0(view, AbstractC0147g0.w(this.f1684n, this.f1682l, I() + H(), ((ViewGroup.MarginLayoutParams) d3).width, true), AbstractC0147g0.w(this.f3037u, this.f1683m, 0, ((ViewGroup.MarginLayoutParams) d3).height, false));
            }
            if (h2.f1592e == 1) {
                iC = g3.f(iG);
                iH = this.f3034r.c(view) + iC;
            } else {
                iH = g3.h(iG);
                iC = iH - this.f3034r.c(view);
            }
            if (h2.f1592e == 1) {
                G0 g7 = d3.f1546e;
                g7.getClass();
                D0 d4 = (D0) view.getLayoutParams();
                d4.f1546e = g7;
                ArrayList arrayList = g7.f1585a;
                arrayList.add(view);
                g7.f1586c = Integer.MIN_VALUE;
                if (arrayList.size() == 1) {
                    g7.b = Integer.MIN_VALUE;
                }
                if (d4.f1687a.h() || d4.f1687a.k()) {
                    g7.f1587d = g7.f.f3034r.c(view) + g7.f1587d;
                }
            } else {
                G0 g8 = d3.f1546e;
                g8.getClass();
                D0 d5 = (D0) view.getLayoutParams();
                d5.f1546e = g8;
                ArrayList arrayList2 = g8.f1585a;
                arrayList2.add(0, view);
                g8.b = Integer.MIN_VALUE;
                if (arrayList2.size() == 1) {
                    g8.f1586c = Integer.MIN_VALUE;
                }
                if (d5.f1687a.h() || d5.f1687a.k()) {
                    g8.f1587d = g8.f.f3034r.c(view) + g8.f1587d;
                }
            }
            if (T0() && this.f3036t == 1) {
                iC2 = this.f3035s.g() - (((this.f3032p - 1) - g3.f1588e) * this.f3037u);
                iK = iC2 - this.f3035s.c(view);
            } else {
                iK = this.f3035s.k() + (g3.f1588e * this.f3037u);
                iC2 = this.f3035s.c(view) + iK;
            }
            if (this.f3036t == 1) {
                AbstractC0147g0.Q(view, iK, iC, iC2, iH);
            } else {
                AbstractC0147g0.Q(view, iC, iK, iH, iC2);
            }
            f1(g3, h3.f1592e, i8);
            Y0(o0Var, h3);
            if (h3.f1593h && view.hasFocusable()) {
                this.f3041y.set(g3.f1588e, false);
            }
            i7 = 1;
            z2 = true;
            i6 = 0;
        }
        if (!z2) {
            Y0(o0Var, h3);
        }
        int iK3 = h3.f1592e == -1 ? this.f3034r.k() - Q0(this.f3034r.k()) : P0(this.f3034r.g()) - this.f3034r.g();
        if (iK3 > 0) {
            return Math.min(h2.b, iK3);
        }
        return 0;
    }

    public final View J0(boolean z2) {
        int iK = this.f3034r.k();
        int iG = this.f3034r.g();
        View view = null;
        for (int iV = v() - 1; iV >= 0; iV--) {
            View viewU = u(iV);
            int iE = this.f3034r.e(viewU);
            int iB = this.f3034r.b(viewU);
            if (iB > iK && iE < iG) {
                if (iB <= iG || !z2) {
                    return viewU;
                }
                if (view == null) {
                    view = viewU;
                }
            }
        }
        return view;
    }

    public final View K0(boolean z2) {
        int iK = this.f3034r.k();
        int iG = this.f3034r.g();
        int iV = v();
        View view = null;
        for (int i3 = 0; i3 < iV; i3++) {
            View viewU = u(i3);
            int iE = this.f3034r.e(viewU);
            if (this.f3034r.b(viewU) > iK && iE < iG) {
                if (iE >= iK || !z2) {
                    return viewU;
                }
                if (view == null) {
                    view = viewU;
                }
            }
        }
        return view;
    }

    public final void L0(o0 o0Var, P.u0 u0Var, boolean z2) {
        int iG;
        int iP0 = P0(Integer.MIN_VALUE);
        if (iP0 != Integer.MIN_VALUE && (iG = this.f3034r.g() - iP0) > 0) {
            int i3 = iG - (-c1(-iG, o0Var, u0Var));
            if (!z2 || i3 <= 0) {
                return;
            }
            this.f3034r.o(i3);
        }
    }

    public final void M0(o0 o0Var, P.u0 u0Var, boolean z2) {
        int iK;
        int iQ0 = Q0(IntCompanionObject.MAX_VALUE);
        if (iQ0 != Integer.MAX_VALUE && (iK = iQ0 - this.f3034r.k()) > 0) {
            int iC1 = iK - c1(iK, o0Var, u0Var);
            if (!z2 || iC1 <= 0) {
                return;
            }
            this.f3034r.o(-iC1);
        }
    }

    public final int N0() {
        if (v() == 0) {
            return 0;
        }
        return AbstractC0147g0.K(u(0));
    }

    @Override // P.AbstractC0147g0
    public final boolean O() {
        return this.f3024C != 0;
    }

    public final int O0() {
        int iV = v();
        if (iV == 0) {
            return 0;
        }
        return AbstractC0147g0.K(u(iV - 1));
    }

    public final int P0(int i3) {
        int iF = this.f3033q[0].f(i3);
        for (int i4 = 1; i4 < this.f3032p; i4++) {
            int iF2 = this.f3033q[i4].f(i3);
            if (iF2 > iF) {
                iF = iF2;
            }
        }
        return iF;
    }

    public final int Q0(int i3) {
        int iH = this.f3033q[0].h(i3);
        for (int i4 = 1; i4 < this.f3032p; i4++) {
            int iH2 = this.f3033q[i4].h(i3);
            if (iH2 < iH) {
                iH = iH2;
            }
        }
        return iH;
    }

    @Override // P.AbstractC0147g0
    public final void R(int i3) {
        super.R(i3);
        for (int i4 = 0; i4 < this.f3032p; i4++) {
            G0 g3 = this.f3033q[i4];
            int i5 = g3.b;
            if (i5 != Integer.MIN_VALUE) {
                g3.b = i5 + i3;
            }
            int i6 = g3.f1586c;
            if (i6 != Integer.MIN_VALUE) {
                g3.f1586c = i6 + i3;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0034  */
    /* JADX WARN: Code duplicated, block: B:22:0x0036 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0039  */
    /* JADX WARN: Code duplicated, block: B:26:0x0041  */
    /* JADX WARN: Code duplicated, block: B:29:0x0050 A[LOOP:0: B:25:0x003f->B:29:0x0050, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x0053 A[EDGE_INSN: B:30:0x0053->B:31:0x0054 BREAK  A[LOOP:0: B:25:0x003f->B:29:0x0050]] */
    /* JADX WARN: Code duplicated, block: B:32:0x0056  */
    /* JADX WARN: Code duplicated, block: B:35:0x0068  */
    /* JADX WARN: Code duplicated, block: B:38:0x0077 A[LOOP:1: B:34:0x0066->B:38:0x0077, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:41:0x007d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0092  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:52:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:53:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:56:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:58:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:61:0x00db  */
    /* JADX WARN: Code duplicated, block: B:63:0x0053 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x0054 A[EDGE_INSN: B:64:0x0054->B:31:0x0054 BREAK  A[LOOP:0: B:25:0x003f->B:29:0x0050], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x007b A[EDGE_INSN: B:66:0x007b->B:40:0x007b BREAK  A[LOOP:1: B:34:0x0066->B:38:0x0077], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:? A[RETURN, SYNTHETIC] */
    public final void R0(int i3, int i4, int i5) {
        int i6;
        int i7;
        C0013d c0013d;
        int[] iArr;
        int iO0;
        ArrayList arrayList;
        E0 e2;
        int size;
        int i8;
        int i9;
        int size2;
        int iO1 = this.f3040x ? O0() : N0();
        if (i5 == 8) {
            if (i3 < i4) {
                i6 = i4 + 1;
            } else {
                i6 = i3 + 1;
                i7 = i4;
            }
            c0013d = this.f3023B;
            iArr = (int[]) c0013d.f177c;
            if (iArr != null && i7 < iArr.length) {
                arrayList = (ArrayList) c0013d.f178d;
                if (arrayList != null) {
                    if (arrayList == null) {
                        size2 = arrayList.size() - 1;
                        while (true) {
                            if (size2 >= 0) {
                                e2 = null;
                                break;
                            }
                            e2 = (E0) ((ArrayList) c0013d.f178d).get(size2);
                            if (e2.b == i7) {
                                break;
                            } else {
                                size2--;
                            }
                        }
                    } else {
                        e2 = null;
                        break;
                    }
                    if (e2 != null) {
                        ((ArrayList) c0013d.f178d).remove(e2);
                    }
                    size = ((ArrayList) c0013d.f178d).size();
                    i8 = 0;
                    while (true) {
                        if (i8 < size) {
                            i8 = -1;
                            break;
                        } else if (((E0) ((ArrayList) c0013d.f178d).get(i8)).b >= i7) {
                            break;
                        } else {
                            i8++;
                        }
                    }
                    if (i8 != -1) {
                        E0 e3 = (E0) ((ArrayList) c0013d.f178d).get(i8);
                        ((ArrayList) c0013d.f178d).remove(i8);
                        i9 = e3.b;
                    } else {
                        i9 = -1;
                    }
                } else {
                    i9 = -1;
                }
                if (i9 == -1) {
                    int[] iArr2 = (int[]) c0013d.f177c;
                    Arrays.fill(iArr2, i7, iArr2.length, -1);
                    int length = ((int[]) c0013d.f177c).length;
                } else {
                    Arrays.fill((int[]) c0013d.f177c, i7, Math.min(i9 + 1, ((int[]) c0013d.f177c).length), -1);
                }
            }
            if (i5 != 1) {
                c0013d.u(i3, i4);
            } else if (i5 != 2) {
                c0013d.v(i3, i4);
            } else if (i5 == 8) {
                c0013d.v(i3, 1);
                c0013d.u(i4, 1);
            }
            if (i6 <= iO1) {
                return;
            }
            if (this.f3040x) {
                iO0 = N0();
            } else {
                iO0 = O0();
            }
            if (i7 <= iO0) {
                r0();
            }
        }
        i6 = i3 + i4;
        i7 = i3;
        c0013d = this.f3023B;
        iArr = (int[]) c0013d.f177c;
        if (iArr != null) {
            arrayList = (ArrayList) c0013d.f178d;
            if (arrayList != null) {
                if (arrayList == null) {
                    size2 = arrayList.size() - 1;
                    while (true) {
                        if (size2 >= 0) {
                            e2 = null;
                            break;
                        }
                        e2 = (E0) ((ArrayList) c0013d.f178d).get(size2);
                        if (e2.b == i7) {
                            break;
                            break;
                        }
                        size2--;
                    }
                } else {
                    e2 = null;
                    break;
                }
                if (e2 != null) {
                    ((ArrayList) c0013d.f178d).remove(e2);
                }
                size = ((ArrayList) c0013d.f178d).size();
                i8 = 0;
                while (true) {
                    if (i8 < size) {
                        i8 = -1;
                        break;
                    } else {
                        if (((E0) ((ArrayList) c0013d.f178d).get(i8)).b >= i7) {
                            break;
                            break;
                        }
                        i8++;
                    }
                }
                if (i8 != -1) {
                    E0 e4 = (E0) ((ArrayList) c0013d.f178d).get(i8);
                    ((ArrayList) c0013d.f178d).remove(i8);
                    i9 = e4.b;
                } else {
                    i9 = -1;
                }
            } else {
                i9 = -1;
            }
            if (i9 == -1) {
                int[] iArr3 = (int[]) c0013d.f177c;
                Arrays.fill(iArr3, i7, iArr3.length, -1);
                int length2 = ((int[]) c0013d.f177c).length;
            } else {
                Arrays.fill((int[]) c0013d.f177c, i7, Math.min(i9 + 1, ((int[]) c0013d.f177c).length), -1);
            }
        }
        if (i5 != 1) {
            c0013d.u(i3, i4);
        } else if (i5 != 2) {
            c0013d.v(i3, i4);
        } else if (i5 == 8) {
            c0013d.v(i3, 1);
            c0013d.u(i4, 1);
        }
        if (i6 <= iO1) {
            return;
        }
        if (this.f3040x) {
            iO0 = N0();
        } else {
            iO0 = O0();
        }
        if (i7 <= iO0) {
            r0();
        }
    }

    @Override // P.AbstractC0147g0
    public final void S(int i3) {
        super.S(i3);
        for (int i4 = 0; i4 < this.f3032p; i4++) {
            G0 g3 = this.f3033q[i4];
            int i5 = g3.b;
            if (i5 != Integer.MIN_VALUE) {
                g3.b = i5 + i3;
            }
            int i6 = g3.f1586c;
            if (i6 != Integer.MIN_VALUE) {
                g3.f1586c = i6 + i3;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:55:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:68:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x002c A[SYNTHETIC] */
    public final View S0() {
        boolean z2;
        boolean z3;
        int iV = v();
        int i3 = iV - 1;
        BitSet bitSet = new BitSet(this.f3032p);
        bitSet.set(0, this.f3032p, true);
        byte b = (this.f3036t == 1 && T0()) ? (byte) 1 : (byte) -1;
        if (this.f3040x) {
            iV = -1;
        } else {
            i3 = 0;
        }
        int i4 = i3 < iV ? 1 : -1;
        while (i3 != iV) {
            View viewU = u(i3);
            D0 d3 = (D0) viewU.getLayoutParams();
            if (bitSet.get(d3.f1546e.f1588e)) {
                G0 g3 = d3.f1546e;
                if (this.f3040x) {
                    int i5 = g3.f1586c;
                    if (i5 == Integer.MIN_VALUE) {
                        g3.a();
                        i5 = g3.f1586c;
                    }
                    if (i5 < this.f3034r.g()) {
                        ArrayList arrayList = g3.f1585a;
                        ((D0) ((View) arrayList.get(arrayList.size() - 1)).getLayoutParams()).getClass();
                        return viewU;
                    }
                } else {
                    int i6 = g3.b;
                    ArrayList arrayList2 = g3.f1585a;
                    if (i6 == Integer.MIN_VALUE) {
                        View view = (View) arrayList2.get(0);
                        D0 d4 = (D0) view.getLayoutParams();
                        g3.b = g3.f.f3034r.e(view);
                        d4.getClass();
                        i6 = g3.b;
                    }
                    if (i6 > this.f3034r.k()) {
                        ((D0) ((View) arrayList2.get(0)).getLayoutParams()).getClass();
                        return viewU;
                    }
                }
                bitSet.clear(d3.f1546e.f1588e);
            }
            i3 += i4;
            if (i3 != iV) {
                View viewU2 = u(i3);
                if (this.f3040x) {
                    int iB = this.f3034r.b(viewU);
                    int iB2 = this.f3034r.b(viewU2);
                    if (iB >= iB2) {
                        if (iB == iB2) {
                            if (d3.f1546e.f1588e - ((D0) viewU2.getLayoutParams()).f1546e.f1588e < 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (b < 0) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z2 != z3) {
                            }
                        } else {
                            continue;
                        }
                    }
                    return viewU;
                }
                int iE = this.f3034r.e(viewU);
                int iE2 = this.f3034r.e(viewU2);
                if (iE <= iE2) {
                    if (iE == iE2) {
                        if (d3.f1546e.f1588e - ((D0) viewU2.getLayoutParams()).f1546e.f1588e < 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (b < 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z2 != z3) {
                        }
                    } else {
                        continue;
                    }
                }
                return viewU;
            }
        }
        return null;
    }

    @Override // P.AbstractC0147g0
    public final void T() {
        this.f3023B.g();
        for (int i3 = 0; i3 < this.f3032p; i3++) {
            this.f3033q[i3].b();
        }
    }

    public final boolean T0() {
        return ViewCompat.getLayoutDirection(this.b) == 1;
    }

    public final void U0(View view, int i3, int i4) {
        RecyclerView recyclerView = this.b;
        Rect rect = this.f3028G;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.L(view));
        }
        D0 d3 = (D0) view.getLayoutParams();
        int iG1 = g1(i3, ((ViewGroup.MarginLayoutParams) d3).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) d3).rightMargin + rect.right);
        int iG2 = g1(i4, ((ViewGroup.MarginLayoutParams) d3).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) d3).bottomMargin + rect.bottom);
        if (A0(view, iG1, iG2, d3)) {
            view.measure(iG1, iG2);
        }
    }

    @Override // P.AbstractC0147g0
    public final void V(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.K);
        }
        for (int i3 = 0; i3 < this.f3032p; i3++) {
            this.f3033q[i3].b();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Code duplicated, block: B:108:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:109:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:123:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:125:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:131:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:133:0x0209  */
    /* JADX WARN: Code duplicated, block: B:254:0x0417  */
    /* JADX WARN: Code duplicated, block: B:265:0x01fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:269:0x01fc A[SYNTHETIC] */
    public final void V0(o0 o0Var, P.u0 u0Var, boolean z2) {
        boolean z3;
        F0 f3;
        int iV;
        int i3;
        int iK;
        int iK2;
        int iV2;
        int i4;
        boolean z4;
        F0 f4 = this.f3027F;
        C0 c3 = this.f3029H;
        if (!(f4 == null && this.f3042z == -1) && u0Var.b() == 0) {
            m0(o0Var);
            c3.a();
            return;
        }
        boolean z5 = c3.f1532e;
        StaggeredGridLayoutManager staggeredGridLayoutManager = c3.g;
        boolean z6 = (z5 && this.f3042z == -1 && this.f3027F == null) ? false : true;
        C0013d c0013d = this.f3023B;
        if (z6) {
            c3.a();
            F0 f5 = this.f3027F;
            if (f5 != null) {
                int i5 = f5.f1554d;
                if (i5 > 0) {
                    if (i5 == this.f3032p) {
                        for (int i6 = 0; i6 < this.f3032p; i6++) {
                            this.f3033q[i6].b();
                            F0 f6 = this.f3027F;
                            int iG = f6.f1555e[i6];
                            if (iG != Integer.MIN_VALUE) {
                                iG += f6.f1558j ? this.f3034r.g() : this.f3034r.k();
                            }
                            G0 g3 = this.f3033q[i6];
                            g3.b = iG;
                            g3.f1586c = iG;
                        }
                    } else {
                        f5.f1555e = null;
                        f5.f1554d = 0;
                        f5.f = 0;
                        f5.g = null;
                        f5.f1556h = null;
                        f5.b = f5.f1553c;
                    }
                }
                F0 f7 = this.f3027F;
                this.f3026E = f7.f1559k;
                boolean z7 = f7.f1557i;
                c(null);
                F0 f8 = this.f3027F;
                if (f8 != null && f8.f1557i != z7) {
                    f8.f1557i = z7;
                }
                this.f3039w = z7;
                r0();
                b1();
                F0 f9 = this.f3027F;
                int i7 = f9.b;
                if (i7 != -1) {
                    this.f3042z = i7;
                    c3.f1530c = f9.f1558j;
                } else {
                    c3.f1530c = this.f3040x;
                }
                if (f9.f > 1) {
                    c0013d.f177c = f9.g;
                    c0013d.f178d = f9.f1556h;
                }
            } else {
                b1();
                c3.f1530c = this.f3040x;
            }
            if (u0Var.g || (i4 = this.f3042z) == -1) {
                if (this.f3025D) {
                    int iB = u0Var.b();
                    iV2 = v() - 1;
                    while (true) {
                        if (iV2 < 0) {
                            iK2 = 0;
                            break;
                        }
                        iK2 = AbstractC0147g0.K(u(iV2));
                        if (iK2 < 0 && iK2 < iB) {
                            break;
                        } else {
                            iV2--;
                        }
                    }
                } else {
                    int iB2 = u0Var.b();
                    iV = v();
                    i3 = 0;
                    while (true) {
                        if (i3 >= iV) {
                            iK2 = 0;
                            break;
                        }
                        iK = AbstractC0147g0.K(u(i3));
                        if (iK < 0 && iK < iB2) {
                            iK2 = iK;
                            break;
                        }
                        i3++;
                    }
                }
                c3.f1529a = iK2;
                c3.b = Integer.MIN_VALUE;
            } else if (i4 < 0 || i4 >= u0Var.b()) {
                this.f3042z = -1;
                this.f3022A = Integer.MIN_VALUE;
                if (this.f3025D) {
                    int iB3 = u0Var.b();
                    iV2 = v() - 1;
                    while (true) {
                        if (iV2 < 0) {
                            iK2 = 0;
                            break;
                        } else {
                            iK2 = AbstractC0147g0.K(u(iV2));
                            if (iK2 < 0) {
                            }
                            iV2--;
                        }
                    }
                } else {
                    int iB4 = u0Var.b();
                    iV = v();
                    i3 = 0;
                    while (true) {
                        if (i3 >= iV) {
                            iK2 = 0;
                            break;
                        } else {
                            iK = AbstractC0147g0.K(u(i3));
                            if (iK < 0) {
                            }
                            i3++;
                        }
                    }
                }
                c3.f1529a = iK2;
                c3.b = Integer.MIN_VALUE;
            } else {
                F0 f10 = this.f3027F;
                if (f10 == null || f10.b == -1 || f10.f1554d < 1) {
                    View viewQ = q(this.f3042z);
                    if (viewQ != null) {
                        c3.f1529a = this.f3040x ? O0() : N0();
                        if (this.f3022A != Integer.MIN_VALUE) {
                            if (c3.f1530c) {
                                c3.b = (this.f3034r.g() - this.f3022A) - this.f3034r.b(viewQ);
                            } else {
                                c3.b = (this.f3034r.k() + this.f3022A) - this.f3034r.e(viewQ);
                            }
                        } else if (this.f3034r.c(viewQ) > this.f3034r.l()) {
                            c3.b = c3.f1530c ? this.f3034r.g() : this.f3034r.k();
                        } else {
                            int iE = this.f3034r.e(viewQ) - this.f3034r.k();
                            if (iE < 0) {
                                c3.b = -iE;
                            } else {
                                int iG2 = this.f3034r.g() - this.f3034r.b(viewQ);
                                if (iG2 < 0) {
                                    c3.b = iG2;
                                } else {
                                    c3.b = Integer.MIN_VALUE;
                                }
                            }
                        }
                    } else {
                        int i8 = this.f3042z;
                        c3.f1529a = i8;
                        int i9 = this.f3022A;
                        if (i9 == Integer.MIN_VALUE) {
                            if (v() != 0) {
                                if ((i8 < N0()) != this.f3040x) {
                                    z4 = false;
                                } else {
                                    z4 = true;
                                }
                            } else if (this.f3040x) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            c3.f1530c = z4;
                            c3.b = z4 ? staggeredGridLayoutManager.f3034r.g() : staggeredGridLayoutManager.f3034r.k();
                        } else if (c3.f1530c) {
                            c3.b = staggeredGridLayoutManager.f3034r.g() - i9;
                        } else {
                            c3.b = staggeredGridLayoutManager.f3034r.k() + i9;
                        }
                        c3.f1531d = true;
                    }
                } else {
                    c3.b = Integer.MIN_VALUE;
                    c3.f1529a = this.f3042z;
                }
            }
            c3.f1532e = true;
        }
        if (this.f3027F == null && this.f3042z == -1 && (c3.f1530c != this.f3025D || T0() != this.f3026E)) {
            c0013d.g();
            c3.f1531d = true;
        }
        if (v() > 0 && ((f3 = this.f3027F) == null || f3.f1554d < 1)) {
            if (c3.f1531d) {
                for (int i10 = 0; i10 < this.f3032p; i10++) {
                    this.f3033q[i10].b();
                    int i11 = c3.b;
                    if (i11 != Integer.MIN_VALUE) {
                        G0 g4 = this.f3033q[i10];
                        g4.b = i11;
                        g4.f1586c = i11;
                    }
                }
            } else if (z6 || c3.f == null) {
                for (int i12 = 0; i12 < this.f3032p; i12++) {
                    G0 g5 = this.f3033q[i12];
                    boolean z8 = this.f3040x;
                    int i13 = c3.b;
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = g5.f;
                    int iF = z8 ? g5.f(Integer.MIN_VALUE) : g5.h(Integer.MIN_VALUE);
                    g5.b();
                    if (iF != Integer.MIN_VALUE && ((!z8 || iF >= staggeredGridLayoutManager2.f3034r.g()) && (z8 || iF <= staggeredGridLayoutManager2.f3034r.k()))) {
                        if (i13 != Integer.MIN_VALUE) {
                            iF += i13;
                        }
                        g5.f1586c = iF;
                        g5.b = iF;
                    }
                }
                G0[] g0Arr = this.f3033q;
                int length = g0Arr.length;
                int[] iArr = c3.f;
                if (iArr == null || iArr.length < length) {
                    c3.f = new int[staggeredGridLayoutManager.f3033q.length];
                }
                for (int i14 = 0; i14 < length; i14++) {
                    c3.f[i14] = g0Arr[i14].h(Integer.MIN_VALUE);
                }
            } else {
                for (int i15 = 0; i15 < this.f3032p; i15++) {
                    G0 g6 = this.f3033q[i15];
                    g6.b();
                    int i16 = c3.f[i15];
                    g6.b = i16;
                    g6.f1586c = i16;
                }
            }
        }
        p(o0Var);
        H h2 = this.f3038v;
        h2.f1589a = false;
        int iL = this.f3035s.l();
        this.f3037u = iL / this.f3032p;
        View.MeasureSpec.makeMeasureSpec(iL, this.f3035s.i());
        e1(c3.f1529a, u0Var);
        if (c3.f1530c) {
            d1(-1);
            I0(o0Var, h2, u0Var);
            d1(1);
            h2.f1590c = c3.f1529a + h2.f1591d;
            I0(o0Var, h2, u0Var);
        } else {
            d1(1);
            I0(o0Var, h2, u0Var);
            d1(-1);
            h2.f1590c = c3.f1529a + h2.f1591d;
            I0(o0Var, h2, u0Var);
        }
        if (this.f3035s.i() != 1073741824) {
            int iV3 = v();
            float fMax = 0.0f;
            for (int i17 = 0; i17 < iV3; i17++) {
                View viewU = u(i17);
                float fC = this.f3035s.c(viewU);
                if (fC >= fMax) {
                    ((D0) viewU.getLayoutParams()).getClass();
                    fMax = Math.max(fMax, fC);
                }
            }
            int i18 = this.f3037u;
            int iRound = Math.round(fMax * this.f3032p);
            if (this.f3035s.i() == Integer.MIN_VALUE) {
                iRound = Math.min(iRound, this.f3035s.l());
            }
            this.f3037u = iRound / this.f3032p;
            View.MeasureSpec.makeMeasureSpec(iRound, this.f3035s.i());
            if (this.f3037u != i18) {
                for (int i19 = 0; i19 < iV3; i19++) {
                    View viewU2 = u(i19);
                    D0 d3 = (D0) viewU2.getLayoutParams();
                    d3.getClass();
                    if (T0() && this.f3036t == 1) {
                        int i20 = -((this.f3032p - 1) - d3.f1546e.f1588e);
                        viewU2.offsetLeftAndRight((this.f3037u * i20) - (i20 * i18));
                    } else {
                        int i21 = d3.f1546e.f1588e;
                        int i22 = this.f3037u * i21;
                        int i23 = i21 * i18;
                        if (this.f3036t == 1) {
                            viewU2.offsetLeftAndRight(i22 - i23);
                        } else {
                            viewU2.offsetTopAndBottom(i22 - i23);
                        }
                    }
                }
            }
        }
        if (v() > 0) {
            if (this.f3040x) {
                L0(o0Var, u0Var, true);
                M0(o0Var, u0Var, false);
            } else {
                M0(o0Var, u0Var, true);
                L0(o0Var, u0Var, false);
            }
        }
        if (z2 && !u0Var.g && this.f3024C != 0 && v() > 0 && S0() != null) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.removeCallbacks(this.K);
            }
            z3 = G0();
        }
        if (u0Var.g) {
            c3.a();
        }
        this.f3025D = c3.f1530c;
        this.f3026E = T0();
        if (z3) {
            c3.a();
            V0(o0Var, u0Var, false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0046  */
    /* JADX WARN: Code duplicated, block: B:37:0x0051  */
    @Override // P.AbstractC0147g0
    public final View W(View view, int i3, o0 o0Var, P.u0 u0Var) {
        View viewC;
        int i4;
        if (v() != 0) {
            RecyclerView recyclerView = this.b;
            if (recyclerView == null || (viewC = recyclerView.C(view)) == null || this.f1674a.f1691c.contains(viewC)) {
                viewC = null;
            }
            if (viewC != null) {
                b1();
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 17) {
                            if (i3 != 33) {
                                if (i3 == 66 ? this.f3036t == 0 : !(i3 != 130 || this.f3036t != 1)) {
                                    i4 = 1;
                                }
                            } else if (this.f3036t == 1) {
                                i4 = -1;
                            }
                            i4 = Integer.MIN_VALUE;
                        } else if (this.f3036t == 0) {
                            i4 = -1;
                        } else {
                            i4 = Integer.MIN_VALUE;
                        }
                    } else if (this.f3036t != 1 && T0()) {
                        i4 = -1;
                    } else {
                        i4 = 1;
                    }
                } else if (this.f3036t != 1 && T0()) {
                    i4 = 1;
                } else {
                    i4 = -1;
                }
                if (i4 != Integer.MIN_VALUE) {
                    D0 d3 = (D0) viewC.getLayoutParams();
                    d3.getClass();
                    G0 g3 = d3.f1546e;
                    int iO0 = i4 == 1 ? O0() : N0();
                    e1(iO0, u0Var);
                    d1(i4);
                    H h2 = this.f3038v;
                    h2.f1590c = h2.f1591d + iO0;
                    h2.b = (int) (this.f3034r.l() * 0.33333334f);
                    h2.f1593h = true;
                    h2.f1589a = false;
                    I0(o0Var, h2, u0Var);
                    this.f3025D = this.f3040x;
                    View viewG = g3.g(iO0, i4);
                    if (viewG != null && viewG != viewC) {
                        return viewG;
                    }
                    if (W0(i4)) {
                        for (int i5 = this.f3032p - 1; i5 >= 0; i5--) {
                            View viewG2 = this.f3033q[i5].g(iO0, i4);
                            if (viewG2 != null && viewG2 != viewC) {
                                return viewG2;
                            }
                        }
                    } else {
                        for (int i6 = 0; i6 < this.f3032p; i6++) {
                            View viewG3 = this.f3033q[i6].g(iO0, i4);
                            if (viewG3 != null && viewG3 != viewC) {
                                return viewG3;
                            }
                        }
                    }
                    boolean z2 = (this.f3039w ^ true) == (i4 == -1);
                    View viewQ = q(z2 ? g3.c() : g3.d());
                    if (viewQ != null && viewQ != viewC) {
                        return viewQ;
                    }
                    if (W0(i4)) {
                        for (int i7 = this.f3032p - 1; i7 >= 0; i7--) {
                            if (i7 != g3.f1588e) {
                                View viewQ2 = q(z2 ? this.f3033q[i7].c() : this.f3033q[i7].d());
                                if (viewQ2 != null && viewQ2 != viewC) {
                                    return viewQ2;
                                }
                            }
                        }
                    } else {
                        for (int i8 = 0; i8 < this.f3032p; i8++) {
                            View viewQ3 = q(z2 ? this.f3033q[i8].c() : this.f3033q[i8].d());
                            if (viewQ3 != null && viewQ3 != viewC) {
                                return viewQ3;
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public final boolean W0(int i3) {
        if (this.f3036t == 0) {
            return (i3 == -1) != this.f3040x;
        }
        return ((i3 == -1) == this.f3040x) == T0();
    }

    @Override // P.AbstractC0147g0
    public final void X(AccessibilityEvent accessibilityEvent) {
        super.X(accessibilityEvent);
        if (v() > 0) {
            View viewK0 = K0(false);
            View viewJ0 = J0(false);
            if (viewK0 == null || viewJ0 == null) {
                return;
            }
            int iK = AbstractC0147g0.K(viewK0);
            int iK2 = AbstractC0147g0.K(viewJ0);
            if (iK < iK2) {
                accessibilityEvent.setFromIndex(iK);
                accessibilityEvent.setToIndex(iK2);
            } else {
                accessibilityEvent.setFromIndex(iK2);
                accessibilityEvent.setToIndex(iK);
            }
        }
    }

    public final void X0(int i3, P.u0 u0Var) {
        int iN0;
        int i4;
        if (i3 > 0) {
            iN0 = O0();
            i4 = 1;
        } else {
            iN0 = N0();
            i4 = -1;
        }
        H h2 = this.f3038v;
        h2.f1589a = true;
        e1(iN0, u0Var);
        d1(i4);
        h2.f1590c = iN0 + h2.f1591d;
        h2.b = Math.abs(i3);
    }

    public final void Y0(o0 o0Var, H h2) {
        int iMin;
        if (!h2.f1589a || h2.f1594i) {
            return;
        }
        if (h2.b == 0) {
            if (h2.f1592e == -1) {
                Z0(o0Var, h2.g);
                return;
            } else {
                a1(o0Var, h2.f);
                return;
            }
        }
        int i3 = 1;
        if (h2.f1592e == -1) {
            int i4 = h2.f;
            int iH = this.f3033q[0].h(i4);
            while (i3 < this.f3032p) {
                int iH2 = this.f3033q[i3].h(i4);
                if (iH2 > iH) {
                    iH = iH2;
                }
                i3++;
            }
            int i5 = i4 - iH;
            Z0(o0Var, i5 < 0 ? h2.g : h2.g - Math.min(i5, h2.b));
            return;
        }
        int i6 = h2.g;
        int iF = this.f3033q[0].f(i6);
        while (i3 < this.f3032p) {
            int iF2 = this.f3033q[i3].f(i6);
            if (iF2 < iF) {
                iF = iF2;
            }
            i3++;
        }
        int i7 = iF - h2.g;
        if (i7 < 0) {
            iMin = h2.f;
        } else {
            iMin = Math.min(i7, h2.b) + h2.f;
        }
        a1(o0Var, iMin);
    }

    public final void Z0(o0 o0Var, int i3) {
        for (int iV = v() - 1; iV >= 0; iV--) {
            View viewU = u(iV);
            if (this.f3034r.e(viewU) < i3 || this.f3034r.n(viewU) < i3) {
                return;
            }
            D0 d3 = (D0) viewU.getLayoutParams();
            d3.getClass();
            if (d3.f1546e.f1585a.size() == 1) {
                return;
            }
            G0 g3 = d3.f1546e;
            ArrayList arrayList = g3.f1585a;
            int size = arrayList.size();
            View view = (View) arrayList.remove(size - 1);
            D0 d4 = (D0) view.getLayoutParams();
            d4.f1546e = null;
            if (d4.f1687a.h() || d4.f1687a.k()) {
                g3.f1587d -= g3.f.f3034r.c(view);
            }
            if (size == 1) {
                g3.b = Integer.MIN_VALUE;
            }
            g3.f1586c = Integer.MIN_VALUE;
            o0(viewU, o0Var);
        }
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000c  */
    @Override // P.t0
    public final PointF a(int i3) {
        int i4 = -1;
        if (v() != 0) {
            if ((i3 < N0()) == this.f3040x) {
                i4 = 1;
            }
        } else if (this.f3040x) {
            i4 = 1;
        }
        PointF pointF = new PointF();
        if (i4 == 0) {
            return null;
        }
        if (this.f3036t == 0) {
            pointF.x = i4;
            pointF.y = 0.0f;
            return pointF;
        }
        pointF.x = 0.0f;
        pointF.y = i4;
        return pointF;
    }

    public final void a1(o0 o0Var, int i3) {
        while (v() > 0) {
            View viewU = u(0);
            if (this.f3034r.b(viewU) > i3 || this.f3034r.m(viewU) > i3) {
                return;
            }
            D0 d3 = (D0) viewU.getLayoutParams();
            d3.getClass();
            if (d3.f1546e.f1585a.size() == 1) {
                return;
            }
            G0 g3 = d3.f1546e;
            ArrayList arrayList = g3.f1585a;
            View view = (View) arrayList.remove(0);
            D0 d4 = (D0) view.getLayoutParams();
            d4.f1546e = null;
            if (arrayList.size() == 0) {
                g3.f1586c = Integer.MIN_VALUE;
            }
            if (d4.f1687a.h() || d4.f1687a.k()) {
                g3.f1587d -= g3.f.f3034r.c(view);
            }
            g3.b = Integer.MIN_VALUE;
            o0(viewU, o0Var);
        }
    }

    @Override // P.AbstractC0147g0
    public final void b0(int i3, int i4) {
        R0(i3, i4, 1);
    }

    public final void b1() {
        if (this.f3036t == 1 || !T0()) {
            this.f3040x = this.f3039w;
        } else {
            this.f3040x = !this.f3039w;
        }
    }

    @Override // P.AbstractC0147g0
    public final void c(String str) {
        if (this.f3027F == null) {
            super.c(str);
        }
    }

    @Override // P.AbstractC0147g0
    public final void c0() {
        this.f3023B.g();
        r0();
    }

    public final int c1(int i3, o0 o0Var, P.u0 u0Var) {
        if (v() == 0 || i3 == 0) {
            return 0;
        }
        X0(i3, u0Var);
        H h2 = this.f3038v;
        int iI0 = I0(o0Var, h2, u0Var);
        if (h2.b >= iI0) {
            i3 = i3 < 0 ? -iI0 : iI0;
        }
        this.f3034r.o(-i3);
        this.f3025D = this.f3040x;
        h2.b = 0;
        Y0(o0Var, h2);
        return i3;
    }

    @Override // P.AbstractC0147g0
    public final boolean d() {
        return this.f3036t == 0;
    }

    @Override // P.AbstractC0147g0
    public final void d0(int i3, int i4) {
        R0(i3, i4, 8);
    }

    public final void d1(int i3) {
        H h2 = this.f3038v;
        h2.f1592e = i3;
        h2.f1591d = this.f3040x != (i3 == -1) ? -1 : 1;
    }

    @Override // P.AbstractC0147g0
    public final boolean e() {
        return this.f3036t == 1;
    }

    @Override // P.AbstractC0147g0
    public final void e0(int i3, int i4) {
        R0(i3, i4, 2);
    }

    public final void e1(int i3, P.u0 u0Var) {
        int iL;
        int iL2;
        int i4;
        H h2 = this.f3038v;
        boolean z2 = false;
        h2.b = 0;
        h2.f1590c = i3;
        M m2 = this.f1677e;
        if (m2 == null || !m2.f1623e || (i4 = u0Var.f1759a) == -1) {
            iL = 0;
            iL2 = 0;
        } else {
            if (this.f3040x == (i4 < i3)) {
                iL = this.f3034r.l();
                iL2 = 0;
            } else {
                iL2 = this.f3034r.l();
                iL = 0;
            }
        }
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || !recyclerView.f2989i) {
            h2.g = this.f3034r.f() + iL;
            h2.f = -iL2;
        } else {
            h2.f = this.f3034r.k() - iL2;
            h2.g = this.f3034r.g() + iL;
        }
        h2.f1593h = false;
        h2.f1589a = true;
        if (this.f3034r.i() == 0 && this.f3034r.f() == 0) {
            z2 = true;
        }
        h2.f1594i = z2;
    }

    @Override // P.AbstractC0147g0
    public final boolean f(C0149h0 c0149h0) {
        return c0149h0 instanceof D0;
    }

    @Override // P.AbstractC0147g0
    public final void f0(int i3, int i4) {
        R0(i3, i4, 4);
    }

    public final void f1(G0 g3, int i3, int i4) {
        int i5 = g3.f1587d;
        int i6 = g3.f1588e;
        if (i3 != -1) {
            int i7 = g3.f1586c;
            if (i7 == Integer.MIN_VALUE) {
                g3.a();
                i7 = g3.f1586c;
            }
            if (i7 - i5 >= i4) {
                this.f3041y.set(i6, false);
                return;
            }
            return;
        }
        int i8 = g3.b;
        if (i8 == Integer.MIN_VALUE) {
            View view = (View) g3.f1585a.get(0);
            D0 d3 = (D0) view.getLayoutParams();
            g3.b = g3.f.f3034r.e(view);
            d3.getClass();
            i8 = g3.b;
        }
        if (i8 + i5 <= i4) {
            this.f3041y.set(i6, false);
        }
    }

    @Override // P.AbstractC0147g0
    public final void g0(o0 o0Var, P.u0 u0Var) {
        V0(o0Var, u0Var, true);
    }

    @Override // P.AbstractC0147g0
    public final void h(int i3, int i4, P.u0 u0Var, C0166y c0166y) {
        H h2;
        int iF;
        int iH;
        if (this.f3036t != 0) {
            i3 = i4;
        }
        if (v() == 0 || i3 == 0) {
            return;
        }
        X0(i3, u0Var);
        int[] iArr = this.f3031J;
        if (iArr == null || iArr.length < this.f3032p) {
            this.f3031J = new int[this.f3032p];
        }
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int i7 = this.f3032p;
            h2 = this.f3038v;
            if (i5 >= i7) {
                break;
            }
            if (h2.f1591d == -1) {
                iF = h2.f;
                iH = this.f3033q[i5].h(iF);
            } else {
                iF = this.f3033q[i5].f(h2.g);
                iH = h2.g;
            }
            int i8 = iF - iH;
            if (i8 >= 0) {
                this.f3031J[i6] = i8;
                i6++;
            }
            i5++;
        }
        Arrays.sort(this.f3031J, 0, i6);
        for (int i9 = 0; i9 < i6; i9++) {
            int i10 = h2.f1590c;
            if (i10 < 0 || i10 >= u0Var.b()) {
                return;
            }
            c0166y.a(h2.f1590c, this.f3031J[i9]);
            h2.f1590c += h2.f1591d;
        }
    }

    @Override // P.AbstractC0147g0
    public final void h0(P.u0 u0Var) {
        this.f3042z = -1;
        this.f3022A = Integer.MIN_VALUE;
        this.f3027F = null;
        this.f3029H.a();
    }

    @Override // P.AbstractC0147g0
    public final void i0(Parcelable parcelable) {
        if (parcelable instanceof F0) {
            F0 f3 = (F0) parcelable;
            this.f3027F = f3;
            if (this.f3042z != -1) {
                f3.b = -1;
                f3.f1553c = -1;
                f3.f1555e = null;
                f3.f1554d = 0;
                f3.f = 0;
                f3.g = null;
                f3.f1556h = null;
            }
            r0();
        }
    }

    @Override // P.AbstractC0147g0
    public final int j(P.u0 u0Var) {
        if (v() == 0) {
            return 0;
        }
        boolean z2 = !this.f3030I;
        return AbstractC0138c.a(u0Var, this.f3034r, K0(z2), J0(z2), this, this.f3030I);
    }

    @Override // P.AbstractC0147g0
    public final Parcelable j0() {
        int iH;
        int iK;
        int[] iArr;
        F0 f3 = this.f3027F;
        if (f3 != null) {
            F0 f4 = new F0();
            f4.f1554d = f3.f1554d;
            f4.b = f3.b;
            f4.f1553c = f3.f1553c;
            f4.f1555e = f3.f1555e;
            f4.f = f3.f;
            f4.g = f3.g;
            f4.f1557i = f3.f1557i;
            f4.f1558j = f3.f1558j;
            f4.f1559k = f3.f1559k;
            f4.f1556h = f3.f1556h;
            return f4;
        }
        F0 f5 = new F0();
        f5.f1557i = this.f3039w;
        f5.f1558j = this.f3025D;
        f5.f1559k = this.f3026E;
        C0013d c0013d = this.f3023B;
        if (c0013d == null || (iArr = (int[]) c0013d.f177c) == null) {
            f5.f = 0;
        } else {
            f5.g = iArr;
            f5.f = iArr.length;
            f5.f1556h = (ArrayList) c0013d.f178d;
        }
        if (v() <= 0) {
            f5.b = -1;
            f5.f1553c = -1;
            f5.f1554d = 0;
            return f5;
        }
        f5.b = this.f3025D ? O0() : N0();
        View viewJ0 = this.f3040x ? J0(true) : K0(true);
        f5.f1553c = viewJ0 != null ? AbstractC0147g0.K(viewJ0) : -1;
        int i3 = this.f3032p;
        f5.f1554d = i3;
        f5.f1555e = new int[i3];
        for (int i4 = 0; i4 < this.f3032p; i4++) {
            if (this.f3025D) {
                iH = this.f3033q[i4].f(Integer.MIN_VALUE);
                if (iH != Integer.MIN_VALUE) {
                    iK = this.f3034r.g();
                    iH -= iK;
                }
            } else {
                iH = this.f3033q[i4].h(Integer.MIN_VALUE);
                if (iH != Integer.MIN_VALUE) {
                    iK = this.f3034r.k();
                    iH -= iK;
                }
            }
            f5.f1555e[i4] = iH;
        }
        return f5;
    }

    @Override // P.AbstractC0147g0
    public final int k(P.u0 u0Var) {
        return H0(u0Var);
    }

    @Override // P.AbstractC0147g0
    public final void k0(int i3) {
        if (i3 == 0) {
            G0();
        }
    }

    @Override // P.AbstractC0147g0
    public final int l(P.u0 u0Var) {
        if (v() == 0) {
            return 0;
        }
        boolean z2 = !this.f3030I;
        return AbstractC0138c.c(u0Var, this.f3034r, K0(z2), J0(z2), this, this.f3030I);
    }

    @Override // P.AbstractC0147g0
    public final int m(P.u0 u0Var) {
        if (v() == 0) {
            return 0;
        }
        boolean z2 = !this.f3030I;
        return AbstractC0138c.a(u0Var, this.f3034r, K0(z2), J0(z2), this, this.f3030I);
    }

    @Override // P.AbstractC0147g0
    public final int n(P.u0 u0Var) {
        return H0(u0Var);
    }

    @Override // P.AbstractC0147g0
    public final int o(P.u0 u0Var) {
        if (v() == 0) {
            return 0;
        }
        boolean z2 = !this.f3030I;
        return AbstractC0138c.c(u0Var, this.f3034r, K0(z2), J0(z2), this, this.f3030I);
    }

    @Override // P.AbstractC0147g0
    public final C0149h0 r() {
        return this.f3036t == 0 ? new D0(-2, -1) : new D0(-1, -2);
    }

    @Override // P.AbstractC0147g0
    public final C0149h0 s(Context context, AttributeSet attributeSet) {
        return new D0(context, attributeSet);
    }

    @Override // P.AbstractC0147g0
    public final int s0(int i3, o0 o0Var, P.u0 u0Var) {
        return c1(i3, o0Var, u0Var);
    }

    @Override // P.AbstractC0147g0
    public final C0149h0 t(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new D0((ViewGroup.MarginLayoutParams) layoutParams) : new D0(layoutParams);
    }

    @Override // P.AbstractC0147g0
    public final void t0(int i3) {
        F0 f3 = this.f3027F;
        if (f3 != null && f3.b != i3) {
            f3.f1555e = null;
            f3.f1554d = 0;
            f3.b = -1;
            f3.f1553c = -1;
        }
        this.f3042z = i3;
        this.f3022A = Integer.MIN_VALUE;
        r0();
    }

    @Override // P.AbstractC0147g0
    public final int u0(int i3, o0 o0Var, P.u0 u0Var) {
        return c1(i3, o0Var, u0Var);
    }

    @Override // P.AbstractC0147g0
    public final void x0(Rect rect, int i3, int i4) {
        int iG;
        int iG2;
        int I2 = I() + H();
        int iG3 = G() + J();
        if (this.f3036t == 1) {
            iG2 = AbstractC0147g0.g(i4, rect.height() + iG3, ViewCompat.getMinimumHeight(this.b));
            iG = AbstractC0147g0.g(i3, (this.f3037u * this.f3032p) + I2, ViewCompat.getMinimumWidth(this.b));
        } else {
            iG = AbstractC0147g0.g(i3, rect.width() + I2, ViewCompat.getMinimumWidth(this.b));
            iG2 = AbstractC0147g0.g(i4, (this.f3037u * this.f3032p) + iG3, ViewCompat.getMinimumHeight(this.b));
        }
        this.b.setMeasuredDimension(iG, iG2);
    }
}
