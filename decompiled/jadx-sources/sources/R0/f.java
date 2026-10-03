package R0;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.core.view.GravityCompat;
import k.A0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f extends A0 {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Drawable f1920q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Rect f1921r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Rect f1922s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1923t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f1924u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f1925v;

    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1921r = new Rect();
        this.f1922s = new Rect();
        this.f1923t = 119;
        this.f1924u = true;
        this.f1925v = false;
        p.a(context, attributeSet, 0, 0);
        int[] iArr = A0.a.f27m;
        p.b(context, attributeSet, iArr, 0, 0, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        this.f1923t = typedArrayObtainStyledAttributes.getInt(1, this.f1923t);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f1924u = typedArrayObtainStyledAttributes.getBoolean(2, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f1920q;
        if (drawable != null) {
            if (this.f1925v) {
                this.f1925v = false;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                boolean z2 = this.f1924u;
                Rect rect = this.f1921r;
                if (z2) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                int i3 = this.f1923t;
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                Rect rect2 = this.f1922s;
                Gravity.apply(i3, intrinsicWidth, intrinsicHeight, rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public final void drawableHotspotChanged(float f, float f3) {
        super.drawableHotspotChanged(f, f3);
        Drawable drawable = this.f1920q;
        if (drawable != null) {
            drawable.setHotspot(f, f3);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f1920q;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f1920q.setState(getDrawableState());
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f1920q;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f1923t;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1920q;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // k.A0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
        this.f1925v = z2 | this.f1925v;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i3, int i4, int i5, int i6) {
        super.onSizeChanged(i3, i4, i5, i6);
        this.f1925v = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f1920q;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f1920q);
            }
            this.f1920q = drawable;
            this.f1925v = true;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f1923t == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i3) {
        if (this.f1923t != i3) {
            if ((8388615 & i3) == 0) {
                i3 |= GravityCompat.START;
            }
            if ((i3 & 112) == 0) {
                i3 |= 48;
            }
            this.f1923t = i3;
            if (i3 == 119 && this.f1920q != null) {
                this.f1920q.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1920q;
    }
}
