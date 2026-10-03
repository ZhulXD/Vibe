package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class J extends E {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final I f4706e;
    public Drawable f;
    public ColorStateList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f4707h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4708i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4709j;

    public J(I i3) {
        super(i3);
        this.g = null;
        this.f4707h = null;
        this.f4708i = false;
        this.f4709j = false;
        this.f4706e = i3;
    }

    @Override // k.E
    public final void b(AttributeSet attributeSet, int i3) {
        super.b(attributeSet, R.attr.seekBarStyle);
        I i4 = this.f4706e;
        Context context = i4.getContext();
        int[] iArr = p008d.a.g;
        Z0 z0E = Z0.e(context, attributeSet, iArr, R.attr.seekBarStyle);
        TypedArray typedArray = z0E.b;
        ViewCompat.saveAttributeDataForStyleable(i4, i4.getContext(), iArr, attributeSet, z0E.b, R.attr.seekBarStyle, 0);
        Drawable drawableC = z0E.c(0);
        if (drawableC != null) {
            i4.setThumb(drawableC);
        }
        Drawable drawableB = z0E.b(1);
        Drawable drawable = this.f;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f = drawableB;
        if (drawableB != null) {
            drawableB.setCallback(i4);
            DrawableCompat.setLayoutDirection(drawableB, i4.getLayoutDirection());
            if (drawableB.isStateful()) {
                drawableB.setState(i4.getDrawableState());
            }
            f();
        }
        i4.invalidate();
        if (typedArray.hasValue(3)) {
            this.f4707h = AbstractC0309p0.c(typedArray.getInt(3, -1), this.f4707h);
            this.f4709j = true;
        }
        if (typedArray.hasValue(2)) {
            this.g = z0E.a(2);
            this.f4708i = true;
        }
        z0E.f();
        f();
    }

    public final void f() {
        Drawable drawable = this.f;
        if (drawable != null) {
            if (this.f4708i || this.f4709j) {
                Drawable drawableWrap = DrawableCompat.wrap(drawable.mutate());
                this.f = drawableWrap;
                if (this.f4708i) {
                    DrawableCompat.setTintList(drawableWrap, this.g);
                }
                if (this.f4709j) {
                    DrawableCompat.setTintMode(this.f, this.f4707h);
                }
                if (this.f.isStateful()) {
                    this.f.setState(this.f4706e.getDrawableState());
                }
            }
        }
    }

    public final void g(Canvas canvas) {
        if (this.f != null) {
            I i3 = this.f4706e;
            int max = i3.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f.getIntrinsicWidth();
                int intrinsicHeight = this.f.getIntrinsicHeight();
                int i4 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i5 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f.setBounds(-i4, -i5, i4, i5);
                float width = ((i3.getWidth() - i3.getPaddingLeft()) - i3.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(i3.getPaddingLeft(), i3.getHeight() / 2);
                for (int i6 = 0; i6 <= max; i6++) {
                    this.f.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }
}
