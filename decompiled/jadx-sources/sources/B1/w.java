package B1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.MotionEvent;
import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class w extends View {
    public Function2 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f367c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f368d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f369e;
    public final Paint f;
    public final Paint g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f370h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Paint f371i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(Context ctx) {
        super(ctx, null);
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Paint paint = new Paint(1);
        paint.setColor(Color.argb(102, 0, 0, 0));
        this.f = paint;
        Paint paint2 = new Paint(1);
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        paint2.setStrokeWidth(1.0f);
        paint2.setColor(Color.argb(34, 255, 255, 255));
        this.g = paint2;
        Paint paint3 = new Paint(1);
        paint3.setStyle(style);
        paint3.setStrokeWidth(2.0f);
        paint3.setColor(Color.argb(34, 255, 255, 255));
        this.f370h = paint3;
        Paint paint4 = new Paint(1);
        paint4.setColor(Color.argb(68, 255, 255, 255));
        this.f371i = paint4;
    }

    public final Function2<Float, Float, Unit> getOnAxis() {
        return this.b;
    }

    @Override // android.view.View
    public final void onDraw(Canvas c3) {
        Intrinsics.checkNotNullParameter(c3, "c");
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        float fMin = Math.min(width, height) - 2;
        int i3 = this.f369e ? 68 : 34;
        Paint paint = this.f370h;
        paint.setAlpha(i3);
        c3.drawCircle(width, height, fMin, this.f);
        c3.drawCircle(width, height, fMin, paint);
        c3.drawCircle(width, height, 0.58f * fMin, this.g);
        int i4 = this.f369e ? 128 : 68;
        Paint paint2 = this.f371i;
        paint2.setAlpha(i4);
        c3.drawCircle((this.f367c * fMin * 0.6f) + width, (this.f368d * fMin * 0.6f) + height, fMin * 0.38f, paint2);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent e2) {
        Float fValueOf = Float.valueOf(0.0f);
        Intrinsics.checkNotNullParameter(e2, "e");
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        float fMin = Math.min(width, height);
        int actionMasked = e2.getActionMasked();
        if (actionMasked == 0) {
            this.f369e = true;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f369e = false;
            this.f367c = 0.0f;
            this.f368d = 0.0f;
            Function2 function2 = this.b;
            if (function2 != null) {
                function2.invoke(fValueOf, fValueOf);
            }
            invalidate();
            return true;
        }
        float x2 = (e2.getX() - width) / fMin;
        float y2 = (e2.getY() - height) / fMin;
        float fSqrt = (float) Math.sqrt((y2 * y2) + (x2 * x2));
        if (fSqrt > 1.0f) {
            this.f367c = x2 / fSqrt;
            this.f368d = y2 / fSqrt;
        } else {
            this.f367c = x2;
            this.f368d = y2;
        }
        Function2 function3 = this.b;
        if (function3 != null) {
            function3.invoke(Float.valueOf(this.f367c), Float.valueOf(this.f368d));
        }
        invalidate();
        return true;
    }

    public final void setOnAxis(Function2<? super Float, ? super Float, Unit> function2) {
        this.b = function2;
    }
}
