package androidx.recyclerview.widget;

import A1.C0013d;
import B.a;
import D.d;
import E.b;
import P.A;
import P.A0;
import P.AbstractC0135a0;
import P.AbstractC0139c0;
import P.AbstractC0141d0;
import P.AbstractC0147g0;
import P.C0134a;
import P.C0136b;
import P.C0137b0;
import P.C0149h0;
import P.C0150i;
import P.C0158p;
import P.C0165x;
import P.C0166y;
import P.I0;
import P.InterfaceC0151i0;
import P.M;
import P.U;
import P.V;
import P.W;
import P.Z;
import P.j0;
import P.k0;
import P.l0;
import P.m0;
import P.n0;
import P.o0;
import P.p0;
import P.q0;
import P.r0;
import P.u0;
import P.v0;
import P.w0;
import P.x0;
import P.y0;
import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.core.os.TraceCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild2;
import androidx.core.view.NestedScrollingChild3;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.ViewGroupKt;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.widget.EdgeEffectCompat;
import com.bumptech.glide.c;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import p041q.g;
import p041q.j;
import p051u.h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements ScrollingView, NestedScrollingChild2, NestedScrollingChild3 {

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public static boolean f2944B0 = false;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public static boolean f2945C0 = false;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public static final int[] f2946D0 = {R.attr.nestedScrollingEnabled};

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public static final float f2947E0 = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public static final boolean f2948F0 = true;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public static final boolean f2949G0 = true;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public static final boolean f2950H0 = true;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public static final Class[] f2951I0;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public static final d f2952J0;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public static final v0 f2953K0;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f2954A;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public final V f2955A0;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public boolean f2956B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final AccessibilityManager f2957C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public ArrayList f2958D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f2959E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public boolean f2960F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f2961G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f2962H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public AbstractC0135a0 f2963I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public EdgeEffect f2964J;
    public EdgeEffect K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public EdgeEffect f2965L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public EdgeEffect f2966M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public AbstractC0139c0 f2967N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f2968O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f2969P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public VelocityTracker f2970Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f2971R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f2972S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f2973T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f2974U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f2975V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public j0 f2976W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f2977a0;
    public final float b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final int f2978b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q0 f2979c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final float f2980c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final o0 f2981d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final float f2982d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public r0 f2983e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f2984e0;
    public final C0136b f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final x0 f2985f0;
    public final C0150i g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public A f2986g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0013d f2987h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final C0166y f2988h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2989i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final u0 f2990i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final U f2991j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public l0 f2992j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Rect f2993k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public ArrayList f2994k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Rect f2995l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f2996l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final RectF f2997m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f2998m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public W f2999n;
    public final V n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public AbstractC0147g0 f3000o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f3001o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final ArrayList f3002p;
    public A0 p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final ArrayList f3003q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final int[] f3004q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final ArrayList f3005r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public NestedScrollingChildHelper f3006r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public k0 f3007s;
    public final int[] s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f3008t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public final int[] f3009t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f3010u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public final int[] f3011u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f3012v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final ArrayList f3013v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f3014w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public final U f3015w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f3016x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public boolean f3017x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f3018y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public int f3019y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f3020z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f3021z0;

    static {
        Class cls = Integer.TYPE;
        f2951I0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        f2952J0 = new d(3);
        f2953K0 = new v0();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.minhub.gamehub.R.attr.recyclerViewStyle);
    }

    public static RecyclerView F(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            RecyclerView recyclerViewF = F(viewGroup.getChildAt(i3));
            if (recyclerViewF != null) {
                return recyclerViewF;
            }
        }
        return null;
    }

    public static y0 K(View view) {
        if (view == null) {
            return null;
        }
        return ((C0149h0) view.getLayoutParams()).f1687a;
    }

    private NestedScrollingChildHelper getScrollingChildHelper() {
        if (this.f3006r0 == null) {
            this.f3006r0 = new NestedScrollingChildHelper(this);
        }
        return this.f3006r0;
    }

    public static void l(y0 y0Var) {
        WeakReference weakReference = y0Var.b;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view == y0Var.f1807a) {
                    return;
                }
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            y0Var.b = null;
        }
    }

    public static int o(int i3, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i4) {
        if (i3 > 0 && edgeEffect != null && EdgeEffectCompat.getDistance(edgeEffect) != 0.0f) {
            int iRound = Math.round(EdgeEffectCompat.onPullDistance(edgeEffect, ((-i3) * 4.0f) / i4, 0.5f) * ((-i4) / 4.0f));
            if (iRound != i3) {
                edgeEffect.finish();
            }
            return i3 - iRound;
        }
        if (i3 >= 0 || edgeEffect2 == null || EdgeEffectCompat.getDistance(edgeEffect2) == 0.0f) {
            return i3;
        }
        float f = i4;
        int iRound2 = Math.round(EdgeEffectCompat.onPullDistance(edgeEffect2, (i3 * 4.0f) / f, 0.5f) * (f / 4.0f));
        if (iRound2 != i3) {
            edgeEffect2.finish();
        }
        return i3 - iRound2;
    }

    public static void setDebugAssertionsEnabled(boolean z2) {
        f2944B0 = z2;
    }

    public static void setVerboseLoggingEnabled(boolean z2) {
        f2945C0 = z2;
    }

    public final String A() {
        return " " + super.toString() + ", adapter:" + this.f2999n + ", layout:" + this.f3000o + ", context:" + getContext();
    }

    public final void B(u0 u0Var) {
        if (getScrollState() != 2) {
            u0Var.getClass();
            return;
        }
        OverScroller overScroller = this.f2985f0.f1800d;
        overScroller.getFinalX();
        overScroller.getCurrX();
        u0Var.getClass();
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    public final View C(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public final boolean D(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        ArrayList arrayList = this.f3005r;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            k0 k0Var = (k0) arrayList.get(i3);
            if (k0Var.c(motionEvent) && action != 3) {
                this.f3007s = k0Var;
                return true;
            }
        }
        return false;
    }

    public final void E(int[] iArr) {
        int iE = this.g.e();
        if (iE == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i3 = IntCompanionObject.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        for (int i5 = 0; i5 < iE; i5++) {
            y0 y0VarK = K(this.g.d(i5));
            if (!y0VarK.o()) {
                int iB = y0VarK.b();
                if (iB < i3) {
                    i3 = iB;
                }
                if (iB > i4) {
                    i4 = iB;
                }
            }
        }
        iArr[0] = i3;
        iArr[1] = i4;
    }

    public final y0 G(int i3) {
        y0 y0Var = null;
        if (this.f2959E) {
            return null;
        }
        int iH = this.g.h();
        for (int i4 = 0; i4 < iH; i4++) {
            y0 y0VarK = K(this.g.g(i4));
            if (y0VarK != null && !y0VarK.h() && H(y0VarK) == i3) {
                if (!this.g.f1691c.contains(y0VarK.f1807a)) {
                    return y0VarK;
                }
                y0Var = y0VarK;
            }
        }
        return y0Var;
    }

    public final int H(y0 y0Var) {
        if ((y0Var.f1813j & 524) == 0 && y0Var.e()) {
            int i3 = y0Var.f1808c;
            ArrayList arrayList = this.f.b;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                C0134a c0134a = (C0134a) arrayList.get(i4);
                int i5 = c0134a.f1645a;
                if (i5 != 1) {
                    if (i5 == 2) {
                        int i6 = c0134a.b;
                        if (i6 <= i3) {
                            int i7 = c0134a.f1646c;
                            if (i6 + i7 <= i3) {
                                i3 -= i7;
                            }
                        } else {
                            continue;
                        }
                    } else if (i5 == 8) {
                        int i8 = c0134a.b;
                        if (i8 == i3) {
                            i3 = c0134a.f1646c;
                        } else {
                            if (i8 < i3) {
                                i3--;
                            }
                            if (c0134a.f1646c <= i3) {
                                i3++;
                            }
                        }
                    }
                } else if (c0134a.b <= i3) {
                    i3 += c0134a.f1646c;
                }
            }
            return i3;
        }
        return -1;
    }

    public final long I(y0 y0Var) {
        return this.f2999n.b ? y0Var.f1810e : y0Var.f1808c;
    }

    public final y0 J(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return K(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    public final Rect L(View view) {
        C0149h0 c0149h0 = (C0149h0) view.getLayoutParams();
        boolean z2 = c0149h0.f1688c;
        Rect rect = c0149h0.b;
        if (!z2 || (this.f2990i0.g && (c0149h0.f1687a.k() || c0149h0.f1687a.f()))) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        ArrayList arrayList = this.f3003q;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            Rect rect2 = this.f2993k;
            rect2.set(0, 0, 0, 0);
            ((AbstractC0141d0) arrayList.get(i3)).f(view, rect2);
            rect.left += rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        c0149h0.f1688c = false;
        return rect;
    }

    public final boolean M() {
        return !this.f3012v || this.f2959E || this.f.g();
    }

    public final boolean N() {
        return this.f2961G > 0;
    }

    public final void O(int i3) {
        if (this.f3000o == null) {
            return;
        }
        setScrollState(2);
        this.f3000o.t0(i3);
        awakenScrollBars();
    }

    public final void P() {
        int iH = this.g.h();
        for (int i3 = 0; i3 < iH; i3++) {
            ((C0149h0) this.g.g(i3).getLayoutParams()).f1688c = true;
        }
        ArrayList arrayList = this.f2981d.f1722c;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            C0149h0 c0149h0 = (C0149h0) ((y0) arrayList.get(i4)).f1807a.getLayoutParams();
            if (c0149h0 != null) {
                c0149h0.f1688c = true;
            }
        }
    }

    public final void Q(int i3, int i4, boolean z2) {
        int i5 = i3 + i4;
        int iH = this.g.h();
        for (int i6 = 0; i6 < iH; i6++) {
            y0 y0VarK = K(this.g.g(i6));
            if (y0VarK != null && !y0VarK.o()) {
                int i7 = y0VarK.f1808c;
                u0 u0Var = this.f2990i0;
                if (i7 >= i5) {
                    if (f2945C0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i6 + " holder " + y0VarK + " now at position " + (y0VarK.f1808c - i4));
                    }
                    y0VarK.l(-i4, z2);
                    u0Var.f = true;
                } else if (i7 >= i3) {
                    if (f2945C0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i6 + " holder " + y0VarK + " now REMOVED");
                    }
                    y0VarK.a(8);
                    y0VarK.l(-i4, z2);
                    y0VarK.f1808c = i3 - 1;
                    u0Var.f = true;
                }
            }
        }
        o0 o0Var = this.f2981d;
        ArrayList arrayList = o0Var.f1722c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            y0 y0Var = (y0) arrayList.get(size);
            if (y0Var != null) {
                int i8 = y0Var.f1808c;
                if (i8 >= i5) {
                    if (f2945C0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove cached " + size + " holder " + y0Var + " now at position " + (y0Var.f1808c - i4));
                    }
                    y0Var.l(-i4, z2);
                } else if (i8 >= i3) {
                    y0Var.a(8);
                    o0Var.g(size);
                }
            }
        }
        requestLayout();
    }

    public final void R() {
        this.f2961G++;
    }

    public final void S(boolean z2) {
        int i3;
        AccessibilityManager accessibilityManager;
        int i4 = this.f2961G - 1;
        this.f2961G = i4;
        if (i4 < 1) {
            if (f2944B0 && i4 < 0) {
                throw new IllegalStateException(b.k(this, new StringBuilder("layout or scroll counter cannot go below zero.Some calls are not matching")));
            }
            this.f2961G = 0;
            if (z2) {
                int i5 = this.f2954A;
                this.f2954A = 0;
                if (i5 != 0 && (accessibilityManager = this.f2957C) != null && accessibilityManager.isEnabled()) {
                    AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                    accessibilityEventObtain.setEventType(2048);
                    AccessibilityEventCompat.setContentChangeTypes(accessibilityEventObtain, i5);
                    sendAccessibilityEventUnchecked(accessibilityEventObtain);
                }
                ArrayList arrayList = this.f3013v0;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    y0 y0Var = (y0) arrayList.get(size);
                    if (y0Var.f1807a.getParent() == this && !y0Var.o() && (i3 = y0Var.f1820q) != -1) {
                        ViewCompat.setImportantForAccessibility(y0Var.f1807a, i3);
                        y0Var.f1820q = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    public final void T(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f2969P) {
            int i3 = actionIndex == 0 ? 1 : 0;
            this.f2969P = motionEvent.getPointerId(i3);
            int x2 = (int) (motionEvent.getX(i3) + 0.5f);
            this.f2973T = x2;
            this.f2971R = x2;
            int y2 = (int) (motionEvent.getY(i3) + 0.5f);
            this.f2974U = y2;
            this.f2972S = y2;
        }
    }

    public final void U() {
        if (this.f3001o0 || !this.f3008t) {
            return;
        }
        ViewCompat.postOnAnimation(this, this.f3015w0);
        this.f3001o0 = true;
    }

    public final void V() {
        boolean z2;
        boolean z3 = false;
        if (this.f2959E) {
            C0136b c0136b = this.f;
            c0136b.k(c0136b.b);
            c0136b.k(c0136b.f1648c);
            c0136b.f = 0;
            if (this.f2960F) {
                this.f3000o.c0();
            }
        }
        if (this.f2967N == null || !this.f3000o.F0()) {
            this.f.c();
        } else {
            this.f.j();
        }
        boolean z4 = this.f2996l0 || this.f2998m0;
        boolean z5 = this.f3012v && this.f2967N != null && ((z2 = this.f2959E) || z4 || this.f3000o.f) && (!z2 || this.f2999n.b);
        u0 u0Var = this.f2990i0;
        u0Var.f1765j = z5;
        if (z5 && z4 && !this.f2959E && this.f2967N != null && this.f3000o.F0()) {
            z3 = true;
        }
        u0Var.f1766k = z3;
    }

    public final void W(boolean z2) {
        this.f2960F = z2 | this.f2960F;
        this.f2959E = true;
        int iH = this.g.h();
        for (int i3 = 0; i3 < iH; i3++) {
            y0 y0VarK = K(this.g.g(i3));
            if (y0VarK != null && !y0VarK.o()) {
                y0VarK.a(6);
            }
        }
        P();
        o0 o0Var = this.f2981d;
        ArrayList arrayList = o0Var.f1722c;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            y0 y0Var = (y0) arrayList.get(i4);
            if (y0Var != null) {
                y0Var.a(6);
                y0Var.a(1024);
            }
        }
        W w2 = o0Var.f1725h.f2999n;
        if (w2 == null || !w2.b) {
            o0Var.f();
        }
    }

    public final void X(y0 y0Var, C0137b0 c0137b0) {
        y0Var.f1813j &= -8193;
        boolean z2 = this.f2990i0.f1763h;
        C0013d c0013d = this.f2987h;
        if (z2 && y0Var.k() && !y0Var.h() && !y0Var.o()) {
            ((g) c0013d.f178d).e(I(y0Var), y0Var);
        }
        j jVar = (j) c0013d.f177c;
        I0 i0A = (I0) jVar.get(y0Var);
        if (i0A == null) {
            i0A = I0.a();
            jVar.put(y0Var, i0A);
        }
        i0A.b = c0137b0;
        i0A.f1604a |= 4;
    }

    public final int Y(int i3, float f) {
        float height = f / getHeight();
        float width = i3 / getWidth();
        EdgeEffect edgeEffect = this.f2964J;
        float f3 = 0.0f;
        if (edgeEffect == null || EdgeEffectCompat.getDistance(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.f2965L;
            if (edgeEffect2 != null && EdgeEffectCompat.getDistance(edgeEffect2) != 0.0f) {
                if (canScrollHorizontally(1)) {
                    this.f2965L.onRelease();
                } else {
                    float fOnPullDistance = EdgeEffectCompat.onPullDistance(this.f2965L, width, height);
                    if (EdgeEffectCompat.getDistance(this.f2965L) == 0.0f) {
                        this.f2965L.onRelease();
                    }
                    f3 = fOnPullDistance;
                }
                invalidate();
            }
        } else {
            if (canScrollHorizontally(-1)) {
                this.f2964J.onRelease();
            } else {
                float f4 = -EdgeEffectCompat.onPullDistance(this.f2964J, -width, 1.0f - height);
                if (EdgeEffectCompat.getDistance(this.f2964J) == 0.0f) {
                    this.f2964J.onRelease();
                }
                f3 = f4;
            }
            invalidate();
        }
        return Math.round(f3 * getWidth());
    }

    public final int Z(int i3, float f) {
        float width = f / getWidth();
        float height = i3 / getHeight();
        EdgeEffect edgeEffect = this.K;
        float f3 = 0.0f;
        if (edgeEffect == null || EdgeEffectCompat.getDistance(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.f2966M;
            if (edgeEffect2 != null && EdgeEffectCompat.getDistance(edgeEffect2) != 0.0f) {
                if (canScrollVertically(1)) {
                    this.f2966M.onRelease();
                } else {
                    float fOnPullDistance = EdgeEffectCompat.onPullDistance(this.f2966M, height, 1.0f - width);
                    if (EdgeEffectCompat.getDistance(this.f2966M) == 0.0f) {
                        this.f2966M.onRelease();
                    }
                    f3 = fOnPullDistance;
                }
                invalidate();
            }
        } else {
            if (canScrollVertically(-1)) {
                this.K.onRelease();
            } else {
                float f4 = -EdgeEffectCompat.onPullDistance(this.K, -height, width);
                if (EdgeEffectCompat.getDistance(this.K) == 0.0f) {
                    this.K.onRelease();
                }
                f3 = f4;
            }
            invalidate();
        }
        return Math.round(f3 * getHeight());
    }

    public final void a0(AbstractC0141d0 abstractC0141d0) {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null) {
            abstractC0147g0.c("Cannot remove item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.f3003q;
        arrayList.remove(abstractC0141d0);
        if (arrayList.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        P();
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i3, int i4) {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null) {
            abstractC0147g0.getClass();
        }
        super.addFocusables(arrayList, i3, i4);
    }

    public final void b0(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.f2993k;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof C0149h0) {
            C0149h0 c0149h0 = (C0149h0) layoutParams;
            if (!c0149h0.f1688c) {
                Rect rect2 = c0149h0.b;
                rect.left -= rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        this.f3000o.q0(this, view, this.f2993k, !this.f3012v, view2 == null);
    }

    public final void c0() {
        VelocityTracker velocityTracker = this.f2970Q;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean zIsFinished = false;
        stopNestedScroll(0);
        EdgeEffect edgeEffect = this.f2964J;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.f2964J.isFinished();
        }
        EdgeEffect edgeEffect2 = this.K;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.K.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f2965L;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.f2965L.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f2966M;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.f2966M.isFinished();
        }
        if (zIsFinished) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0149h0) && this.f3000o.f((C0149h0) layoutParams);
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeHorizontalScrollExtent() {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null && abstractC0147g0.d()) {
            return this.f3000o.j(this.f2990i0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeHorizontalScrollOffset() {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null && abstractC0147g0.d()) {
            return this.f3000o.k(this.f2990i0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeHorizontalScrollRange() {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null && abstractC0147g0.d()) {
            return this.f3000o.l(this.f2990i0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeVerticalScrollExtent() {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null && abstractC0147g0.e()) {
            return this.f3000o.m(this.f2990i0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeVerticalScrollOffset() {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null && abstractC0147g0.e()) {
            return this.f3000o.n(this.f2990i0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeVerticalScrollRange() {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null && abstractC0147g0.e()) {
            return this.f3000o.o(this.f2990i0);
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:32:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:34:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:35:0x00f7 A[DONT_INVERT, PHI: r7
      0x00f7: PHI (r7v9 boolean) = (r7v7 boolean), (r7v10 boolean) binds: [B:33:0x00de, B:31:0x00da] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:40:0x0101  */
    public final boolean d0(int i3, int i4, MotionEvent motionEvent, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        float f;
        boolean z2;
        p();
        W w2 = this.f2999n;
        int[] iArr = this.f3011u0;
        if (w2 != null) {
            iArr[0] = 0;
            iArr[1] = 0;
            e0(i3, i4, iArr);
            i6 = iArr[0];
            i7 = iArr[1];
            i8 = i3 - i6;
            i9 = i4 - i7;
        } else {
            i6 = 0;
            i7 = 0;
            i8 = 0;
            i9 = 0;
        }
        if (!this.f3003q.isEmpty()) {
            invalidate();
        }
        iArr[0] = 0;
        iArr[1] = 0;
        dispatchNestedScroll(i6, i7, i8, i9, this.s0, i5, iArr);
        int i10 = iArr[0];
        int i11 = i8 - i10;
        int i12 = iArr[1];
        int i13 = i9 - i12;
        boolean z3 = (i10 == 0 && i12 == 0) ? false : true;
        int i14 = this.f2973T;
        int[] iArr2 = this.s0;
        int i15 = iArr2[0];
        this.f2973T = i14 - i15;
        int i16 = this.f2974U;
        int i17 = iArr2[1];
        this.f2974U = i16 - i17;
        int[] iArr3 = this.f3009t0;
        iArr3[0] = iArr3[0] + i15;
        iArr3[1] = iArr3[1] + i17;
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !MotionEventCompat.isFromSource(motionEvent, 8194)) {
                float x2 = motionEvent.getX();
                float f3 = i11;
                float y2 = motionEvent.getY();
                float f4 = i13;
                if (f3 < 0.0f) {
                    x();
                    f = 0.0f;
                    EdgeEffectCompat.onPullDistance(this.f2964J, (-f3) / getWidth(), 1.0f - (y2 / getHeight()));
                } else {
                    f = 0.0f;
                    if (f3 > 0.0f) {
                        y();
                        EdgeEffectCompat.onPullDistance(this.f2965L, f3 / getWidth(), y2 / getHeight());
                    } else {
                        z2 = false;
                    }
                    if (f4 < f) {
                        z();
                        EdgeEffectCompat.onPullDistance(this.K, (-f4) / getHeight(), x2 / getWidth());
                    } else if (f4 > f) {
                        w();
                        EdgeEffectCompat.onPullDistance(this.f2966M, f4 / getHeight(), 1.0f - (x2 / getWidth()));
                    } else if (z2 || f3 != f || f4 != f) {
                        ViewCompat.postInvalidateOnAnimation(this);
                    }
                    z2 = true;
                    if (z2) {
                        ViewCompat.postInvalidateOnAnimation(this);
                    } else {
                        ViewCompat.postInvalidateOnAnimation(this);
                    }
                }
                z2 = true;
                if (f4 < f) {
                    z();
                    EdgeEffectCompat.onPullDistance(this.K, (-f4) / getHeight(), x2 / getWidth());
                } else if (f4 > f) {
                    w();
                    EdgeEffectCompat.onPullDistance(this.f2966M, f4 / getHeight(), 1.0f - (x2 / getWidth()));
                } else if (z2) {
                    ViewCompat.postInvalidateOnAnimation(this);
                } else {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
                z2 = true;
                if (z2) {
                    ViewCompat.postInvalidateOnAnimation(this);
                } else {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
            }
            n(i3, i4);
        }
        if (i6 != 0 || i7 != 0) {
            v(i6, i7);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z3 && i6 == 0 && i7 == 0) ? false : true;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public final boolean dispatchNestedFling(float f, float f3, boolean z2) {
        return getScrollingChildHelper().dispatchNestedFling(f, f3, z2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public final boolean dispatchNestedPreFling(float f, float f3) {
        return getScrollingChildHelper().dispatchNestedPreFling(f, f3);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public final boolean dispatchNestedPreScroll(int i3, int i4, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i3, i4, iArr, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public final boolean dispatchNestedScroll(int i3, int i4, int i5, int i6, int[] iArr) {
        return getScrollingChildHelper().dispatchNestedScroll(i3, i4, i5, i6, iArr);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z2;
        super.draw(canvas);
        ArrayList arrayList = this.f3003q;
        int size = arrayList.size();
        boolean z3 = false;
        for (int i3 = 0; i3 < size; i3++) {
            ((AbstractC0141d0) arrayList.get(i3)).h(canvas, this);
        }
        EdgeEffect edgeEffect = this.f2964J;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z2 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.f2989i ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.f2964J;
            z2 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.K;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.f2989i) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.K;
            z2 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.f2965L;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f2989i ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.f2965L;
            z2 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.f2966M;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f2989i) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.f2966M;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z3 = true;
            }
            z2 |= z3;
            canvas.restoreToCount(iSave4);
        }
        if ((z2 || this.f2967N == null || arrayList.size() <= 0 || !this.f2967N.f()) ? z2 : true) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public final void e0(int i3, int i4, int[] iArr) {
        y0 y0Var;
        j0();
        R();
        TraceCompat.beginSection("RV Scroll");
        u0 u0Var = this.f2990i0;
        B(u0Var);
        o0 o0Var = this.f2981d;
        int iS0 = i3 != 0 ? this.f3000o.s0(i3, o0Var, u0Var) : 0;
        int iU0 = i4 != 0 ? this.f3000o.u0(i4, o0Var, u0Var) : 0;
        TraceCompat.endSection();
        int iE = this.g.e();
        for (int i5 = 0; i5 < iE; i5++) {
            View viewD = this.g.d(i5);
            y0 y0VarJ = J(viewD);
            if (y0VarJ != null && (y0Var = y0VarJ.f1812i) != null) {
                View view = y0Var.f1807a;
                int left = viewD.getLeft();
                int top = viewD.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        S(true);
        k0(false);
        if (iArr != null) {
            iArr[0] = iS0;
            iArr[1] = iU0;
        }
    }

    public final void f0(int i3) {
        M m2;
        if (this.f3018y) {
            return;
        }
        setScrollState(0);
        x0 x0Var = this.f2985f0;
        x0Var.f1802h.removeCallbacks(x0Var);
        x0Var.f1800d.abortAnimation();
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null && (m2 = abstractC0147g0.f1677e) != null) {
            m2.i();
        }
        AbstractC0147g0 abstractC0147g1 = this.f3000o;
        if (abstractC0147g1 == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            abstractC0147g1.t0(i3);
            awakenScrollBars();
        }
    }

    /* JADX WARN: Code duplicated, block: B:118:0x0167  */
    /* JADX WARN: Code duplicated, block: B:137:0x0197 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:138:0x0198  */
    /* JADX WARN: Code duplicated, block: B:24:0x004c  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i3) {
        View viewW;
        int i4;
        byte b;
        boolean z2;
        this.f3000o.getClass();
        boolean z3 = true;
        boolean z4 = (this.f2999n == null || this.f3000o == null || N() || this.f3018y) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        u0 u0Var = this.f2990i0;
        o0 o0Var = this.f2981d;
        if (z4 && (i3 == 2 || i3 == 1)) {
            if (this.f3000o.e()) {
                if (focusFinder.findNextFocus(this, view, i3 == 2 ? 130 : 33) == null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            if (!z2 && this.f3000o.d()) {
                z2 = focusFinder.findNextFocus(this, view, (ViewCompat.getLayoutDirection(this.f3000o.b) == 1) ^ (i3 == 2) ? 66 : 17) == null;
            }
            if (z2) {
                p();
                if (C(view) != null) {
                    j0();
                    this.f3000o.W(view, i3, o0Var, u0Var);
                    k0(false);
                }
                return null;
            }
            viewW = focusFinder.findNextFocus(this, view, i3);
            if (viewW == null) {
            }
            if (viewW != null) {
                z3 = false;
            } else {
                z3 = false;
            }
            if (z3) {
                return viewW;
            }
            return super.focusSearch(view, i3);
        }
        View viewFindNextFocus = focusFinder.findNextFocus(this, view, i3);
        if (viewFindNextFocus == null && z4) {
            p();
            if (C(view) != null) {
                j0();
                viewW = this.f3000o.W(view, i3, o0Var, u0Var);
                k0(false);
            }
            return null;
        }
        viewW = viewFindNextFocus;
        if (viewW == null && !viewW.hasFocusable()) {
            if (getFocusedChild() == null) {
                return super.focusSearch(view, i3);
            }
            b0(viewW, null);
            return view;
        }
        if (viewW != null || viewW == this || viewW == view) {
            z3 = false;
        } else if (C(viewW) == null) {
            z3 = false;
        } else if (view != null && C(view) != null) {
            int width = view.getWidth();
            int height = view.getHeight();
            Rect rect = this.f2993k;
            rect.set(0, 0, width, height);
            int width2 = viewW.getWidth();
            int height2 = viewW.getHeight();
            Rect rect2 = this.f2995l;
            rect2.set(0, 0, width2, height2);
            offsetDescendantRectToMyCoords(view, rect);
            offsetDescendantRectToMyCoords(viewW, rect2);
            int i5 = ViewCompat.getLayoutDirection(this.f3000o.b) == 1 ? -1 : 1;
            int i6 = rect.left;
            int i7 = rect2.left;
            if ((i6 < i7 || rect.right <= i7) && rect.right < rect2.right) {
                i4 = 1;
            } else {
                int i8 = rect.right;
                int i9 = rect2.right;
                i4 = ((i8 > i9 || i6 >= i9) && i6 > i7) ? -1 : 0;
            }
            int i10 = rect.top;
            int i11 = rect2.top;
            if ((i10 < i11 || rect.bottom <= i11) && rect.bottom < rect2.bottom) {
                b = 1;
            } else {
                int i12 = rect.bottom;
                int i13 = rect2.bottom;
                b = ((i12 > i13 || i10 >= i13) && i10 > i11) ? (byte) -1 : (byte) 0;
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 17) {
                        if (i3 != 33) {
                            if (i3 != 66) {
                                if (i3 != 130) {
                                    StringBuilder sb = new StringBuilder("Invalid direction: ");
                                    sb.append(i3);
                                    throw new IllegalArgumentException(b.k(this, sb));
                                }
                                if (b <= 0) {
                                    z3 = false;
                                }
                            } else if (i4 <= 0) {
                                z3 = false;
                            }
                        } else if (b >= 0) {
                            z3 = false;
                        }
                    } else if (i4 >= 0) {
                        z3 = false;
                    }
                } else if (b <= 0 && (b != 0 || i4 * i5 <= 0)) {
                    z3 = false;
                }
            } else if (b >= 0 && (b != 0 || i4 * i5 >= 0)) {
                z3 = false;
            }
        }
        if (z3) {
            return viewW;
        }
        return super.focusSearch(view, i3);
    }

    public final boolean g0(EdgeEffect edgeEffect, int i3, int i4) {
        if (i3 > 0) {
            return true;
        }
        float distance = EdgeEffectCompat.getDistance(edgeEffect) * i4;
        float fAbs = Math.abs(-i3) * 0.35f;
        float f = this.b * 0.015f;
        double dLog = Math.log(fAbs / f);
        double d3 = f2947E0;
        return ((float) (Math.exp((d3 / (d3 - 1.0d)) * dLog) * ((double) f))) < distance;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null) {
            return abstractC0147g0.r();
        }
        throw new IllegalStateException(b.k(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null) {
            return abstractC0147g0.s(getContext(), attributeSet);
        }
        throw new IllegalStateException(b.k(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public W getAdapter() {
        return this.f2999n;
    }

    @Override // android.view.View
    public int getBaseline() {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 == null) {
            return super.getBaseline();
        }
        abstractC0147g0.getClass();
        return -1;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i3, int i4) {
        return super.getChildDrawingOrder(i3, i4);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f2989i;
    }

    public A0 getCompatAccessibilityDelegate() {
        return this.p0;
    }

    public AbstractC0135a0 getEdgeEffectFactory() {
        return this.f2963I;
    }

    public AbstractC0139c0 getItemAnimator() {
        return this.f2967N;
    }

    public int getItemDecorationCount() {
        return this.f3003q.size();
    }

    public AbstractC0147g0 getLayoutManager() {
        return this.f3000o;
    }

    public int getMaxFlingVelocity() {
        return this.f2978b0;
    }

    public int getMinFlingVelocity() {
        return this.f2977a0;
    }

    public long getNanoTime() {
        if (f2950H0) {
            return System.nanoTime();
        }
        return 0L;
    }

    public j0 getOnFlingListener() {
        return this.f2976W;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f2984e0;
    }

    public n0 getRecycledViewPool() {
        return this.f2981d.c();
    }

    public int getScrollState() {
        return this.f2968O;
    }

    public final void h(y0 y0Var) {
        View view = y0Var.f1807a;
        boolean z2 = view.getParent() == this;
        this.f2981d.l(J(view));
        if (y0Var.j()) {
            this.g.b(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z2) {
            this.g.a(view, -1, true);
            return;
        }
        C0150i c0150i = this.g;
        int iIndexOfChild = c0150i.f1690a.f1642a.indexOfChild(view);
        if (iIndexOfChild >= 0) {
            c0150i.b.h(iIndexOfChild);
            c0150i.i(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    public final void h0(int i3, int i4, boolean z2) {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f3018y) {
            return;
        }
        if (!abstractC0147g0.d()) {
            i3 = 0;
        }
        if (!this.f3000o.e()) {
            i4 = 0;
        }
        if (i3 == 0 && i4 == 0) {
            return;
        }
        if (z2) {
            int i5 = i3 != 0 ? 1 : 0;
            if (i4 != 0) {
                i5 |= 2;
            }
            startNestedScroll(i5, 1);
        }
        this.f2985f0.c(i3, i4, Integer.MIN_VALUE, null);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().hasNestedScrollingParent();
    }

    public final void i(AbstractC0141d0 abstractC0141d0) {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null) {
            abstractC0147g0.c("Cannot add item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.f3003q;
        if (arrayList.isEmpty()) {
            setWillNotDraw(false);
        }
        arrayList.add(abstractC0141d0);
        P();
        requestLayout();
    }

    public final void i0(int i3) {
        if (this.f3018y) {
            return;
        }
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            abstractC0147g0.D0(this, i3);
        }
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.f3008t;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.f3018y;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().isNestedScrollingEnabled();
    }

    public final void j(l0 l0Var) {
        if (this.f2994k0 == null) {
            this.f2994k0 = new ArrayList();
        }
        this.f2994k0.add(l0Var);
    }

    public final void j0() {
        int i3 = this.f3014w + 1;
        this.f3014w = i3;
        if (i3 != 1 || this.f3018y) {
            return;
        }
        this.f3016x = false;
    }

    public final void k(String str) {
        if (N()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(b.k(this, new StringBuilder("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        }
        if (this.f2962H > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(b.k(this, new StringBuilder(""))));
        }
    }

    public final void k0(boolean z2) {
        if (this.f3014w < 1) {
            if (f2944B0) {
                throw new IllegalStateException(b.k(this, new StringBuilder("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.")));
            }
            this.f3014w = 1;
        }
        if (!z2 && !this.f3018y) {
            this.f3016x = false;
        }
        if (this.f3014w == 1) {
            if (z2 && this.f3016x && !this.f3018y && this.f3000o != null && this.f2999n != null) {
                s();
            }
            if (!this.f3018y) {
                this.f3016x = false;
            }
        }
        this.f3014w--;
    }

    public final void m() {
        int iH = this.g.h();
        for (int i3 = 0; i3 < iH; i3++) {
            y0 y0VarK = K(this.g.g(i3));
            if (!y0VarK.o()) {
                y0VarK.f1809d = -1;
                y0VarK.g = -1;
            }
        }
        o0 o0Var = this.f2981d;
        ArrayList arrayList = o0Var.f1721a;
        ArrayList arrayList2 = o0Var.f1722c;
        int size = arrayList2.size();
        for (int i4 = 0; i4 < size; i4++) {
            y0 y0Var = (y0) arrayList2.get(i4);
            y0Var.f1809d = -1;
            y0Var.g = -1;
        }
        int size2 = arrayList.size();
        for (int i5 = 0; i5 < size2; i5++) {
            y0 y0Var2 = (y0) arrayList.get(i5);
            y0Var2.f1809d = -1;
            y0Var2.g = -1;
        }
        ArrayList arrayList3 = o0Var.b;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i6 = 0; i6 < size3; i6++) {
                y0 y0Var3 = (y0) o0Var.b.get(i6);
                y0Var3.f1809d = -1;
                y0Var3.g = -1;
            }
        }
    }

    public final void n(int i3, int i4) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.f2964J;
        if (edgeEffect == null || edgeEffect.isFinished() || i3 <= 0) {
            zIsFinished = false;
        } else {
            this.f2964J.onRelease();
            zIsFinished = this.f2964J.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f2965L;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i3 < 0) {
            this.f2965L.onRelease();
            zIsFinished |= this.f2965L.isFinished();
        }
        EdgeEffect edgeEffect3 = this.K;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i4 > 0) {
            this.K.onRelease();
            zIsFinished |= this.K.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f2966M;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i4 < 0) {
            this.f2966M.onRelease();
            zIsFinished |= this.f2966M.isFinished();
        }
        if (zIsFinished) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0064  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        float refreshRate;
        super.onAttachedToWindow();
        this.f2961G = 0;
        this.f3008t = true;
        this.f3012v = this.f3012v && !isLayoutRequested();
        this.f2981d.d();
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null) {
            abstractC0147g0.g = true;
            abstractC0147g0.U(this);
        }
        this.f3001o0 = false;
        if (f2950H0) {
            ThreadLocal threadLocal = A.f;
            A a3 = (A) threadLocal.get();
            this.f2986g0 = a3;
            if (a3 == null) {
                A a4 = new A();
                a4.b = new ArrayList();
                a4.f1524e = new ArrayList();
                this.f2986g0 = a4;
                Display display = ViewCompat.getDisplay(this);
                if (isInEditMode() || display == null) {
                    refreshRate = 60.0f;
                } else {
                    refreshRate = display.getRefreshRate();
                    if (refreshRate < 30.0f) {
                        refreshRate = 60.0f;
                    }
                }
                A a5 = this.f2986g0;
                a5.f1523d = (long) (1.0E9f / refreshRate);
                threadLocal.set(a5);
            }
            ArrayList arrayList = this.f2986g0.b;
            if (f2944B0 && arrayList.contains(this)) {
                throw new IllegalStateException("RecyclerView already present in worker list!");
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        A a3;
        M m2;
        super.onDetachedFromWindow();
        AbstractC0139c0 abstractC0139c0 = this.f2967N;
        if (abstractC0139c0 != null) {
            abstractC0139c0.e();
        }
        setScrollState(0);
        x0 x0Var = this.f2985f0;
        x0Var.f1802h.removeCallbacks(x0Var);
        x0Var.f1800d.abortAnimation();
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null && (m2 = abstractC0147g0.f1677e) != null) {
            m2.i();
        }
        this.f3008t = false;
        AbstractC0147g0 abstractC0147g1 = this.f3000o;
        if (abstractC0147g1 != null) {
            abstractC0147g1.g = false;
            abstractC0147g1.V(this);
        }
        this.f3013v0.clear();
        removeCallbacks(this.f3015w0);
        this.f2987h.getClass();
        while (I0.f1603d.acquire() != 0) {
        }
        o0 o0Var = this.f2981d;
        ArrayList arrayList = o0Var.f1722c;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            c.e(((y0) arrayList.get(i3)).f1807a);
        }
        o0Var.e(o0Var.f1725h.f2999n, false);
        Intrinsics.checkNotNullParameter(this, "<this>");
        for (View view : ViewGroupKt.getChildren(this)) {
            a aVar = (a) view.getTag(com.minhub.gamehub.R.id.pooling_container_listener_holder_tag);
            if (aVar == null) {
                aVar = new a();
                view.setTag(com.minhub.gamehub.R.id.pooling_container_listener_holder_tag, aVar);
            }
            ArrayList arrayList2 = aVar.f289a;
            int lastIndex = CollectionsKt.getLastIndex(arrayList2);
            if (-1 < lastIndex) {
                arrayList2.get(lastIndex).getClass();
                throw new ClassCastException();
            }
        }
        if (!f2950H0 || (a3 = this.f2986g0) == null) {
            return;
        }
        boolean zRemove = a3.b.remove(this);
        if (f2944B0 && !zRemove) {
            throw new IllegalStateException("RecyclerView removal failed!");
        }
        this.f2986g0 = null;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.f3003q;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((AbstractC0141d0) arrayList.get(i3)).g(canvas, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0064  */
    /* JADX WARN: Code duplicated, block: B:4:0x0005  */
    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f;
        float axisValue;
        if (this.f3000o != null && !this.f3018y && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f = this.f3000o.e() ? -motionEvent.getAxisValue(9) : 0.0f;
                axisValue = this.f3000o.d() ? motionEvent.getAxisValue(10) : 0.0f;
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                float axisValue2 = motionEvent.getAxisValue(26);
                if (this.f3000o.e()) {
                    f = -axisValue2;
                } else if (this.f3000o.d()) {
                    axisValue = axisValue2;
                    f = 0.0f;
                } else {
                    f = 0.0f;
                    axisValue = 0.0f;
                }
            } else {
                f = 0.0f;
                axisValue = 0.0f;
            }
            if (f != 0.0f || axisValue != 0.0f) {
                int i3 = (int) (axisValue * this.f2980c0);
                int i4 = (int) (f * this.f2982d0);
                AbstractC0147g0 abstractC0147g0 = this.f3000o;
                if (abstractC0147g0 == null) {
                    Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                    return false;
                }
                if (!this.f3018y) {
                    int[] iArr = this.f3011u0;
                    iArr[0] = 0;
                    iArr[1] = 0;
                    boolean zD = abstractC0147g0.d();
                    boolean zE = this.f3000o.e();
                    int i5 = zE ? (zD ? 1 : 0) | 2 : zD ? 1 : 0;
                    float y2 = motionEvent.getY();
                    float x2 = motionEvent.getX();
                    int iY = i3 - Y(i3, y2);
                    int iZ = i4 - Z(i4, x2);
                    startNestedScroll(i5, 1);
                    if (dispatchNestedPreScroll(zD ? iY : 0, zE ? iZ : 0, this.f3011u0, this.s0, 1)) {
                        iY -= iArr[0];
                        iZ -= iArr[1];
                    }
                    d0(zD ? iY : 0, zE ? iZ : 0, motionEvent, 1);
                    A a3 = this.f2986g0;
                    if (a3 != null && (iY != 0 || iZ != 0)) {
                        a3.a(this, iY, iZ);
                    }
                    stopNestedScroll(1);
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        boolean z3;
        if (!this.f3018y) {
            this.f3007s = null;
            if (D(motionEvent)) {
                c0();
                setScrollState(0);
                return true;
            }
            AbstractC0147g0 abstractC0147g0 = this.f3000o;
            if (abstractC0147g0 != null) {
                boolean zD = abstractC0147g0.d();
                boolean zE = this.f3000o.e();
                if (this.f2970Q == null) {
                    this.f2970Q = VelocityTracker.obtain();
                }
                this.f2970Q.addMovement(motionEvent);
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                if (actionMasked == 0) {
                    if (this.f3020z) {
                        this.f3020z = false;
                    }
                    this.f2969P = motionEvent.getPointerId(0);
                    int x2 = (int) (motionEvent.getX() + 0.5f);
                    this.f2973T = x2;
                    this.f2971R = x2;
                    int y2 = (int) (motionEvent.getY() + 0.5f);
                    this.f2974U = y2;
                    this.f2972S = y2;
                    EdgeEffect edgeEffect = this.f2964J;
                    if (edgeEffect == null || EdgeEffectCompat.getDistance(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
                        z2 = false;
                    } else {
                        EdgeEffectCompat.onPullDistance(this.f2964J, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
                        z2 = true;
                    }
                    EdgeEffect edgeEffect2 = this.f2965L;
                    boolean z4 = z2;
                    if (edgeEffect2 != null && EdgeEffectCompat.getDistance(edgeEffect2) != 0.0f && !canScrollHorizontally(1)) {
                        z4 = z2;
                        z4 = z2;
                        EdgeEffectCompat.onPullDistance(this.f2965L, 0.0f, motionEvent.getY() / getHeight());
                        z4 = true;
                    }
                    z4 = z2;
                    z4 = z2;
                    z4 = z2;
                    EdgeEffect edgeEffect3 = this.K;
                    boolean z5 = z4;
                    if (edgeEffect3 != null && EdgeEffectCompat.getDistance(edgeEffect3) != 0.0f && !canScrollVertically(-1)) {
                        z5 = z4;
                        z5 = z4;
                        EdgeEffectCompat.onPullDistance(this.K, 0.0f, motionEvent.getX() / getWidth());
                        z5 = true;
                    }
                    z5 = z4;
                    z5 = z4;
                    z5 = z4;
                    EdgeEffect edgeEffect4 = this.f2966M;
                    boolean z6 = z5;
                    if (edgeEffect4 != null && EdgeEffectCompat.getDistance(edgeEffect4) != 0.0f && !canScrollVertically(1)) {
                        z6 = z5;
                        z6 = z5;
                        EdgeEffectCompat.onPullDistance(this.f2966M, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
                        z6 = true;
                    }
                    if (z6 || this.f2968O == 2) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                        stopNestedScroll(1);
                    }
                    int[] iArr = this.f3009t0;
                    iArr[1] = 0;
                    iArr[0] = 0;
                    int i3 = zD;
                    if (zE) {
                        i3 = (zD ? 1 : 0) | 2;
                    }
                    startNestedScroll(i3, 0);
                } else if (actionMasked == 1) {
                    this.f2970Q.clear();
                    stopNestedScroll(0);
                } else if (actionMasked == 2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f2969P);
                    if (iFindPointerIndex < 0) {
                        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.f2969P + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int x3 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                    int y3 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                    if (this.f2968O != 1) {
                        int i4 = x3 - this.f2971R;
                        int i5 = y3 - this.f2972S;
                        if (!zD || Math.abs(i4) <= this.f2975V) {
                            z3 = false;
                        } else {
                            this.f2973T = x3;
                            z3 = true;
                        }
                        if (zE && Math.abs(i5) > this.f2975V) {
                            this.f2974U = y3;
                            z3 = true;
                        }
                        if (z3) {
                            setScrollState(1);
                        }
                    }
                } else if (actionMasked == 3) {
                    c0();
                    setScrollState(0);
                } else if (actionMasked == 5) {
                    this.f2969P = motionEvent.getPointerId(actionIndex);
                    int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.f2973T = x4;
                    this.f2971R = x4;
                    int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.f2974U = y4;
                    this.f2972S = y4;
                } else if (actionMasked == 6) {
                    T(motionEvent);
                }
                if (this.f2968O == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        TraceCompat.beginSection("RV OnLayout");
        s();
        TraceCompat.endSection();
        this.f3012v = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 == null) {
            q(i3, i4);
            return;
        }
        boolean zO = abstractC0147g0.O();
        boolean z2 = false;
        u0 u0Var = this.f2990i0;
        if (zO) {
            int mode = View.MeasureSpec.getMode(i3);
            int mode2 = View.MeasureSpec.getMode(i4);
            this.f3000o.b.q(i3, i4);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z2 = true;
            }
            this.f3017x0 = z2;
            if (z2 || this.f2999n == null) {
                return;
            }
            if (u0Var.f1761d == 1) {
                t();
            }
            this.f3000o.w0(i3, i4);
            u0Var.f1764i = true;
            u();
            this.f3000o.y0(i3, i4);
            if (this.f3000o.B0()) {
                this.f3000o.w0(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                u0Var.f1764i = true;
                u();
                this.f3000o.y0(i3, i4);
            }
            this.f3019y0 = getMeasuredWidth();
            this.f3021z0 = getMeasuredHeight();
            return;
        }
        if (this.f3010u) {
            this.f3000o.b.q(i3, i4);
            return;
        }
        if (this.f2956B) {
            j0();
            R();
            V();
            S(true);
            if (u0Var.f1766k) {
                u0Var.g = true;
            } else {
                this.f.c();
                u0Var.g = false;
            }
            this.f2956B = false;
            k0(false);
        } else if (u0Var.f1766k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        W w2 = this.f2999n;
        if (w2 != null) {
            u0Var.f1762e = w2.a();
        } else {
            u0Var.f1762e = 0;
        }
        j0();
        this.f3000o.b.q(i3, i4);
        k0(false);
        u0Var.g = false;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i3, Rect rect) {
        if (N()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i3, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof r0)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        r0 r0Var = (r0) parcelable;
        this.f2983e = r0Var;
        super.onRestoreInstanceState(r0Var.b);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        r0 r0Var = new r0(super.onSaveInstanceState());
        r0 r0Var2 = this.f2983e;
        if (r0Var2 != null) {
            r0Var.f1745d = r0Var2.f1745d;
            return r0Var;
        }
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null) {
            r0Var.f1745d = abstractC0147g0.j0();
            return r0Var;
        }
        r0Var.f1745d = null;
        return r0Var;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i3, int i4, int i5, int i6) {
        super.onSizeChanged(i3, i4, i5, i6);
        if (i3 == i5 && i4 == i6) {
            return;
        }
        this.f2966M = null;
        this.K = null;
        this.f2965L = null;
        this.f2964J = null;
    }

    /* JADX WARN: Code duplicated, block: B:141:0x024e  */
    /* JADX WARN: Code duplicated, block: B:159:0x0290  */
    /* JADX WARN: Code duplicated, block: B:198:0x0316  */
    /* JADX WARN: Code duplicated, block: B:261:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:263:0x03e2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:264:0x03e4  */
    /* JADX WARN: Code duplicated, block: B:266:0x03e9  */
    /* JADX WARN: Code duplicated, block: B:57:0x00fd A[PHI: r1
      0x00fd: PHI (r1v71 int) = (r1v55 int), (r1v75 int) binds: [B:51:0x00e6, B:55:0x00f9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x02b2, code lost:
    
        if (r5 == 0) goto L268;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v9, types: [P.g0] */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v10 */
    /* JADX WARN: Type inference failed for: r25v0, types: [android.view.View, androidx.recyclerview.widget.RecyclerView] */
    /* JADX WARN: Type inference failed for: r5v16, types: [P.T] */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [int] */
    /* JADX WARN: Type inference failed for: r9v1, types: [int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r26) {
        /*
            Method dump skipped, instruction units count: 1083
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p() {
        if (!this.f3012v || this.f2959E) {
            TraceCompat.beginSection("RV FullInvalidate");
            s();
            TraceCompat.endSection();
            return;
        }
        if (this.f.g()) {
            C0136b c0136b = this.f;
            int i3 = c0136b.f;
            if ((i3 & 4) == 0 || (i3 & 11) != 0) {
                if (c0136b.g()) {
                    TraceCompat.beginSection("RV FullInvalidate");
                    s();
                    TraceCompat.endSection();
                    return;
                }
                return;
            }
            TraceCompat.beginSection("RV PartialInvalidate");
            j0();
            R();
            this.f.j();
            if (!this.f3016x) {
                int iE = this.g.e();
                for (int i4 = 0; i4 < iE; i4++) {
                    y0 y0VarK = K(this.g.d(i4));
                    if (y0VarK != null && !y0VarK.o() && y0VarK.k()) {
                        s();
                    }
                }
                this.f.b();
            }
            k0(true);
            S(true);
            TraceCompat.endSection();
        }
    }

    public final void q(int i3, int i4) {
        setMeasuredDimension(AbstractC0147g0.g(i3, getPaddingRight() + getPaddingLeft(), ViewCompat.getMinimumWidth(this)), AbstractC0147g0.g(i4, getPaddingBottom() + getPaddingTop(), ViewCompat.getMinimumHeight(this)));
    }

    public final void r(View view) {
        K(view);
        ArrayList arrayList = this.f2958D;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((InterfaceC0151i0) this.f2958D.get(size)).d(view);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z2) {
        y0 y0VarK = K(view);
        if (y0VarK != null) {
            if (y0VarK.j()) {
                y0VarK.f1813j &= -257;
            } else if (!y0VarK.o()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(y0VarK);
                throw new IllegalArgumentException(b.k(this, sb));
            }
        } else if (f2944B0) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            throw new IllegalArgumentException(b.k(this, sb2));
        }
        view.clearAnimation();
        r(view);
        super.removeDetachedView(view, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        M m2 = this.f3000o.f1677e;
        if ((m2 == null || !m2.f1623e) && !N() && view2 != null) {
            b0(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return this.f3000o.q0(this, view, rect, z2, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z2) {
        ArrayList arrayList = this.f3005r;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((k0) arrayList.get(i3)).e(z2);
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.f3014w != 0 || this.f3018y) {
            this.f3016x = true;
        } else {
            super.requestLayout();
        }
    }

    /* JADX WARN: Code duplicated, block: B:166:0x0344  */
    /* JADX WARN: Code duplicated, block: B:185:0x0388  */
    /* JADX WARN: Code duplicated, block: B:187:0x038b  */
    /* JADX WARN: Code duplicated, block: B:193:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:195:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:197:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:200:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:203:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:206:0x03c5 A[LOOP:4: B:199:0x03b2->B:206:0x03c5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:209:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:212:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:215:0x03e3 A[LOOP:5: B:208:0x03d0->B:215:0x03e3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:217:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:247:0x03c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:248:0x03c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:0x03c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:251:0x03e6 A[EDGE_INSN: B:251:0x03e6->B:216:0x03e6 BREAK  A[LOOP:5: B:208:0x03d0->B:215:0x03e3], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:252:0x03e1 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v20, types: [int] */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void s() {
        boolean z2;
        long j2;
        y0 y0Var;
        int i3;
        int iB;
        int i4;
        int iMin;
        y0 y0VarG;
        View view;
        y0 y0VarG2;
        View view2;
        int i5;
        View viewFindViewById;
        View view3;
        boolean z3;
        C0137b0 c0137b0;
        ?? r3;
        boolean zG;
        boolean z4;
        if (this.f2999n == null) {
            Log.w("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.f3000o == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        u0 u0Var = this.f2990i0;
        boolean z5 = false;
        u0Var.f1764i = false;
        boolean z6 = true;
        boolean z7 = this.f3017x0 && !(this.f3019y0 == getWidth() && this.f3021z0 == getHeight());
        this.f3019y0 = 0;
        this.f3021z0 = 0;
        this.f3017x0 = false;
        if (u0Var.f1761d == 1) {
            t();
            this.f3000o.v0(this);
            u();
        } else {
            C0136b c0136b = this.f;
            if ((c0136b.f1648c.isEmpty() || c0136b.b.isEmpty()) && !z7 && this.f3000o.f1684n == getWidth() && this.f3000o.f1685o == getHeight()) {
                this.f3000o.v0(this);
            } else {
                this.f3000o.v0(this);
                u();
            }
        }
        u0Var.a(4);
        j0();
        R();
        u0Var.f1761d = 1;
        boolean z8 = u0Var.f1765j;
        o0 o0Var = this.f2981d;
        C0013d c0013d = this.f2987h;
        if (z8) {
            int iE = this.g.e() - 1;
            while (iE >= 0) {
                y0 y0VarK = K(this.g.d(iE));
                if (y0VarK.o()) {
                    z4 = z6;
                } else {
                    long jI = I(y0VarK);
                    this.f2967N.getClass();
                    C0137b0 c0137b1 = new C0137b0();
                    c0137b1.a(y0VarK);
                    g gVar = (g) c0013d.f178d;
                    j jVar = (j) c0013d.f177c;
                    y0 y0Var2 = (y0) gVar.b(jI);
                    if (y0Var2 == null || y0Var2.o()) {
                        z4 = z6;
                        c0013d.b(y0VarK, c0137b1);
                    } else {
                        z4 = z6;
                        I0 i6 = (I0) jVar.get(y0Var2);
                        boolean z9 = (i6 == null || (i6.f1604a & 1) == 0) ? false : z4;
                        I0 i7 = (I0) jVar.get(y0VarK);
                        boolean z10 = (i7 == null || (i7.f1604a & 1) == 0) ? false : z4;
                        if (z9 && y0Var2 == y0VarK) {
                            c0013d.b(y0VarK, c0137b1);
                        } else {
                            C0137b0 c0137b0Z = c0013d.z(y0Var2, 4);
                            c0013d.b(y0VarK, c0137b1);
                            C0137b0 c0137b0Z2 = c0013d.z(y0VarK, 8);
                            if (c0137b0Z == null) {
                                int iE2 = this.g.e();
                                for (int i8 = 0; i8 < iE2; i8++) {
                                    y0 y0VarK2 = K(this.g.d(i8));
                                    if (y0VarK2 != y0VarK && I(y0VarK2) == jI) {
                                        W w2 = this.f2999n;
                                        if (w2 == null || !w2.b) {
                                            StringBuilder sb = new StringBuilder("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                                            sb.append(y0VarK2);
                                            sb.append(" \n View Holder 2:");
                                            sb.append(y0VarK);
                                            throw new IllegalStateException(b.k(this, sb));
                                        }
                                        StringBuilder sb2 = new StringBuilder("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
                                        sb2.append(y0VarK2);
                                        sb2.append(" \n View Holder 2:");
                                        sb2.append(y0VarK);
                                        throw new IllegalStateException(b.k(this, sb2));
                                    }
                                }
                                Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + y0Var2 + " cannot be found but it is necessary for " + y0VarK + A());
                            } else {
                                y0Var2.n(false);
                                if (z9) {
                                    h(y0Var2);
                                }
                                if (y0Var2 != y0VarK) {
                                    if (z10) {
                                        h(y0VarK);
                                    }
                                    y0Var2.f1811h = y0VarK;
                                    h(y0Var2);
                                    o0Var.l(y0Var2);
                                    y0VarK.n(false);
                                    y0VarK.f1812i = y0Var2;
                                }
                                if (this.f2967N.a(y0Var2, y0VarK, c0137b0Z, c0137b0Z2)) {
                                    U();
                                }
                            }
                        }
                    }
                }
                iE--;
                z6 = z4;
            }
            z2 = z6;
            j jVar2 = (j) c0013d.f177c;
            int i9 = jVar2.f5258d - 1;
            while (i9 >= 0) {
                y0 y0Var3 = (y0) jVar2.f(i9);
                I0 i10 = (I0) jVar2.h(i9);
                int i11 = i10.f1604a;
                int i12 = i11 & 3;
                V v2 = this.f2955A0;
                if (i12 == 3) {
                    RecyclerView recyclerView = v2.f1642a;
                    recyclerView.f3000o.o0(y0Var3.f1807a, recyclerView.f2981d);
                    r3 = z5;
                } else if ((i11 & 1) != 0) {
                    C0137b0 c0137b2 = i10.b;
                    if (c0137b2 == null) {
                        RecyclerView recyclerView2 = v2.f1642a;
                        recyclerView2.f3000o.o0(y0Var3.f1807a, recyclerView2.f2981d);
                        r3 = z5;
                    } else {
                        v2.g(y0Var3, c0137b2, i10.f1605c);
                        r3 = z5;
                    }
                } else if ((i11 & 14) == 14) {
                    v2.f(y0Var3, i10.b, i10.f1605c);
                    r3 = z5;
                } else {
                    if ((i11 & 12) == 12) {
                        C0137b0 c0137b3 = i10.b;
                        C0137b0 c0137b4 = i10.f1605c;
                        v2.getClass();
                        y0Var3.n(z5);
                        RecyclerView recyclerView3 = v2.f1642a;
                        if (!recyclerView3.f2959E) {
                            C0158p c0158p = (C0158p) recyclerView3.f2967N;
                            c0158p.getClass();
                            int i13 = c0137b3.f1651a;
                            int i14 = c0137b4.f1651a;
                            if (i13 == i14 && c0137b3.b == c0137b4.b) {
                                c0158p.c(y0Var3);
                                zG = false;
                            } else {
                                zG = c0158p.g(y0Var3, i13, c0137b3.b, i14, c0137b4.b);
                            }
                            if (zG) {
                                recyclerView3.U();
                            }
                        } else if (recyclerView3.f2967N.a(y0Var3, y0Var3, c0137b3, c0137b4)) {
                            recyclerView3.U();
                        }
                        r3 = 0;
                    } else {
                        if ((i11 & 4) != 0) {
                            c0137b0 = null;
                            v2.g(y0Var3, i10.b, null);
                        } else {
                            c0137b0 = null;
                            if ((i11 & 8) != 0) {
                                v2.f(y0Var3, i10.b, i10.f1605c);
                            }
                        }
                        r3 = 0;
                    }
                    i10.f1604a = r3;
                    i10.b = c0137b0;
                    i10.f1605c = c0137b0;
                    I0.f1603d.release(i10);
                    i9--;
                    z5 = false;
                }
                c0137b0 = null;
                i10.f1604a = r3;
                i10.b = c0137b0;
                i10.f1605c = c0137b0;
                I0.f1603d.release(i10);
                i9--;
                z5 = false;
            }
        } else {
            z2 = true;
        }
        View view4 = null;
        this.f3000o.n0(o0Var);
        u0Var.b = u0Var.f1762e;
        this.f2959E = false;
        this.f2960F = false;
        u0Var.f1765j = false;
        u0Var.f1766k = false;
        this.f3000o.f = false;
        ArrayList arrayList = o0Var.b;
        if (arrayList != null) {
            arrayList.clear();
        }
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0.f1681k) {
            abstractC0147g0.f1680j = 0;
            abstractC0147g0.f1681k = false;
            o0Var.m();
        }
        this.f3000o.h0(u0Var);
        boolean z11 = z2;
        S(z11);
        k0(false);
        ((j) c0013d.f177c).clear();
        ((g) c0013d.f178d).a();
        int[] iArr = this.f3004q0;
        int i15 = iArr[0];
        int i16 = iArr[z11 ? 1 : 0];
        E(iArr);
        if ((iArr[0] == i15 && iArr[z11 ? 1 : 0] == i16) ? false : true) {
            v(0, 0);
        }
        if (this.f2984e0 && this.f2999n != null && hasFocus() && getDescendantFocusability() != 393216 && (getDescendantFocusability() != 131072 || !isFocused())) {
            if (isFocused()) {
                j2 = u0Var.f1768m;
                if (j2 == -1) {
                    y0Var = null;
                } else {
                    y0Var = null;
                }
                if (y0Var != null) {
                    view3 = y0Var.f1807a;
                    if (!this.g.f1691c.contains(view3)) {
                        if (this.g.e() > 0) {
                            int i17 = u0Var.f1767l;
                            if (i17 != -1) {
                            }
                            iB = u0Var.b();
                            i4 = i3;
                            while (true) {
                                if (i4 < iB) {
                                    y0VarG2 = G(i4);
                                    if (y0VarG2 != null) {
                                        view2 = y0VarG2.f1807a;
                                        if (view2.hasFocusable()) {
                                            view4 = view2;
                                        } else {
                                            i4++;
                                        }
                                    }
                                }
                                for (iMin = Math.min(iB, i3) - 1; iMin >= 0; iMin--) {
                                    y0VarG = G(iMin);
                                    if (y0VarG == null) {
                                        break;
                                        break;
                                    }
                                    view = y0VarG.f1807a;
                                    if (view.hasFocusable()) {
                                        view4 = view;
                                        break;
                                    }
                                }
                            }
                        }
                    } else if (this.g.e() > 0) {
                        int i18 = u0Var.f1767l;
                        if (i18 != -1) {
                        }
                        iB = u0Var.b();
                        i4 = i3;
                        while (true) {
                            if (i4 < iB) {
                                y0VarG2 = G(i4);
                                if (y0VarG2 != null) {
                                    view2 = y0VarG2.f1807a;
                                    if (view2.hasFocusable()) {
                                        view4 = view2;
                                    } else {
                                        i4++;
                                    }
                                }
                            }
                            while (iMin >= 0) {
                                y0VarG = G(iMin);
                                if (y0VarG == null) {
                                    break;
                                    break;
                                }
                                view = y0VarG.f1807a;
                                if (view.hasFocusable()) {
                                    view4 = view;
                                    break;
                                }
                            }
                        }
                    }
                } else if (this.g.e() > 0) {
                    int i19 = u0Var.f1767l;
                    if (i19 != -1) {
                    }
                    iB = u0Var.b();
                    i4 = i3;
                    while (true) {
                        if (i4 < iB) {
                            y0VarG2 = G(i4);
                            if (y0VarG2 != null) {
                                view2 = y0VarG2.f1807a;
                                if (view2.hasFocusable()) {
                                    view4 = view2;
                                } else {
                                    i4++;
                                }
                            }
                        }
                        while (iMin >= 0) {
                            y0VarG = G(iMin);
                            if (y0VarG == null) {
                                break;
                                break;
                            }
                            view = y0VarG.f1807a;
                            if (view.hasFocusable()) {
                                view4 = view;
                                break;
                            }
                        }
                    }
                }
                if (view4 != null) {
                    i5 = u0Var.f1769n;
                    if (i5 != -1) {
                        view4 = viewFindViewById;
                    }
                    view4.requestFocus();
                }
            } else if (this.g.f1691c.contains(getFocusedChild())) {
                j2 = u0Var.f1768m;
                if (j2 == -1 && (z3 = this.f2999n.b) && z3) {
                    int iH = this.g.h();
                    y0Var = null;
                    for (int i20 = 0; i20 < iH; i20++) {
                        y0 y0VarK3 = K(this.g.g(i20));
                        if (y0VarK3 != null && !y0VarK3.h() && y0VarK3.f1810e == j2) {
                            if (!this.g.f1691c.contains(y0VarK3.f1807a)) {
                                y0Var = y0VarK3;
                                break;
                            }
                            y0Var = y0VarK3;
                        }
                    }
                } else {
                    y0Var = null;
                }
                if (y0Var != null) {
                    view3 = y0Var.f1807a;
                    if (!this.g.f1691c.contains(view3) && view3.hasFocusable()) {
                        view4 = view3;
                    } else if (this.g.e() > 0) {
                        int i110 = u0Var.f1767l;
                        i3 = i110 != -1 ? i110 : 0;
                        iB = u0Var.b();
                        i4 = i3;
                        while (true) {
                            if (i4 < iB) {
                                y0VarG2 = G(i4);
                                if (y0VarG2 != null) {
                                    view2 = y0VarG2.f1807a;
                                    if (view2.hasFocusable()) {
                                        view4 = view2;
                                    } else {
                                        i4++;
                                    }
                                }
                            }
                            while (iMin >= 0) {
                                y0VarG = G(iMin);
                                if (y0VarG == null) {
                                    break;
                                }
                                view = y0VarG.f1807a;
                                if (view.hasFocusable()) {
                                    view4 = view;
                                    break;
                                }
                            }
                        }
                    }
                } else if (this.g.e() > 0) {
                    int i111 = u0Var.f1767l;
                    if (i111 != -1) {
                    }
                    iB = u0Var.b();
                    i4 = i3;
                    while (true) {
                        if (i4 < iB) {
                            y0VarG2 = G(i4);
                            if (y0VarG2 != null) {
                                view2 = y0VarG2.f1807a;
                                if (view2.hasFocusable()) {
                                    view4 = view2;
                                } else {
                                    i4++;
                                }
                            }
                        }
                        while (iMin >= 0) {
                            y0VarG = G(iMin);
                            if (y0VarG == null) {
                                break;
                                break;
                            }
                            view = y0VarG.f1807a;
                            if (view.hasFocusable()) {
                                view4 = view;
                                break;
                            }
                        }
                    }
                }
                if (view4 != null) {
                    i5 = u0Var.f1769n;
                    if (i5 != -1 && (viewFindViewById = view4.findViewById(i5)) != null && viewFindViewById.isFocusable()) {
                        view4 = viewFindViewById;
                    }
                    view4.requestFocus();
                }
            }
        }
        u0Var.f1768m = -1L;
        u0Var.f1767l = -1;
        u0Var.f1769n = -1;
    }

    @Override // android.view.View
    public final void scrollBy(int i3, int i4) {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f3018y) {
            return;
        }
        boolean zD = abstractC0147g0.d();
        boolean zE = this.f3000o.e();
        if (zD || zE) {
            if (!zD) {
                i3 = 0;
            }
            if (!zE) {
                i4 = 0;
            }
            d0(i3, i4, null, 0);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i3, int i4) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!N()) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        } else {
            int contentChangeTypes = accessibilityEvent != null ? AccessibilityEventCompat.getContentChangeTypes(accessibilityEvent) : 0;
            this.f2954A |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        }
    }

    public void setAccessibilityDelegateCompat(A0 a3) {
        this.p0 = a3;
        ViewCompat.setAccessibilityDelegate(this, a3);
    }

    public void setAdapter(W w2) {
        setLayoutFrozen(false);
        W w3 = this.f2999n;
        q0 q0Var = this.f2979c;
        if (w3 != null) {
            w3.f1643a.unregisterObserver(q0Var);
            this.f2999n.g(this);
        }
        AbstractC0139c0 abstractC0139c0 = this.f2967N;
        if (abstractC0139c0 != null) {
            abstractC0139c0.e();
        }
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        o0 o0Var = this.f2981d;
        if (abstractC0147g0 != null) {
            abstractC0147g0.m0(o0Var);
            this.f3000o.n0(o0Var);
        }
        o0Var.f1721a.clear();
        o0Var.f();
        C0136b c0136b = this.f;
        c0136b.k(c0136b.b);
        c0136b.k(c0136b.f1648c);
        c0136b.f = 0;
        W w4 = this.f2999n;
        this.f2999n = w2;
        if (w2 != null) {
            w2.f1643a.registerObserver(q0Var);
            w2.d(this);
        }
        AbstractC0147g0 abstractC0147g1 = this.f3000o;
        if (abstractC0147g1 != null) {
            abstractC0147g1.T();
        }
        W w5 = this.f2999n;
        o0Var.f1721a.clear();
        o0Var.f();
        o0Var.e(w4, true);
        n0 n0VarC = o0Var.c();
        if (w4 != null) {
            n0VarC.b--;
        }
        if (n0VarC.b == 0) {
            SparseArray sparseArray = n0VarC.f1715a;
            for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                m0 m0Var = (m0) sparseArray.valueAt(i3);
                ArrayList arrayList = m0Var.f1708a;
                int size = arrayList.size();
                int i4 = 0;
                while (i4 < size) {
                    Object obj = arrayList.get(i4);
                    i4++;
                    c.e(((y0) obj).f1807a);
                }
                m0Var.f1708a.clear();
            }
        }
        if (w5 != null) {
            n0VarC.b++;
        }
        o0Var.d();
        this.f2990i0.f = true;
        W(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(Z z2) {
        if (z2 == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(z2 != null);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z2) {
        if (z2 != this.f2989i) {
            this.f2966M = null;
            this.K = null;
            this.f2965L = null;
            this.f2964J = null;
        }
        this.f2989i = z2;
        super.setClipToPadding(z2);
        if (this.f3012v) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(AbstractC0135a0 abstractC0135a0) {
        Preconditions.checkNotNull(abstractC0135a0);
        this.f2963I = abstractC0135a0;
        this.f2966M = null;
        this.K = null;
        this.f2965L = null;
        this.f2964J = null;
    }

    public void setHasFixedSize(boolean z2) {
        this.f3010u = z2;
    }

    public void setItemAnimator(AbstractC0139c0 abstractC0139c0) {
        AbstractC0139c0 abstractC0139c1 = this.f2967N;
        if (abstractC0139c1 != null) {
            abstractC0139c1.e();
            this.f2967N.f1654a = null;
        }
        this.f2967N = abstractC0139c0;
        if (abstractC0139c0 != null) {
            abstractC0139c0.f1654a = this.n0;
        }
    }

    public void setItemViewCacheSize(int i3) {
        o0 o0Var = this.f2981d;
        o0Var.f1724e = i3;
        o0Var.m();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z2) {
        suppressLayout(z2);
    }

    public void setLayoutManager(AbstractC0147g0 abstractC0147g0) {
        M m2;
        if (abstractC0147g0 == this.f3000o) {
            return;
        }
        setScrollState(0);
        x0 x0Var = this.f2985f0;
        x0Var.f1802h.removeCallbacks(x0Var);
        x0Var.f1800d.abortAnimation();
        AbstractC0147g0 abstractC0147g1 = this.f3000o;
        if (abstractC0147g1 != null && (m2 = abstractC0147g1.f1677e) != null) {
            m2.i();
        }
        AbstractC0147g0 abstractC0147g2 = this.f3000o;
        o0 o0Var = this.f2981d;
        if (abstractC0147g2 != null) {
            AbstractC0139c0 abstractC0139c0 = this.f2967N;
            if (abstractC0139c0 != null) {
                abstractC0139c0.e();
            }
            this.f3000o.m0(o0Var);
            this.f3000o.n0(o0Var);
            o0Var.f1721a.clear();
            o0Var.f();
            if (this.f3008t) {
                AbstractC0147g0 abstractC0147g3 = this.f3000o;
                abstractC0147g3.g = false;
                abstractC0147g3.V(this);
            }
            this.f3000o.z0(null);
            this.f3000o = null;
        } else {
            o0Var.f1721a.clear();
            o0Var.f();
        }
        C0150i c0150i = this.g;
        RecyclerView recyclerView = c0150i.f1690a.f1642a;
        c0150i.b.g();
        ArrayList arrayList = c0150i.f1691c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            y0 y0VarK = K((View) arrayList.get(size));
            if (y0VarK != null) {
                int i3 = y0VarK.f1819p;
                if (recyclerView.N()) {
                    y0VarK.f1820q = i3;
                    recyclerView.f3013v0.add(y0VarK);
                } else {
                    ViewCompat.setImportantForAccessibility(y0VarK.f1807a, i3);
                }
                y0VarK.f1819p = 0;
            }
            arrayList.remove(size);
        }
        int childCount = recyclerView.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = recyclerView.getChildAt(i4);
            recyclerView.r(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.f3000o = abstractC0147g0;
        if (abstractC0147g0 != null) {
            if (abstractC0147g0.b != null) {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(abstractC0147g0);
                sb.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(b.k(abstractC0147g0.b, sb));
            }
            abstractC0147g0.z0(this);
            if (this.f3008t) {
                AbstractC0147g0 abstractC0147g4 = this.f3000o;
                abstractC0147g4.g = true;
                abstractC0147g4.U(this);
            }
        }
        o0Var.m();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z2) {
        getScrollingChildHelper().setNestedScrollingEnabled(z2);
    }

    public void setOnFlingListener(j0 j0Var) {
        this.f2976W = j0Var;
    }

    @Deprecated
    public void setOnScrollListener(l0 l0Var) {
        this.f2992j0 = l0Var;
    }

    public void setPreserveFocusAfterLayout(boolean z2) {
        this.f2984e0 = z2;
    }

    public void setRecycledViewPool(n0 n0Var) {
        o0 o0Var = this.f2981d;
        RecyclerView recyclerView = o0Var.f1725h;
        o0Var.e(recyclerView.f2999n, false);
        n0 n0Var2 = o0Var.g;
        if (n0Var2 != null) {
            n0Var2.b--;
        }
        o0Var.g = n0Var;
        if (n0Var != null && recyclerView.getAdapter() != null) {
            o0Var.g.b++;
        }
        o0Var.d();
    }

    public void setScrollState(int i3) {
        M m2;
        if (i3 == this.f2968O) {
            return;
        }
        if (f2945C0) {
            StringBuilder sbO = b.o(i3, "setting scroll state to ", " from ");
            sbO.append(this.f2968O);
            Log.d("RecyclerView", sbO.toString(), new Exception());
        }
        this.f2968O = i3;
        if (i3 != 2) {
            x0 x0Var = this.f2985f0;
            x0Var.f1802h.removeCallbacks(x0Var);
            x0Var.f1800d.abortAnimation();
            AbstractC0147g0 abstractC0147g0 = this.f3000o;
            if (abstractC0147g0 != null && (m2 = abstractC0147g0.f1677e) != null) {
                m2.i();
            }
        }
        AbstractC0147g0 abstractC0147g1 = this.f3000o;
        if (abstractC0147g1 != null) {
            abstractC0147g1.k0(i3);
        }
        l0 l0Var = this.f2992j0;
        if (l0Var != null) {
            l0Var.a(this, i3);
        }
        ArrayList arrayList = this.f2994k0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((l0) this.f2994k0.get(size)).a(this, i3);
            }
        }
    }

    public void setScrollingTouchSlop(int i3) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i3 != 0) {
            if (i3 == 1) {
                this.f2975V = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i3 + "; using default value");
        }
        this.f2975V = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(w0 w0Var) {
        this.f2981d.getClass();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public final boolean startNestedScroll(int i3) {
        return getScrollingChildHelper().startNestedScroll(i3);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public final void stopNestedScroll() {
        getScrollingChildHelper().stopNestedScroll();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z2) {
        M m2;
        if (z2 != this.f3018y) {
            k("Do not suppressLayout in layout or scroll");
            if (!z2) {
                this.f3018y = false;
                if (this.f3016x && this.f3000o != null && this.f2999n != null) {
                    requestLayout();
                }
                this.f3016x = false;
                return;
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
            this.f3018y = true;
            this.f3020z = true;
            setScrollState(0);
            x0 x0Var = this.f2985f0;
            x0Var.f1802h.removeCallbacks(x0Var);
            x0Var.f1800d.abortAnimation();
            AbstractC0147g0 abstractC0147g0 = this.f3000o;
            if (abstractC0147g0 == null || (m2 = abstractC0147g0.f1677e) == null) {
                return;
            }
            m2.i();
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0066  */
    public final void t() {
        int iH;
        I0 i3;
        View viewC;
        u0 u0Var = this.f2990i0;
        u0Var.a(1);
        B(u0Var);
        u0Var.f1764i = false;
        j0();
        C0013d c0013d = this.f2987h;
        j jVar = (j) c0013d.f177c;
        j jVar2 = (j) c0013d.f177c;
        jVar.clear();
        g gVar = (g) c0013d.f178d;
        gVar.a();
        R();
        V();
        y0 y0VarJ = null;
        View focusedChild = (this.f2984e0 && hasFocus() && this.f2999n != null) ? getFocusedChild() : null;
        if (focusedChild != null && (viewC = C(focusedChild)) != null) {
            y0VarJ = J(viewC);
        }
        if (y0VarJ == null) {
            u0Var.f1768m = -1L;
            u0Var.f1767l = -1;
            u0Var.f1769n = -1;
        } else {
            u0Var.f1768m = this.f2999n.b ? y0VarJ.f1810e : -1L;
            if (this.f2959E) {
                iH = -1;
            } else if (y0VarJ.h()) {
                iH = y0VarJ.f1809d;
            } else {
                RecyclerView recyclerView = y0VarJ.f1821r;
                if (recyclerView == null) {
                    iH = -1;
                } else {
                    iH = recyclerView.H(y0VarJ);
                }
            }
            u0Var.f1767l = iH;
            View focusedChild2 = y0VarJ.f1807a;
            int id = focusedChild2.getId();
            while (!focusedChild2.isFocused() && (focusedChild2 instanceof ViewGroup) && focusedChild2.hasFocus()) {
                focusedChild2 = ((ViewGroup) focusedChild2).getFocusedChild();
                if (focusedChild2.getId() != -1) {
                    id = focusedChild2.getId();
                }
            }
            u0Var.f1769n = id;
        }
        u0Var.f1763h = u0Var.f1765j && this.f2998m0;
        this.f2998m0 = false;
        this.f2996l0 = false;
        u0Var.g = u0Var.f1766k;
        u0Var.f1762e = this.f2999n.a();
        E(this.f3004q0);
        if (u0Var.f1765j) {
            int iE = this.g.e();
            for (int i4 = 0; i4 < iE; i4++) {
                y0 y0VarK = K(this.g.d(i4));
                if (!y0VarK.o() && (!y0VarK.f() || this.f2999n.b)) {
                    AbstractC0139c0 abstractC0139c0 = this.f2967N;
                    AbstractC0139c0.b(y0VarK);
                    y0VarK.c();
                    abstractC0139c0.getClass();
                    C0137b0 c0137b0 = new C0137b0();
                    c0137b0.a(y0VarK);
                    I0 i0A = (I0) jVar2.get(y0VarK);
                    if (i0A == null) {
                        i0A = I0.a();
                        jVar2.put(y0VarK, i0A);
                    }
                    i0A.b = c0137b0;
                    i0A.f1604a |= 4;
                    if (u0Var.f1763h && y0VarK.k() && !y0VarK.h() && !y0VarK.o() && !y0VarK.f()) {
                        gVar.e(I(y0VarK), y0VarK);
                    }
                }
            }
        }
        if (u0Var.f1766k) {
            int iH2 = this.g.h();
            for (int i5 = 0; i5 < iH2; i5++) {
                y0 y0VarK2 = K(this.g.g(i5));
                if (f2944B0 && y0VarK2.f1808c == -1 && !y0VarK2.h()) {
                    throw new IllegalStateException(b.k(this, new StringBuilder("view holder cannot have position -1 unless it is removed")));
                }
                if (!y0VarK2.o() && y0VarK2.f1809d == -1) {
                    y0VarK2.f1809d = y0VarK2.f1808c;
                }
            }
            boolean z2 = u0Var.f;
            u0Var.f = false;
            this.f3000o.g0(this.f2981d, u0Var);
            u0Var.f = z2;
            for (int i6 = 0; i6 < this.g.e(); i6++) {
                y0 y0VarK3 = K(this.g.d(i6));
                if (!y0VarK3.o() && ((i3 = (I0) jVar2.get(y0VarK3)) == null || (i3.f1604a & 4) == 0)) {
                    AbstractC0139c0.b(y0VarK3);
                    boolean z3 = (y0VarK3.f1813j & 8192) != 0;
                    AbstractC0139c0 abstractC0139c1 = this.f2967N;
                    y0VarK3.c();
                    abstractC0139c1.getClass();
                    C0137b0 c0137b1 = new C0137b0();
                    c0137b1.a(y0VarK3);
                    if (z3) {
                        X(y0VarK3, c0137b1);
                    } else {
                        I0 i0A2 = (I0) jVar2.get(y0VarK3);
                        if (i0A2 == null) {
                            i0A2 = I0.a();
                            jVar2.put(y0VarK3, i0A2);
                        }
                        i0A2.f1604a |= 2;
                        i0A2.b = c0137b1;
                    }
                }
            }
            m();
        } else {
            m();
        }
        S(true);
        k0(false);
        u0Var.f1761d = 2;
    }

    public final void u() {
        j0();
        R();
        u0 u0Var = this.f2990i0;
        u0Var.a(6);
        this.f.c();
        u0Var.f1762e = this.f2999n.a();
        u0Var.f1760c = 0;
        if (this.f2983e != null) {
            W w2 = this.f2999n;
            int iA = h.a(w2.f1644c);
            if (iA == 1 ? w2.a() > 0 : iA != 2) {
                Parcelable parcelable = this.f2983e.f1745d;
                if (parcelable != null) {
                    this.f3000o.i0(parcelable);
                }
                this.f2983e = null;
            }
        }
        u0Var.g = false;
        this.f3000o.g0(this.f2981d, u0Var);
        u0Var.f = false;
        u0Var.f1765j = u0Var.f1765j && this.f2967N != null;
        u0Var.f1761d = 4;
        S(true);
        k0(false);
    }

    public final void v(int i3, int i4) {
        this.f2962H++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i3, scrollY - i4);
        l0 l0Var = this.f2992j0;
        if (l0Var != null) {
            l0Var.b(this, i3, i4);
        }
        ArrayList arrayList = this.f2994k0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((l0) this.f2994k0.get(size)).b(this, i3, i4);
            }
        }
        this.f2962H--;
    }

    public final void w() {
        if (this.f2966M != null) {
            return;
        }
        ((v0) this.f2963I).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f2966M = edgeEffect;
        if (this.f2989i) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final void x() {
        if (this.f2964J != null) {
            return;
        }
        ((v0) this.f2963I).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f2964J = edgeEffect;
        if (this.f2989i) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void y() {
        if (this.f2965L != null) {
            return;
        }
        ((v0) this.f2963I).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f2965L = edgeEffect;
        if (this.f2989i) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void z() {
        if (this.K != null) {
            return;
        }
        ((v0) this.f2963I).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.K = edgeEffect;
        if (this.f2989i) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i3) {
        int i4;
        Constructor constructor;
        super(context, attributeSet, i3);
        this.f2979c = new q0(0, this);
        this.f2981d = new o0(this);
        this.f2987h = new C0013d(7);
        this.f2991j = new U(this, 0);
        this.f2993k = new Rect();
        this.f2995l = new Rect();
        this.f2997m = new RectF();
        this.f3002p = new ArrayList();
        this.f3003q = new ArrayList();
        this.f3005r = new ArrayList();
        this.f3014w = 0;
        this.f2959E = false;
        this.f2960F = false;
        this.f2961G = 0;
        this.f2962H = 0;
        this.f2963I = f2953K0;
        C0158p c0158p = new C0158p();
        Object[] objArr = null;
        c0158p.f1654a = null;
        c0158p.b = new ArrayList();
        c0158p.f1655c = 120L;
        c0158p.f1656d = 120L;
        c0158p.f1657e = 250L;
        c0158p.f = 250L;
        c0158p.g = true;
        c0158p.f1727h = new ArrayList();
        c0158p.f1728i = new ArrayList();
        c0158p.f1729j = new ArrayList();
        c0158p.f1730k = new ArrayList();
        c0158p.f1731l = new ArrayList();
        c0158p.f1732m = new ArrayList();
        c0158p.f1733n = new ArrayList();
        c0158p.f1734o = new ArrayList();
        c0158p.f1735p = new ArrayList();
        c0158p.f1736q = new ArrayList();
        c0158p.f1737r = new ArrayList();
        this.f2967N = c0158p;
        this.f2968O = 0;
        this.f2969P = -1;
        this.f2980c0 = Float.MIN_VALUE;
        this.f2982d0 = Float.MIN_VALUE;
        this.f2984e0 = true;
        this.f2985f0 = new x0(this);
        this.f2988h0 = f2950H0 ? new C0166y() : null;
        u0 u0Var = new u0();
        u0Var.f1759a = -1;
        u0Var.b = 0;
        u0Var.f1760c = 0;
        u0Var.f1761d = 1;
        u0Var.f1762e = 0;
        u0Var.f = false;
        u0Var.g = false;
        u0Var.f1763h = false;
        u0Var.f1764i = false;
        u0Var.f1765j = false;
        u0Var.f1766k = false;
        this.f2990i0 = u0Var;
        this.f2996l0 = false;
        this.f2998m0 = false;
        V v2 = new V(this);
        this.n0 = v2;
        this.f3001o0 = false;
        this.f3004q0 = new int[2];
        this.s0 = new int[2];
        this.f3009t0 = new int[2];
        this.f3011u0 = new int[2];
        this.f3013v0 = new ArrayList();
        this.f3015w0 = new U(this, 1);
        this.f3019y0 = 0;
        this.f3021z0 = 0;
        this.f2955A0 = new V(this);
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f2975V = viewConfiguration.getScaledTouchSlop();
        this.f2980c0 = ViewConfigurationCompat.getScaledHorizontalScrollFactor(viewConfiguration, context);
        this.f2982d0 = ViewConfigurationCompat.getScaledVerticalScrollFactor(viewConfiguration, context);
        this.f2977a0 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f2978b0 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.b = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.f2967N.f1654a = v2;
        this.f = new C0136b(new V(this));
        this.g = new C0150i(new V(this));
        if (ViewCompat.getImportantForAutofill(this) == 0) {
            ViewCompat.setImportantForAutofill(this, 8);
        }
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
        this.f2957C = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new A0(this));
        int[] iArr = O.a.f1506a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i3, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i3, 0);
        String string = typedArrayObtainStyledAttributes.getString(8);
        if (typedArrayObtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f2989i = typedArrayObtainStyledAttributes.getBoolean(1, true);
        if (typedArrayObtainStyledAttributes.getBoolean(3, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(6);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(7);
            StateListDrawable stateListDrawable2 = (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(4);
            Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(5);
            if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
                throw new IllegalArgumentException(b.k(this, new StringBuilder("Trying to set fast scroller without both required drawables.")));
            }
            Resources resources = getContext().getResources();
            i4 = 4;
            new C0165x(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(com.minhub.gamehub.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(com.minhub.gamehub.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(com.minhub.gamehub.R.dimen.fastscroll_margin));
        } else {
            i4 = 4;
        }
        typedArrayObtainStyledAttributes.recycle();
        if (string != null) {
            String strTrim = string.trim();
            if (!strTrim.isEmpty()) {
                if (strTrim.charAt(0) == '.') {
                    strTrim = context.getPackageName() + strTrim;
                } else if (!strTrim.contains(".")) {
                    strTrim = RecyclerView.class.getPackage().getName() + '.' + strTrim;
                }
                String str = strTrim;
                try {
                    Class<? extends U> clsAsSubclass = Class.forName(str, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(AbstractC0147g0.class);
                    try {
                        constructor = clsAsSubclass.getConstructor(f2951I0);
                        Object[] objArr2 = new Object[i4];
                        objArr2[0] = context;
                        objArr2[r11] = attributeSet;
                        objArr2[2] = Integer.valueOf(i3);
                        objArr2[3] = 0;
                        objArr = objArr2;
                    } catch (NoSuchMethodException e2) {
                        try {
                            constructor = clsAsSubclass.getConstructor(null);
                        } catch (NoSuchMethodException e3) {
                            e3.initCause(e2);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, e3);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((AbstractC0147g0) constructor.newInstance(objArr));
                } catch (ClassCastException e4) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str, e4);
                } catch (ClassNotFoundException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str, e5);
                } catch (IllegalAccessException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str, e6);
                } catch (InstantiationException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e7);
                } catch (InvocationTargetException e8) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e8);
                }
            }
        }
        int[] iArr2 = f2946D0;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i3, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr2, attributeSet, typedArrayObtainStyledAttributes2, i3, 0);
        boolean z2 = typedArrayObtainStyledAttributes2.getBoolean(0, true);
        typedArrayObtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z2);
        Intrinsics.checkNotNullParameter(this, "<this>");
        setTag(com.minhub.gamehub.R.id.is_pooling_container_tag, Boolean.TRUE);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public final boolean dispatchNestedPreScroll(int i3, int i4, int[] iArr, int[] iArr2, int i5) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i3, i4, iArr, iArr2, i5);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public final boolean dispatchNestedScroll(int i3, int i4, int i5, int i6, int[] iArr, int i7) {
        return getScrollingChildHelper().dispatchNestedScroll(i3, i4, i5, i6, iArr, i7);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public final boolean hasNestedScrollingParent(int i3) {
        return getScrollingChildHelper().hasNestedScrollingParent(i3);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public final boolean startNestedScroll(int i3, int i4) {
        return getScrollingChildHelper().startNestedScroll(i3, i4);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public final void stopNestedScroll(int i3) {
        getScrollingChildHelper().stopNestedScroll(i3);
    }

    @Override // androidx.core.view.NestedScrollingChild3
    public final void dispatchNestedScroll(int i3, int i4, int i5, int i6, int[] iArr, int i7, int[] iArr2) {
        getScrollingChildHelper().dispatchNestedScroll(i3, i4, i5, i6, iArr, i7, iArr2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC0147g0 abstractC0147g0 = this.f3000o;
        if (abstractC0147g0 != null) {
            return abstractC0147g0.t(layoutParams);
        }
        throw new IllegalStateException(b.k(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Deprecated
    public void setRecyclerListener(p0 p0Var) {
    }
}
