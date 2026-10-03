package com.google.android.material.bottomsheet;

import D.e;
import H0.c;
import H0.f;
import H0.i;
import H0.p;
import R0.t;
import S0.b;
import S0.g;
import Y0.h;
import Y0.m;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Property;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.MotionEvent;
import android.view.RoundedCorner;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import androidx.activity.BackEventCompat;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.minhub.gamehub.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import z.a;
import z.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends a implements b {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final i f3299A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final ValueAnimator f3300B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final int f3301C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public int f3302D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public int f3303E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final float f3304F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f3305G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final float f3306H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f3307I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f3308J;
    public boolean K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f3309L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public e f3310M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f3311N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f3312O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f3313P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final float f3314Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f3315R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f3316S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f3317T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public WeakReference f3318U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public WeakReference f3319V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final ArrayList f3320W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public VelocityTracker f3321X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public g f3322Y;
    public int Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3323a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f3324a0;
    public boolean b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f3325b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f3326c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public HashMap f3327c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3328d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final SparseIntArray f3329d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3330e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final H0.e f3331e0;
    public boolean f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3332h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final h f3333i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ColorStateList f3334j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3335k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f3336l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3337m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f3338n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f3339o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f3340p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final boolean f3341q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final boolean f3342r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final boolean f3343s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f3344t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f3345u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f3346v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f3347w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final boolean f3348x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final m f3349y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f3350z;

    public BottomSheetBehavior() {
        this.f3323a = 0;
        this.b = true;
        this.f3335k = -1;
        this.f3336l = -1;
        this.f3299A = new i(this);
        this.f3304F = 0.5f;
        this.f3306H = -1.0f;
        this.K = true;
        this.f3309L = 4;
        this.f3314Q = 0.1f;
        this.f3320W = new ArrayList();
        this.f3324a0 = -1;
        this.f3329d0 = new SparseIntArray();
        this.f3331e0 = new H0.e(this, 0);
    }

    public static BottomSheetBehavior A(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof d)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        a aVar = ((d) layoutParams).f6413a;
        if (aVar instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) aVar;
        }
        throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }

    public static int B(int i3, int i4, int i5, int i6) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i3, i4, i6);
        if (i5 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i5), 1073741824);
        }
        if (size != 0) {
            i5 = Math.min(size, i5);
        }
        return View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE);
    }

    public static View z(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        if (ViewCompat.isNestedScrollingEnabled(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View viewZ = z(viewGroup.getChildAt(i3));
            if (viewZ != null) {
                return viewZ;
            }
        }
        return null;
    }

    public final int C() {
        if (this.b) {
            return this.f3302D;
        }
        return Math.max(this.f3301C, this.f3342r ? 0 : this.f3347w);
    }

    public final int D(int i3) {
        if (i3 == 3) {
            return C();
        }
        if (i3 == 4) {
            return this.f3305G;
        }
        if (i3 == 5) {
            return this.f3317T;
        }
        if (i3 == 6) {
            return this.f3303E;
        }
        throw new IllegalArgumentException(E.b.i(i3, "Invalid state to get top offset: "));
    }

    public final boolean E() {
        WeakReference weakReference = this.f3318U;
        if (weakReference != null && weakReference.get() != null) {
            int[] iArr = new int[2];
            ((View) this.f3318U.get()).getLocationOnScreen(iArr);
            if (iArr[1] == 0) {
                return true;
            }
        }
        return false;
    }

    public final void F(boolean z2) {
        if (this.f3307I != z2) {
            this.f3307I = z2;
            if (!z2 && this.f3309L == 5) {
                H(4);
            }
            L();
        }
    }

    public final void G(int i3) {
        if (i3 == -1) {
            if (this.f) {
                return;
            } else {
                this.f = true;
            }
        } else {
            if (!this.f && this.f3330e == i3) {
                return;
            }
            this.f = false;
            this.f3330e = Math.max(0, i3);
        }
        O();
    }

    public final void H(int i3) {
        if (i3 == 1 || i3 == 2) {
            throw new IllegalArgumentException(kotlin.collections.unsigned.a.i(new StringBuilder("STATE_"), i3 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        if (!this.f3307I && i3 == 5) {
            Log.w("BottomSheetBehavior", "Cannot set state: " + i3);
            return;
        }
        int i4 = (i3 == 6 && this.b && D(i3) <= this.f3302D) ? 3 : i3;
        WeakReference weakReference = this.f3318U;
        if (weakReference == null || weakReference.get() == null) {
            I(i3);
            return;
        }
        View view = (View) this.f3318U.get();
        H0.b bVar = new H0.b(this, view, i4);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(view)) {
            view.post(bVar);
        } else {
            bVar.run();
        }
    }

    public final void I(int i3) {
        View view;
        if (this.f3309L == i3) {
            return;
        }
        this.f3309L = i3;
        if (i3 != 4 && i3 != 3 && i3 != 6) {
            boolean z2 = this.f3307I;
        }
        WeakReference weakReference = this.f3318U;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i4 = 0;
        if (i3 == 3) {
            N(true);
        } else if (i3 == 6 || i3 == 5 || i3 == 4) {
            N(false);
        }
        M(i3, true);
        while (true) {
            ArrayList arrayList = this.f3320W;
            if (i4 >= arrayList.size()) {
                L();
                return;
            } else {
                ((H0.g) arrayList.get(i4)).c(view, i3);
                i4++;
            }
        }
    }

    public final boolean J(View view, float f) {
        if (this.f3308J) {
            return true;
        }
        if (view.getTop() < this.f3305G) {
            return false;
        }
        return Math.abs(((f * this.f3314Q) + ((float) view.getTop())) - ((float) this.f3305G)) / ((float) x()) > 0.5f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
    
        if (r3 != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
    
        I(2);
        M(r4, true);
        r2.f3299A.a(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0012, code lost:
    
        if (r1.o(r3.getLeft(), r0) != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void K(android.view.View r3, int r4, boolean r5) {
        /*
            r2 = this;
            int r0 = r2.D(r4)
            D.e r1 = r2.f3310M
            if (r1 == 0) goto L40
            if (r5 == 0) goto L15
            int r3 = r3.getLeft()
            boolean r3 = r1.o(r3, r0)
            if (r3 == 0) goto L40
            goto L32
        L15:
            int r5 = r3.getLeft()
            r1.f753r = r3
            r3 = -1
            r1.f740c = r3
            r3 = 0
            boolean r3 = r1.h(r5, r0, r3, r3)
            if (r3 != 0) goto L30
            int r5 = r1.f739a
            if (r5 != 0) goto L30
            android.view.View r5 = r1.f753r
            if (r5 == 0) goto L30
            r5 = 0
            r1.f753r = r5
        L30:
            if (r3 == 0) goto L40
        L32:
            r3 = 2
            r2.I(r3)
            r3 = 1
            r2.M(r4, r3)
            H0.i r3 = r2.f3299A
            r3.a(r4)
            return
        L40:
            r2.I(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.K(android.view.View, int, boolean):void");
    }

    public final void L() {
        View view;
        WeakReference weakReference = this.f3318U;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(view, 524288);
        ViewCompat.removeAccessibilityAction(view, 262144);
        ViewCompat.removeAccessibilityAction(view, 1048576);
        SparseIntArray sparseIntArray = this.f3329d0;
        int i3 = sparseIntArray.get(0, -1);
        if (i3 != -1) {
            ViewCompat.removeAccessibilityAction(view, i3);
            sparseIntArray.delete(0);
        }
        if (!this.b && this.f3309L != 6) {
            sparseIntArray.put(0, ViewCompat.addAccessibilityAction(view, view.getResources().getString(R.string.bottomsheet_action_expand_halfway), new f(this, 6)));
        }
        if (this.f3307I && this.f3309L != 5) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new f(this, 5));
        }
        int i4 = this.f3309L;
        if (i4 == 3) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, null, new f(this, this.b ? 4 : 6));
            return;
        }
        if (i4 == 4) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, null, new f(this, this.b ? 3 : 6));
        } else {
            if (i4 != 6) {
                return;
            }
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, null, new f(this, 4));
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, null, new f(this, 3));
        }
    }

    public final void M(int i3, boolean z2) {
        h hVar;
        if (i3 == 2) {
            return;
        }
        boolean z3 = this.f3309L == 3 && (this.f3348x || E());
        if (this.f3350z == z3 || (hVar = this.f3333i) == null) {
            return;
        }
        this.f3350z = z3;
        ValueAnimator valueAnimator = this.f3300B;
        if (!z2 || valueAnimator == null) {
            if (valueAnimator != null && valueAnimator.isRunning()) {
                valueAnimator.cancel();
            }
            hVar.m(this.f3350z ? w() : 1.0f);
            return;
        }
        if (valueAnimator.isRunning()) {
            valueAnimator.reverse();
        } else {
            valueAnimator.setFloatValues(hVar.b.f2388i, z3 ? w() : 1.0f);
            valueAnimator.start();
        }
    }

    public final void N(boolean z2) {
        WeakReference weakReference = this.f3318U;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z2) {
                if (this.f3327c0 != null) {
                    return;
                } else {
                    this.f3327c0 = new HashMap(childCount);
                }
            }
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = coordinatorLayout.getChildAt(i3);
                if (childAt != this.f3318U.get() && z2) {
                    this.f3327c0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z2) {
                return;
            }
            this.f3327c0 = null;
        }
    }

    public final void O() {
        View view;
        if (this.f3318U != null) {
            v();
            if (this.f3309L != 4 || (view = (View) this.f3318U.get()) == null) {
                return;
            }
            view.requestLayout();
        }
    }

    @Override // S0.b
    public final void a() {
        g gVar = this.f3322Y;
        if (gVar == null) {
            return;
        }
        int i3 = gVar.f2044d;
        int i4 = gVar.f2043c;
        BackEventCompat backEventCompat = gVar.f;
        gVar.f = null;
        if (backEventCompat == null || Build.VERSION.SDK_INT < 34) {
            H(this.f3307I ? 5 : 4);
            return;
        }
        if (!this.f3307I) {
            AnimatorSet animatorSetA = gVar.a();
            animatorSetA.setDuration(B0.a.c(i4, backEventCompat.getProgress(), i3));
            animatorSetA.start();
            H(4);
            return;
        }
        E0.a aVar = new E0.a(1, this);
        View view = gVar.b;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, view.getScaleY() * view.getHeight());
        objectAnimatorOfFloat.setInterpolator(new L.a(1));
        objectAnimatorOfFloat.setDuration(B0.a.c(i4, backEventCompat.getProgress(), i3));
        objectAnimatorOfFloat.addListener(new E0.a(3, gVar));
        objectAnimatorOfFloat.addListener(aVar);
        objectAnimatorOfFloat.start();
    }

    @Override // S0.b
    public final void b(BackEventCompat backEventCompat) {
        g gVar = this.f3322Y;
        if (gVar == null) {
            return;
        }
        gVar.f = backEventCompat;
    }

    @Override // S0.b
    public final void c(BackEventCompat backEventCompat) {
        g gVar = this.f3322Y;
        if (gVar == null) {
            return;
        }
        if (gVar.f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() before updateBackProgress()");
        }
        BackEventCompat backEventCompat2 = gVar.f;
        gVar.f = backEventCompat;
        if (backEventCompat2 == null) {
            return;
        }
        gVar.b(backEventCompat.getProgress());
    }

    @Override // S0.b
    public final void d() {
        g gVar = this.f3322Y;
        if (gVar == null) {
            return;
        }
        if (gVar.f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()");
        }
        BackEventCompat backEventCompat = gVar.f;
        gVar.f = null;
        if (backEventCompat == null) {
            return;
        }
        AnimatorSet animatorSetA = gVar.a();
        animatorSetA.setDuration(gVar.f2045e);
        animatorSetA.start();
    }

    @Override // z.a
    public final void g(d dVar) {
        this.f3318U = null;
        this.f3310M = null;
        this.f3322Y = null;
    }

    @Override // z.a
    public final void i() {
        this.f3318U = null;
        this.f3310M = null;
        this.f3322Y = null;
    }

    @Override // z.a
    public final boolean j(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int i3;
        e eVar;
        if (!view.isShown() || !this.K) {
            this.f3311N = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.Z = -1;
            this.f3324a0 = -1;
            VelocityTracker velocityTracker = this.f3321X;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f3321X = null;
            }
        }
        if (this.f3321X == null) {
            this.f3321X = VelocityTracker.obtain();
        }
        this.f3321X.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x2 = (int) motionEvent.getX();
            this.f3324a0 = (int) motionEvent.getY();
            if (this.f3309L != 2) {
                WeakReference weakReference = this.f3319V;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && coordinatorLayout.i(view2, x2, this.f3324a0)) {
                    this.Z = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f3325b0 = true;
                }
            }
            this.f3311N = this.Z == -1 && !coordinatorLayout.i(view, x2, this.f3324a0);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f3325b0 = false;
            this.Z = -1;
            if (this.f3311N) {
                this.f3311N = false;
                return false;
            }
        }
        if (this.f3311N || (eVar = this.f3310M) == null || !eVar.p(motionEvent)) {
            WeakReference weakReference2 = this.f3319V;
            View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
            if (actionMasked != 2 || view3 == null || this.f3311N || this.f3309L == 1 || coordinatorLayout.i(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f3310M == null || (i3 = this.f3324a0) == -1 || Math.abs(i3 - motionEvent.getY()) <= this.f3310M.b) {
                return false;
            }
        }
        return true;
    }

    @Override // z.a
    public final boolean k(CoordinatorLayout coordinatorLayout, View view, int i3) {
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
            view.setFitsSystemWindows(true);
        }
        int i4 = 0;
        if (this.f3318U == null) {
            this.g = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            boolean z2 = (Build.VERSION.SDK_INT < 29 || this.f3338n || this.f) ? false : true;
            if (this.f3339o || this.f3340p || this.f3341q || this.f3343s || this.f3344t || this.f3345u || z2) {
                t.a(view, new H0.d(this, z2));
            }
            ViewCompat.setWindowInsetsAnimationCallback(view, new p(view));
            this.f3318U = new WeakReference(view);
            this.f3322Y = new g(view);
            h hVar = this.f3333i;
            if (hVar != null) {
                ViewCompat.setBackground(view, hVar);
                float elevation = this.f3306H;
                if (elevation == -1.0f) {
                    elevation = ViewCompat.getElevation(view);
                }
                this.f3333i.k(elevation);
            } else {
                ColorStateList colorStateList = this.f3334j;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(view, colorStateList);
                }
            }
            L();
            if (ViewCompat.getImportantForAccessibility(view) == 0) {
                ViewCompat.setImportantForAccessibility(view, 1);
            }
        }
        if (this.f3310M == null) {
            this.f3310M = new e(coordinatorLayout.getContext(), coordinatorLayout, this.f3331e0);
        }
        int top = view.getTop();
        coordinatorLayout.k(view, i3);
        this.f3316S = coordinatorLayout.getWidth();
        this.f3317T = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.f3315R = height;
        int iMin = this.f3317T;
        int i5 = iMin - height;
        int i6 = this.f3347w;
        if (i5 < i6) {
            if (this.f3342r) {
                int i7 = this.f3336l;
                if (i7 != -1) {
                    iMin = Math.min(iMin, i7);
                }
                this.f3315R = iMin;
            } else {
                int iMin2 = iMin - i6;
                int i8 = this.f3336l;
                if (i8 != -1) {
                    iMin2 = Math.min(iMin2, i8);
                }
                this.f3315R = iMin2;
            }
        }
        this.f3302D = Math.max(0, this.f3317T - this.f3315R);
        this.f3303E = (int) ((1.0f - this.f3304F) * this.f3317T);
        v();
        int i9 = this.f3309L;
        if (i9 == 3) {
            ViewCompat.offsetTopAndBottom(view, C());
        } else if (i9 == 6) {
            ViewCompat.offsetTopAndBottom(view, this.f3303E);
        } else if (this.f3307I && i9 == 5) {
            ViewCompat.offsetTopAndBottom(view, this.f3317T);
        } else if (i9 == 4) {
            ViewCompat.offsetTopAndBottom(view, this.f3305G);
        } else if (i9 == 1 || i9 == 2) {
            ViewCompat.offsetTopAndBottom(view, top - view.getTop());
        }
        M(this.f3309L, false);
        this.f3319V = new WeakReference(z(view));
        while (true) {
            ArrayList arrayList = this.f3320W;
            if (i4 >= arrayList.size()) {
                return true;
            }
            ((H0.g) arrayList.get(i4)).a(view);
            i4++;
        }
    }

    @Override // z.a
    public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(B(i3, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i4, this.f3335k, marginLayoutParams.width), B(i5, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, this.f3336l, marginLayoutParams.height));
        return true;
    }

    @Override // z.a
    public final boolean m(View view) {
        WeakReference weakReference = this.f3319V;
        return (weakReference == null || view != weakReference.get() || this.f3309L == 3) ? false : true;
    }

    @Override // z.a
    public final void n(CoordinatorLayout coordinatorLayout, View view, View view2, int i3, int i4, int[] iArr, int i5) {
        if (i5 == 1) {
            return;
        }
        WeakReference weakReference = this.f3319V;
        if (view2 != (weakReference != null ? (View) weakReference.get() : null)) {
            return;
        }
        int top = view.getTop();
        int i6 = top - i4;
        if (i4 > 0) {
            if (i6 < C()) {
                int iC = top - C();
                iArr[1] = iC;
                ViewCompat.offsetTopAndBottom(view, -iC);
                I(3);
            } else {
                if (!this.K) {
                    return;
                }
                iArr[1] = i4;
                ViewCompat.offsetTopAndBottom(view, -i4);
                I(1);
            }
        } else if (i4 < 0 && !view2.canScrollVertically(-1)) {
            int i7 = this.f3305G;
            if (i6 > i7 && !this.f3307I) {
                int i8 = top - i7;
                iArr[1] = i8;
                ViewCompat.offsetTopAndBottom(view, -i8);
                I(4);
            } else {
                if (!this.K) {
                    return;
                }
                iArr[1] = i4;
                ViewCompat.offsetTopAndBottom(view, -i4);
                I(1);
            }
        }
        y(view.getTop());
        this.f3312O = i4;
        this.f3313P = true;
    }

    @Override // z.a
    public final void q(View view, Parcelable parcelable) {
        H0.h hVar = (H0.h) parcelable;
        int i3 = this.f3323a;
        if (i3 != 0) {
            if (i3 == -1 || (i3 & 1) == 1) {
                this.f3330e = hVar.f1063e;
            }
            if (i3 == -1 || (i3 & 2) == 2) {
                this.b = hVar.f;
            }
            if (i3 == -1 || (i3 & 4) == 4) {
                this.f3307I = hVar.g;
            }
            if (i3 == -1 || (i3 & 8) == 8) {
                this.f3308J = hVar.f1064h;
            }
        }
        int i4 = hVar.f1062d;
        if (i4 == 1 || i4 == 2) {
            this.f3309L = 4;
        } else {
            this.f3309L = i4;
        }
    }

    @Override // z.a
    public final Parcelable r(View view) {
        AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
        return new H0.h(this);
    }

    @Override // z.a
    public final boolean s(View view, int i3, int i4) {
        this.f3312O = 0;
        this.f3313P = false;
        return (i3 & 2) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0055  */
    /* JADX WARN: Code duplicated, block: B:32:0x005a  */
    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    /* JADX WARN: Code duplicated, block: B:37:0x0074  */
    /* JADX WARN: Code duplicated, block: B:39:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x0083  */
    /* JADX WARN: Code duplicated, block: B:45:0x0093  */
    /* JADX WARN: Code duplicated, block: B:47:0x0097  */
    /* JADX WARN: Code duplicated, block: B:48:0x0099  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ae  */
    @Override // z.a
    public final void t(View view, View view2, int i3) {
        int top;
        int top2;
        int i4;
        float yVelocity;
        int i5 = 3;
        if (view.getTop() == C()) {
            I(3);
            return;
        }
        WeakReference weakReference = this.f3319V;
        if (weakReference != null && view2 == weakReference.get() && this.f3313P) {
            if (this.f3312O > 0) {
                if (!this.b && view.getTop() > this.f3303E) {
                    i5 = 6;
                }
            } else if (this.f3307I) {
                VelocityTracker velocityTracker = this.f3321X;
                if (velocityTracker == null) {
                    yVelocity = 0.0f;
                } else {
                    velocityTracker.computeCurrentVelocity(1000, this.f3326c);
                    yVelocity = this.f3321X.getYVelocity(this.Z);
                }
                if (J(view, yVelocity)) {
                    i5 = 5;
                } else if (this.f3312O == 0) {
                    top2 = view.getTop();
                    if (this.b) {
                        i4 = this.f3303E;
                        if (top2 < i4) {
                            if (top2 >= Math.abs(top2 - this.f3305G)) {
                            }
                        } else if (Math.abs(top2 - i4) < Math.abs(top2 - this.f3305G)) {
                            i5 = 4;
                        }
                        i5 = 6;
                    } else if (Math.abs(top2 - this.f3302D) >= Math.abs(top2 - this.f3305G)) {
                        i5 = 4;
                    }
                } else {
                    if (!this.b) {
                        top = view.getTop();
                        if (Math.abs(top - this.f3303E) < Math.abs(top - this.f3305G)) {
                            i5 = 6;
                        }
                    }
                    i5 = 4;
                }
            } else if (this.f3312O == 0) {
                top2 = view.getTop();
                if (this.b) {
                    i4 = this.f3303E;
                    if (top2 < i4) {
                        if (top2 >= Math.abs(top2 - this.f3305G)) {
                        }
                    } else if (Math.abs(top2 - i4) < Math.abs(top2 - this.f3305G)) {
                        i5 = 4;
                    }
                    i5 = 6;
                } else if (Math.abs(top2 - this.f3302D) >= Math.abs(top2 - this.f3305G)) {
                    i5 = 4;
                }
            } else {
                if (!this.b) {
                    top = view.getTop();
                    if (Math.abs(top - this.f3303E) < Math.abs(top - this.f3305G)) {
                        i5 = 6;
                    }
                }
                i5 = 4;
            }
            K(view, i5, false);
            this.f3313P = false;
        }
    }

    @Override // z.a
    public final boolean u(View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i3 = this.f3309L;
        if (i3 == 1 && actionMasked == 0) {
            return true;
        }
        e eVar = this.f3310M;
        if (eVar != null && (this.K || i3 == 1)) {
            eVar.j(motionEvent);
        }
        if (actionMasked == 0) {
            this.Z = -1;
            this.f3324a0 = -1;
            VelocityTracker velocityTracker = this.f3321X;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f3321X = null;
            }
        }
        if (this.f3321X == null) {
            this.f3321X = VelocityTracker.obtain();
        }
        this.f3321X.addMovement(motionEvent);
        if (this.f3310M != null && ((this.K || this.f3309L == 1) && actionMasked == 2 && !this.f3311N)) {
            float fAbs = Math.abs(this.f3324a0 - motionEvent.getY());
            e eVar2 = this.f3310M;
            if (fAbs > eVar2.b) {
                eVar2.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.f3311N;
    }

    public final void v() {
        int iX = x();
        if (this.b) {
            this.f3305G = Math.max(this.f3317T - iX, this.f3302D);
        } else {
            this.f3305G = this.f3317T - iX;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0044  */
    public final float w() {
        WeakReference weakReference;
        WindowInsets rootWindowInsets;
        float f;
        float f3 = 0.0f;
        if (this.f3333i != null && (weakReference = this.f3318U) != null && weakReference.get() != null && Build.VERSION.SDK_INT >= 31) {
            View view = (View) this.f3318U.get();
            if (E() && (rootWindowInsets = view.getRootWindowInsets()) != null) {
                float fH = this.f3333i.h();
                RoundedCorner roundedCorner = rootWindowInsets.getRoundedCorner(0);
                if (roundedCorner != null) {
                    float radius = roundedCorner.getRadius();
                    if (radius <= 0.0f || fH <= 0.0f) {
                        f = 0.0f;
                    } else {
                        f = radius / fH;
                    }
                } else {
                    f = 0.0f;
                }
                h hVar = this.f3333i;
                float fA = hVar.b.f2383a.f.a(hVar.g());
                RoundedCorner roundedCorner2 = rootWindowInsets.getRoundedCorner(1);
                if (roundedCorner2 != null) {
                    float radius2 = roundedCorner2.getRadius();
                    if (radius2 > 0.0f && fA > 0.0f) {
                        f3 = radius2 / fA;
                    }
                }
                return Math.max(f, f3);
            }
        }
        return 0.0f;
    }

    public final int x() {
        int i3;
        if (this.f) {
            return Math.min(Math.max(this.g, this.f3317T - ((this.f3316S * 9) / 16)), this.f3315R) + this.f3346v;
        }
        return (this.f3338n || this.f3339o || (i3 = this.f3337m) <= 0) ? this.f3330e + this.f3346v : Math.max(this.f3330e, i3 + this.f3332h);
    }

    public final void y(int i3) {
        View view = (View) this.f3318U.get();
        if (view != null) {
            ArrayList arrayList = this.f3320W;
            if (arrayList.isEmpty()) {
                return;
            }
            int i4 = this.f3305G;
            if (i3 <= i4 && i4 != C()) {
                C();
            }
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                ((H0.g) arrayList.get(i5)).b(view);
            }
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i3;
        int i4 = 0;
        this.f3323a = 0;
        this.b = true;
        this.f3335k = -1;
        this.f3336l = -1;
        this.f3299A = new i(this);
        this.f3304F = 0.5f;
        this.f3306H = -1.0f;
        this.K = true;
        this.f3309L = 4;
        this.f3314Q = 0.1f;
        this.f3320W = new ArrayList();
        this.f3324a0 = -1;
        this.f3329d0 = new SparseIntArray();
        this.f3331e0 = new H0.e(this, i4);
        this.f3332h = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, A0.a.f19c);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.f3334j = com.bumptech.glide.d.r(context, typedArrayObtainStyledAttributes, 3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(21)) {
            this.f3349y = m.b(context, attributeSet, R.attr.bottomSheetStyle, R.style.Widget_Design_BottomSheet_Modal).a();
        }
        m mVar = this.f3349y;
        if (mVar != null) {
            h hVar = new h(mVar);
            this.f3333i = hVar;
            hVar.j(context);
            ColorStateList colorStateList = this.f3334j;
            if (colorStateList != null) {
                this.f3333i.l(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f3333i.setTint(typedValue.data);
            }
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(w(), 1.0f);
        this.f3300B = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.f3300B.addUpdateListener(new c(i4, this));
        this.f3306H = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            this.f3335k = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            this.f3336l = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(9);
        if (typedValuePeekValue != null && (i3 = typedValuePeekValue.data) == -1) {
            G(i3);
        } else {
            G(typedArrayObtainStyledAttributes.getDimensionPixelSize(9, -1));
        }
        F(typedArrayObtainStyledAttributes.getBoolean(8, false));
        this.f3338n = typedArrayObtainStyledAttributes.getBoolean(13, false);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(6, true);
        if (this.b != z2) {
            this.b = z2;
            if (this.f3318U != null) {
                v();
            }
            I((this.b && this.f3309L == 6) ? 3 : this.f3309L);
            M(this.f3309L, true);
            L();
        }
        this.f3308J = typedArrayObtainStyledAttributes.getBoolean(12, false);
        this.K = typedArrayObtainStyledAttributes.getBoolean(4, true);
        this.f3323a = typedArrayObtainStyledAttributes.getInt(10, 0);
        float f = typedArrayObtainStyledAttributes.getFloat(7, 0.5f);
        if (f > 0.0f && f < 1.0f) {
            this.f3304F = f;
            if (this.f3318U != null) {
                this.f3303E = (int) ((1.0f - f) * this.f3317T);
            }
            TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(5);
            if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 16) {
                int i5 = typedValuePeekValue2.data;
                if (i5 >= 0) {
                    this.f3301C = i5;
                    M(this.f3309L, true);
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            } else {
                int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(5, 0);
                if (dimensionPixelOffset >= 0) {
                    this.f3301C = dimensionPixelOffset;
                    M(this.f3309L, true);
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            }
            this.f3328d = typedArrayObtainStyledAttributes.getInt(11, 500);
            this.f3339o = typedArrayObtainStyledAttributes.getBoolean(17, false);
            this.f3340p = typedArrayObtainStyledAttributes.getBoolean(18, false);
            this.f3341q = typedArrayObtainStyledAttributes.getBoolean(19, false);
            this.f3342r = typedArrayObtainStyledAttributes.getBoolean(20, true);
            this.f3343s = typedArrayObtainStyledAttributes.getBoolean(14, false);
            this.f3344t = typedArrayObtainStyledAttributes.getBoolean(15, false);
            this.f3345u = typedArrayObtainStyledAttributes.getBoolean(16, false);
            this.f3348x = typedArrayObtainStyledAttributes.getBoolean(23, true);
            typedArrayObtainStyledAttributes.recycle();
            this.f3326c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
    }

    @Override // z.a
    public final void o(CoordinatorLayout coordinatorLayout, View view, int i3, int i4, int i5, int[] iArr) {
    }
}
