package B1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o extends View {
    public Function1 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public n f341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Paint f342d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Paint f343e;
    public final Paint f;
    public final Paint g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f344h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Paint f345i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(Context ctx) {
        super(ctx, null);
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        this.f341c = n.b;
        Paint paint = new Paint(1);
        paint.setColor(Color.argb(68, 0, 0, 0));
        this.f342d = paint;
        Paint paint2 = new Paint(1);
        paint2.setColor(Color.argb(102, 255, 255, 255));
        this.f343e = paint2;
        Paint paint3 = new Paint(1);
        paint3.setColor(Color.argb(170, 255, 255, 255));
        Paint.Align align = Paint.Align.CENTER;
        paint3.setTextAlign(align);
        paint3.setTextSize(22.0f);
        this.f = paint3;
        Paint paint4 = new Paint(1);
        paint4.setColor(Color.argb(85, 255, 255, 255));
        paint4.setTextAlign(align);
        paint4.setTextSize(15.0f);
        this.g = paint4;
        Paint paint5 = new Paint(1);
        Paint.Style style = Paint.Style.STROKE;
        paint5.setStyle(style);
        paint5.setStrokeWidth(1.5f);
        paint5.setColor(Color.argb(34, 255, 255, 255));
        this.f344h = paint5;
        Paint paint6 = new Paint(1);
        paint6.setStyle(style);
        paint6.setStrokeWidth(0.8f);
        paint6.setColor(Color.argb(24, 255, 255, 255));
        this.f345i = paint6;
    }

    public final Function1<n, Unit> getOnDir() {
        return this.b;
    }

    @Override // android.view.View
    public final void onDraw(Canvas c3) {
        float f;
        Intrinsics.checkNotNullParameter(c3, "c");
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        float fMin = Math.min(width, height);
        RectF rectF = new RectF(2.0f, 2.0f, getWidth() - 2.0f, getHeight() - 2.0f);
        float f3 = fMin - 2;
        c3.drawCircle(width, height, f3, this.f342d);
        c3.drawCircle(width, height, f3, this.f344h);
        float f4 = fMin * 0.22f;
        for (int i3 = 0; i3 < 8; i3++) {
            double radians = Math.toRadians((((double) i3) * 45.0d) + 22.5d);
            float fCos = (float) Math.cos(radians);
            float fSin = (float) Math.sin(radians);
            c3.drawLine((f4 * fCos) + width, (f4 * fSin) + height, (fCos * f3) + width, (fSin * f3) + height, this.f345i);
        }
        Paint paint = new Paint(1);
        paint.setColor(Color.argb(34, 255, 255, 255));
        Unit unit = Unit.INSTANCE;
        c3.drawCircle(width, height, f4, paint);
        if (this.f341c != n.b) {
            Path path = new Path();
            path.moveTo(width, height);
            switch (this.f341c.ordinal()) {
                case 1:
                    f = 247.5f;
                    break;
                case 2:
                    f = 67.5f;
                    break;
                case 3:
                    f = 157.5f;
                    break;
                case 4:
                    f = -22.5f;
                    break;
                case 5:
                    f = 202.5f;
                    break;
                case 6:
                    f = 292.5f;
                    break;
                case 7:
                    f = 112.5f;
                    break;
                case 8:
                    f = 22.5f;
                    break;
                default:
                    f = 0.0f;
                    break;
            }
            path.arcTo(rectF, f, 45.0f);
            path.close();
            c3.drawPath(path, this.f343e);
        }
        float f5 = fMin * 0.62f;
        Paint paint2 = this.f;
        c3.drawText("↑", width, (paint2.getTextSize() * 0.38f) + (height - f5), paint2);
        c3.drawText("↓", width, (paint2.getTextSize() * 0.38f) + height + f5, paint2);
        c3.drawText("←", width - f5, (paint2.getTextSize() * 0.38f) + height, paint2);
        c3.drawText("→", width + f5, (paint2.getTextSize() * 0.38f) + height, paint2);
        float f6 = f5 * 0.7f;
        float f7 = width - f6;
        float f8 = height - f6;
        Paint paint3 = this.g;
        c3.drawText("↖", f7, (paint3.getTextSize() * 0.38f) + f8, paint3);
        float f9 = width + f6;
        c3.drawText("↗", f9, (paint3.getTextSize() * 0.38f) + f8, paint3);
        float f10 = height + f6;
        c3.drawText("↙", f7, (paint3.getTextSize() * 0.38f) + f10, paint3);
        c3.drawText("↘", f9, (paint3.getTextSize() * 0.38f) + f10, paint3);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent e2) {
        n nVar;
        Intrinsics.checkNotNullParameter(e2, "e");
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        float x2 = e2.getX() - width;
        float y2 = e2.getY() - height;
        float fSqrt = (float) Math.sqrt((y2 * y2) + (x2 * x2));
        float fMin = Math.min(width, height) * 0.18f;
        if (e2.getActionMasked() != 1 && e2.getActionMasked() != 3 && fSqrt >= fMin) {
            switch ((int) (((((double) (((float) Math.toDegrees(Math.atan2(y2, x2))) + 360)) + 22.5d) % ((double) 360)) / ((double) 45))) {
                case 0:
                    nVar = n.f;
                    break;
                case 1:
                    nVar = n.f338j;
                    break;
                case 2:
                    nVar = n.f334d;
                    break;
                case 3:
                    nVar = n.f337i;
                    break;
                case 4:
                    nVar = n.f335e;
                    break;
                case 5:
                    nVar = n.g;
                    break;
                case 6:
                    nVar = n.f333c;
                    break;
                case 7:
                    nVar = n.f336h;
                    break;
                default:
                    nVar = n.b;
                    break;
            }
        } else {
            nVar = n.b;
        }
        if (nVar != this.f341c) {
            this.f341c = nVar;
            invalidate();
            Function1 function1 = this.b;
            if (function1 != null) {
                function1.invoke(nVar);
            }
        }
        return true;
    }

    public final void setOnDir(Function1<? super n, Unit> function1) {
        this.b = function1;
    }
}
