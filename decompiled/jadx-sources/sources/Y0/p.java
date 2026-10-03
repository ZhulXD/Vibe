package Y0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class p extends v {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f2448c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Matrix f2449d;

    public p(ArrayList arrayList, Matrix matrix) {
        this.f2448c = arrayList;
        this.f2449d = matrix;
    }

    @Override // Y0.v
    public final void a(Matrix matrix, X0.a aVar, int i3, Canvas canvas) {
        ArrayList arrayList = this.f2448c;
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            ((v) obj).a(this.f2449d, aVar, i3, canvas);
        }
    }
}
