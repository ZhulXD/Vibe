package p040p;

import A1.C0013d;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.material.datepicker.c;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends FrameLayout {
    public static final int[] g = {R.attr.colorBackground};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final c f5207h = new c(26);
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5208c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f5209d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f5210e;
    public final C0013d f;

    public a(Context context, AttributeSet attributeSet) {
        ColorStateList colorStateListValueOf;
        super(context, attributeSet, com.minhub.gamehub.R.attr.materialCardViewStyle);
        Rect rect = new Rect();
        this.f5209d = rect;
        this.f5210e = new Rect();
        C0013d c0013d = new C0013d(this);
        this.f = c0013d;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p037o.a.f5155a, com.minhub.gamehub.R.attr.materialCardViewStyle, com.minhub.gamehub.R.style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            colorStateListValueOf = typedArrayObtainStyledAttributes.getColorStateList(2);
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(g);
            int color = typedArrayObtainStyledAttributes2.getColor(0, 0);
            typedArrayObtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateListValueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(com.minhub.gamehub.R.color.cardview_light_background) : getResources().getColor(com.minhub.gamehub.R.color.cardview_dark_background));
        }
        float dimension = typedArrayObtainStyledAttributes.getDimension(3, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(4, 0.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(5, 0.0f);
        this.b = typedArrayObtainStyledAttributes.getBoolean(7, false);
        this.f5208c = typedArrayObtainStyledAttributes.getBoolean(6, true);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        rect.left = typedArrayObtainStyledAttributes.getDimensionPixelSize(10, dimensionPixelSize);
        rect.top = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        rect.right = typedArrayObtainStyledAttributes.getDimensionPixelSize(11, dimensionPixelSize);
        rect.bottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        b bVar = new b(colorStateListValueOf, dimension);
        c0013d.f177c = bVar;
        setBackgroundDrawable(bVar);
        setClipToOutline(true);
        setElevation(dimension2);
        f5207h.s(c0013d, dimension3);
    }

    public ColorStateList getCardBackgroundColor() {
        return ((b) ((Drawable) this.f.f177c)).f5215h;
    }

    public float getCardElevation() {
        return ((a) this.f.f178d).getElevation();
    }

    public int getContentPaddingBottom() {
        return this.f5209d.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f5209d.left;
    }

    public int getContentPaddingRight() {
        return this.f5209d.right;
    }

    public int getContentPaddingTop() {
        return this.f5209d.top;
    }

    public float getMaxCardElevation() {
        return ((b) ((Drawable) this.f.f177c)).f5214e;
    }

    public boolean getPreventCornerOverlap() {
        return this.f5208c;
    }

    public float getRadius() {
        return ((b) ((Drawable) this.f.f177c)).f5211a;
    }

    public boolean getUseCompatPadding() {
        return this.b;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i3, int i4) {
        super.onMeasure(i3, i4);
    }

    public void setCardBackgroundColor(int i3) {
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(i3);
        b bVar = (b) ((Drawable) this.f.f177c);
        if (colorStateListValueOf == null) {
            bVar.getClass();
            colorStateListValueOf = ColorStateList.valueOf(0);
        }
        bVar.f5215h = colorStateListValueOf;
        bVar.b.setColor(colorStateListValueOf.getColorForState(bVar.getState(), bVar.f5215h.getDefaultColor()));
        bVar.invalidateSelf();
    }

    public void setCardElevation(float f) {
        ((a) this.f.f178d).setElevation(f);
    }

    public void setMaxCardElevation(float f) {
        f5207h.s(this.f, f);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i3) {
        super.setMinimumHeight(i3);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i3) {
        super.setMinimumWidth(i3);
    }

    public void setPreventCornerOverlap(boolean z2) {
        if (z2 != this.f5208c) {
            this.f5208c = z2;
            C0013d c0013d = this.f;
            f5207h.s(c0013d, ((b) ((Drawable) c0013d.f177c)).f5214e);
        }
    }

    public void setRadius(float f) {
        b bVar = (b) ((Drawable) this.f.f177c);
        if (f == bVar.f5211a) {
            return;
        }
        bVar.f5211a = f;
        bVar.b(null);
        bVar.invalidateSelf();
    }

    public void setUseCompatPadding(boolean z2) {
        if (this.b != z2) {
            this.b = z2;
            C0013d c0013d = this.f;
            f5207h.s(c0013d, ((b) ((Drawable) c0013d.f177c)).f5214e);
        }
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        b bVar = (b) ((Drawable) this.f.f177c);
        if (colorStateList == null) {
            bVar.getClass();
            colorStateList = ColorStateList.valueOf(0);
        }
        bVar.f5215h = colorStateList;
        bVar.b.setColor(colorStateList.getColorForState(bVar.getState(), bVar.f5215h.getDefaultColor()));
        bVar.invalidateSelf();
    }

    @Override // android.view.View
    public final void setPadding(int i3, int i4, int i5, int i6) {
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i3, int i4, int i5, int i6) {
    }
}
