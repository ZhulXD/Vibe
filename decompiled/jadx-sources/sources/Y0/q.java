package Y0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class q extends v {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s f2450c;

    public q(s sVar) {
        this.f2450c = sVar;
    }

    @Override // Y0.v
    public final void a(Matrix matrix, X0.a aVar, int i3, Canvas canvas) {
        s sVar = this.f2450c;
        float f = sVar.f;
        float f3 = sVar.g;
        RectF rectF = new RectF(sVar.b, sVar.f2455c, sVar.f2456d, sVar.f2457e);
        Paint paint = aVar.b;
        boolean z2 = f3 < 0.0f;
        Path path = aVar.g;
        int[] iArr = X0.a.f2334k;
        if (z2) {
            iArr[0] = 0;
            iArr[1] = aVar.f;
            iArr[2] = aVar.f2339e;
            iArr[3] = aVar.f2338d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f3);
            path.close();
            float f4 = -i3;
            rectF.inset(f4, f4);
            iArr[0] = 0;
            iArr[1] = aVar.f2338d;
            iArr[2] = aVar.f2339e;
            iArr[3] = aVar.f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0) {
            return;
        }
        float f5 = 1.0f - (i3 / fWidth);
        float[] fArr = X0.a.f2335l;
        fArr[1] = f5;
        fArr[2] = ((1.0f - f5) / 2.0f) + f5;
        paint.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, iArr, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z2) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, aVar.f2340h);
        }
        canvas.drawArc(rectF, f, f3, true, paint);
        canvas.restore();
    }
}
