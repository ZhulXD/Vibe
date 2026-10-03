package p010d1;

import Y0.h;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends h {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final /* synthetic */ int f3888z = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public f f3889y;

    @Override // Y0.h
    public final void f(Canvas canvas) {
        if (this.f3889y.f3887r.isEmpty()) {
            super.f(canvas);
            return;
        }
        canvas.save();
        if (Build.VERSION.SDK_INT >= 26) {
            canvas.clipOutRect(this.f3889y.f3887r);
        } else {
            canvas.clipRect(this.f3889y.f3887r, Region.Op.DIFFERENCE);
        }
        super.f(canvas);
        canvas.restore();
    }

    @Override // Y0.h, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.f3889y = new f(this.f3889y);
        return this;
    }

    public final void t(float f, float f3, float f4, float f5) {
        RectF rectF = this.f3889y.f3887r;
        if (f == rectF.left && f3 == rectF.top && f4 == rectF.right && f5 == rectF.bottom) {
            return;
        }
        rectF.set(f, f3, f4, f5);
        invalidateSelf();
    }
}
