package P;

import A1.C0013d;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: renamed from: P.g0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0147g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public C0150i f1674a;
    public RecyclerView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0013d f1675c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0013d f1676d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public M f1677e;
    public boolean f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f1678h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f1679i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1680j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1681k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1682l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1683m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1684n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1685o;

    public AbstractC0147g0() {
        C0143e0 c0143e0 = new C0143e0(this, 0);
        C0143e0 c0143e1 = new C0143e0(this, 1);
        this.f1675c = new C0013d(c0143e0);
        this.f1676d = new C0013d(c0143e1);
        this.f = false;
        this.g = false;
        this.f1678h = true;
        this.f1679i = true;
    }

    public static int A(View view) {
        return view.getLeft() - ((C0149h0) view.getLayoutParams()).b.left;
    }

    public static int B(View view) {
        Rect rect = ((C0149h0) view.getLayoutParams()).b;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public static int C(View view) {
        Rect rect = ((C0149h0) view.getLayoutParams()).b;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public static int D(View view) {
        return view.getRight() + ((C0149h0) view.getLayoutParams()).b.right;
    }

    public static int E(View view) {
        return view.getTop() - ((C0149h0) view.getLayoutParams()).b.top;
    }

    public static int K(View view) {
        return ((C0149h0) view.getLayoutParams()).f1687a.b();
    }

    public static C0145f0 L(Context context, AttributeSet attributeSet, int i3, int i4) {
        C0145f0 c0145f0 = new C0145f0();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O.a.f1506a, i3, i4);
        c0145f0.f1668a = typedArrayObtainStyledAttributes.getInt(0, 1);
        c0145f0.b = typedArrayObtainStyledAttributes.getInt(10, 1);
        c0145f0.f1669c = typedArrayObtainStyledAttributes.getBoolean(9, false);
        c0145f0.f1670d = typedArrayObtainStyledAttributes.getBoolean(11, false);
        typedArrayObtainStyledAttributes.recycle();
        return c0145f0;
    }

    public static boolean P(int i3, int i4, int i5) {
        int mode = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i4);
        if (i5 > 0 && i3 != i5) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i3;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i3;
        }
        return true;
    }

    public static void Q(View view, int i3, int i4, int i5, int i6) {
        C0149h0 c0149h0 = (C0149h0) view.getLayoutParams();
        Rect rect = c0149h0.b;
        view.layout(i3 + rect.left + ((ViewGroup.MarginLayoutParams) c0149h0).leftMargin, i4 + rect.top + ((ViewGroup.MarginLayoutParams) c0149h0).topMargin, (i5 - rect.right) - ((ViewGroup.MarginLayoutParams) c0149h0).rightMargin, (i6 - rect.bottom) - ((ViewGroup.MarginLayoutParams) c0149h0).bottomMargin);
    }

    public static int g(int i3, int i4, int i5) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? Math.max(i4, i5) : size;
        }
        return Math.min(size, Math.max(i4, i5));
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    /* JADX WARN: Code duplicated, block: B:14:0x0022  */
    /* JADX WARN: Code duplicated, block: B:5:0x0010  */
    public static int w(int i3, int i4, int i5, int i6, boolean z2) {
        int iMax = Math.max(0, i3 - i5);
        if (z2) {
            if (i6 >= 0) {
                i4 = 1073741824;
            } else if (i6 != -1 || (i4 != Integer.MIN_VALUE && (i4 == 0 || i4 != 1073741824))) {
                i4 = 0;
                i6 = 0;
            } else {
                i6 = iMax;
            }
        } else if (i6 >= 0) {
            i4 = 1073741824;
        } else if (i6 == -1) {
            i6 = iMax;
        } else if (i6 != -2) {
            i4 = 0;
            i6 = 0;
        } else if (i4 == Integer.MIN_VALUE || i4 == 1073741824) {
            i6 = iMax;
            i4 = Integer.MIN_VALUE;
        } else {
            i6 = iMax;
            i4 = 0;
        }
        return View.MeasureSpec.makeMeasureSpec(i6, i4);
    }

    public static int y(View view) {
        return view.getBottom() + ((C0149h0) view.getLayoutParams()).b.bottom;
    }

    public final boolean A0(View view, int i3, int i4, C0149h0 c0149h0) {
        return (!view.isLayoutRequested() && this.f1678h && P(view.getWidth(), i3, ((ViewGroup.MarginLayoutParams) c0149h0).width) && P(view.getHeight(), i4, ((ViewGroup.MarginLayoutParams) c0149h0).height)) ? false : true;
    }

    public boolean B0() {
        return false;
    }

    public final boolean C0(View view, int i3, int i4, C0149h0 c0149h0) {
        return (this.f1678h && P(view.getMeasuredWidth(), i3, ((ViewGroup.MarginLayoutParams) c0149h0).width) && P(view.getMeasuredHeight(), i4, ((ViewGroup.MarginLayoutParams) c0149h0).height)) ? false : true;
    }

    public abstract void D0(RecyclerView recyclerView, int i3);

    public final void E0(M m2) {
        M m3 = this.f1677e;
        if (m3 != null && m2 != m3 && m3.f1623e) {
            m3.i();
        }
        this.f1677e = m2;
        RecyclerView recyclerView = this.b;
        x0 x0Var = recyclerView.f2985f0;
        x0Var.f1802h.removeCallbacks(x0Var);
        x0Var.f1800d.abortAnimation();
        if (m2.f1624h) {
            Log.w("RecyclerView", "An instance of " + m2.getClass().getSimpleName() + " was started more than once. Each instance of" + m2.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        m2.b = recyclerView;
        m2.f1621c = this;
        int i3 = m2.f1620a;
        if (i3 == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        recyclerView.f2990i0.f1759a = i3;
        m2.f1623e = true;
        m2.f1622d = true;
        m2.f = recyclerView.f3000o.q(i3);
        m2.b.f2985f0.b();
        m2.f1624h = true;
    }

    public final int F() {
        RecyclerView recyclerView = this.b;
        W adapter = recyclerView != null ? recyclerView.getAdapter() : null;
        if (adapter != null) {
            return adapter.a();
        }
        return 0;
    }

    public boolean F0() {
        return false;
    }

    public final int G() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    public final int H() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public final int I() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public final int J() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public int M(o0 o0Var, u0 u0Var) {
        return -1;
    }

    public final void N(View view, Rect rect) {
        Matrix matrix;
        Rect rect2 = ((C0149h0) view.getLayoutParams()).b;
        rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        if (this.b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.b.f2997m;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public abstract boolean O();

    public void R(int i3) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            int iE = recyclerView.g.e();
            for (int i4 = 0; i4 < iE; i4++) {
                recyclerView.g.d(i4).offsetLeftAndRight(i3);
            }
        }
    }

    public void S(int i3) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            int iE = recyclerView.g.e();
            for (int i4 = 0; i4 < iE; i4++) {
                recyclerView.g.d(i4).offsetTopAndBottom(i3);
            }
        }
    }

    public abstract void V(RecyclerView recyclerView);

    public abstract View W(View view, int i3, o0 o0Var, u0 u0Var);

    public void X(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.b;
        o0 o0Var = recyclerView.f2981d;
        if (accessibilityEvent == null) {
            return;
        }
        boolean z2 = true;
        if (!recyclerView.canScrollVertically(1) && !this.b.canScrollVertically(-1) && !this.b.canScrollHorizontally(-1) && !this.b.canScrollHorizontally(1)) {
            z2 = false;
        }
        accessibilityEvent.setScrollable(z2);
        W w2 = this.b.f2999n;
        if (w2 != null) {
            accessibilityEvent.setItemCount(w2.a());
        }
    }

    public void Y(o0 o0Var, u0 u0Var, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.b.canScrollVertically(-1) || this.b.canScrollHorizontally(-1)) {
            accessibilityNodeInfoCompat.addAction(8192);
            accessibilityNodeInfoCompat.setScrollable(true);
        }
        if (this.b.canScrollVertically(1) || this.b.canScrollHorizontally(1)) {
            accessibilityNodeInfoCompat.addAction(4096);
            accessibilityNodeInfoCompat.setScrollable(true);
        }
        accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(M(o0Var, u0Var), x(o0Var, u0Var), false, 0));
    }

    public final void a0(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        y0 y0VarK = RecyclerView.K(view);
        if (y0VarK == null || y0VarK.h()) {
            return;
        }
        C0150i c0150i = this.f1674a;
        if (c0150i.f1691c.contains(y0VarK.f1807a)) {
            return;
        }
        RecyclerView recyclerView = this.b;
        Z(recyclerView.f2981d, recyclerView.f2990i0, view, accessibilityNodeInfoCompat);
    }

    public final void b(View view, int i3, boolean z2) {
        y0 y0VarK = RecyclerView.K(view);
        if (z2 || y0VarK.h()) {
            p041q.j jVar = (p041q.j) this.b.f2987h.f177c;
            I0 i0A = (I0) jVar.get(y0VarK);
            if (i0A == null) {
                i0A = I0.a();
                jVar.put(y0VarK, i0A);
            }
            i0A.f1604a |= 1;
        } else {
            this.b.f2987h.C(y0VarK);
        }
        C0149h0 c0149h0 = (C0149h0) view.getLayoutParams();
        if (y0VarK.p() || y0VarK.i()) {
            if (y0VarK.i()) {
                y0VarK.f1817n.l(y0VarK);
            } else {
                y0VarK.f1813j &= -33;
            }
            this.f1674a.b(view, i3, view.getLayoutParams(), false);
        } else {
            if (view.getParent() == this.b) {
                C0150i c0150i = this.f1674a;
                C0148h c0148h = c0150i.b;
                int iIndexOfChild = c0150i.f1690a.f1642a.indexOfChild(view);
                int iB = (iIndexOfChild == -1 || c0148h.d(iIndexOfChild)) ? -1 : iIndexOfChild - c0148h.b(iIndexOfChild);
                if (i3 == -1) {
                    i3 = this.f1674a.e();
                }
                if (iB == -1) {
                    StringBuilder sb = new StringBuilder("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                    sb.append(this.b.indexOfChild(view));
                    throw new IllegalStateException(E.b.k(this.b, sb));
                }
                if (iB != i3) {
                    AbstractC0147g0 abstractC0147g0 = this.b.f3000o;
                    View viewU = abstractC0147g0.u(iB);
                    if (viewU == null) {
                        throw new IllegalArgumentException("Cannot move a child from non-existing index:" + iB + abstractC0147g0.b.toString());
                    }
                    abstractC0147g0.u(iB);
                    abstractC0147g0.f1674a.c(iB);
                    C0149h0 c0149h1 = (C0149h0) viewU.getLayoutParams();
                    y0 y0VarK2 = RecyclerView.K(viewU);
                    if (y0VarK2.h()) {
                        p041q.j jVar2 = (p041q.j) abstractC0147g0.b.f2987h.f177c;
                        I0 i0A2 = (I0) jVar2.get(y0VarK2);
                        if (i0A2 == null) {
                            i0A2 = I0.a();
                            jVar2.put(y0VarK2, i0A2);
                        }
                        i0A2.f1604a = 1 | i0A2.f1604a;
                    } else {
                        abstractC0147g0.b.f2987h.C(y0VarK2);
                    }
                    abstractC0147g0.f1674a.b(viewU, i3, c0149h1, y0VarK2.h());
                }
            } else {
                this.f1674a.a(view, i3, false);
                c0149h0.f1688c = true;
                M m2 = this.f1677e;
                if (m2 != null && m2.f1623e) {
                    m2.b.getClass();
                    y0 y0VarK3 = RecyclerView.K(view);
                    if ((y0VarK3 != null ? y0VarK3.b() : -1) == m2.f1620a) {
                        m2.f = view;
                        if (RecyclerView.f2945C0) {
                            Log.d("RecyclerView", "smooth scroll target view has been attached");
                        }
                    }
                }
            }
        }
        if (c0149h0.f1689d) {
            if (RecyclerView.f2945C0) {
                Log.d("RecyclerView", "consuming pending invalidate on child " + c0149h0.f1687a);
            }
            y0VarK.f1807a.invalidate();
            c0149h0.f1689d = false;
        }
    }

    public void c(String str) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.k(str);
        }
    }

    public abstract boolean d();

    public abstract boolean e();

    public boolean f(C0149h0 c0149h0) {
        return c0149h0 != null;
    }

    public abstract void g0(o0 o0Var, u0 u0Var);

    public abstract void h0(u0 u0Var);

    public abstract int j(u0 u0Var);

    public Parcelable j0() {
        return null;
    }

    public abstract int k(u0 u0Var);

    public abstract int l(u0 u0Var);

    /* JADX WARN: Code duplicated, block: B:22:0x0062 A[PHI: r3
      0x0062: PHI (r3v8 int) = (r3v5 int), (r3v11 int) binds: [B:28:0x007e, B:20:0x0054] A[DONT_GENERATE, DONT_INLINE]] */
    public boolean l0(o0 o0Var, u0 u0Var, int i3, Bundle bundle) {
        int iJ;
        int iH;
        if (this.b != null) {
            int iHeight = this.f1685o;
            int iWidth = this.f1684n;
            Rect rect = new Rect();
            if (this.b.getMatrix().isIdentity() && this.b.getGlobalVisibleRect(rect)) {
                iHeight = rect.height();
                iWidth = rect.width();
            }
            if (i3 == 4096) {
                iJ = this.b.canScrollVertically(1) ? (iHeight - J()) - G() : 0;
                if (this.b.canScrollHorizontally(1)) {
                    iH = (iWidth - H()) - I();
                } else {
                    iH = 0;
                }
            } else if (i3 != 8192) {
                iJ = 0;
                iH = 0;
            } else {
                iJ = this.b.canScrollVertically(-1) ? -((iHeight - J()) - G()) : 0;
                if (this.b.canScrollHorizontally(-1)) {
                    iH = -((iWidth - H()) - I());
                } else {
                    iH = 0;
                }
            }
            if (iJ != 0 || iH != 0) {
                this.b.h0(iH, iJ, true);
                return true;
            }
        }
        return false;
    }

    public abstract int m(u0 u0Var);

    public final void m0(o0 o0Var) {
        for (int iV = v() - 1; iV >= 0; iV--) {
            if (!RecyclerView.K(u(iV)).o()) {
                View viewU = u(iV);
                p0(iV);
                o0Var.h(viewU);
            }
        }
    }

    public abstract int n(u0 u0Var);

    public final void n0(o0 o0Var) {
        ArrayList arrayList = o0Var.f1721a;
        int size = arrayList.size();
        for (int i3 = size - 1; i3 >= 0; i3--) {
            View view = ((y0) arrayList.get(i3)).f1807a;
            y0 y0VarK = RecyclerView.K(view);
            if (!y0VarK.o()) {
                y0VarK.n(false);
                if (y0VarK.j()) {
                    this.b.removeDetachedView(view, false);
                }
                AbstractC0139c0 abstractC0139c0 = this.b.f2967N;
                if (abstractC0139c0 != null) {
                    abstractC0139c0.d(y0VarK);
                }
                y0VarK.n(true);
                y0 y0VarK2 = RecyclerView.K(view);
                y0VarK2.f1817n = null;
                y0VarK2.f1818o = false;
                y0VarK2.f1813j &= -33;
                o0Var.i(y0VarK2);
            }
        }
        arrayList.clear();
        ArrayList arrayList2 = o0Var.b;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        if (size > 0) {
            this.b.invalidate();
        }
    }

    public abstract int o(u0 u0Var);

    public final void o0(View view, o0 o0Var) {
        C0150i c0150i = this.f1674a;
        V v2 = c0150i.f1690a;
        int i3 = c0150i.f1692d;
        if (i3 == 1) {
            throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
        }
        if (i3 == 2) {
            throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
        }
        try {
            c0150i.f1692d = 1;
            c0150i.f1693e = view;
            int iIndexOfChild = v2.f1642a.indexOfChild(view);
            if (iIndexOfChild >= 0) {
                if (c0150i.b.f(iIndexOfChild)) {
                    c0150i.j(view);
                }
                v2.h(iIndexOfChild);
            }
            c0150i.f1692d = 0;
            c0150i.f1693e = null;
            o0Var.h(view);
        } catch (Throwable th) {
            c0150i.f1692d = 0;
            c0150i.f1693e = null;
            throw th;
        }
    }

    public final void p(o0 o0Var) {
        for (int iV = v() - 1; iV >= 0; iV--) {
            View viewU = u(iV);
            y0 y0VarK = RecyclerView.K(viewU);
            if (y0VarK.o()) {
                if (RecyclerView.f2945C0) {
                    Log.d("RecyclerView", "ignoring view " + y0VarK);
                }
            } else if (!y0VarK.f() || y0VarK.h() || this.b.f2999n.b) {
                u(iV);
                this.f1674a.c(iV);
                o0Var.j(viewU);
                this.b.f2987h.C(y0VarK);
            } else {
                p0(iV);
                o0Var.i(y0VarK);
            }
        }
    }

    public final void p0(int i3) {
        if (u(i3) != null) {
            C0150i c0150i = this.f1674a;
            V v2 = c0150i.f1690a;
            int i4 = c0150i.f1692d;
            if (i4 == 1) {
                throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
            }
            if (i4 == 2) {
                throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
            }
            try {
                int iF = c0150i.f(i3);
                View childAt = v2.f1642a.getChildAt(iF);
                if (childAt != null) {
                    c0150i.f1692d = 1;
                    c0150i.f1693e = childAt;
                    if (c0150i.b.f(iF)) {
                        c0150i.j(childAt);
                    }
                    v2.h(iF);
                }
            } finally {
                c0150i.f1692d = 0;
                c0150i.f1693e = null;
            }
        }
    }

    public View q(int i3) {
        int iV = v();
        for (int i4 = 0; i4 < iV; i4++) {
            View viewU = u(i4);
            y0 y0VarK = RecyclerView.K(viewU);
            if (y0VarK != null && y0VarK.b() == i3 && !y0VarK.o() && (this.b.f2990i0.g || !y0VarK.h())) {
                return viewU;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:35:0x00bc  */
    public boolean q0(RecyclerView recyclerView, View view, Rect rect, boolean z2, boolean z3) {
        int iH = H();
        int iJ = J();
        int I2 = this.f1684n - I();
        int iG = this.f1685o - G();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int iWidth = rect.width() + left;
        int iHeight = rect.height() + top;
        int i3 = left - iH;
        int iMin = Math.min(0, i3);
        int i4 = top - iJ;
        int iMin2 = Math.min(0, i4);
        int i5 = iWidth - I2;
        int iMax = Math.max(0, i5);
        int iMax2 = Math.max(0, iHeight - iG);
        if (ViewCompat.getLayoutDirection(this.b) != 1) {
            if (iMin == 0) {
                iMin = Math.min(i3, iMax);
            }
            iMax = iMin;
        } else if (iMax == 0) {
            iMax = Math.max(iMin, i5);
        }
        if (iMin2 == 0) {
            iMin2 = Math.min(i4, iMax2);
        }
        int[] iArr = {iMax, iMin2};
        int i6 = iArr[0];
        int i7 = iArr[1];
        if (z3) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild != null) {
                int iH2 = H();
                int iJ2 = J();
                int I3 = this.f1684n - I();
                int iG2 = this.f1685o - G();
                Rect rect2 = this.b.f2993k;
                z(focusedChild, rect2);
                if (rect2.left - i6 < I3 && rect2.right - i6 > iH2 && rect2.top - i7 < iG2 && rect2.bottom - i7 > iJ2) {
                    if (i6 == 0) {
                    }
                    if (z2) {
                        recyclerView.scrollBy(i6, i7);
                        return true;
                    }
                    recyclerView.h0(i6, i7, false);
                    return true;
                }
            }
        } else if (i6 == 0 || i7 != 0) {
            if (z2) {
                recyclerView.scrollBy(i6, i7);
                return true;
            }
            recyclerView.h0(i6, i7, false);
            return true;
        }
        return false;
    }

    public abstract C0149h0 r();

    public final void r0() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public C0149h0 s(Context context, AttributeSet attributeSet) {
        return new C0149h0(context, attributeSet);
    }

    public abstract int s0(int i3, o0 o0Var, u0 u0Var);

    public C0149h0 t(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof C0149h0) {
            return new C0149h0((C0149h0) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0149h0((ViewGroup.MarginLayoutParams) layoutParams) : new C0149h0(layoutParams);
    }

    public abstract void t0(int i3);

    public final View u(int i3) {
        C0150i c0150i = this.f1674a;
        if (c0150i != null) {
            return c0150i.d(i3);
        }
        return null;
    }

    public abstract int u0(int i3, o0 o0Var, u0 u0Var);

    public final int v() {
        C0150i c0150i = this.f1674a;
        if (c0150i != null) {
            return c0150i.e();
        }
        return 0;
    }

    public final void v0(RecyclerView recyclerView) {
        w0(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    public final void w0(int i3, int i4) {
        this.f1684n = View.MeasureSpec.getSize(i3);
        int mode = View.MeasureSpec.getMode(i3);
        this.f1682l = mode;
        if (mode == 0 && !RecyclerView.f2948F0) {
            this.f1684n = 0;
        }
        this.f1685o = View.MeasureSpec.getSize(i4);
        int mode2 = View.MeasureSpec.getMode(i4);
        this.f1683m = mode2;
        if (mode2 != 0 || RecyclerView.f2948F0) {
            return;
        }
        this.f1685o = 0;
    }

    public int x(o0 o0Var, u0 u0Var) {
        return -1;
    }

    public void x0(Rect rect, int i3, int i4) {
        int I2 = I() + H() + rect.width();
        int iG = G() + J() + rect.height();
        this.b.setMeasuredDimension(g(i3, I2, ViewCompat.getMinimumWidth(this.b)), g(i4, iG, ViewCompat.getMinimumHeight(this.b)));
    }

    public final void y0(int i3, int i4) {
        int iV = v();
        if (iV == 0) {
            this.b.q(i3, i4);
            return;
        }
        int i5 = Integer.MIN_VALUE;
        int i6 = Integer.MAX_VALUE;
        int i7 = Integer.MIN_VALUE;
        int i8 = Integer.MAX_VALUE;
        for (int i9 = 0; i9 < iV; i9++) {
            View viewU = u(i9);
            Rect rect = this.b.f2993k;
            z(viewU, rect);
            int i10 = rect.left;
            if (i10 < i8) {
                i8 = i10;
            }
            int i11 = rect.right;
            if (i11 > i5) {
                i5 = i11;
            }
            int i12 = rect.top;
            if (i12 < i6) {
                i6 = i12;
            }
            int i13 = rect.bottom;
            if (i13 > i7) {
                i7 = i13;
            }
        }
        this.b.f2993k.set(i8, i6, i5, i7);
        x0(this.b.f2993k, i3, i4);
    }

    public void z(View view, Rect rect) {
        boolean z2 = RecyclerView.f2944B0;
        C0149h0 c0149h0 = (C0149h0) view.getLayoutParams();
        Rect rect2 = c0149h0.b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) c0149h0).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) c0149h0).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) c0149h0).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) c0149h0).bottomMargin);
    }

    public final void z0(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.b = null;
            this.f1674a = null;
            this.f1684n = 0;
            this.f1685o = 0;
        } else {
            this.b = recyclerView;
            this.f1674a = recyclerView.g;
            this.f1684n = recyclerView.getWidth();
            this.f1685o = recyclerView.getHeight();
        }
        this.f1682l = 1073741824;
        this.f1683m = 1073741824;
    }

    public void T() {
    }

    public void c0() {
    }

    public void U(RecyclerView recyclerView) {
    }

    public void i0(Parcelable parcelable) {
    }

    public void k0(int i3) {
    }

    public void b0(int i3, int i4) {
    }

    public void d0(int i3, int i4) {
    }

    public void e0(int i3, int i4) {
    }

    public void f0(int i3, int i4) {
    }

    public void i(int i3, C0166y c0166y) {
    }

    public void Z(o0 o0Var, u0 u0Var, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    public void h(int i3, int i4, u0 u0Var, C0166y c0166y) {
    }
}
