package P;

import android.util.SparseArray;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SparseArray f1715a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Set f1716c;

    public final m0 a(int i3) {
        SparseArray sparseArray = this.f1715a;
        m0 m0Var = (m0) sparseArray.get(i3);
        if (m0Var != null) {
            return m0Var;
        }
        m0 m0Var2 = new m0();
        sparseArray.put(i3, m0Var2);
        return m0Var2;
    }
}
