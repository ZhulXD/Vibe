package p004b1;

import H0.l;
import R0.t;
import Y0.h;
import Y0.m;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.minhub.gamehub.R;
import p015f1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b extends FrameLayout {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final l f3100j = new l(1);
    public final m b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f3102d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f3103e;
    public final int f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ColorStateList f3104h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PorterDuff.Mode f3105i;

    public b(Context context, AttributeSet attributeSet) {
        Drawable drawable;
        Drawable drawableWrap;
        super(a.a(context, attributeSet, 0, 0), attributeSet);
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, A0.a.f11H);
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            ViewCompat.setElevation(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0));
        }
        this.f3101c = typedArrayObtainStyledAttributes.getInt(2, 0);
        if (typedArrayObtainStyledAttributes.hasValue(8) || typedArrayObtainStyledAttributes.hasValue(9)) {
            this.b = m.b(context2, attributeSet, 0, 0).a();
        }
        this.f3102d = typedArrayObtainStyledAttributes.getFloat(3, 1.0f);
        setBackgroundTintList(d.r(context2, typedArrayObtainStyledAttributes, 4));
        setBackgroundTintMode(t.e(typedArrayObtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN));
        this.f3103e = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        this.f = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.g = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1);
        typedArrayObtainStyledAttributes.recycle();
        setOnTouchListener(f3100j);
        setFocusable(true);
        if (getBackground() == null) {
            int iW = c.w(c.m(this, R.attr.colorSurface), getBackgroundOverlayColorAlpha(), c.m(this, R.attr.colorOnSurface));
            m mVar = this.b;
            if (mVar != null) {
                int i3 = c.f3106a;
                h hVar = new h(mVar);
                hVar.l(ColorStateList.valueOf(iW));
                drawable = hVar;
            } else {
                Resources resources = getResources();
                int i4 = c.f3106a;
                float dimension = resources.getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setCornerRadius(dimension);
                gradientDrawable.setColor(iW);
                drawable = gradientDrawable;
            }
            if (this.f3104h != null) {
                drawableWrap = DrawableCompat.wrap(drawable);
                DrawableCompat.setTintList(drawableWrap, this.f3104h);
            } else {
                drawableWrap = DrawableCompat.wrap(drawable);
            }
            ViewCompat.setBackground(this, drawableWrap);
        }
    }

    public float getActionTextColorAlpha() {
        return this.f3103e;
    }

    public int getAnimationMode() {
        return this.f3101c;
    }

    public float getBackgroundOverlayColorAlpha() {
        return this.f3102d;
    }

    public int getMaxInlineActionWidth() {
        return this.g;
    }

    public int getMaxWidth() {
        return this.f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i3, int i4) {
        super.onMeasure(i3, i4);
        int i5 = this.f;
        if (i5 <= 0 || getMeasuredWidth() <= i5) {
            return;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), i4);
    }

    public void setAnimationMode(int i3) {
        this.f3101c = i3;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != null && this.f3104h != null) {
            drawable = DrawableCompat.wrap(drawable.mutate());
            DrawableCompat.setTintList(drawable, this.f3104h);
            DrawableCompat.setTintMode(drawable, this.f3105i);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.f3104h = colorStateList;
        if (getBackground() != null) {
            Drawable drawableWrap = DrawableCompat.wrap(getBackground().mutate());
            DrawableCompat.setTintList(drawableWrap, colorStateList);
            DrawableCompat.setTintMode(drawableWrap, this.f3105i);
            if (drawableWrap != getBackground()) {
                super.setBackgroundDrawable(drawableWrap);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.f3105i = mode;
        if (getBackground() != null) {
            Drawable drawableWrap = DrawableCompat.wrap(getBackground().mutate());
            DrawableCompat.setTintMode(drawableWrap, mode);
            if (drawableWrap != getBackground()) {
                super.setBackgroundDrawable(drawableWrap);
            }
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : f3100j);
        super.setOnClickListener(onClickListener);
    }

    private void setBaseTransientBottomBar(c cVar) {
    }
}
