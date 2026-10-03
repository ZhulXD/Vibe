package L;

import android.view.animation.Interpolator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f1253a;
    public final float b;

    public b(float[] fArr) {
        this.f1253a = fArr;
        this.b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f1253a;
        int iMin = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f3 = this.b;
        float f4 = (f - (iMin * f3)) / f3;
        float f5 = fArr[iMin];
        return ((fArr[iMin + 1] - f5) * f4) + f5;
    }
}
