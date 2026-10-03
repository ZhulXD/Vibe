package com.google.android.material.card;

import J0.d;
import R0.p;
import Y0.h;
import Y0.l;
import Y0.m;
import Y0.x;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import com.bumptech.glide.c;
import p040p.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialCardView extends a implements Checkable, x {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f3373m = {R.attr.state_checkable};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[] f3374n = {R.attr.state_checked};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[] f3375o = {com.minhub.gamehub.R.attr.state_dragged};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final d f3376i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f3377j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3378k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3379l;

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        super(p015f1.a.a(context, attributeSet, com.minhub.gamehub.R.attr.materialCardViewStyle, com.minhub.gamehub.R.style.Widget_MaterialComponents_CardView), attributeSet);
        this.f3378k = false;
        this.f3379l = false;
        this.f3377j = true;
        TypedArray typedArrayE = p.e(getContext(), attributeSet, A0.a.f34t, com.minhub.gamehub.R.attr.materialCardViewStyle, com.minhub.gamehub.R.style.Widget_MaterialComponents_CardView, new int[0]);
        d dVar = new d(this, attributeSet);
        this.f3376i = dVar;
        ColorStateList cardBackgroundColor = super.getCardBackgroundColor();
        h hVar = dVar.f1196c;
        hVar.l(cardBackgroundColor);
        dVar.b.set(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        dVar.l();
        MaterialCardView materialCardView = dVar.f1195a;
        ColorStateList colorStateListR = com.bumptech.glide.d.r(materialCardView.getContext(), typedArrayE, 11);
        dVar.f1205n = colorStateListR;
        if (colorStateListR == null) {
            dVar.f1205n = ColorStateList.valueOf(-1);
        }
        dVar.f1199h = typedArrayE.getDimensionPixelSize(12, 0);
        boolean z2 = typedArrayE.getBoolean(0, false);
        dVar.f1210s = z2;
        materialCardView.setLongClickable(z2);
        dVar.f1203l = com.bumptech.glide.d.r(materialCardView.getContext(), typedArrayE, 6);
        dVar.g(com.bumptech.glide.d.w(materialCardView.getContext(), typedArrayE, 2));
        dVar.f = typedArrayE.getDimensionPixelSize(5, 0);
        dVar.f1198e = typedArrayE.getDimensionPixelSize(4, 0);
        dVar.g = typedArrayE.getInteger(3, 8388661);
        ColorStateList colorStateListR2 = com.bumptech.glide.d.r(materialCardView.getContext(), typedArrayE, 7);
        dVar.f1202k = colorStateListR2;
        if (colorStateListR2 == null) {
            dVar.f1202k = ColorStateList.valueOf(c.m(materialCardView, com.minhub.gamehub.R.attr.colorControlHighlight));
        }
        ColorStateList colorStateListR3 = com.bumptech.glide.d.r(materialCardView.getContext(), typedArrayE, 1);
        colorStateListR3 = colorStateListR3 == null ? ColorStateList.valueOf(0) : colorStateListR3;
        h hVar2 = dVar.f1197d;
        hVar2.l(colorStateListR3);
        int[] iArr = W0.a.f2299a;
        RippleDrawable rippleDrawable = dVar.f1206o;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(dVar.f1202k);
        }
        hVar.k(materialCardView.getCardElevation());
        float f = dVar.f1199h;
        ColorStateList colorStateList = dVar.f1205n;
        hVar2.b.f2389j = f;
        hVar2.invalidateSelf();
        hVar2.p(colorStateList);
        materialCardView.setBackgroundInternal(dVar.d(hVar));
        Drawable drawableC = dVar.j() ? dVar.c() : hVar2;
        dVar.f1200i = drawableC;
        materialCardView.setForeground(dVar.d(drawableC));
        typedArrayE.recycle();
    }

    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f3376i.f1196c.getBounds());
        return rectF;
    }

    public final void b() {
        d dVar;
        RippleDrawable rippleDrawable;
        if (Build.VERSION.SDK_INT <= 26 || (rippleDrawable = (dVar = this.f3376i).f1206o) == null) {
            return;
        }
        Rect bounds = rippleDrawable.getBounds();
        int i3 = bounds.bottom;
        dVar.f1206o.setBounds(bounds.left, bounds.top, bounds.right, i3 - 1);
        dVar.f1206o.setBounds(bounds.left, bounds.top, bounds.right, i3);
    }

    @Override // p040p.a
    public ColorStateList getCardBackgroundColor() {
        return this.f3376i.f1196c.b.f2384c;
    }

    public ColorStateList getCardForegroundColor() {
        return this.f3376i.f1197d.b.f2384c;
    }

    public float getCardViewRadius() {
        return super.getRadius();
    }

    public Drawable getCheckedIcon() {
        return this.f3376i.f1201j;
    }

    public int getCheckedIconGravity() {
        return this.f3376i.g;
    }

    public int getCheckedIconMargin() {
        return this.f3376i.f1198e;
    }

    public int getCheckedIconSize() {
        return this.f3376i.f;
    }

    public ColorStateList getCheckedIconTint() {
        return this.f3376i.f1203l;
    }

    @Override // p040p.a
    public int getContentPaddingBottom() {
        return this.f3376i.b.bottom;
    }

    @Override // p040p.a
    public int getContentPaddingLeft() {
        return this.f3376i.b.left;
    }

    @Override // p040p.a
    public int getContentPaddingRight() {
        return this.f3376i.b.right;
    }

    @Override // p040p.a
    public int getContentPaddingTop() {
        return this.f3376i.b.top;
    }

    public float getProgress() {
        return this.f3376i.f1196c.b.f2388i;
    }

    @Override // p040p.a
    public float getRadius() {
        return this.f3376i.f1196c.h();
    }

    public ColorStateList getRippleColor() {
        return this.f3376i.f1202k;
    }

    public m getShapeAppearanceModel() {
        return this.f3376i.f1204m;
    }

    @Deprecated
    public int getStrokeColor() {
        ColorStateList colorStateList = this.f3376i.f1205n;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    public ColorStateList getStrokeColorStateList() {
        return this.f3376i.f1205n;
    }

    public int getStrokeWidth() {
        return this.f3376i.f1199h;
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f3378k;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        d dVar = this.f3376i;
        dVar.k();
        c.T(this, dVar.f1196c);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i3) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i3 + 3);
        d dVar = this.f3376i;
        if (dVar != null && dVar.f1210s) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f3373m);
        }
        if (this.f3378k) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f3374n);
        }
        if (this.f3379l) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f3375o);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(this.f3378k);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        d dVar = this.f3376i;
        accessibilityNodeInfo.setCheckable(dVar != null && dVar.f1210s);
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(this.f3378k);
    }

    @Override // p040p.a, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        super.onMeasure(i3, i4);
        this.f3376i.e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f3377j) {
            d dVar = this.f3376i;
            if (!dVar.f1209r) {
                Log.i("MaterialCardView", "Setting a custom background is not supported.");
                dVar.f1209r = true;
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // p040p.a
    public void setCardBackgroundColor(int i3) {
        this.f3376i.f1196c.l(ColorStateList.valueOf(i3));
    }

    @Override // p040p.a
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        d dVar = this.f3376i;
        dVar.f1196c.k(dVar.f1195a.getCardElevation());
    }

    public void setCardForegroundColor(ColorStateList colorStateList) {
        h hVar = this.f3376i.f1197d;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        hVar.l(colorStateList);
    }

    public void setCheckable(boolean z2) {
        this.f3376i.f1210s = z2;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z2) {
        if (this.f3378k != z2) {
            toggle();
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        this.f3376i.g(drawable);
    }

    public void setCheckedIconGravity(int i3) {
        d dVar = this.f3376i;
        if (dVar.g != i3) {
            dVar.g = i3;
            MaterialCardView materialCardView = dVar.f1195a;
            dVar.e(materialCardView.getMeasuredWidth(), materialCardView.getMeasuredHeight());
        }
    }

    public void setCheckedIconMargin(int i3) {
        this.f3376i.f1198e = i3;
    }

    public void setCheckedIconMarginResource(int i3) {
        if (i3 != -1) {
            this.f3376i.f1198e = getResources().getDimensionPixelSize(i3);
        }
    }

    public void setCheckedIconResource(int i3) {
        this.f3376i.g(com.bumptech.glide.d.v(getContext(), i3));
    }

    public void setCheckedIconSize(int i3) {
        this.f3376i.f = i3;
    }

    public void setCheckedIconSizeResource(int i3) {
        if (i3 != 0) {
            this.f3376i.f = getResources().getDimensionPixelSize(i3);
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        d dVar = this.f3376i;
        dVar.f1203l = colorStateList;
        Drawable drawable = dVar.f1201j;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z2) {
        super.setClickable(z2);
        d dVar = this.f3376i;
        if (dVar != null) {
            dVar.k();
        }
    }

    public void setDragged(boolean z2) {
        if (this.f3379l != z2) {
            this.f3379l = z2;
            refreshDrawableState();
            b();
            invalidate();
        }
    }

    @Override // p040p.a
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.f3376i.m();
    }

    @Override // p040p.a
    public void setPreventCornerOverlap(boolean z2) {
        super.setPreventCornerOverlap(z2);
        d dVar = this.f3376i;
        dVar.m();
        dVar.l();
    }

    public void setProgress(float f) {
        d dVar = this.f3376i;
        dVar.f1196c.m(f);
        h hVar = dVar.f1197d;
        if (hVar != null) {
            hVar.m(f);
        }
        h hVar2 = dVar.f1208q;
        if (hVar2 != null) {
            hVar2.m(f);
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0038  */
    @Override // p040p.a
    public void setRadius(float f) {
        super.setRadius(f);
        d dVar = this.f3376i;
        l lVarE = dVar.f1204m.e();
        lVarE.b(f);
        dVar.h(lVarE.a());
        dVar.f1200i.invalidateSelf();
        if (dVar.i()) {
            dVar.l();
        } else if (dVar.f1195a.getPreventCornerOverlap()) {
            h hVar = dVar.f1196c;
            if (!hVar.b.f2383a.d(hVar.g())) {
                dVar.l();
            }
        }
        if (dVar.i()) {
            dVar.m();
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        d dVar = this.f3376i;
        dVar.f1202k = colorStateList;
        int[] iArr = W0.a.f2299a;
        RippleDrawable rippleDrawable = dVar.f1206o;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(colorStateList);
        }
    }

    public void setRippleColorResource(int i3) {
        ColorStateList colorStateList = ContextCompat.getColorStateList(getContext(), i3);
        d dVar = this.f3376i;
        dVar.f1202k = colorStateList;
        int[] iArr = W0.a.f2299a;
        RippleDrawable rippleDrawable = dVar.f1206o;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(colorStateList);
        }
    }

    @Override // Y0.x
    public void setShapeAppearanceModel(m mVar) {
        setClipToOutline(mVar.d(getBoundsAsRectF()));
        this.f3376i.h(mVar);
    }

    public void setStrokeColor(int i3) {
        setStrokeColor(ColorStateList.valueOf(i3));
    }

    public void setStrokeWidth(int i3) {
        d dVar = this.f3376i;
        if (i3 != dVar.f1199h) {
            dVar.f1199h = i3;
            h hVar = dVar.f1197d;
            ColorStateList colorStateList = dVar.f1205n;
            hVar.b.f2389j = i3;
            hVar.invalidateSelf();
            hVar.p(colorStateList);
        }
        invalidate();
    }

    @Override // p040p.a
    public void setUseCompatPadding(boolean z2) {
        super.setUseCompatPadding(z2);
        d dVar = this.f3376i;
        dVar.m();
        dVar.l();
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        d dVar = this.f3376i;
        if (dVar != null && dVar.f1210s && isEnabled()) {
            this.f3378k = !this.f3378k;
            refreshDrawableState();
            b();
            dVar.f(this.f3378k, true);
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        d dVar = this.f3376i;
        if (dVar.f1205n != colorStateList) {
            dVar.f1205n = colorStateList;
            h hVar = dVar.f1197d;
            hVar.b.f2389j = dVar.f1199h;
            hVar.invalidateSelf();
            hVar.p(colorStateList);
        }
        invalidate();
    }

    @Override // p040p.a
    public void setCardBackgroundColor(ColorStateList colorStateList) {
        this.f3376i.f1196c.l(colorStateList);
    }

    public void setOnCheckedChangeListener(J0.a aVar) {
    }
}
