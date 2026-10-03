package com.google.android.material.tabs;

import R0.p;
import R0.t;
import V.a;
import Y0.e;
import Y0.h;
import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.IntCompanionObject;
import p007c1.b;
import p007c1.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class TabLayout extends HorizontalScrollView {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final Pools.SynchronizedPool f3516Q = new Pools.SynchronizedPool(16);

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final int f3517A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public int f3518B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public int f3519C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public boolean f3520D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f3521E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public int f3522F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f3523G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f3524H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public e f3525I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final TimeInterpolator f3526J;
    public b K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final ArrayList f3527L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public ValueAnimator f3528M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public a f3529N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f3530O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final Pools.SimplePool f3531P;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f3532c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public f f3533d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p007c1.e f3534e;
    public final int f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3535h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3536i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3537j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3538k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f3539l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ColorStateList f3540m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ColorStateList f3541n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ColorStateList f3542o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Drawable f3543p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3544q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final float f3545r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final float f3546s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f3547t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f3548u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f3549v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f3550w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f3551x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f3552y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f3553z;

    public TabLayout(Context context, AttributeSet attributeSet) {
        super(p015f1.a.a(context, attributeSet, R.attr.tabStyle, R.style.Widget_Design_TabLayout), attributeSet, R.attr.tabStyle);
        this.b = -1;
        this.f3532c = new ArrayList();
        this.f3539l = -1;
        this.f3544q = 0;
        this.f3548u = IntCompanionObject.MAX_VALUE;
        this.f3522F = -1;
        this.f3527L = new ArrayList();
        this.f3531P = new Pools.SimplePool(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        p007c1.e eVar = new p007c1.e(this, context2);
        this.f3534e = eVar;
        super.addView(eVar, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray typedArrayE = p.e(context2, attributeSet, A0.a.f13J, R.attr.tabStyle, R.style.Widget_Design_TabLayout, 24);
        ColorStateList colorStateListT = d.t(getBackground());
        if (colorStateListT != null) {
            h hVar = new h();
            hVar.l(colorStateListT);
            hVar.j(context2);
            hVar.k(ViewCompat.getElevation(this));
            ViewCompat.setBackground(this, hVar);
        }
        setSelectedTabIndicator(d.w(context2, typedArrayE, 5));
        setSelectedTabIndicatorColor(typedArrayE.getColor(8, 0));
        eVar.b(typedArrayE.getDimensionPixelSize(11, -1));
        setSelectedTabIndicatorGravity(typedArrayE.getInt(10, 0));
        setTabIndicatorAnimationMode(typedArrayE.getInt(7, 0));
        setTabIndicatorFullWidth(typedArrayE.getBoolean(9, true));
        int dimensionPixelSize = typedArrayE.getDimensionPixelSize(16, 0);
        this.f3536i = dimensionPixelSize;
        this.f3535h = dimensionPixelSize;
        this.g = dimensionPixelSize;
        this.f = dimensionPixelSize;
        this.f = typedArrayE.getDimensionPixelSize(19, dimensionPixelSize);
        this.g = typedArrayE.getDimensionPixelSize(20, dimensionPixelSize);
        this.f3535h = typedArrayE.getDimensionPixelSize(18, dimensionPixelSize);
        this.f3536i = typedArrayE.getDimensionPixelSize(17, dimensionPixelSize);
        if (c.J(context2, R.attr.isMaterial3Theme, false)) {
            this.f3537j = R.attr.textAppearanceTitleSmall;
        } else {
            this.f3537j = R.attr.textAppearanceButton;
        }
        int resourceId = typedArrayE.getResourceId(24, R.style.TextAppearance_Design_Tab);
        this.f3538k = resourceId;
        int[] iArr = p008d.a.f3860w;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId, iArr);
        try {
            float dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            this.f3545r = dimensionPixelSize2;
            this.f3540m = d.r(context2, typedArrayObtainStyledAttributes, 3);
            typedArrayObtainStyledAttributes.recycle();
            if (typedArrayE.hasValue(22)) {
                this.f3539l = typedArrayE.getResourceId(22, resourceId);
            }
            int i3 = this.f3539l;
            int[] iArr2 = HorizontalScrollView.EMPTY_STATE_SET;
            int[] iArr3 = HorizontalScrollView.SELECTED_STATE_SET;
            if (i3 != -1) {
                TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(i3, iArr);
                try {
                    typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, (int) dimensionPixelSize2);
                    ColorStateList colorStateListR = d.r(context2, typedArrayObtainStyledAttributes2, 3);
                    if (colorStateListR != null) {
                        this.f3540m = new ColorStateList(new int[][]{iArr3, iArr2}, new int[]{colorStateListR.getColorForState(new int[]{android.R.attr.state_selected}, colorStateListR.getDefaultColor()), this.f3540m.getDefaultColor()});
                    }
                    typedArrayObtainStyledAttributes2.recycle();
                } catch (Throwable th) {
                    typedArrayObtainStyledAttributes2.recycle();
                    throw th;
                }
            }
            if (typedArrayE.hasValue(25)) {
                this.f3540m = d.r(context2, typedArrayE, 25);
            }
            if (typedArrayE.hasValue(23)) {
                this.f3540m = new ColorStateList(new int[][]{iArr3, iArr2}, new int[]{typedArrayE.getColor(23, 0), this.f3540m.getDefaultColor()});
            }
            this.f3541n = d.r(context2, typedArrayE, 3);
            t.e(typedArrayE.getInt(4, -1), null);
            this.f3542o = d.r(context2, typedArrayE, 21);
            this.f3517A = typedArrayE.getInt(6, 300);
            this.f3526J = c.O(context2, R.attr.motionEasingEmphasizedInterpolator, B0.a.b);
            this.f3549v = typedArrayE.getDimensionPixelSize(14, -1);
            this.f3550w = typedArrayE.getDimensionPixelSize(13, -1);
            this.f3547t = typedArrayE.getResourceId(0, 0);
            this.f3552y = typedArrayE.getDimensionPixelSize(1, 0);
            this.f3519C = typedArrayE.getInt(15, 1);
            this.f3553z = typedArrayE.getInt(2, 0);
            this.f3520D = typedArrayE.getBoolean(12, false);
            this.f3524H = typedArrayE.getBoolean(26, false);
            typedArrayE.recycle();
            Resources resources = getResources();
            this.f3546s = resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
            this.f3551x = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
            e();
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes.recycle();
            throw th2;
        }
    }

    private int getDefaultHeight() {
        ArrayList arrayList = this.f3532c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
        }
        return 48;
    }

    private int getTabMinWidth() {
        int i3 = this.f3549v;
        if (i3 != -1) {
            return i3;
        }
        int i4 = this.f3519C;
        if (i4 == 0 || i4 == 2) {
            return this.f3551x;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f3534e.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i3) {
        p007c1.e eVar = this.f3534e;
        int childCount = eVar.getChildCount();
        if (i3 < childCount) {
            int i4 = 0;
            while (i4 < childCount) {
                View childAt = eVar.getChildAt(i4);
                if ((i4 != i3 || childAt.isSelected()) && (i4 == i3 || !childAt.isSelected())) {
                    childAt.setSelected(i4 == i3);
                    childAt.setActivated(i4 == i3);
                } else {
                    childAt.setSelected(i4 == i3);
                    childAt.setActivated(i4 == i3);
                    if (childAt instanceof p007c1.h) {
                        ((p007c1.h) childAt).f();
                    }
                }
                i4++;
            }
        }
    }

    public final void a(b bVar) {
        ArrayList arrayList = this.f3527L;
        if (arrayList.contains(bVar)) {
            return;
        }
        arrayList.add(bVar);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    public final void b(f fVar) {
        c(fVar, this.f3532c.isEmpty());
    }

    public final void c(f fVar, boolean z2) {
        ArrayList arrayList = this.f3532c;
        int size = arrayList.size();
        if (fVar.f3151d != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        fVar.b = size;
        arrayList.add(size, fVar);
        int size2 = arrayList.size();
        int i3 = -1;
        for (int i4 = size + 1; i4 < size2; i4++) {
            if (((f) arrayList.get(i4)).b == this.b) {
                i3 = i4;
            }
            ((f) arrayList.get(i4)).b = i4;
        }
        this.b = i3;
        p007c1.h hVar = fVar.f3152e;
        hVar.setSelected(false);
        hVar.setActivated(false);
        int i5 = fVar.b;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        if (this.f3519C == 1 && this.f3553z == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
        this.f3534e.addView(hVar, i5, layoutParams);
        if (z2) {
            TabLayout tabLayout = fVar.f3151d;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.j(fVar, true);
        }
    }

    public final void d(int i3) {
        if (i3 == -1) {
            return;
        }
        if (getWindowToken() != null && ViewCompat.isLaidOut(this)) {
            p007c1.e eVar = this.f3534e;
            int childCount = eVar.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                if (eVar.getChildAt(i4).getWidth() > 0) {
                }
            }
            int scrollX = getScrollX();
            int iF = f(i3, 0.0f);
            if (scrollX != iF) {
                g();
                this.f3528M.setIntValues(scrollX, iF);
                this.f3528M.start();
            }
            ValueAnimator valueAnimator = eVar.b;
            if (valueAnimator != null && valueAnimator.isRunning() && eVar.f3148c.b != i3) {
                eVar.b.cancel();
            }
            eVar.d(i3, this.f3517A, true);
            return;
        }
        l(i3, 0.0f, true, true, true);
    }

    public final void e() {
        int i3 = this.f3519C;
        int iMax = (i3 == 0 || i3 == 2) ? Math.max(0, this.f3552y - this.f) : 0;
        p007c1.e eVar = this.f3534e;
        ViewCompat.setPaddingRelative(eVar, iMax, 0, 0, 0);
        int i4 = this.f3519C;
        if (i4 == 0) {
            int i5 = this.f3553z;
            if (i5 == 0) {
                Log.w("TabLayout", "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
            } else if (i5 == 1) {
                eVar.setGravity(1);
            } else if (i5 == 2) {
            }
            eVar.setGravity(GravityCompat.START);
        } else if (i4 == 1 || i4 == 2) {
            if (this.f3553z == 2) {
                Log.w("TabLayout", "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            eVar.setGravity(1);
        }
        m(true);
    }

    public final int f(int i3, float f) {
        p007c1.e eVar;
        View childAt;
        int i4 = this.f3519C;
        if ((i4 != 0 && i4 != 2) || (childAt = (eVar = this.f3534e).getChildAt(i3)) == null) {
            return 0;
        }
        int i5 = i3 + 1;
        View childAt2 = i5 < eVar.getChildCount() ? eVar.getChildAt(i5) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i6 = (int) ((width + width2) * 0.5f * f);
        return ViewCompat.getLayoutDirection(this) == 0 ? left + i6 : left - i6;
    }

    public final void g() {
        if (this.f3528M == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f3528M = valueAnimator;
            valueAnimator.setInterpolator(this.f3526J);
            this.f3528M.setDuration(this.f3517A);
            this.f3528M.addUpdateListener(new H0.c(5, this));
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public int getSelectedTabPosition() {
        f fVar = this.f3533d;
        if (fVar != null) {
            return fVar.b;
        }
        return -1;
    }

    public int getTabCount() {
        return this.f3532c.size();
    }

    public int getTabGravity() {
        return this.f3553z;
    }

    public ColorStateList getTabIconTint() {
        return this.f3541n;
    }

    public int getTabIndicatorAnimationMode() {
        return this.f3523G;
    }

    public int getTabIndicatorGravity() {
        return this.f3518B;
    }

    public int getTabMaxWidth() {
        return this.f3548u;
    }

    public int getTabMode() {
        return this.f3519C;
    }

    public ColorStateList getTabRippleColor() {
        return this.f3542o;
    }

    public Drawable getTabSelectedIndicator() {
        return this.f3543p;
    }

    public ColorStateList getTabTextColors() {
        return this.f3540m;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final f h() {
        f fVar = (f) f3516Q.acquire();
        if (fVar == null) {
            fVar = new f();
            fVar.b = -1;
        }
        fVar.f3151d = this;
        Pools.SimplePool simplePool = this.f3531P;
        p007c1.h hVar = simplePool != null ? (p007c1.h) simplePool.acquire() : null;
        if (hVar == null) {
            hVar = new p007c1.h(this, getContext());
        }
        hVar.setTab(fVar);
        hVar.setFocusable(true);
        hVar.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(null)) {
            hVar.setContentDescription(fVar.f3149a);
        } else {
            hVar.setContentDescription(null);
        }
        fVar.f3152e = hVar;
        return fVar;
    }

    public final void i() {
        p007c1.e eVar = this.f3534e;
        int childCount = eVar.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            }
            p007c1.h hVar = (p007c1.h) eVar.getChildAt(childCount);
            eVar.removeViewAt(childCount);
            if (hVar != null) {
                hVar.setTab(null);
                hVar.setSelected(false);
                this.f3531P.release(hVar);
            }
            requestLayout();
        }
        Iterator it = this.f3532c.iterator();
        while (it.hasNext()) {
            f fVar = (f) it.next();
            it.remove();
            fVar.f3151d = null;
            fVar.f3152e = null;
            fVar.f3149a = null;
            fVar.b = -1;
            fVar.f3150c = null;
            f3516Q.release(fVar);
        }
        this.f3533d = null;
    }

    public final void j(f fVar, boolean z2) {
        TabLayout tabLayout;
        f fVar2 = this.f3533d;
        ArrayList arrayList = this.f3527L;
        if (fVar2 == fVar) {
            if (fVar2 != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((b) arrayList.get(size)).a(fVar);
                }
                d(fVar.b);
                return;
            }
            return;
        }
        int i3 = fVar != null ? fVar.b : -1;
        if (z2) {
            if ((fVar2 == null || fVar2.b == -1) && i3 != -1) {
                tabLayout = this;
                tabLayout.l(i3, 0.0f, true, true, true);
            } else {
                tabLayout = this;
                d(i3);
            }
            if (i3 != -1) {
                setSelectedTabView(i3);
            }
        } else {
            tabLayout = this;
        }
        tabLayout.f3533d = fVar;
        if (fVar2 != null && fVar2.f3151d != null) {
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                ((b) arrayList.get(size2)).c(fVar2);
            }
        }
        if (fVar != null) {
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                ((b) arrayList.get(size3)).b(fVar);
            }
        }
    }

    public final void k(a aVar) {
        this.f3529N = aVar;
        i();
        a aVar2 = this.f3529N;
        if (aVar2 != null) {
            int count = aVar2.getCount();
            for (int i3 = 0; i3 < count; i3++) {
                f fVarH = h();
                fVarH.b(this.f3529N.getPageTitle(i3));
                c(fVarH, false);
            }
        }
    }

    public final void l(int i3, float f, boolean z2, boolean z3, boolean z4) {
        float f3 = i3 + f;
        int iRound = Math.round(f3);
        if (iRound >= 0) {
            p007c1.e eVar = this.f3534e;
            if (iRound >= eVar.getChildCount()) {
                return;
            }
            if (z3) {
                eVar.f3148c.b = Math.round(f3);
                ValueAnimator valueAnimator = eVar.b;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    eVar.b.cancel();
                }
                eVar.c(eVar.getChildAt(i3), eVar.getChildAt(i3 + 1), f);
            }
            ValueAnimator valueAnimator2 = this.f3528M;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f3528M.cancel();
            }
            int iF = f(i3, f);
            int scrollX = getScrollX();
            boolean z5 = (i3 < getSelectedTabPosition() && iF >= scrollX) || (i3 > getSelectedTabPosition() && iF <= scrollX) || i3 == getSelectedTabPosition();
            if (ViewCompat.getLayoutDirection(this) == 1) {
                z5 = (i3 < getSelectedTabPosition() && iF <= scrollX) || (i3 > getSelectedTabPosition() && iF >= scrollX) || i3 == getSelectedTabPosition();
            }
            if (z5 || this.f3530O == 1 || z4) {
                if (i3 < 0) {
                    iF = 0;
                }
                scrollTo(iF, 0);
            }
            if (z2) {
                setSelectedTabView(iRound);
            }
        }
    }

    public final void m(boolean z2) {
        int i3 = 0;
        while (true) {
            p007c1.e eVar = this.f3534e;
            if (i3 >= eVar.getChildCount()) {
                return;
            }
            View childAt = eVar.getChildAt(i3);
            childAt.setMinimumWidth(getTabMinWidth());
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (this.f3519C == 1 && this.f3553z == 0) {
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            } else {
                layoutParams.width = -2;
                layoutParams.weight = 0.0f;
            }
            if (z2) {
                childAt.requestLayout();
            }
            i3++;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof h) {
            c.T(this, (h) background);
        }
        getParent();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        p007c1.h hVar;
        Drawable drawable;
        int i3 = 0;
        while (true) {
            p007c1.e eVar = this.f3534e;
            if (i3 >= eVar.getChildCount()) {
                super.onDraw(canvas);
                return;
            }
            View childAt = eVar.getChildAt(i3);
            if ((childAt instanceof p007c1.h) && (drawable = (hVar = (p007c1.h) childAt).f3160j) != null) {
                drawable.setBounds(hVar.getLeft(), hVar.getTop(), hVar.getRight(), hVar.getBottom());
                hVar.f3160j.draw(canvas);
            }
            i3++;
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getTabCount(), false, 1));
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return (getTabMode() == 0 || getTabMode() == 2) && super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        int iRound = Math.round(t.b(getContext(), getDefaultHeight()));
        int mode = View.MeasureSpec.getMode(i4);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i4 = View.MeasureSpec.makeMeasureSpec(getPaddingBottom() + getPaddingTop() + iRound, 1073741824);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i4) >= iRound) {
            getChildAt(0).setMinimumHeight(iRound);
        }
        int size = View.MeasureSpec.getSize(i3);
        if (View.MeasureSpec.getMode(i3) != 0) {
            int iB = this.f3550w;
            if (iB <= 0) {
                iB = (int) (size - t.b(getContext(), 56));
            }
            this.f3548u = iB;
        }
        super.onMeasure(i3, i4);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i5 = this.f3519C;
            if (i5 == 0) {
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (i5 != 1) {
                if (i5 != 2) {
                    return;
                }
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i4, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 8 || getTabMode() == 0 || getTabMode() == 2) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        Drawable background = getBackground();
        if (background instanceof h) {
            ((h) background).k(f);
        }
    }

    public void setInlineLabel(boolean z2) {
        if (this.f3520D == z2) {
            return;
        }
        this.f3520D = z2;
        int i3 = 0;
        while (true) {
            p007c1.e eVar = this.f3534e;
            if (i3 >= eVar.getChildCount()) {
                e();
                return;
            }
            View childAt = eVar.getChildAt(i3);
            if (childAt instanceof p007c1.h) {
                p007c1.h hVar = (p007c1.h) childAt;
                hVar.setOrientation(!hVar.f3162l.f3520D ? 1 : 0);
                TextView textView = hVar.f3158h;
                if (textView == null && hVar.f3159i == null) {
                    hVar.g(hVar.f3155c, hVar.f3156d, true);
                } else {
                    hVar.g(textView, hVar.f3159i, false);
                }
            }
            i3++;
        }
    }

    public void setInlineLabelResource(int i3) {
        setInlineLabel(getResources().getBoolean(i3));
    }

    @Deprecated
    public void setOnTabSelectedListener(p007c1.c cVar) {
        setOnTabSelectedListener((b) cVar);
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        g();
        this.f3528M.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (drawable == null) {
            drawable = new GradientDrawable();
        }
        Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
        this.f3543p = drawableMutate;
        int i3 = this.f3544q;
        if (i3 != 0) {
            DrawableCompat.setTint(drawableMutate, i3);
        } else {
            DrawableCompat.setTintList(drawableMutate, null);
        }
        int intrinsicHeight = this.f3522F;
        if (intrinsicHeight == -1) {
            intrinsicHeight = this.f3543p.getIntrinsicHeight();
        }
        this.f3534e.b(intrinsicHeight);
    }

    public void setSelectedTabIndicatorColor(int i3) {
        this.f3544q = i3;
        Drawable drawable = this.f3543p;
        if (i3 != 0) {
            DrawableCompat.setTint(drawable, i3);
        } else {
            DrawableCompat.setTintList(drawable, null);
        }
        m(false);
    }

    public void setSelectedTabIndicatorGravity(int i3) {
        if (this.f3518B != i3) {
            this.f3518B = i3;
            ViewCompat.postInvalidateOnAnimation(this.f3534e);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i3) {
        this.f3522F = i3;
        this.f3534e.b(i3);
    }

    public void setTabGravity(int i3) {
        if (this.f3553z != i3) {
            this.f3553z = i3;
            e();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.f3541n != colorStateList) {
            this.f3541n = colorStateList;
            ArrayList arrayList = this.f3532c;
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                p007c1.h hVar = ((f) arrayList.get(i3)).f3152e;
                if (hVar != null) {
                    hVar.d();
                }
            }
        }
    }

    public void setTabIconTintResource(int i3) {
        setTabIconTint(ContextCompat.getColorStateList(getContext(), i3));
    }

    public void setTabIndicatorAnimationMode(int i3) {
        this.f3523G = i3;
        if (i3 == 0) {
            this.f3525I = new e(21);
            return;
        }
        if (i3 == 1) {
            this.f3525I = new p007c1.a(0);
        } else {
            if (i3 == 2) {
                this.f3525I = new p007c1.a(1);
                return;
            }
            throw new IllegalArgumentException(i3 + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z2) {
        this.f3521E = z2;
        int i3 = p007c1.e.f3147d;
        p007c1.e eVar = this.f3534e;
        eVar.a(eVar.f3148c.getSelectedTabPosition());
        ViewCompat.postInvalidateOnAnimation(eVar);
    }

    public void setTabMode(int i3) {
        if (i3 != this.f3519C) {
            this.f3519C = i3;
            e();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.f3542o == colorStateList) {
            return;
        }
        this.f3542o = colorStateList;
        int i3 = 0;
        while (true) {
            p007c1.e eVar = this.f3534e;
            if (i3 >= eVar.getChildCount()) {
                return;
            }
            View childAt = eVar.getChildAt(i3);
            if (childAt instanceof p007c1.h) {
                Context context = getContext();
                int i4 = p007c1.h.f3154m;
                ((p007c1.h) childAt).e(context);
            }
            i3++;
        }
    }

    public void setTabRippleColorResource(int i3) {
        setTabRippleColor(ContextCompat.getColorStateList(getContext(), i3));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.f3540m != colorStateList) {
            this.f3540m = colorStateList;
            ArrayList arrayList = this.f3532c;
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                p007c1.h hVar = ((f) arrayList.get(i3)).f3152e;
                if (hVar != null) {
                    hVar.d();
                }
            }
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(a aVar) {
        k(aVar);
    }

    public void setUnboundedRipple(boolean z2) {
        if (this.f3524H == z2) {
            return;
        }
        this.f3524H = z2;
        int i3 = 0;
        while (true) {
            p007c1.e eVar = this.f3534e;
            if (i3 >= eVar.getChildCount()) {
                return;
            }
            View childAt = eVar.getChildAt(i3);
            if (childAt instanceof p007c1.h) {
                Context context = getContext();
                int i4 = p007c1.h.f3154m;
                ((p007c1.h) childAt).e(context);
            }
            i3++;
        }
    }

    public void setUnboundedRippleResource(int i3) {
        setUnboundedRipple(getResources().getBoolean(i3));
    }

    public void setupWithViewPager(V.b bVar) {
        k(null);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i3) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Deprecated
    public void setOnTabSelectedListener(b bVar) {
        b bVar2 = this.K;
        if (bVar2 != null) {
            this.f3527L.remove(bVar2);
        }
        this.K = bVar;
        if (bVar != null) {
            a(bVar);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i3, ViewGroup.LayoutParams layoutParams) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    public void setSelectedTabIndicator(int i3) {
        if (i3 != 0) {
            setSelectedTabIndicator(d.v(getContext(), i3));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}
