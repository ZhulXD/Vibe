package com.google.android.material.button;

import A1.C0009b;
import I0.a;
import I0.b;
import I0.c;
import R0.p;
import R0.t;
import Y0.l;
import Y0.m;
import Y0.x;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.bumptech.glide.d;
import java.util.Iterator;
import java.util.LinkedHashSet;
import k.r;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialButton extends r implements Checkable, x {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int[] f3351s = {R.attr.state_checkable};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int[] f3352t = {R.attr.state_checked};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c f3353e;
    public final LinkedHashSet f;
    public a g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f3354h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ColorStateList f3355i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Drawable f3356j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f3357k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3358l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3359m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3360n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3361o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3362p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f3363q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3364r;

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.minhub.gamehub.R.attr.materialButtonStyle);
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        if (textAlignment == 1) {
            return getGravityTextAlignment();
        }
        if (textAlignment == 6 || textAlignment == 3) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (gravity != 1) {
            return (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float fMax = 0.0f;
        for (int i3 = 0; i3 < lineCount; i3++) {
            fMax = Math.max(fMax, getLayout().getLineWidth(i3));
        }
        return (int) Math.ceil(fMax);
    }

    public final boolean a() {
        c cVar = this.f3353e;
        return (cVar == null || cVar.f1159o) ? false : true;
    }

    public final void b() {
        int i3 = this.f3364r;
        if (i3 == 1 || i3 == 2) {
            TextViewCompat.setCompoundDrawablesRelative(this, this.f3356j, null, null, null);
            return;
        }
        if (i3 == 3 || i3 == 4) {
            TextViewCompat.setCompoundDrawablesRelative(this, null, null, this.f3356j, null);
        } else if (i3 == 16 || i3 == 32) {
            TextViewCompat.setCompoundDrawablesRelative(this, null, this.f3356j, null, null);
        }
    }

    public final void c(boolean z2) {
        Drawable drawable = this.f3356j;
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
            this.f3356j = drawableMutate;
            DrawableCompat.setTintList(drawableMutate, this.f3355i);
            PorterDuff.Mode mode = this.f3354h;
            if (mode != null) {
                DrawableCompat.setTintMode(this.f3356j, mode);
            }
            int intrinsicWidth = this.f3358l;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f3356j.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f3358l;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f3356j.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f3356j;
            int i3 = this.f3359m;
            int i4 = this.f3360n;
            drawable2.setBounds(i3, i4, intrinsicWidth + i3, intrinsicHeight + i4);
            this.f3356j.setVisible(true, z2);
        }
        if (z2) {
            b();
            return;
        }
        Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this);
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        int i5 = this.f3364r;
        if (((i5 == 1 || i5 == 2) && drawable3 != this.f3356j) || (((i5 == 3 || i5 == 4) && drawable5 != this.f3356j) || ((i5 == 16 || i5 == 32) && drawable4 != this.f3356j))) {
            b();
        }
    }

    public final void d(int i3, int i4) {
        if (this.f3356j == null || getLayout() == null) {
            return;
        }
        int i5 = this.f3364r;
        if (i5 != 1 && i5 != 2 && i5 != 3 && i5 != 4) {
            if (i5 == 16 || i5 == 32) {
                this.f3359m = 0;
                if (i5 == 16) {
                    this.f3360n = 0;
                    c(false);
                    return;
                }
                int intrinsicHeight = this.f3358l;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.f3356j.getIntrinsicHeight();
                }
                int iMax = Math.max(0, (((((i4 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.f3361o) - getPaddingBottom()) / 2);
                if (this.f3360n != iMax) {
                    this.f3360n = iMax;
                    c(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f3360n = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i6 = this.f3364r;
        if (i6 == 1 || i6 == 3 || ((i6 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i6 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.f3359m = 0;
            c(false);
            return;
        }
        int intrinsicWidth = this.f3358l;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f3356j.getIntrinsicWidth();
        }
        int textLayoutWidth = ((((i3 - getTextLayoutWidth()) - ViewCompat.getPaddingEnd(this)) - intrinsicWidth) - this.f3361o) - ViewCompat.getPaddingStart(this);
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            textLayoutWidth /= 2;
        }
        if ((ViewCompat.getLayoutDirection(this) == 1) != (this.f3364r == 4)) {
            textLayoutWidth = -textLayoutWidth;
        }
        if (this.f3359m != textLayoutWidth) {
            this.f3359m = textLayoutWidth;
            c(false);
        }
    }

    public String getA11yClassName() {
        if (!TextUtils.isEmpty(this.f3357k)) {
            return this.f3357k;
        }
        c cVar = this.f3353e;
        return ((cVar == null || !cVar.f1161q) ? Button.class : CompoundButton.class).getName();
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (a()) {
            return this.f3353e.g;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f3356j;
    }

    public int getIconGravity() {
        return this.f3364r;
    }

    public int getIconPadding() {
        return this.f3361o;
    }

    public int getIconSize() {
        return this.f3358l;
    }

    public ColorStateList getIconTint() {
        return this.f3355i;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f3354h;
    }

    public int getInsetBottom() {
        return this.f3353e.f;
    }

    public int getInsetTop() {
        return this.f3353e.f1151e;
    }

    public ColorStateList getRippleColor() {
        if (a()) {
            return this.f3353e.f1156l;
        }
        return null;
    }

    public m getShapeAppearanceModel() {
        if (a()) {
            return this.f3353e.b;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (a()) {
            return this.f3353e.f1155k;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (a()) {
            return this.f3353e.f1152h;
        }
        return 0;
    }

    @Override // k.r, androidx.core.view.TintableBackgroundView
    public ColorStateList getSupportBackgroundTintList() {
        return a() ? this.f3353e.f1154j : super.getSupportBackgroundTintList();
    }

    @Override // k.r, androidx.core.view.TintableBackgroundView
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return a() ? this.f3353e.f1153i : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f3362p;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (a()) {
            com.bumptech.glide.c.T(this, this.f3353e.b(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i3) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i3 + 2);
        c cVar = this.f3353e;
        if (cVar != null && cVar.f1161q) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f3351s);
        }
        if (this.f3362p) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f3352t);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // k.r, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.f3362p);
    }

    @Override // k.r, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        c cVar = this.f3353e;
        accessibilityNodeInfo.setCheckable(cVar != null && cVar.f1161q);
        accessibilityNodeInfo.setChecked(this.f3362p);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // k.r, android.widget.TextView, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
        d(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(bVar.b);
        setChecked(bVar.f1147d);
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        b bVar = new b(super.onSaveInstanceState());
        bVar.f1147d = this.f3362p;
        return bVar;
    }

    @Override // k.r, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
        super.onTextChanged(charSequence, i3, i4, i5);
        d(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (this.f3353e.f1162r) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f3356j != null) {
            if (this.f3356j.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    public void setA11yClassName(String str) {
        this.f3357k = str;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i3) {
        if (!a()) {
            super.setBackgroundColor(i3);
            return;
        }
        c cVar = this.f3353e;
        if (cVar.b(false) != null) {
            cVar.b(false).setTint(i3);
        }
    }

    @Override // k.r, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!a()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
        c cVar = this.f3353e;
        cVar.f1159o = true;
        MaterialButton materialButton = cVar.f1148a;
        materialButton.setSupportBackgroundTintList(cVar.f1154j);
        materialButton.setSupportBackgroundTintMode(cVar.f1153i);
        super.setBackgroundDrawable(drawable);
    }

    @Override // k.r, android.view.View
    public void setBackgroundResource(int i3) {
        setBackgroundDrawable(i3 != 0 ? d.v(getContext(), i3) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z2) {
        if (a()) {
            this.f3353e.f1161q = z2;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z2) {
        c cVar = this.f3353e;
        if (cVar == null || !cVar.f1161q || !isEnabled() || this.f3362p == z2) {
            return;
        }
        this.f3362p = z2;
        refreshDrawableState();
        if (getParent() instanceof MaterialButtonToggleGroup) {
            MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
            boolean z3 = this.f3362p;
            if (!materialButtonToggleGroup.g) {
                materialButtonToggleGroup.b(getId(), z3);
            }
        }
        if (this.f3363q) {
            return;
        }
        this.f3363q = true;
        Iterator it = this.f.iterator();
        if (it.hasNext()) {
            throw E.b.g(it);
        }
        this.f3363q = false;
    }

    public void setCornerRadius(int i3) {
        if (a()) {
            c cVar = this.f3353e;
            if (cVar.f1160p && cVar.g == i3) {
                return;
            }
            cVar.g = i3;
            cVar.f1160p = true;
            l lVarE = cVar.b.e();
            lVarE.b(i3);
            cVar.c(lVarE.a());
        }
    }

    public void setCornerRadiusResource(int i3) {
        if (a()) {
            setCornerRadius(getResources().getDimensionPixelSize(i3));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (a()) {
            this.f3353e.b(false).k(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f3356j != drawable) {
            this.f3356j = drawable;
            c(true);
            d(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i3) {
        if (this.f3364r != i3) {
            this.f3364r = i3;
            d(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i3) {
        if (this.f3361o != i3) {
            this.f3361o = i3;
            setCompoundDrawablePadding(i3);
        }
    }

    public void setIconResource(int i3) {
        setIcon(i3 != 0 ? d.v(getContext(), i3) : null);
    }

    public void setIconSize(int i3) {
        if (i3 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f3358l != i3) {
            this.f3358l = i3;
            c(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f3355i != colorStateList) {
            this.f3355i = colorStateList;
            c(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f3354h != mode) {
            this.f3354h = mode;
            c(false);
        }
    }

    public void setIconTintResource(int i3) {
        setIconTint(ContextCompat.getColorStateList(getContext(), i3));
    }

    public void setInsetBottom(int i3) {
        c cVar = this.f3353e;
        cVar.d(cVar.f1151e, i3);
    }

    public void setInsetTop(int i3) {
        c cVar = this.f3353e;
        cVar.d(i3, cVar.f);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(a aVar) {
        this.g = aVar;
    }

    @Override // android.view.View
    public void setPressed(boolean z2) {
        a aVar = this.g;
        if (aVar != null) {
            ((MaterialButtonToggleGroup) ((C0009b) aVar).b).invalidate();
        }
        super.setPressed(z2);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (a()) {
            c cVar = this.f3353e;
            MaterialButton materialButton = cVar.f1148a;
            if (cVar.f1156l != colorStateList) {
                cVar.f1156l = colorStateList;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) materialButton.getBackground()).setColor(W0.a.c(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(int i3) {
        if (a()) {
            setRippleColor(ContextCompat.getColorStateList(getContext(), i3));
        }
    }

    @Override // Y0.x
    public void setShapeAppearanceModel(m mVar) {
        if (!a()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f3353e.c(mVar);
    }

    public void setShouldDrawSurfaceColorStroke(boolean z2) {
        if (a()) {
            c cVar = this.f3353e;
            cVar.f1158n = z2;
            cVar.f();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (a()) {
            c cVar = this.f3353e;
            if (cVar.f1155k != colorStateList) {
                cVar.f1155k = colorStateList;
                cVar.f();
            }
        }
    }

    public void setStrokeColorResource(int i3) {
        if (a()) {
            setStrokeColor(ContextCompat.getColorStateList(getContext(), i3));
        }
    }

    public void setStrokeWidth(int i3) {
        if (a()) {
            c cVar = this.f3353e;
            if (cVar.f1152h != i3) {
                cVar.f1152h = i3;
                cVar.f();
            }
        }
    }

    public void setStrokeWidthResource(int i3) {
        if (a()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i3));
        }
    }

    @Override // k.r, androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!a()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        c cVar = this.f3353e;
        if (cVar.f1154j != colorStateList) {
            cVar.f1154j = colorStateList;
            if (cVar.b(false) != null) {
                DrawableCompat.setTintList(cVar.b(false), cVar.f1154j);
            }
        }
    }

    @Override // k.r, androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!a()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        c cVar = this.f3353e;
        if (cVar.f1153i != mode) {
            cVar.f1153i = mode;
            if (cVar.b(false) == null || cVar.f1153i == null) {
                return;
            }
            DrawableCompat.setTintMode(cVar.b(false), cVar.f1153i);
        }
    }

    @Override // android.view.View
    public void setTextAlignment(int i3) {
        super.setTextAlignment(i3);
        d(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z2) {
        this.f3353e.f1162r = z2;
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f3362p);
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i3) {
        super(p015f1.a.a(context, attributeSet, i3, com.minhub.gamehub.R.style.Widget_MaterialComponents_Button), attributeSet, i3);
        this.f = new LinkedHashSet();
        this.f3362p = false;
        this.f3363q = false;
        Context context2 = getContext();
        TypedArray typedArrayE = p.e(context2, attributeSet, A0.a.f30p, i3, com.minhub.gamehub.R.style.Widget_MaterialComponents_Button, new int[0]);
        this.f3361o = typedArrayE.getDimensionPixelSize(12, 0);
        int i4 = typedArrayE.getInt(15, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f3354h = t.e(i4, mode);
        this.f3355i = d.r(getContext(), typedArrayE, 14);
        this.f3356j = d.w(getContext(), typedArrayE, 10);
        this.f3364r = typedArrayE.getInteger(11, 1);
        this.f3358l = typedArrayE.getDimensionPixelSize(13, 0);
        c cVar = new c(this, m.b(context2, attributeSet, i3, com.minhub.gamehub.R.style.Widget_MaterialComponents_Button).a());
        this.f3353e = cVar;
        cVar.f1149c = typedArrayE.getDimensionPixelOffset(1, 0);
        cVar.f1150d = typedArrayE.getDimensionPixelOffset(2, 0);
        cVar.f1151e = typedArrayE.getDimensionPixelOffset(3, 0);
        cVar.f = typedArrayE.getDimensionPixelOffset(4, 0);
        if (typedArrayE.hasValue(8)) {
            int dimensionPixelSize = typedArrayE.getDimensionPixelSize(8, -1);
            cVar.g = dimensionPixelSize;
            l lVarE = cVar.b.e();
            lVarE.b(dimensionPixelSize);
            cVar.c(lVarE.a());
            cVar.f1160p = true;
        }
        cVar.f1152h = typedArrayE.getDimensionPixelSize(20, 0);
        cVar.f1153i = t.e(typedArrayE.getInt(7, -1), mode);
        cVar.f1154j = d.r(getContext(), typedArrayE, 6);
        cVar.f1155k = d.r(getContext(), typedArrayE, 19);
        cVar.f1156l = d.r(getContext(), typedArrayE, 16);
        cVar.f1161q = typedArrayE.getBoolean(5, false);
        cVar.f1164t = typedArrayE.getDimensionPixelSize(9, 0);
        cVar.f1162r = typedArrayE.getBoolean(21, true);
        int paddingStart = ViewCompat.getPaddingStart(this);
        int paddingTop = getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this);
        int paddingBottom = getPaddingBottom();
        if (typedArrayE.hasValue(0)) {
            cVar.f1159o = true;
            setSupportBackgroundTintList(cVar.f1154j);
            setSupportBackgroundTintMode(cVar.f1153i);
        } else {
            cVar.e();
        }
        ViewCompat.setPaddingRelative(this, paddingStart + cVar.f1149c, paddingTop + cVar.f1151e, paddingEnd + cVar.f1150d, paddingBottom + cVar.f);
        typedArrayE.recycle();
        setCompoundDrawablePadding(this.f3361o);
        c(this.f3356j != null);
    }
}
