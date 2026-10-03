package androidx.appcompat.widget;

import H0.j;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import com.bumptech.glide.d;
import com.minhub.gamehub.R;
import k.C0278a;
import k.C0290g;
import k.C0300l;
import k.q1;
import p008d.a;
import p024j.E;
import p024j.p;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class ActionBarContextView extends ViewGroup {
    public final C0278a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f2649c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ActionMenuView f2650d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0300l f2651e;
    public int f;
    public ViewPropertyAnimatorCompat g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2652h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2653i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f2654j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f2655k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f2656l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public View f2657m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public View f2658n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public LinearLayout f2659o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public TextView f2660p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public TextView f2661q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f2662r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f2663s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f2664t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f2665u;

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        int resourceId;
        super(context, attributeSet, R.attr.actionModeStyle);
        this.b = new C0278a(this);
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f2649c = context;
        } else {
            this.f2649c = new ContextThemeWrapper(context, typedValue.resourceId);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f3843d, R.attr.actionModeStyle, 0);
        setBackground((!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(0) : d.v(context, resourceId));
        this.f2662r = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.f2663s = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        this.f = typedArrayObtainStyledAttributes.getLayoutDimension(3, 0);
        this.f2665u = typedArrayObtainStyledAttributes.getResourceId(2, R.layout.abc_action_mode_close_item_material);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static int f(View view, int i3, int i4) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE), i4);
        return Math.max(0, i3 - view.getMeasuredWidth());
    }

    public static int g(View view, int i3, int i4, int i5, boolean z2) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i6 = ((i5 - measuredHeight) / 2) + i4;
        if (z2) {
            view.layout(i3 - measuredWidth, i6, i3, measuredHeight + i6);
        } else {
            view.layout(i3, i6, i3 + measuredWidth, measuredHeight + i6);
        }
        return z2 ? -measuredWidth : measuredWidth;
    }

    public final void c(p021i.a aVar) {
        View view = this.f2656l;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.f2665u, (ViewGroup) this, false);
            this.f2656l = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f2656l);
        }
        View viewFindViewById = this.f2656l.findViewById(R.id.action_mode_close_button);
        this.f2657m = viewFindViewById;
        viewFindViewById.setOnClickListener(new j(4, aVar));
        p pVarD = aVar.d();
        C0300l c0300l = this.f2651e;
        if (c0300l != null) {
            c0300l.c();
            C0290g c0290g = c0300l.f4866v;
            if (c0290g != null && c0290g.b()) {
                c0290g.f4467i.dismiss();
            }
        }
        C0300l c0300l2 = new C0300l(getContext());
        this.f2651e = c0300l2;
        c0300l2.f4858n = true;
        c0300l2.f4859o = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        pVarD.b(this.f2651e, this.f2649c);
        C0300l c0300l3 = this.f2651e;
        E e2 = c0300l3.f4510i;
        if (e2 == null) {
            E e3 = (E) c0300l3.f4508e.inflate(c0300l3.g, (ViewGroup) this, false);
            c0300l3.f4510i = e3;
            e3.a(c0300l3.f4507d);
            c0300l3.g(true);
        }
        E e4 = c0300l3.f4510i;
        if (e2 != e4) {
            ((ActionMenuView) e4).setPresenter(c0300l3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) e4;
        this.f2650d = actionMenuView;
        actionMenuView.setBackground(null);
        addView(this.f2650d, layoutParams);
    }

    public final void d() {
        if (this.f2659o == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f2659o = linearLayout;
            this.f2660p = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.f2661q = (TextView) this.f2659o.findViewById(R.id.action_bar_subtitle);
            int i3 = this.f2662r;
            if (i3 != 0) {
                this.f2660p.setTextAppearance(getContext(), i3);
            }
            int i4 = this.f2663s;
            if (i4 != 0) {
                this.f2661q.setTextAppearance(getContext(), i4);
            }
        }
        this.f2660p.setText(this.f2654j);
        this.f2661q.setText(this.f2655k);
        boolean zIsEmpty = TextUtils.isEmpty(this.f2654j);
        boolean zIsEmpty2 = TextUtils.isEmpty(this.f2655k);
        this.f2661q.setVisibility(!zIsEmpty2 ? 0 : 8);
        this.f2659o.setVisibility((zIsEmpty && zIsEmpty2) ? 8 : 0);
        if (this.f2659o.getParent() == null) {
            addView(this.f2659o);
        }
    }

    public final void e() {
        removeAllViews();
        this.f2658n = null;
        this.f2650d = null;
        this.f2651e = null;
        View view = this.f2657m;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getAnimatedVisibility() {
        return this.g != null ? this.b.b : getVisibility();
    }

    public int getContentHeight() {
        return this.f;
    }

    public CharSequence getSubtitle() {
        return this.f2655k;
    }

    public CharSequence getTitle() {
        return this.f2654j;
    }

    @Override // android.view.View
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final void setVisibility(int i3) {
        if (i3 != getVisibility()) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.g;
            if (viewPropertyAnimatorCompat != null) {
                viewPropertyAnimatorCompat.cancel();
            }
            super.setVisibility(i3);
        }
    }

    public final ViewPropertyAnimatorCompat i(int i3, long j2) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.g;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
        C0278a c0278a = this.b;
        if (i3 != 0) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha = ViewCompat.animate(this).alpha(0.0f);
            viewPropertyAnimatorCompatAlpha.setDuration(j2);
            c0278a.f4809c.g = viewPropertyAnimatorCompatAlpha;
            c0278a.b = i3;
            viewPropertyAnimatorCompatAlpha.setListener(c0278a);
            return viewPropertyAnimatorCompatAlpha;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha2 = ViewCompat.animate(this).alpha(1.0f);
        viewPropertyAnimatorCompatAlpha2.setDuration(j2);
        c0278a.f4809c.g = viewPropertyAnimatorCompatAlpha2;
        c0278a.b = i3;
        viewPropertyAnimatorCompatAlpha2.setListener(c0278a);
        return viewPropertyAnimatorCompatAlpha2;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        int i3;
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, a.f3841a, R.attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(13, 0));
        typedArrayObtainStyledAttributes.recycle();
        C0300l c0300l = this.f2651e;
        if (c0300l != null) {
            Configuration configuration2 = c0300l.f4506c.getResources().getConfiguration();
            int i4 = configuration2.screenWidthDp;
            int i5 = configuration2.screenHeightDp;
            if (configuration2.smallestScreenWidthDp > 600 || i4 > 600 || ((i4 > 960 && i5 > 720) || (i4 > 720 && i5 > 960))) {
                i3 = 5;
            } else if (i4 >= 500 || ((i4 > 640 && i5 > 480) || (i4 > 480 && i5 > 640))) {
                i3 = 4;
            } else {
                i3 = i4 >= 360 ? 3 : 2;
            }
            c0300l.f4862r = i3;
            p pVar = c0300l.f4507d;
            if (pVar != null) {
                pVar.p(true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0300l c0300l = this.f2651e;
        if (c0300l != null) {
            c0300l.c();
            C0290g c0290g = this.f2651e.f4866v;
            if (c0290g == null || !c0290g.b()) {
                return;
            }
            c0290g.f4467i.dismiss();
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f2653i = false;
        }
        if (!this.f2653i) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f2653i = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.f2653i = false;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        boolean z3 = q1.f4902a;
        boolean z4 = getLayoutDirection() == 1;
        int paddingRight = z4 ? (i5 - i3) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i6 - i4) - getPaddingTop()) - getPaddingBottom();
        View view = this.f2656l;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f2656l.getLayoutParams();
            int i7 = z4 ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i8 = z4 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i9 = z4 ? paddingRight - i7 : paddingRight + i7;
            int iG = g(this.f2656l, i9, paddingTop, paddingTop2, z4) + i9;
            paddingRight = z4 ? iG - i8 : iG + i8;
        }
        LinearLayout linearLayout = this.f2659o;
        if (linearLayout != null && this.f2658n == null && linearLayout.getVisibility() != 8) {
            paddingRight += g(this.f2659o, paddingRight, paddingTop, paddingTop2, z4);
        }
        View view2 = this.f2658n;
        if (view2 != null) {
            g(view2, paddingRight, paddingTop, paddingTop2, z4);
        }
        int paddingLeft = z4 ? getPaddingLeft() : (i5 - i3) - getPaddingRight();
        ActionMenuView actionMenuView = this.f2650d;
        if (actionMenuView != null) {
            g(actionMenuView, paddingLeft, paddingTop, paddingTop2, !z4);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        if (View.MeasureSpec.getMode(i3) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i4) == 0) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i3);
        int size2 = this.f;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i4);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingBottom;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.f2656l;
        if (view != null) {
            int iF = f(view, paddingLeft, iMakeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f2656l.getLayoutParams();
            paddingLeft = iF - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f2650d;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = f(this.f2650d, paddingLeft, iMakeMeasureSpec);
        }
        LinearLayout linearLayout = this.f2659o;
        if (linearLayout != null && this.f2658n == null) {
            if (this.f2664t) {
                this.f2659o.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.f2659o.getMeasuredWidth();
                boolean z2 = measuredWidth <= paddingLeft;
                if (z2) {
                    paddingLeft -= measuredWidth;
                }
                this.f2659o.setVisibility(z2 ? 0 : 8);
            } else {
                paddingLeft = f(linearLayout, paddingLeft, iMakeMeasureSpec);
            }
        }
        View view2 = this.f2658n;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i5 = layoutParams.width;
            int i6 = i5 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i5 >= 0) {
                paddingLeft = Math.min(i5, paddingLeft);
            }
            int i7 = layoutParams.height;
            int i8 = i7 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i7 >= 0) {
                iMin = Math.min(i7, iMin);
            }
            this.f2658n.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i6), View.MeasureSpec.makeMeasureSpec(iMin, i8));
        }
        if (this.f > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            int measuredHeight = getChildAt(i10).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i9) {
                i9 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i9);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f2652h = false;
        }
        if (!this.f2652h) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f2652h = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f2652h = false;
        return true;
    }

    public void setContentHeight(int i3) {
        this.f = i3;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f2658n;
        if (view2 != null) {
            removeView(view2);
        }
        this.f2658n = view;
        if (view != null && (linearLayout = this.f2659o) != null) {
            removeView(linearLayout);
            this.f2659o = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f2655k = charSequence;
        d();
    }

    public void setTitle(CharSequence charSequence) {
        this.f2654j = charSequence;
        d();
        ViewCompat.setAccessibilityPaneTitle(this, charSequence);
    }

    public void setTitleOptional(boolean z2) {
        if (z2 != this.f2664t) {
            requestLayout();
        }
        this.f2664t = z2;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
