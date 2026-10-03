package com.google.android.material.sidesheet;

import C1.C;
import D.e;
import H0.i;
import S0.b;
import Y0.h;
import Y0.l;
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
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.activity.BackEventCompat;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.bumptech.glide.d;
import com.minhub.gamehub.R;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import z.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class SideSheetBehavior<V extends View> extends a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f3488a;
    public final h b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ColorStateList f3489c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m f3490d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final i f3491e;
    public final float f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3492h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public e f3493i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3494j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f3495k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3496l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3497m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3498n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3499o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public WeakReference f3500p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public WeakReference f3501q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f3502r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public VelocityTracker f3503s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public S0.i f3504t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f3505u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final LinkedHashSet f3506v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final H0.e f3507w;

    public SideSheetBehavior() {
        this.f3491e = new i(this);
        this.g = true;
        this.f3492h = 5;
        this.f3495k = 0.1f;
        this.f3502r = -1;
        this.f3506v = new LinkedHashSet();
        this.f3507w = new H0.e(this, 1);
    }

    @Override // S0.b
    public final void a() {
        int i3;
        final ViewGroup.MarginLayoutParams marginLayoutParams;
        S0.i iVar = this.f3504t;
        if (iVar == null) {
            return;
        }
        View view = iVar.b;
        BackEventCompat backEventCompat = iVar.f;
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
        iVar.f = null;
        if (backEventCompat == null || Build.VERSION.SDK_INT < 34) {
            v(5);
            return;
        }
        d dVar = this.f3488a;
        int i4 = (dVar == null || dVar.H() == 0) ? 5 : 3;
        E0.a aVar = new E0.a(5, this);
        WeakReference weakReference = this.f3501q;
        final View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
            final int iU = this.f3488a.u(marginLayoutParams);
            animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: Z0.c
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f2482a.f3488a.b0(marginLayoutParams, B0.a.c(iU, valueAnimator.getAnimatedFraction(), 0));
                    view2.requestLayout();
                }
            };
        }
        boolean z2 = backEventCompat.getSwipeEdge() == 0;
        boolean z3 = (GravityCompat.getAbsoluteGravity(i4, ViewCompat.getLayoutDirection(view)) & 3) == 3;
        float scaleX = view.getScaleX() * view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
            i3 = z3 ? marginLayoutParams2.leftMargin : marginLayoutParams2.rightMargin;
        } else {
            i3 = 0;
        }
        float f = scaleX + i3;
        Property property = View.TRANSLATION_X;
        if (z3) {
            f = -f;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, f);
        if (animatorUpdateListener != null) {
            objectAnimatorOfFloat.addUpdateListener(animatorUpdateListener);
        }
        objectAnimatorOfFloat.setInterpolator(new L.a(1));
        objectAnimatorOfFloat.setDuration(B0.a.c(iVar.f2043c, backEventCompat.getProgress(), iVar.f2044d));
        objectAnimatorOfFloat.addListener(new S0.h(iVar, z2, i4));
        objectAnimatorOfFloat.addListener(aVar);
        objectAnimatorOfFloat.start();
    }

    @Override // S0.b
    public final void b(BackEventCompat backEventCompat) {
        S0.i iVar = this.f3504t;
        if (iVar == null) {
            return;
        }
        iVar.f = backEventCompat;
    }

    @Override // S0.b
    public final void c(BackEventCompat backEventCompat) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        S0.i iVar = this.f3504t;
        if (iVar == null) {
            return;
        }
        d dVar = this.f3488a;
        int i3 = (dVar == null || dVar.H() == 0) ? 5 : 3;
        if (iVar.f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() before updateBackProgress()");
        }
        BackEventCompat backEventCompat2 = iVar.f;
        iVar.f = backEventCompat;
        if (backEventCompat2 != null) {
            iVar.a(backEventCompat.getProgress(), backEventCompat.getSwipeEdge() == 0, i3);
        }
        WeakReference weakReference = this.f3500p;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = (View) this.f3500p.get();
        WeakReference weakReference2 = this.f3501q;
        View view2 = weakReference2 != null ? (View) weakReference2.get() : null;
        if (view2 == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) == null) {
            return;
        }
        this.f3488a.b0(marginLayoutParams, (int) ((view.getScaleX() * this.f3496l) + this.f3499o));
        view2.requestLayout();
    }

    @Override // S0.b
    public final void d() {
        S0.i iVar = this.f3504t;
        if (iVar == null) {
            return;
        }
        View view = iVar.b;
        if (iVar.f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()");
        }
        BackEventCompat backEventCompat = iVar.f;
        iVar.f = null;
        if (backEventCompat == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, 1.0f));
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i3), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setDuration(iVar.f2045e);
        animatorSet.start();
    }

    @Override // z.a
    public final void g(z.d dVar) {
        this.f3500p = null;
        this.f3493i = null;
        this.f3504t = null;
    }

    @Override // z.a
    public final void i() {
        this.f3500p = null;
        this.f3493i = null;
        this.f3504t = null;
    }

    @Override // z.a
    public final boolean j(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        e eVar;
        VelocityTracker velocityTracker;
        if ((!view.isShown() && ViewCompat.getAccessibilityPaneTitle(view) == null) || !this.g) {
            this.f3494j = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 && (velocityTracker = this.f3503s) != null) {
            velocityTracker.recycle();
            this.f3503s = null;
        }
        if (this.f3503s == null) {
            this.f3503s = VelocityTracker.obtain();
        }
        this.f3503s.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.f3505u = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.f3494j) {
            this.f3494j = false;
            return false;
        }
        return (this.f3494j || (eVar = this.f3493i) == null || !eVar.p(motionEvent)) ? false : true;
    }

    @Override // z.a
    public final boolean k(CoordinatorLayout coordinatorLayout, View view, int i3) {
        View view2;
        View view3;
        int i4;
        View viewFindViewById;
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
            view.setFitsSystemWindows(true);
        }
        int iE = 0;
        if (this.f3500p == null) {
            this.f3500p = new WeakReference(view);
            this.f3504t = new S0.i(view);
            h hVar = this.b;
            if (hVar != null) {
                ViewCompat.setBackground(view, hVar);
                float elevation = this.f;
                if (elevation == -1.0f) {
                    elevation = ViewCompat.getElevation(view);
                }
                this.b.k(elevation);
            } else {
                ColorStateList colorStateList = this.f3489c;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(view, colorStateList);
                }
            }
            int i5 = this.f3492h == 5 ? 4 : 0;
            if (view.getVisibility() != i5) {
                view.setVisibility(i5);
            }
            z();
            if (ViewCompat.getImportantForAccessibility(view) == 0) {
                ViewCompat.setImportantForAccessibility(view, 1);
            }
            if (ViewCompat.getAccessibilityPaneTitle(view) == null) {
                ViewCompat.setAccessibilityPaneTitle(view, view.getResources().getString(R.string.side_sheet_accessibility_pane_title));
            }
        }
        int i6 = GravityCompat.getAbsoluteGravity(((z.d) view.getLayoutParams()).f6414c, i3) == 3 ? 1 : 0;
        d dVar = this.f3488a;
        if (dVar == null || dVar.H() != i6) {
            z.d dVar2 = null;
            m mVar = this.f3490d;
            if (i6 == 0) {
                this.f3488a = new Z0.a(this, 1);
                if (mVar != null) {
                    WeakReference weakReference = this.f3500p;
                    if (weakReference != null && (view3 = (View) weakReference.get()) != null && (view3.getLayoutParams() instanceof z.d)) {
                        dVar2 = (z.d) view3.getLayoutParams();
                    }
                    if (dVar2 == null || ((ViewGroup.MarginLayoutParams) dVar2).rightMargin <= 0) {
                        l lVarE = mVar.e();
                        lVarE.f = new Y0.a(0.0f);
                        lVarE.g = new Y0.a(0.0f);
                        m mVarA = lVarE.a();
                        h hVar2 = this.b;
                        if (hVar2 != null) {
                            hVar2.setShapeAppearanceModel(mVarA);
                        }
                    }
                }
            } else {
                if (i6 != 1) {
                    throw new IllegalArgumentException(E.b.j(i6, "Invalid sheet edge position value: ", ". Must be 0 or 1."));
                }
                this.f3488a = new Z0.a(this, 0);
                if (mVar != null) {
                    WeakReference weakReference2 = this.f3500p;
                    if (weakReference2 != null && (view2 = (View) weakReference2.get()) != null && (view2.getLayoutParams() instanceof z.d)) {
                        dVar2 = (z.d) view2.getLayoutParams();
                    }
                    if (dVar2 == null || ((ViewGroup.MarginLayoutParams) dVar2).leftMargin <= 0) {
                        l lVarE2 = mVar.e();
                        lVarE2.f2423e = new Y0.a(0.0f);
                        lVarE2.f2424h = new Y0.a(0.0f);
                        m mVarA2 = lVarE2.a();
                        h hVar3 = this.b;
                        if (hVar3 != null) {
                            hVar3.setShapeAppearanceModel(mVarA2);
                        }
                    }
                }
            }
        }
        if (this.f3493i == null) {
            this.f3493i = new e(coordinatorLayout.getContext(), coordinatorLayout, this.f3507w);
        }
        int iE2 = this.f3488a.E(view);
        coordinatorLayout.k(view, i3);
        this.f3497m = coordinatorLayout.getWidth();
        this.f3498n = this.f3488a.F(coordinatorLayout);
        this.f3496l = view.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        this.f3499o = marginLayoutParams != null ? this.f3488a.e(marginLayoutParams) : 0;
        int i7 = this.f3492h;
        if (i7 == 1 || i7 == 2) {
            iE = iE2 - this.f3488a.E(view);
        } else if (i7 != 3) {
            if (i7 != 5) {
                throw new IllegalStateException("Unexpected value: " + this.f3492h);
            }
            iE = this.f3488a.A();
        }
        ViewCompat.offsetLeftAndRight(view, iE);
        if (this.f3501q == null && (i4 = this.f3502r) != -1 && (viewFindViewById = coordinatorLayout.findViewById(i4)) != null) {
            this.f3501q = new WeakReference(viewFindViewById);
        }
        Iterator it = this.f3506v.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
        }
        return true;
    }

    @Override // z.a
    public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i3, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i4, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i5, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
        return true;
    }

    @Override // z.a
    public final void q(View view, Parcelable parcelable) {
        int i3 = ((Z0.d) parcelable).f2485d;
        if (i3 == 1 || i3 == 2) {
            i3 = 5;
        }
        this.f3492h = i3;
    }

    @Override // z.a
    public final Parcelable r(View view) {
        AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
        return new Z0.d(this);
    }

    @Override // z.a
    public final boolean u(View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f3492h == 1 && actionMasked == 0) {
            return true;
        }
        if (x()) {
            this.f3493i.j(motionEvent);
        }
        if (actionMasked == 0 && (velocityTracker = this.f3503s) != null) {
            velocityTracker.recycle();
            this.f3503s = null;
        }
        if (this.f3503s == null) {
            this.f3503s = VelocityTracker.obtain();
        }
        this.f3503s.addMovement(motionEvent);
        if (x() && actionMasked == 2 && !this.f3494j && x()) {
            float fAbs = Math.abs(this.f3505u - motionEvent.getX());
            e eVar = this.f3493i;
            if (fAbs > eVar.b) {
                eVar.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.f3494j;
    }

    public final void v(int i3) {
        if (i3 == 1 || i3 == 2) {
            throw new IllegalArgumentException(kotlin.collections.unsigned.a.i(new StringBuilder("STATE_"), i3 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        WeakReference weakReference = this.f3500p;
        if (weakReference == null || weakReference.get() == null) {
            w(i3);
            return;
        }
        View view = (View) this.f3500p.get();
        C c3 = new C(this, i3, 1);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(view)) {
            view.post(c3);
        } else {
            c3.run();
        }
    }

    public final void w(int i3) {
        View view;
        if (this.f3492h == i3) {
            return;
        }
        this.f3492h = i3;
        WeakReference weakReference = this.f3500p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i4 = this.f3492h == 5 ? 4 : 0;
        if (view.getVisibility() != i4) {
            view.setVisibility(i4);
        }
        Iterator it = this.f3506v.iterator();
        if (it.hasNext()) {
            throw E.b.g(it);
        }
        z();
    }

    public final boolean x() {
        if (this.f3493i != null) {
            return this.g || this.f3492h == 1;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
    
        if (r1.o(r0, r3.getTop()) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004b, code lost:
    
        if (r3 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004d, code lost:
    
        w(2);
        r2.f3491e.a(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void y(android.view.View r3, int r4, boolean r5) {
        /*
            r2 = this;
            r0 = 3
            if (r4 == r0) goto L19
            r0 = 5
            if (r4 != r0) goto Ld
            com.bumptech.glide.d r0 = r2.f3488a
            int r0 = r0.A()
            goto L1f
        Ld:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r5 = "Invalid state to get outer edge offset: "
            java.lang.String r4 = E.b.i(r4, r5)
            r3.<init>(r4)
            throw r3
        L19:
            com.bumptech.glide.d r0 = r2.f3488a
            int r0 = r0.y()
        L1f:
            D.e r1 = r2.f3493i
            if (r1 == 0) goto L57
            if (r5 == 0) goto L30
            int r3 = r3.getTop()
            boolean r3 = r1.o(r0, r3)
            if (r3 == 0) goto L57
            goto L4d
        L30:
            int r5 = r3.getTop()
            r1.f753r = r3
            r3 = -1
            r1.f740c = r3
            r3 = 0
            boolean r3 = r1.h(r0, r5, r3, r3)
            if (r3 != 0) goto L4b
            int r5 = r1.f739a
            if (r5 != 0) goto L4b
            android.view.View r5 = r1.f753r
            if (r5 == 0) goto L4b
            r5 = 0
            r1.f753r = r5
        L4b:
            if (r3 == 0) goto L57
        L4d:
            r3 = 2
            r2.w(r3)
            H0.i r3 = r2.f3491e
            r3.a(r4)
            return
        L57:
            r2.w(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.sidesheet.SideSheetBehavior.y(android.view.View, int, boolean):void");
    }

    public final void z() {
        View view;
        WeakReference weakReference = this.f3500p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(view, 262144);
        ViewCompat.removeAccessibilityAction(view, 1048576);
        final int i3 = 5;
        if (this.f3492h != 5) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new AccessibilityViewCommand() { // from class: Z0.b
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean perform(View view2, AccessibilityViewCommand.CommandArguments commandArguments) {
                    this.f2481a.v(i3);
                    return true;
                }
            });
        }
        final int i4 = 3;
        if (this.f3492h != 3) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, null, new AccessibilityViewCommand() { // from class: Z0.b
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean perform(View view2, AccessibilityViewCommand.CommandArguments commandArguments) {
                    this.f2481a.v(i4);
                    return true;
                }
            });
        }
    }

    public SideSheetBehavior(Context context, AttributeSet attributeSet) {
        this.f3491e = new i(this);
        this.g = true;
        this.f3492h = 5;
        this.f3495k = 0.1f;
        this.f3502r = -1;
        this.f3506v = new LinkedHashSet();
        this.f3507w = new H0.e(this, 1);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, A0.a.f9F);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.f3489c = d.r(context, typedArrayObtainStyledAttributes, 3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            this.f3490d = m.b(context, attributeSet, 0, R.style.Widget_Material3_SideSheet).a();
        }
        if (typedArrayObtainStyledAttributes.hasValue(5)) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(5, -1);
            this.f3502r = resourceId;
            WeakReference weakReference = this.f3501q;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.f3501q = null;
            WeakReference weakReference2 = this.f3500p;
            if (weakReference2 != null) {
                View view = (View) weakReference2.get();
                if (resourceId != -1 && ViewCompat.isLaidOut(view)) {
                    view.requestLayout();
                }
            }
        }
        m mVar = this.f3490d;
        if (mVar != null) {
            h hVar = new h(mVar);
            this.b = hVar;
            hVar.j(context);
            ColorStateList colorStateList = this.f3489c;
            if (colorStateList != null) {
                this.b.l(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.b.setTint(typedValue.data);
            }
        }
        this.f = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
        this.g = typedArrayObtainStyledAttributes.getBoolean(4, true);
        typedArrayObtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
