package Y0;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class r extends v {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final t f2451c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f2452d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f2453e;

    public r(t tVar, float f, float f3) {
        this.f2451c = tVar;
        this.f2452d = f;
        this.f2453e = f3;
    }

    @Override // Y0.v
    public final void a(Matrix matrix, X0.a aVar, int i3, Canvas canvas) {
        t tVar = this.f2451c;
        float f = tVar.f2458c;
        float f3 = this.f2453e;
        float f4 = tVar.b;
        float f5 = this.f2452d;
        RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f - f3, f4 - f5), 0.0f);
        Matrix matrix2 = this.f2460a;
        matrix2.set(matrix);
        matrix2.preTranslate(f5, f3);
        matrix2.preRotate(b());
        aVar.getClass();
        rectF.bottom += i3;
        rectF.offset(0.0f, -i3);
        int i4 = aVar.f;
        int[] iArr = X0.a.f2332i;
        iArr[0] = i4;
        iArr[1] = aVar.f2339e;
        iArr[2] = aVar.f2338d;
        Paint paint = aVar.f2337c;
        float f6 = rectF.left;
        paint.setShader(new LinearGradient(f6, rectF.top, f6, rectF.bottom, iArr, X0.a.f2333j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix2);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    public final float b() {
        t tVar = this.f2451c;
        return (float) Math.toDegrees(Math.atan((tVar.f2458c - this.f2453e) / (tVar.b - this.f2452d)));
    }
}
