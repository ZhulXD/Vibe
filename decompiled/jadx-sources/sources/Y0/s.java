package Y0;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class s extends u {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final RectF f2454h = new RectF();
    public final float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f2455c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f2456d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f2457e;
    public float f;
    public float g;

    public s(float f, float f3, float f4, float f5) {
        this.b = f;
        this.f2455c = f3;
        this.f2456d = f4;
        this.f2457e = f5;
    }

    @Override // Y0.u
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f2459a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        float f = this.f2456d;
        float f3 = this.f2457e;
        RectF rectF = f2454h;
        rectF.set(this.b, this.f2455c, f, f3);
        path.arcTo(rectF, this.f, this.g, false);
        path.transform(matrix);
    }
}
