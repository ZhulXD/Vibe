package p014f0;

import androidx.core.util.Pools;
import com.bumptech.glide.load.data.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p009d0.i;
import p011e.C0244f;
import p063y0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pools.Pool f4181a;
    public final List b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4182c;

    public D(Class cls, Class cls2, Class cls3, List list, Pools.Pool pool) {
        this.f4181a = pool;
        if (list.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        this.b = list;
        this.f4182c = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final F a(int i3, int i4, g gVar, i iVar, C0244f c0244f) {
        Pools.Pool pool = this.f4181a;
        Object objAcquire = pool.acquire();
        f.c(objAcquire, "Argument must not be null");
        List list = (List) objAcquire;
        try {
            List list2 = this.b;
            int size = list2.size();
            F fA = null;
            for (int i5 = 0; i5 < size; i5++) {
                try {
                    fA = ((k) list2.get(i5)).a(i3, i4, gVar, iVar, c0244f);
                } catch (B e2) {
                    list.add(e2);
                }
                if (fA != null) {
                    break;
                }
            }
            if (fA != null) {
                pool.release(list);
                return fA;
            }
            throw new B(new ArrayList(list), this.f4182c);
        } catch (Throwable th) {
            pool.release(list);
            throw th;
        }
    }

    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.b.toArray()) + '}';
    }
}
