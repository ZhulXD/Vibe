package p032m;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class f implements Iterable {
    public c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f5106c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final WeakHashMap f5107d = new WeakHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5108e = 0;

    public c a(Object obj) {
        c cVar = this.b;
        while (cVar != null && !cVar.b.equals(obj)) {
            cVar = cVar.f5102d;
        }
        return cVar;
    }

    public Object b(Object obj, Object obj2) {
        c cVarA = a(obj);
        if (cVarA != null) {
            return cVarA.f5101c;
        }
        c cVar = new c(obj, obj2);
        this.f5108e++;
        c cVar2 = this.f5106c;
        if (cVar2 == null) {
            this.b = cVar;
            this.f5106c = cVar;
            return null;
        }
        cVar2.f5102d = cVar;
        cVar.f5103e = cVar2;
        this.f5106c = cVar;
        return null;
    }

    public Object c(Object obj) {
        c cVarA = a(obj);
        if (cVarA == null) {
            return null;
        }
        this.f5108e--;
        WeakHashMap weakHashMap = this.f5107d;
        if (!weakHashMap.isEmpty()) {
            Iterator it = weakHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((e) it.next()).a(cVarA);
            }
        }
        c cVar = cVarA.f5103e;
        if (cVar != null) {
            cVar.f5102d = cVarA.f5102d;
        } else {
            this.b = cVarA.f5102d;
        }
        c cVar2 = cVarA.f5102d;
        if (cVar2 != null) {
            cVar2.f5103e = cVar;
        } else {
            this.f5106c = cVar;
        }
        cVarA.f5102d = null;
        cVarA.f5103e = null;
        return cVarA.f5101c;
    }

    public final boolean equals(Object obj) {
        b bVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f5108e != fVar.f5108e) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = fVar.iterator();
        while (true) {
            bVar = (b) it;
            if (!bVar.hasNext()) {
                break;
            }
            b bVar2 = (b) it2;
            if (!bVar2.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) bVar.next();
            Object next = bVar2.next();
            if ((entry == null && next != null) || (entry != null && !entry.equals(next))) {
                return false;
            }
        }
        return (bVar.hasNext() || ((b) it2).hasNext()) ? false : true;
    }

    public final int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (true) {
            b bVar = (b) it;
            if (!bVar.hasNext()) {
                return iHashCode;
            }
            iHashCode += ((Map.Entry) bVar.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        b bVar = new b(this.b, this.f5106c, 0);
        this.f5107d.put(bVar, Boolean.FALSE);
        return bVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            b bVar = (b) it;
            if (!bVar.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(((Map.Entry) bVar.next()).toString());
            if (bVar.hasNext()) {
                sb.append(", ");
            }
        }
    }
}
