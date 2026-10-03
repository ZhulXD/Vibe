package Y0;

import android.graphics.Matrix;
import android.graphics.Path;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class t extends u {
    public float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f2458c;

    @Override // Y0.u
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f2459a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        path.lineTo(this.b, this.f2458c);
        path.transform(matrix);
    }
}
