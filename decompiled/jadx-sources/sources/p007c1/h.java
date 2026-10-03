package p007c1;

import D0.a;
import R0.t;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.Layout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.bumptech.glide.d;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends LinearLayout {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f3154m = 0;
    public f b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f3155c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ImageView f3156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public View f3157e;
    public a f;
    public View g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f3158h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImageView f3159i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Drawable f3160j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3161k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ TabLayout f3162l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(TabLayout tabLayout, Context context) {
        super(context);
        this.f3162l = tabLayout;
        this.f3161k = 2;
        e(context);
        ViewCompat.setPaddingRelative(this, tabLayout.f, tabLayout.g, tabLayout.f3535h, tabLayout.f3536i);
        setGravity(17);
        setOrientation(!tabLayout.f3520D ? 1 : 0);
        setClickable(true);
        ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
    }

    private a getBadge() {
        return this.f;
    }

    private a getOrCreateBadge() {
        if (this.f == null) {
            this.f = new a(getContext(), null);
        }
        b();
        a aVar = this.f;
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalStateException("Unable to create badge");
    }

    public final void a() {
        if (this.f != null) {
            setClipChildren(true);
            setClipToPadding(true);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(true);
                viewGroup.setClipToPadding(true);
            }
            View view = this.f3157e;
            if (view != null) {
                a aVar = this.f;
                if (aVar != null) {
                    if (aVar.d() != null) {
                        aVar.d().setForeground(null);
                    } else {
                        view.getOverlay().remove(aVar);
                    }
                }
                this.f3157e = null;
            }
        }
    }

    public final void b() {
        if (this.f != null) {
            if (this.g != null) {
                a();
                return;
            }
            TextView textView = this.f3155c;
            if (textView == null || this.b == null) {
                a();
                return;
            }
            if (this.f3157e == textView) {
                c(textView);
                return;
            }
            a();
            TextView textView2 = this.f3155c;
            if (this.f == null || textView2 == null) {
                return;
            }
            setClipChildren(false);
            setClipToPadding(false);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(false);
                viewGroup.setClipToPadding(false);
            }
            a aVar = this.f;
            Rect rect = new Rect();
            textView2.getDrawingRect(rect);
            aVar.setBounds(rect);
            aVar.i(textView2, null);
            if (aVar.d() != null) {
                aVar.d().setForeground(aVar);
            } else {
                textView2.getOverlay().add(aVar);
            }
            this.f3157e = textView2;
        }
    }

    public final void c(View view) {
        a aVar = this.f;
        if (aVar == null || view != this.f3157e) {
            return;
        }
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        aVar.setBounds(rect);
        aVar.i(view, null);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0020  */
    public final void d() {
        boolean z2;
        f();
        f fVar = this.b;
        if (fVar == null) {
            z2 = false;
        } else {
            TabLayout tabLayout = fVar.f3151d;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            int selectedTabPosition = tabLayout.getSelectedTabPosition();
            if (selectedTabPosition == -1 || selectedTabPosition != fVar.b) {
                z2 = false;
            } else {
                z2 = true;
            }
        }
        setSelected(z2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f3160j;
        if ((drawable == null || !drawable.isStateful()) ? false : this.f3160j.setState(drawableState)) {
            invalidate();
            this.f3162l.invalidate();
        }
    }

    public final void e(Context context) {
        GradientDrawable gradientDrawable;
        TabLayout tabLayout = this.f3162l;
        int i3 = tabLayout.f3547t;
        if (i3 != 0) {
            Drawable drawableV = d.v(context, i3);
            this.f3160j = drawableV;
            if (drawableV != null && drawableV.isStateful()) {
                this.f3160j.setState(getDrawableState());
            }
        } else {
            this.f3160j = null;
        }
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(0);
        Drawable rippleDrawable = gradientDrawable2;
        if (tabLayout.f3542o != null) {
            GradientDrawable gradientDrawable3 = new GradientDrawable();
            gradientDrawable3.setCornerRadius(1.0E-5f);
            gradientDrawable3.setColor(-1);
            ColorStateList colorStateListA = W0.a.a(tabLayout.f3542o);
            boolean z2 = tabLayout.f3524H;
            if (z2) {
                gradientDrawable = gradientDrawable2;
                gradientDrawable = null;
            }
            rippleDrawable = new RippleDrawable(colorStateListA, gradientDrawable, z2 ? null : gradientDrawable3);
        }
        ViewCompat.setBackground(this, rippleDrawable);
        tabLayout.invalidate();
    }

    public final void f() {
        int i3;
        ViewParent parent;
        f fVar = this.b;
        View view = fVar != null ? fVar.f3150c : null;
        if (view != null) {
            ViewParent parent2 = view.getParent();
            if (parent2 != this) {
                if (parent2 != null) {
                    ((ViewGroup) parent2).removeView(view);
                }
                View view2 = this.g;
                if (view2 != null && (parent = view2.getParent()) != null) {
                    ((ViewGroup) parent).removeView(this.g);
                }
                addView(view);
            }
            this.g = view;
            TextView textView = this.f3155c;
            if (textView != null) {
                textView.setVisibility(8);
            }
            ImageView imageView = this.f3156d;
            if (imageView != null) {
                imageView.setVisibility(8);
                this.f3156d.setImageDrawable(null);
            }
            TextView textView2 = (TextView) view.findViewById(R.id.text1);
            this.f3158h = textView2;
            if (textView2 != null) {
                this.f3161k = TextViewCompat.getMaxLines(textView2);
            }
            this.f3159i = (ImageView) view.findViewById(R.id.icon);
        } else {
            View view3 = this.g;
            if (view3 != null) {
                removeView(view3);
                this.g = null;
            }
            this.f3158h = null;
            this.f3159i = null;
        }
        if (this.g == null) {
            if (this.f3156d == null) {
                ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(com.minhub.gamehub.R.layout.design_layout_tab_icon, (ViewGroup) this, false);
                this.f3156d = imageView2;
                addView(imageView2, 0);
            }
            if (this.f3155c == null) {
                TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(com.minhub.gamehub.R.layout.design_layout_tab_text, (ViewGroup) this, false);
                this.f3155c = textView3;
                addView(textView3);
                this.f3161k = TextViewCompat.getMaxLines(this.f3155c);
            }
            TextView textView4 = this.f3155c;
            TabLayout tabLayout = this.f3162l;
            TextViewCompat.setTextAppearance(textView4, tabLayout.f3537j);
            if (!isSelected() || (i3 = tabLayout.f3539l) == -1) {
                TextViewCompat.setTextAppearance(this.f3155c, tabLayout.f3538k);
            } else {
                TextViewCompat.setTextAppearance(this.f3155c, i3);
            }
            ColorStateList colorStateList = tabLayout.f3540m;
            if (colorStateList != null) {
                this.f3155c.setTextColor(colorStateList);
            }
            g(this.f3155c, this.f3156d, true);
            b();
            ImageView imageView3 = this.f3156d;
            if (imageView3 != null) {
                imageView3.addOnLayoutChangeListener(new g(this, imageView3));
            }
            TextView textView5 = this.f3155c;
            if (textView5 != null) {
                textView5.addOnLayoutChangeListener(new g(this, textView5));
            }
        } else {
            TextView textView6 = this.f3158h;
            if (textView6 != null || this.f3159i != null) {
                g(textView6, this.f3159i, false);
            }
        }
        if (fVar == null || TextUtils.isEmpty(null)) {
            return;
        }
        setContentDescription(null);
    }

    public final void g(TextView textView, ImageView imageView, boolean z2) {
        boolean z3;
        f fVar = this.b;
        CharSequence charSequence = fVar != null ? fVar.f3149a : null;
        if (imageView != null) {
            imageView.setVisibility(8);
            imageView.setImageDrawable(null);
        }
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        if (textView != null) {
            if (zIsEmpty) {
                z3 = false;
            } else {
                this.b.getClass();
                z3 = true;
            }
            textView.setText(!zIsEmpty ? charSequence : null);
            textView.setVisibility(z3 ? 0 : 8);
            if (!zIsEmpty) {
                setVisibility(0);
            }
        } else {
            z3 = false;
        }
        if (z2 && imageView != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
            int iB = (z3 && imageView.getVisibility() == 0) ? (int) t.b(getContext(), 8) : 0;
            if (this.f3162l.f3520D) {
                if (iB != MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) {
                    MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, iB);
                    marginLayoutParams.bottomMargin = 0;
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            } else if (iB != marginLayoutParams.bottomMargin) {
                marginLayoutParams.bottomMargin = iB;
                MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, 0);
                imageView.setLayoutParams(marginLayoutParams);
                imageView.requestLayout();
            }
        }
        p000a.a.J(this, zIsEmpty ? null : charSequence);
    }

    public int getContentHeight() {
        View[] viewArr = {this.f3155c, this.f3156d, this.g};
        int iMax = 0;
        int iMin = 0;
        boolean z2 = false;
        for (int i3 = 0; i3 < 3; i3++) {
            View view = viewArr[i3];
            if (view != null && view.getVisibility() == 0) {
                iMin = z2 ? Math.min(iMin, view.getTop()) : view.getTop();
                iMax = z2 ? Math.max(iMax, view.getBottom()) : view.getBottom();
                z2 = true;
            }
        }
        return iMax - iMin;
    }

    public int getContentWidth() {
        View[] viewArr = {this.f3155c, this.f3156d, this.g};
        int iMax = 0;
        int iMin = 0;
        boolean z2 = false;
        for (int i3 = 0; i3 < 3; i3++) {
            View view = viewArr[i3];
            if (view != null && view.getVisibility() == 0) {
                iMin = z2 ? Math.min(iMin, view.getLeft()) : view.getLeft();
                iMax = z2 ? Math.max(iMax, view.getRight()) : view.getRight();
                z2 = true;
            }
        }
        return iMax - iMin;
    }

    public f getTab() {
        return this.b;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        a aVar = this.f;
        if (aVar != null && aVar.isVisible()) {
            accessibilityNodeInfoCompatWrap.setContentDescription(this.f.c());
        }
        accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, this.b.b, 1, false, isSelected()));
        if (isSelected()) {
            accessibilityNodeInfoCompatWrap.setClickable(false);
            accessibilityNodeInfoCompatWrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }
        accessibilityNodeInfoCompatWrap.setRoleDescription(getResources().getString(com.minhub.gamehub.R.string.item_view_role_description));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        int size = View.MeasureSpec.getSize(i3);
        int mode = View.MeasureSpec.getMode(i3);
        TabLayout tabLayout = this.f3162l;
        int tabMaxWidth = tabLayout.getTabMaxWidth();
        if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
            i3 = View.MeasureSpec.makeMeasureSpec(tabLayout.f3548u, Integer.MIN_VALUE);
        }
        super.onMeasure(i3, i4);
        if (this.f3155c != null) {
            float f = tabLayout.f3545r;
            int i5 = this.f3161k;
            ImageView imageView = this.f3156d;
            if (imageView == null || imageView.getVisibility() != 0) {
                TextView textView = this.f3155c;
                if (textView != null && textView.getLineCount() > 1) {
                    f = tabLayout.f3546s;
                }
            } else {
                i5 = 1;
            }
            float textSize = this.f3155c.getTextSize();
            int lineCount = this.f3155c.getLineCount();
            int maxLines = TextViewCompat.getMaxLines(this.f3155c);
            if (f != textSize || (maxLines >= 0 && i5 != maxLines)) {
                if (tabLayout.f3519C == 1 && f > textSize && lineCount == 1) {
                    Layout layout = this.f3155c.getLayout();
                    if (layout == null) {
                        return;
                    }
                    if ((f / layout.getPaint().getTextSize()) * layout.getLineWidth(0) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) {
                        return;
                    }
                }
                this.f3155c.setTextSize(0, f);
                this.f3155c.setMaxLines(i5);
                super.onMeasure(i3, i4);
            }
        }
    }

    @Override // android.view.View
    public final boolean performClick() {
        boolean zPerformClick = super.performClick();
        if (this.b == null) {
            return zPerformClick;
        }
        if (!zPerformClick) {
            playSoundEffect(0);
        }
        f fVar = this.b;
        TabLayout tabLayout = fVar.f3151d;
        if (tabLayout == null) {
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }
        tabLayout.j(fVar, true);
        return true;
    }

    @Override // android.view.View
    public void setSelected(boolean z2) {
        isSelected();
        super.setSelected(z2);
        TextView textView = this.f3155c;
        if (textView != null) {
            textView.setSelected(z2);
        }
        ImageView imageView = this.f3156d;
        if (imageView != null) {
            imageView.setSelected(z2);
        }
        View view = this.g;
        if (view != null) {
            view.setSelected(z2);
        }
    }

    public void setTab(f fVar) {
        if (fVar != this.b) {
            this.b = fVar;
            d();
        }
    }
}
