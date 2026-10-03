package p025j0;

import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.Arrays;
import p009d0.f;
import p009d0.i;
import p065z0.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class v implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f4645a;
    public final Pools.Pool b;

    public v(ArrayList arrayList, d dVar) {
        this.f4645a = arrayList;
        this.b = dVar;
    }

    @Override // p025j0.q
    public final p a(Object obj, int i3, int i4, i iVar) {
        p pVarA;
        ArrayList arrayList = this.f4645a;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        f fVar = null;
        for (int i5 = 0; i5 < size; i5++) {
            q qVar = (q) arrayList.get(i5);
            if (qVar.b(obj) && (pVarA = qVar.a(obj, i3, i4, iVar)) != null) {
                fVar = pVarA.f4637a;
                arrayList2.add(pVarA.f4638c);
            }
        }
        if (arrayList2.isEmpty() || fVar == null) {
            return null;
        }
        return new p(fVar, new u(arrayList2, this.b));
    }

    @Override // p025j0.q
    public final boolean b(Object obj) {
        ArrayList arrayList = this.f4645a;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj2 = arrayList.get(i3);
            i3++;
            if (((q) obj2).b(obj)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f4645a.toArray()) + '}';
    }
}
