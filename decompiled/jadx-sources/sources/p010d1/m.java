package p010d1;

import android.content.res.TypedArray;
import android.util.SparseArray;
import k.Z0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseArray f3905a = new SparseArray();
    public final n b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3906c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3907d;

    public m(n nVar, Z0 z2) {
        this.b = nVar;
        TypedArray typedArray = z2.b;
        this.f3906c = typedArray.getResourceId(28, 0);
        this.f3907d = typedArray.getResourceId(52, 0);
    }
}
