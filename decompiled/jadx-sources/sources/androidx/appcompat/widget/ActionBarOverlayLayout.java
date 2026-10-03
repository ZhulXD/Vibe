package androidx.appcompat.widget;

import E0.a;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.core.graphics.Insets;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.bumptech.glide.d;
import com.minhub.gamehub.R;
import k.C0286e;
import k.C0288f;
import k.C0300l;
import k.InterfaceC0284d;
import k.InterfaceC0301l0;
import k.InterfaceC0303m0;
import k.RunnableC0282c;
import k.d1;
import k.i1;
import kotlin.jvm.internal.IntCompanionObject;
import p011e.M;
import p021i.j;
import p024j.B;
import p024j.p;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"UnknownNullness"})
public class ActionBarOverlayLayout extends ViewGroup implements InterfaceC0301l0, NestedScrollingParent, NestedScrollingParent2, NestedScrollingParent3 {

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final int[] f2666D = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public static final WindowInsetsCompat f2667E = new WindowInsetsCompat.Builder().setSystemWindowInsets(Insets.of(0, 1, 0, 1)).build();

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public static final Rect f2668F = new Rect();

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final RunnableC0282c f2669A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final NestedScrollingParentHelper f2670B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final C0288f f2671C;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2672c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ContentFrameLayout f2673d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ActionBarContainer f2674e;
    public InterfaceC0303m0 f;
    public Drawable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2675h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2676i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2677j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2678k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2679l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2680m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Rect f2681n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Rect f2682o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Rect f2683p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Rect f2684q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public WindowInsetsCompat f2685r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public WindowInsetsCompat f2686s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public WindowInsetsCompat f2687t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public WindowInsetsCompat f2688u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public InterfaceC0284d f2689v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public OverScroller f2690w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ViewPropertyAnimator f2691x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final a f2692y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final RunnableC0282c f2693z;

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2672c = 0;
        this.f2681n = new Rect();
        this.f2682o = new Rect();
        this.f2683p = new Rect();
        this.f2684q = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.CONSUMED;
        this.f2685r = windowInsetsCompat;
        this.f2686s = windowInsetsCompat;
        this.f2687t = windowInsetsCompat;
        this.f2688u = windowInsetsCompat;
        this.f2692y = new a(8, this);
        this.f2693z = new RunnableC0282c(this, 0);
        this.f2669A = new RunnableC0282c(this, 1);
        c(context);
        this.f2670B = new NestedScrollingParentHelper(this);
        C0288f c0288f = new C0288f(context);
        c0288f.setWillNotDraw(true);
        this.f2671C = c0288f;
        addView(c0288f);
    }

    public static boolean a(View view, Rect rect, boolean z2) {
        boolean z3;
        C0286e c0286e = (C0286e) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0286e).leftMargin;
        int i4 = rect.left;
        if (i3 != i4) {
            ((ViewGroup.MarginLayoutParams) c0286e).leftMargin = i4;
            z3 = true;
        } else {
            z3 = false;
        }
        int i5 = ((ViewGroup.MarginLayoutParams) c0286e).topMargin;
        int i6 = rect.top;
        if (i5 != i6) {
            ((ViewGroup.MarginLayoutParams) c0286e).topMargin = i6;
            z3 = true;
        }
        int i7 = ((ViewGroup.MarginLayoutParams) c0286e).rightMargin;
        int i8 = rect.right;
        if (i7 != i8) {
            ((ViewGroup.MarginLayoutParams) c0286e).rightMargin = i8;
            z3 = true;
        }
        if (z2) {
            int i9 = ((ViewGroup.MarginLayoutParams) c0286e).bottomMargin;
            int i10 = rect.bottom;
            if (i9 != i10) {
                ((ViewGroup.MarginLayoutParams) c0286e).bottomMargin = i10;
                return true;
            }
        }
        return z3;
    }

    public final void b() {
        removeCallbacks(this.f2693z);
        removeCallbacks(this.f2669A);
        ViewPropertyAnimator viewPropertyAnimator = this.f2691x;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void c(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f2666D);
        this.b = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.g = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f2690w = new OverScroller(context);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0286e;
    }

    public final void d(int i3) {
        e();
        if (i3 == 2) {
            ((i1) this.f).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else if (i3 == 5) {
            ((i1) this.f).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else {
            if (i3 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int translationY;
        super.draw(canvas);
        if (this.g != null) {
            if (this.f2674e.getVisibility() == 0) {
                translationY = (int) (this.f2674e.getTranslationY() + this.f2674e.getBottom() + 0.5f);
            } else {
                translationY = 0;
            }
            this.g.setBounds(0, translationY, getWidth(), this.g.getIntrinsicHeight() + translationY);
            this.g.draw(canvas);
        }
    }

    public final void e() {
        InterfaceC0303m0 wrapper;
        if (this.f2673d == null) {
            this.f2673d = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f2674e = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback callbackFindViewById = findViewById(R.id.action_bar);
            if (callbackFindViewById instanceof InterfaceC0303m0) {
                wrapper = (InterfaceC0303m0) callbackFindViewById;
            } else {
                if (!(callbackFindViewById instanceof Toolbar)) {
                    throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById.getClass().getSimpleName()));
                }
                wrapper = ((Toolbar) callbackFindViewById).getWrapper();
            }
            this.f = wrapper;
        }
    }

    public final void f(Menu menu, B b) {
        e();
        i1 i1Var = (i1) this.f;
        Toolbar toolbar = i1Var.f4839a;
        if (i1Var.f4848m == null) {
            C0300l c0300l = new C0300l(toolbar.getContext());
            i1Var.f4848m = c0300l;
            c0300l.f4511j = R.id.action_menu_presenter;
        }
        C0300l c0300l2 = i1Var.f4848m;
        c0300l2.f = b;
        p pVar = (p) menu;
        if (pVar == null && toolbar.b == null) {
            return;
        }
        toolbar.f();
        p pVar2 = toolbar.b.f2695q;
        if (pVar2 == pVar) {
            return;
        }
        if (pVar2 != null) {
            pVar2.r(toolbar.f2723L);
            pVar2.r(toolbar.f2724M);
        }
        if (toolbar.f2724M == null) {
            toolbar.f2724M = new d1(toolbar);
        }
        c0300l2.f4863s = true;
        if (pVar != null) {
            pVar.b(c0300l2, toolbar.f2736k);
            pVar.b(toolbar.f2724M, toolbar.f2736k);
        } else {
            c0300l2.h(toolbar.f2736k, null);
            toolbar.f2724M.h(toolbar.f2736k, null);
            c0300l2.g(true);
            toolbar.f2724M.g(true);
        }
        toolbar.b.setPopupTheme(toolbar.f2737l);
        toolbar.b.setPresenter(c0300l2);
        toolbar.f2723L = c0300l2;
        toolbar.t();
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0286e(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0286e(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f2674e;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f2670B.getNestedScrollAxes();
    }

    public CharSequence getTitle() {
        e();
        return ((i1) this.f).f4839a.getTitle();
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        e();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, this);
        boolean zA = a(this.f2674e, new Rect(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom()), false);
        Rect rect = this.f2681n;
        ViewCompat.computeSystemWindowInsets(this, windowInsetsCompat, rect);
        WindowInsetsCompat windowInsetsCompatInset = windowInsetsCompat.inset(rect.left, rect.top, rect.right, rect.bottom);
        this.f2685r = windowInsetsCompatInset;
        boolean z2 = true;
        if (!this.f2686s.equals(windowInsetsCompatInset)) {
            this.f2686s = this.f2685r;
            zA = true;
        }
        Rect rect2 = this.f2682o;
        if (rect2.equals(rect)) {
            z2 = zA;
        } else {
            rect2.set(rect);
        }
        if (z2) {
            requestLayout();
        }
        return windowInsetsCompat.consumeDisplayCutout().consumeSystemWindowInsets().consumeStableInsets().toWindowInsets();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        c(getContext());
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                C0286e c0286e = (C0286e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i8 = ((ViewGroup.MarginLayoutParams) c0286e).leftMargin + paddingLeft;
                int i9 = ((ViewGroup.MarginLayoutParams) c0286e).topMargin + paddingTop;
                childAt.layout(i8, i9, measuredWidth + i8, measuredHeight + i9);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00a6  */
    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        int measuredHeight;
        e();
        measureChildWithMargins(this.f2674e, i3, 0, i4, 0);
        C0286e c0286e = (C0286e) this.f2674e.getLayoutParams();
        int iMax = Math.max(0, this.f2674e.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0286e).leftMargin + ((ViewGroup.MarginLayoutParams) c0286e).rightMargin);
        int iMax2 = Math.max(0, this.f2674e.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0286e).topMargin + ((ViewGroup.MarginLayoutParams) c0286e).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f2674e.getMeasuredState());
        boolean z2 = (ViewCompat.getWindowSystemUiVisibility(this) & 256) != 0;
        if (z2) {
            measuredHeight = this.b;
            if (this.f2676i && this.f2674e.getTabContainer() != null) {
                measuredHeight += this.b;
            }
        } else {
            measuredHeight = this.f2674e.getVisibility() != 8 ? this.f2674e.getMeasuredHeight() : 0;
        }
        Rect rect = this.f2681n;
        Rect rect2 = this.f2683p;
        rect2.set(rect);
        this.f2687t = this.f2685r;
        if (this.f2675h || z2) {
            this.f2687t = new WindowInsetsCompat.Builder(this.f2687t).setSystemWindowInsets(Insets.of(this.f2687t.getSystemWindowInsetLeft(), this.f2687t.getSystemWindowInsetTop() + measuredHeight, this.f2687t.getSystemWindowInsetRight(), this.f2687t.getSystemWindowInsetBottom())).build();
        } else {
            C0288f c0288f = this.f2671C;
            WindowInsetsCompat windowInsetsCompat = f2667E;
            Rect rect3 = this.f2684q;
            ViewCompat.computeSystemWindowInsets(c0288f, windowInsetsCompat, rect3);
            if (rect3.equals(f2668F)) {
                this.f2687t = new WindowInsetsCompat.Builder(this.f2687t).setSystemWindowInsets(Insets.of(this.f2687t.getSystemWindowInsetLeft(), this.f2687t.getSystemWindowInsetTop() + measuredHeight, this.f2687t.getSystemWindowInsetRight(), this.f2687t.getSystemWindowInsetBottom())).build();
            } else {
                rect2.top += measuredHeight;
                rect2.bottom = rect2.bottom;
                this.f2687t = this.f2687t.inset(0, measuredHeight, 0, 0);
            }
        }
        a(this.f2673d, rect2, true);
        if (!this.f2688u.equals(this.f2687t)) {
            WindowInsetsCompat windowInsetsCompat2 = this.f2687t;
            this.f2688u = windowInsetsCompat2;
            ViewCompat.dispatchApplyWindowInsets(this.f2673d, windowInsetsCompat2);
        }
        measureChildWithMargins(this.f2673d, i3, 0, i4, 0);
        C0286e c0286e2 = (C0286e) this.f2673d.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f2673d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0286e2).leftMargin + ((ViewGroup.MarginLayoutParams) c0286e2).rightMargin);
        int iMax4 = Math.max(iMax2, this.f2673d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0286e2).topMargin + ((ViewGroup.MarginLayoutParams) c0286e2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f2673d.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax3, getSuggestedMinimumWidth()), i3, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax4, getSuggestedMinimumHeight()), i4, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public final boolean onNestedFling(View view, float f, float f3, boolean z2) {
        if (!this.f2677j || !z2) {
            return false;
        }
        this.f2690w.fling(0, 0, 0, (int) f3, 0, 0, Integer.MIN_VALUE, IntCompanionObject.MAX_VALUE);
        if (this.f2690w.getFinalY() > this.f2674e.getHeight()) {
            b();
            this.f2669A.run();
        } else {
            b();
            this.f2693z.run();
        }
        this.f2678k = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public final boolean onNestedPreFling(View view, float f, float f3) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public final void onNestedPreScroll(View view, int i3, int i4, int[] iArr) {
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void onNestedScroll(View view, int i3, int i4, int i5, int i6, int i7, int[] iArr) {
        onNestedScroll(view, i3, i4, i5, i6, i7);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedScrollAccepted(View view, View view2, int i3, int i4) {
        if (i4 == 0) {
            onNestedScrollAccepted(view, view2, i3);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean onStartNestedScroll(View view, View view2, int i3, int i4) {
        return i4 == 0 && onStartNestedScroll(view, view2, i3);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onStopNestedScroll(View view, int i3) {
        if (i3 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i3) {
        super.onWindowSystemUiVisibilityChanged(i3);
        e();
        int i4 = this.f2680m ^ i3;
        this.f2680m = i3;
        boolean z2 = (i3 & 4) == 0;
        boolean z3 = (i3 & 256) != 0;
        InterfaceC0284d interfaceC0284d = this.f2689v;
        if (interfaceC0284d != null) {
            M m2 = (M) interfaceC0284d;
            m2.f4085p = !z3;
            if (z2 || !z3) {
                if (m2.f4086q) {
                    m2.f4086q = false;
                    m2.j0(true);
                }
            } else if (!m2.f4086q) {
                m2.f4086q = true;
                m2.j0(true);
            }
        }
        if ((i4 & 256) == 0 || this.f2689v == null) {
            return;
        }
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i3) {
        super.onWindowVisibilityChanged(i3);
        this.f2672c = i3;
        InterfaceC0284d interfaceC0284d = this.f2689v;
        if (interfaceC0284d != null) {
            ((M) interfaceC0284d).f4084o = i3;
        }
    }

    public void setActionBarHideOffset(int i3) {
        b();
        this.f2674e.setTranslationY(-Math.max(0, Math.min(i3, this.f2674e.getHeight())));
    }

    public void setActionBarVisibilityCallback(InterfaceC0284d interfaceC0284d) {
        this.f2689v = interfaceC0284d;
        if (getWindowToken() != null) {
            ((M) this.f2689v).f4084o = this.f2672c;
            int i3 = this.f2680m;
            if (i3 != 0) {
                onWindowSystemUiVisibilityChanged(i3);
                ViewCompat.requestApplyInsets(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z2) {
        this.f2676i = z2;
    }

    public void setHideOnContentScrollEnabled(boolean z2) {
        if (z2 != this.f2677j) {
            this.f2677j = z2;
            if (z2) {
                return;
            }
            b();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i3) {
        e();
        i1 i1Var = (i1) this.f;
        i1Var.f4841d = i3 != 0 ? d.v(i1Var.f4839a.getContext(), i3) : null;
        i1Var.c();
    }

    public void setLogo(int i3) {
        e();
        i1 i1Var = (i1) this.f;
        i1Var.f4842e = i3 != 0 ? d.v(i1Var.f4839a.getContext(), i3) : null;
        i1Var.c();
    }

    public void setOverlayMode(boolean z2) {
        this.f2675h = z2;
    }

    @Override // k.InterfaceC0301l0
    public void setWindowCallback(Window.Callback callback) {
        e();
        ((i1) this.f).f4846k = callback;
    }

    @Override // k.InterfaceC0301l0
    public void setWindowTitle(CharSequence charSequence) {
        e();
        i1 i1Var = (i1) this.f;
        if (i1Var.g) {
            return;
        }
        Toolbar toolbar = i1Var.f4839a;
        i1Var.f4843h = charSequence;
        if ((i1Var.b & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (i1Var.g) {
                ViewCompat.setAccessibilityPaneTitle(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedPreScroll(View view, int i3, int i4, int[] iArr, int i5) {
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedScroll(View view, int i3, int i4, int i5, int i6, int i7) {
        if (i7 == 0) {
            onNestedScroll(view, i3, i4, i5, i6);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public final void onNestedScrollAccepted(View view, View view2, int i3) {
        M m2;
        j jVar;
        this.f2670B.onNestedScrollAccepted(view, view2, i3);
        this.f2679l = getActionBarHideOffset();
        b();
        InterfaceC0284d interfaceC0284d = this.f2689v;
        if (interfaceC0284d == null || (jVar = (m2 = (M) interfaceC0284d).f4089t) == null) {
            return;
        }
        jVar.a();
        m2.f4089t = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public final boolean onStartNestedScroll(View view, View view2, int i3) {
        if ((i3 & 2) == 0 || this.f2674e.getVisibility() != 0) {
            return false;
        }
        return this.f2677j;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public final void onStopNestedScroll(View view) {
        if (!this.f2677j || this.f2678k) {
            return;
        }
        if (this.f2679l <= this.f2674e.getHeight()) {
            b();
            postDelayed(this.f2693z, 600L);
        } else {
            b();
            postDelayed(this.f2669A, 600L);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0286e(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public final void onNestedScroll(View view, int i3, int i4, int i5, int i6) {
        int i7 = this.f2679l + i4;
        this.f2679l = i7;
        setActionBarHideOffset(i7);
    }

    public void setIcon(Drawable drawable) {
        e();
        i1 i1Var = (i1) this.f;
        i1Var.f4841d = drawable;
        i1Var.c();
    }

    public void setShowingForActionMode(boolean z2) {
    }

    public void setUiOptions(int i3) {
    }
}
