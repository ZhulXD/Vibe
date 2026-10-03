package com.google.android.material.slider;

import Y0.e;
import Y0.h;
import Y0.m;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.c;
import java.util.Iterator;
import p000a.a;
import p002a1.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Slider extends d {
    public Slider(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.value});
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            setValue(typedArrayObtainStyledAttributes.getFloat(0, 0.0f));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    public int getActiveThumbIndex() {
        return this.f2523U;
    }

    public int getFocusedThumbIndex() {
        return this.f2524V;
    }

    public int getHaloRadius() {
        return this.f2511H;
    }

    public ColorStateList getHaloTintList() {
        return this.f2537h0;
    }

    public int getLabelBehavior() {
        return this.f2506C;
    }

    public float getStepSize() {
        return this.f2525W;
    }

    public float getThumbElevation() {
        return this.p0.b.f2392m;
    }

    public int getThumbHeight() {
        return this.f2510G;
    }

    @Override // p002a1.d
    public int getThumbRadius() {
        return this.f2509F / 2;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.p0.b.f2385d;
    }

    public float getThumbStrokeWidth() {
        return this.p0.b.f2389j;
    }

    public ColorStateList getThumbTintList() {
        return this.p0.b.f2384c;
    }

    public int getThumbTrackGapSize() {
        return this.f2512I;
    }

    public int getThumbWidth() {
        return this.f2509F;
    }

    public int getTickActiveRadius() {
        return this.f2529c0;
    }

    public ColorStateList getTickActiveTintList() {
        return this.f2539i0;
    }

    public int getTickInactiveRadius() {
        return this.f2531d0;
    }

    public ColorStateList getTickInactiveTintList() {
        return this.f2541j0;
    }

    public ColorStateList getTickTintList() {
        if (this.f2541j0.equals(this.f2539i0)) {
            return this.f2539i0;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    public ColorStateList getTrackActiveTintList() {
        return this.f2543k0;
    }

    public int getTrackHeight() {
        return this.f2507D;
    }

    public ColorStateList getTrackInactiveTintList() {
        return this.f2545l0;
    }

    public int getTrackInsideCornerSize() {
        return this.f2515M;
    }

    public int getTrackSidePadding() {
        return this.f2508E;
    }

    public int getTrackStopIndicatorSize() {
        return this.f2514L;
    }

    public ColorStateList getTrackTintList() {
        if (this.f2545l0.equals(this.f2543k0)) {
            return this.f2543k0;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    public int getTrackWidth() {
        return this.f2533e0;
    }

    public float getValue() {
        return getValues().get(0).floatValue();
    }

    public float getValueFrom() {
        return this.f2520R;
    }

    public float getValueTo() {
        return this.f2521S;
    }

    public void setCustomThumbDrawable(int i3) {
        setCustomThumbDrawable(getResources().getDrawable(i3));
    }

    @Override // p002a1.d, android.view.View
    public /* bridge */ /* synthetic */ void setEnabled(boolean z2) {
        super.setEnabled(z2);
    }

    public void setFocusedThumbIndex(int i3) {
        if (i3 < 0 || i3 >= this.f2522T.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.f2524V = i3;
        this.f2538i.n(i3);
        postInvalidate();
    }

    @Override // p002a1.d
    public void setHaloRadius(int i3) {
        if (i3 == this.f2511H) {
            return;
        }
        this.f2511H = i3;
        Drawable background = getBackground();
        if ((getBackground() instanceof RippleDrawable) && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setRadius(this.f2511H);
        } else {
            postInvalidate();
        }
    }

    public void setHaloRadiusResource(int i3) {
        setHaloRadius(getResources().getDimensionPixelSize(i3));
    }

    @Override // p002a1.d
    public void setHaloTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f2537h0)) {
            return;
        }
        this.f2537h0 = colorStateList;
        Drawable background = getBackground();
        if ((getBackground() instanceof RippleDrawable) && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        int iH = h(colorStateList);
        Paint paint = this.f2532e;
        paint.setColor(iH);
        paint.setAlpha(63);
        invalidate();
    }

    @Override // p002a1.d
    public void setLabelBehavior(int i3) {
        if (this.f2506C != i3) {
            this.f2506C = i3;
            requestLayout();
        }
    }

    public void setStepSize(float f) {
        if (f >= 0.0f) {
            if (this.f2525W != f) {
                this.f2525W = f;
                this.f2535g0 = true;
                postInvalidate();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("The stepSize(" + f + ") must be 0, or a factor of the valueFrom(" + this.f2520R + ")-valueTo(" + this.f2521S + ") range");
    }

    @Override // p002a1.d
    public void setThumbElevation(float f) {
        this.p0.k(f);
    }

    public void setThumbElevationResource(int i3) {
        setThumbElevation(getResources().getDimension(i3));
    }

    @Override // p002a1.d
    public void setThumbHeight(int i3) {
        if (i3 == this.f2510G) {
            return;
        }
        this.f2510G = i3;
        this.p0.setBounds(0, 0, this.f2509F, i3);
        Drawable drawable = this.f2553q0;
        if (drawable != null) {
            a(drawable);
        }
        Iterator it = this.f2555r0.iterator();
        while (it.hasNext()) {
            a((Drawable) it.next());
        }
        y();
    }

    public void setThumbHeightResource(int i3) {
        setThumbHeight(getResources().getDimensionPixelSize(i3));
    }

    public void setThumbRadius(int i3) {
        int i4 = i3 * 2;
        setThumbWidth(i4);
        setThumbHeight(i4);
    }

    public void setThumbRadiusResource(int i3) {
        setThumbRadius(getResources().getDimensionPixelSize(i3));
    }

    @Override // p002a1.d
    public void setThumbStrokeColor(ColorStateList colorStateList) {
        this.p0.p(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(int i3) {
        if (i3 != 0) {
            setThumbStrokeColor(ContextCompat.getColorStateList(getContext(), i3));
        }
    }

    @Override // p002a1.d
    public void setThumbStrokeWidth(float f) {
        h hVar = this.p0;
        hVar.b.f2389j = f;
        hVar.invalidateSelf();
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(int i3) {
        if (i3 != 0) {
            setThumbStrokeWidth(getResources().getDimension(i3));
        }
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        h hVar = this.p0;
        if (colorStateList.equals(hVar.b.f2384c)) {
            return;
        }
        hVar.l(colorStateList);
        invalidate();
    }

    @Override // p002a1.d
    public void setThumbTrackGapSize(int i3) {
        if (this.f2512I == i3) {
            return;
        }
        this.f2512I = i3;
        invalidate();
    }

    @Override // p002a1.d
    public void setThumbWidth(int i3) {
        if (i3 == this.f2509F) {
            return;
        }
        this.f2509F = i3;
        e eVar = new e(0);
        e eVar2 = new e(0);
        e eVar3 = new e(0);
        e eVar4 = new e(0);
        float f = this.f2509F / 2.0f;
        a aVarI = c.i(0);
        Y0.a aVar = new Y0.a(f);
        Y0.a aVar2 = new Y0.a(f);
        Y0.a aVar3 = new Y0.a(f);
        Y0.a aVar4 = new Y0.a(f);
        m mVar = new m();
        mVar.f2429a = aVarI;
        mVar.b = aVarI;
        mVar.f2430c = aVarI;
        mVar.f2431d = aVarI;
        mVar.f2432e = aVar;
        mVar.f = aVar2;
        mVar.g = aVar3;
        mVar.f2433h = aVar4;
        mVar.f2434i = eVar;
        mVar.f2435j = eVar2;
        mVar.f2436k = eVar3;
        mVar.f2437l = eVar4;
        h hVar = this.p0;
        hVar.setShapeAppearanceModel(mVar);
        hVar.setBounds(0, 0, this.f2509F, this.f2510G);
        Drawable drawable = this.f2553q0;
        if (drawable != null) {
            a(drawable);
        }
        Iterator it = this.f2555r0.iterator();
        while (it.hasNext()) {
            a((Drawable) it.next());
        }
        y();
    }

    public void setThumbWidthResource(int i3) {
        setThumbWidth(getResources().getDimensionPixelSize(i3));
    }

    @Override // p002a1.d
    public void setTickActiveRadius(int i3) {
        if (this.f2529c0 != i3) {
            this.f2529c0 = i3;
            this.g.setStrokeWidth(i3 * 2);
            y();
        }
    }

    @Override // p002a1.d
    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f2539i0)) {
            return;
        }
        this.f2539i0 = colorStateList;
        this.g.setColor(h(colorStateList));
        invalidate();
    }

    @Override // p002a1.d
    public void setTickInactiveRadius(int i3) {
        if (this.f2531d0 != i3) {
            this.f2531d0 = i3;
            this.f.setStrokeWidth(i3 * 2);
            y();
        }
    }

    @Override // p002a1.d
    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f2541j0)) {
            return;
        }
        this.f2541j0 = colorStateList;
        this.f.setColor(h(colorStateList));
        invalidate();
    }

    public void setTickTintList(ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z2) {
        if (this.f2527b0 != z2) {
            this.f2527b0 = z2;
            postInvalidate();
        }
    }

    @Override // p002a1.d
    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f2543k0)) {
            return;
        }
        this.f2543k0 = colorStateList;
        this.f2528c.setColor(h(colorStateList));
        this.f2536h.setColor(h(this.f2543k0));
        invalidate();
    }

    @Override // p002a1.d
    public void setTrackHeight(int i3) {
        if (this.f2507D != i3) {
            this.f2507D = i3;
            this.b.setStrokeWidth(i3);
            this.f2528c.setStrokeWidth(this.f2507D);
            y();
        }
    }

    @Override // p002a1.d
    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f2545l0)) {
            return;
        }
        this.f2545l0 = colorStateList;
        this.b.setColor(h(colorStateList));
        invalidate();
    }

    @Override // p002a1.d
    public void setTrackInsideCornerSize(int i3) {
        if (this.f2515M == i3) {
            return;
        }
        this.f2515M = i3;
        invalidate();
    }

    @Override // p002a1.d
    public void setTrackStopIndicatorSize(int i3) {
        if (this.f2514L == i3) {
            return;
        }
        this.f2514L = i3;
        this.f2536h.setStrokeWidth(i3);
        invalidate();
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValue(float f) {
        setValues(Float.valueOf(f));
    }

    public void setValueFrom(float f) {
        this.f2520R = f;
        this.f2535g0 = true;
        postInvalidate();
    }

    public void setValueTo(float f) {
        this.f2521S = f;
        this.f2535g0 = true;
        postInvalidate();
    }

    public void setCustomThumbDrawable(Drawable drawable) {
        Drawable drawableNewDrawable = drawable.mutate().getConstantState().newDrawable();
        a(drawableNewDrawable);
        this.f2553q0 = drawableNewDrawable;
        this.f2555r0.clear();
        postInvalidate();
    }

    public /* bridge */ /* synthetic */ void setLabelFormatter(p002a1.e eVar) {
    }
}
