package T0;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import p024j.D;
import p024j.s;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d extends FrameLayout implements D {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final int[] f2135H = {R.attr.state_checked};

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final Y0.e f2136I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final c f2137J;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public float f2138A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public boolean f2139B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public int f2140C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public int f2141D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f2142E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public int f2143F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public D0.a f2144G;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ColorStateList f2145c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Drawable f2146d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2147e;
    public int f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f2148h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f2149i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f2150j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2151k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2152l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final FrameLayout f2153m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final View f2154n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final ImageView f2155o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final ViewGroup f2156p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final TextView f2157q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final TextView f2158r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2159s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2160t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public s f2161u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ColorStateList f2162v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Drawable f2163w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Drawable f2164x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ValueAnimator f2165y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Y0.e f2166z;

    static {
        int i3 = 14;
        f2136I = new Y0.e(i3);
        f2137J = new c(i3);
    }

    public d(Context context) {
        super(context);
        this.b = false;
        this.f2159s = -1;
        this.f2160t = 0;
        this.f2166z = f2136I;
        this.f2138A = 0.0f;
        this.f2139B = false;
        this.f2140C = 0;
        this.f2141D = 0;
        this.f2142E = false;
        this.f2143F = 0;
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.f2153m = (FrameLayout) findViewById(com.minhub.gamehub.R.id.navigation_bar_item_icon_container);
        this.f2154n = findViewById(com.minhub.gamehub.R.id.navigation_bar_item_active_indicator_view);
        ImageView imageView = (ImageView) findViewById(com.minhub.gamehub.R.id.navigation_bar_item_icon_view);
        this.f2155o = imageView;
        ViewGroup viewGroup = (ViewGroup) findViewById(com.minhub.gamehub.R.id.navigation_bar_item_labels_group);
        this.f2156p = viewGroup;
        TextView textView = (TextView) findViewById(com.minhub.gamehub.R.id.navigation_bar_item_small_label_view);
        this.f2157q = textView;
        TextView textView2 = (TextView) findViewById(com.minhub.gamehub.R.id.navigation_bar_item_large_label_view);
        this.f2158r = textView2;
        setBackgroundResource(getItemBackgroundResId());
        this.f2147e = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        this.f = viewGroup.getPaddingBottom();
        this.g = getResources().getDimensionPixelSize(com.minhub.gamehub.R.dimen.m3_navigation_item_active_indicator_label_padding);
        ViewCompat.setImportantForAccessibility(textView, 2);
        ViewCompat.setImportantForAccessibility(textView2, 2);
        setFocusable(true);
        a(textView.getTextSize(), textView2.getTextSize());
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new F0.a(1, (G0.a) this));
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001f  */
    public static void f(TextView textView, int i3) {
        int iRound;
        TextViewCompat.setTextAppearance(textView, i3);
        Context context = textView.getContext();
        if (i3 == 0) {
            iRound = 0;
        } else {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i3, A0.a.K);
            TypedValue typedValue = new TypedValue();
            boolean value = typedArrayObtainStyledAttributes.getValue(0, typedValue);
            typedArrayObtainStyledAttributes.recycle();
            if (value) {
                iRound = typedValue.getComplexUnit() == 2 ? Math.round(TypedValue.complexToFloat(typedValue.data) * context.getResources().getDisplayMetrics().density) : TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
            } else {
                iRound = 0;
            }
        }
        if (iRound != 0) {
            textView.setTextSize(0, iRound);
        }
    }

    public static void g(View view, float f, float f3, int i3) {
        view.setScaleX(f);
        view.setScaleY(f3);
        view.setVisibility(i3);
    }

    private View getIconOrContainer() {
        FrameLayout frameLayout = this.f2153m;
        return frameLayout != null ? frameLayout : this.f2155o;
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int i3 = 0;
        for (int i4 = 0; i4 < iIndexOfChild; i4++) {
            View childAt = viewGroup.getChildAt(i4);
            if ((childAt instanceof d) && childAt.getVisibility() == 0) {
                i3++;
            }
        }
        return i3;
    }

    private int getSuggestedIconHeight() {
        return getIconOrContainer().getMeasuredHeight() + ((FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams()).topMargin;
    }

    private int getSuggestedIconWidth() {
        D0.a aVar = this.f2144G;
        int minimumWidth = aVar == null ? 0 : aVar.getMinimumWidth() - this.f2144G.f.b.f792x.intValue();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams();
        return Math.max(minimumWidth, layoutParams.rightMargin) + this.f2155o.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.leftMargin);
    }

    public static void h(View view, int i3, int i4) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i3;
        layoutParams.bottomMargin = i3;
        layoutParams.gravity = i4;
        view.setLayoutParams(layoutParams);
    }

    public static void j(View view, int i3) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i3);
    }

    public final void a(float f, float f3) {
        this.f2148h = f - f3;
        this.f2149i = (f3 * 1.0f) / f;
        this.f2150j = (f * 1.0f) / f3;
    }

    @Override // p024j.D
    public final void b(s sVar) {
        this.f2161u = sVar;
        setCheckable(sVar.isCheckable());
        setChecked(sVar.isChecked());
        setEnabled(sVar.isEnabled());
        setIcon(sVar.getIcon());
        setTitle(sVar.f4583e);
        setId(sVar.f4580a);
        if (!TextUtils.isEmpty(sVar.f4593q)) {
            setContentDescription(sVar.f4593q);
        }
        p000a.a.J(this, !TextUtils.isEmpty(sVar.f4594r) ? sVar.f4594r : sVar.f4583e);
        setVisibility(sVar.isVisible() ? 0 : 8);
        this.b = true;
    }

    public final void c() {
        s sVar = this.f2161u;
        if (sVar != null) {
            setChecked(sVar.isChecked());
        }
    }

    public final void d() {
        Drawable rippleDrawable = this.f2146d;
        ColorStateList colorStateList = this.f2145c;
        FrameLayout frameLayout = this.f2153m;
        RippleDrawable rippleDrawable2 = null;
        boolean z2 = true;
        if (colorStateList != null) {
            Drawable activeIndicatorDrawable = getActiveIndicatorDrawable();
            if (this.f2139B && getActiveIndicatorDrawable() != null && frameLayout != null && activeIndicatorDrawable != null) {
                rippleDrawable2 = new RippleDrawable(W0.a.c(this.f2145c), null, activeIndicatorDrawable);
                z2 = false;
            } else if (rippleDrawable == null) {
                rippleDrawable = new RippleDrawable(W0.a.a(this.f2145c), null, null);
            }
        }
        if (frameLayout != null) {
            frameLayout.setPadding(0, 0, 0, 0);
            frameLayout.setForeground(rippleDrawable2);
        }
        ViewCompat.setBackground(this, rippleDrawable);
        if (Build.VERSION.SDK_INT >= 26) {
            setDefaultFocusHighlightEnabled(z2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        FrameLayout frameLayout = this.f2153m;
        if (frameLayout != null && this.f2139B) {
            frameLayout.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e(float f, float f3) {
        View view = this.f2154n;
        if (view != null) {
            Y0.e eVar = this.f2166z;
            eVar.getClass();
            view.setScaleX(B0.a.a(0.4f, 1.0f, f));
            view.setScaleY(eVar.h(f, f3));
            view.setAlpha(B0.a.b(0.0f, 1.0f, f3 == 0.0f ? 0.8f : 0.0f, f3 == 0.0f ? 1.0f : 0.2f, f));
        }
        this.f2138A = f;
    }

    public Drawable getActiveIndicatorDrawable() {
        View view = this.f2154n;
        if (view == null) {
            return null;
        }
        return view.getBackground();
    }

    public D0.a getBadge() {
        return this.f2144G;
    }

    public int getItemBackgroundResId() {
        return com.minhub.gamehub.R.drawable.mtrl_navigation_bar_item_background;
    }

    @Override // p024j.D
    public s getItemData() {
        return this.f2161u;
    }

    public int getItemDefaultMarginResId() {
        return com.minhub.gamehub.R.dimen.mtrl_navigation_bar_item_default_margin;
    }

    public abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.f2159s;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        ViewGroup viewGroup = this.f2156p;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewGroup.getLayoutParams();
        return viewGroup.getMeasuredHeight() + getSuggestedIconHeight() + (viewGroup.getVisibility() == 0 ? this.g : 0) + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        ViewGroup viewGroup = this.f2156p;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewGroup.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), viewGroup.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
    }

    public final void i(int i3) {
        View view = this.f2154n;
        if (view == null || i3 <= 0) {
            return;
        }
        int iMin = Math.min(this.f2140C, i3 - (this.f2143F * 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.height = (this.f2142E && this.f2151k == 2) ? iMin : this.f2141D;
        layoutParams.width = iMin;
        view.setLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i3) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i3 + 1);
        s sVar = this.f2161u;
        if (sVar != null && sVar.isCheckable() && this.f2161u.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2135H);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        D0.a aVar = this.f2144G;
        if (aVar != null && aVar.isVisible()) {
            s sVar = this.f2161u;
            CharSequence charSequence = sVar.f4583e;
            if (!TextUtils.isEmpty(sVar.f4593q)) {
                charSequence = this.f2161u.f4593q;
            }
            accessibilityNodeInfo.setContentDescription(((Object) charSequence) + ", " + ((Object) this.f2144G.c()));
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, getItemVisiblePosition(), 1, false, isSelected()));
        if (isSelected()) {
            accessibilityNodeInfoCompatWrap.setClickable(false);
            accessibilityNodeInfoCompatWrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }
        accessibilityNodeInfoCompatWrap.setRoleDescription(getResources().getString(com.minhub.gamehub.R.string.item_view_role_description));
    }

    @Override // android.view.View
    public final void onSizeChanged(int i3, int i4, int i5, int i6) {
        super.onSizeChanged(i3, i4, i5, i6);
        post(new a(this, i3, 0));
    }

    public void setActiveIndicatorDrawable(Drawable drawable) {
        View view = this.f2154n;
        if (view == null) {
            return;
        }
        view.setBackgroundDrawable(drawable);
        d();
    }

    public void setActiveIndicatorEnabled(boolean z2) {
        this.f2139B = z2;
        d();
        View view = this.f2154n;
        if (view != null) {
            view.setVisibility(z2 ? 0 : 8);
            requestLayout();
        }
    }

    public void setActiveIndicatorHeight(int i3) {
        this.f2141D = i3;
        i(getWidth());
    }

    public void setActiveIndicatorLabelPadding(int i3) {
        if (this.g != i3) {
            this.g = i3;
            c();
        }
    }

    public void setActiveIndicatorMarginHorizontal(int i3) {
        this.f2143F = i3;
        i(getWidth());
    }

    public void setActiveIndicatorResizeable(boolean z2) {
        this.f2142E = z2;
    }

    public void setActiveIndicatorWidth(int i3) {
        this.f2140C = i3;
        i(getWidth());
    }

    public void setBadge(D0.a aVar) {
        D0.a aVar2 = this.f2144G;
        if (aVar2 == aVar) {
            return;
        }
        ImageView imageView = this.f2155o;
        if (aVar2 != null && imageView != null) {
            Log.w("NavigationBar", "Multiple badges shouldn't be attached to one item.");
            if (this.f2144G != null) {
                setClipChildren(true);
                setClipToPadding(true);
                D0.a aVar3 = this.f2144G;
                if (aVar3 != null) {
                    if (aVar3.d() != null) {
                        aVar3.d().setForeground(null);
                    } else {
                        imageView.getOverlay().remove(aVar3);
                    }
                }
                this.f2144G = null;
            }
        }
        this.f2144G = aVar;
        if (imageView == null || aVar == null) {
            return;
        }
        setClipChildren(false);
        setClipToPadding(false);
        D0.a aVar4 = this.f2144G;
        Rect rect = new Rect();
        imageView.getDrawingRect(rect);
        aVar4.setBounds(rect);
        aVar4.i(imageView, null);
        if (aVar4.d() != null) {
            aVar4.d().setForeground(aVar4);
        } else {
            imageView.getOverlay().add(aVar4);
        }
    }

    public void setCheckable(boolean z2) {
        refreshDrawableState();
    }

    public void setChecked(boolean z2) {
        TextView textView = this.f2158r;
        textView.setPivotX(textView.getWidth() / 2);
        textView.setPivotY(textView.getBaseline());
        TextView textView2 = this.f2157q;
        textView2.setPivotX(textView2.getWidth() / 2);
        textView2.setPivotY(textView2.getBaseline());
        float f = z2 ? 1.0f : 0.0f;
        if (this.f2139B && this.b && ViewCompat.isAttachedToWindow(this)) {
            ValueAnimator valueAnimator = this.f2165y;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.f2165y = null;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f2138A, f);
            this.f2165y = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new b(this, f));
            this.f2165y.setInterpolator(com.bumptech.glide.c.O(getContext(), com.minhub.gamehub.R.attr.motionEasingEmphasizedInterpolator, B0.a.b));
            this.f2165y.setDuration(com.bumptech.glide.c.N(getContext(), com.minhub.gamehub.R.attr.motionDurationLong2, getResources().getInteger(com.minhub.gamehub.R.integer.material_motion_duration_long_1)));
            this.f2165y.start();
        } else {
            e(f, f);
        }
        int i3 = this.f2151k;
        ViewGroup viewGroup = this.f2156p;
        if (i3 != -1) {
            if (i3 == 0) {
                if (z2) {
                    h(getIconOrContainer(), this.f2147e, 49);
                    j(viewGroup, this.f);
                    textView.setVisibility(0);
                } else {
                    h(getIconOrContainer(), this.f2147e, 17);
                    j(viewGroup, 0);
                    textView.setVisibility(4);
                }
                textView2.setVisibility(4);
            } else if (i3 == 1) {
                j(viewGroup, this.f);
                if (z2) {
                    h(getIconOrContainer(), (int) (this.f2147e + this.f2148h), 49);
                    g(textView, 1.0f, 1.0f, 0);
                    float f3 = this.f2149i;
                    g(textView2, f3, f3, 4);
                } else {
                    h(getIconOrContainer(), this.f2147e, 49);
                    float f4 = this.f2150j;
                    g(textView, f4, f4, 4);
                    g(textView2, 1.0f, 1.0f, 0);
                }
            } else if (i3 == 2) {
                h(getIconOrContainer(), this.f2147e, 17);
                textView.setVisibility(8);
                textView2.setVisibility(8);
            }
        } else if (this.f2152l) {
            if (z2) {
                h(getIconOrContainer(), this.f2147e, 49);
                j(viewGroup, this.f);
                textView.setVisibility(0);
            } else {
                h(getIconOrContainer(), this.f2147e, 17);
                j(viewGroup, 0);
                textView.setVisibility(4);
            }
            textView2.setVisibility(4);
        } else {
            j(viewGroup, this.f);
            if (z2) {
                h(getIconOrContainer(), (int) (this.f2147e + this.f2148h), 49);
                g(textView, 1.0f, 1.0f, 0);
                float f5 = this.f2149i;
                g(textView2, f5, f5, 4);
            } else {
                h(getIconOrContainer(), this.f2147e, 49);
                float f6 = this.f2150j;
                g(textView, f6, f6, 4);
                g(textView2, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z2);
    }

    @Override // android.view.View
    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
        this.f2157q.setEnabled(z2);
        this.f2158r.setEnabled(z2);
        this.f2155o.setEnabled(z2);
        if (z2) {
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        } else {
            ViewCompat.setPointerIcon(this, null);
        }
    }

    public void setIcon(Drawable drawable) {
        if (drawable == this.f2163w) {
            return;
        }
        this.f2163w = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = DrawableCompat.wrap(drawable).mutate();
            this.f2164x = drawable;
            ColorStateList colorStateList = this.f2162v;
            if (colorStateList != null) {
                DrawableCompat.setTintList(drawable, colorStateList);
            }
        }
        this.f2155o.setImageDrawable(drawable);
    }

    public void setIconSize(int i3) {
        ImageView imageView = this.f2155o;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.width = i3;
        layoutParams.height = i3;
        imageView.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        Drawable drawable;
        this.f2162v = colorStateList;
        if (this.f2161u == null || (drawable = this.f2164x) == null) {
            return;
        }
        DrawableCompat.setTintList(drawable, colorStateList);
        this.f2164x.invalidateSelf();
    }

    public void setItemBackground(int i3) {
        setItemBackground(i3 == 0 ? null : ContextCompat.getDrawable(getContext(), i3));
    }

    public void setItemPaddingBottom(int i3) {
        if (this.f != i3) {
            this.f = i3;
            c();
        }
    }

    public void setItemPaddingTop(int i3) {
        if (this.f2147e != i3) {
            this.f2147e = i3;
            c();
        }
    }

    public void setItemPosition(int i3) {
        this.f2159s = i3;
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        this.f2145c = colorStateList;
        d();
    }

    public void setLabelVisibilityMode(int i3) {
        if (this.f2151k != i3) {
            this.f2151k = i3;
            if (this.f2142E && i3 == 2) {
                this.f2166z = f2137J;
            } else {
                this.f2166z = f2136I;
            }
            i(getWidth());
            c();
        }
    }

    public void setShifting(boolean z2) {
        if (this.f2152l != z2) {
            this.f2152l = z2;
            c();
        }
    }

    public void setTextAppearanceActive(int i3) {
        this.f2160t = i3;
        TextView textView = this.f2158r;
        f(textView, i3);
        a(this.f2157q.getTextSize(), textView.getTextSize());
    }

    public void setTextAppearanceActiveBoldEnabled(boolean z2) {
        setTextAppearanceActive(this.f2160t);
        TextView textView = this.f2158r;
        textView.setTypeface(textView.getTypeface(), z2 ? 1 : 0);
    }

    public void setTextAppearanceInactive(int i3) {
        TextView textView = this.f2157q;
        f(textView, i3);
        a(textView.getTextSize(), this.f2158r.getTextSize());
    }

    public void setTextColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f2157q.setTextColor(colorStateList);
            this.f2158r.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.f2157q.setText(charSequence);
        this.f2158r.setText(charSequence);
        s sVar = this.f2161u;
        if (sVar == null || TextUtils.isEmpty(sVar.f4593q)) {
            setContentDescription(charSequence);
        }
        s sVar2 = this.f2161u;
        if (sVar2 != null && !TextUtils.isEmpty(sVar2.f4594r)) {
            charSequence = this.f2161u.f4594r;
        }
        p000a.a.J(this, charSequence);
    }

    public void setItemBackground(Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        this.f2146d = drawable;
        d();
    }
}
