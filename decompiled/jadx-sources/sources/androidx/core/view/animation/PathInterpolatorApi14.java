package androidx.core.view.animation;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class PathInterpolatorApi14 implements Interpolator {
    private static final float PRECISION = 0.002f;
    private final float[] mX;
    private final float[] mY;

    public PathInterpolatorApi14(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i3 = (int) (length / PRECISION);
        int i4 = i3 + 1;
        this.mX = new float[i4];
        this.mY = new float[i4];
        float[] fArr = new float[2];
        for (int i5 = 0; i5 < i4; i5++) {
            pathMeasure.getPosTan((i5 * length) / i3, fArr, null);
            this.mX[i5] = fArr[0];
            this.mY[i5] = fArr[1];
        }
    }

    private static Path createCubic(float f, float f3, float f4, float f5) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f3, f4, f5, 1.0f, 1.0f);
        return path;
    }

    private static Path createQuad(float f, float f3) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f3, 1.0f, 1.0f);
        return path;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int length = this.mX.length - 1;
        int i3 = 0;
        while (length - i3 > 1) {
            int i4 = (i3 + length) / 2;
            if (f < this.mX[i4]) {
                length = i4;
            } else {
                i3 = i4;
            }
        }
        float[] fArr = this.mX;
        float f3 = fArr[length];
        float f4 = fArr[i3];
        float f5 = f3 - f4;
        if (f5 == 0.0f) {
            return this.mY[i3];
        }
        float f6 = (f - f4) / f5;
        float[] fArr2 = this.mY;
        float f7 = fArr2[i3];
        return ((fArr2[length] - f7) * f6) + f7;
    }

    public PathInterpolatorApi14(float f, float f3) {
        this(createQuad(f, f3));
    }

    public PathInterpolatorApi14(float f, float f3, float f4, float f5) {
        this(createCubic(f, f3, f4, f5));
    }
}
