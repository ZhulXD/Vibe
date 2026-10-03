package p040p;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f5211a;
    public final Paint b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RectF f5212c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f5213d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f5214e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ColorStateList f5215h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PorterDuffColorFilter f5216i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f5217j;
    public boolean f = false;
    public boolean g = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PorterDuff.Mode f5218k = PorterDuff.Mode.SRC_IN;

    public b(ColorStateList colorStateList, float f) {
        this.f5211a = f;
        Paint paint = new Paint(5);
        this.b = paint;
        colorStateList = colorStateList == null ? ColorStateList.valueOf(0) : colorStateList;
        this.f5215h = colorStateList;
        paint.setColor(colorStateList.getColorForState(getState(), this.f5215h.getDefaultColor()));
        this.f5212c = new RectF();
        this.f5213d = new Rect();
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public final void b(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        float f = rect.left;
        float f3 = rect.top;
        float f4 = rect.right;
        float f5 = rect.bottom;
        RectF rectF = this.f5212c;
        rectF.set(f, f3, f4, f5);
        Rect rect2 = this.f5213d;
        rect2.set(rect);
        if (this.f) {
            rect2.inset((int) Math.ceil(c.a(this.f5214e, this.f5211a, this.g)), (int) Math.ceil(c.b(this.f5214e, this.f5211a, this.g)));
            rectF.set(rect2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z2;
        PorterDuffColorFilter porterDuffColorFilter = this.f5216i;
        Paint paint = this.b;
        if (porterDuffColorFilter == null || paint.getColorFilter() != null) {
            z2 = false;
        } else {
            paint.setColorFilter(this.f5216i);
            z2 = true;
        }
        RectF rectF = this.f5212c;
        float f = this.f5211a;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z2) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        outline.setRoundRect(this.f5213d, this.f5211a);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.f5217j;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        ColorStateList colorStateList2 = this.f5215h;
        return (colorStateList2 != null && colorStateList2.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        b(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f5215h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        Paint paint = this.b;
        boolean z2 = colorForState != paint.getColor();
        if (z2) {
            paint.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f5217j;
        if (colorStateList2 == null || (mode = this.f5218k) == null) {
            return z2;
        }
        this.f5216i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i3) {
        this.b.setAlpha(i3);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.f5217j = colorStateList;
        this.f5216i = a(colorStateList, this.f5218k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f5218k = mode;
        this.f5216i = a(this.f5217j, mode);
        invalidateSelf();
    }
}
