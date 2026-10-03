package p041q;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p028k1.k;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class e extends j implements Map {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public k f5246e;
    public b f;
    public d g;

    public e(e eVar) {
        super(0);
        g(eVar);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        k kVar = this.f5246e;
        if (kVar != null) {
            return kVar;
        }
        k kVar2 = new k(2, this);
        this.f5246e = kVar2;
        return kVar2;
    }

    public final boolean k(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!super.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Map
    public final Set keySet() {
        b bVar = this.f;
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b(this);
        this.f = bVar2;
        return bVar2;
    }

    public final boolean l(Collection collection) {
        int i3 = this.f5258d;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            super.remove(it.next());
        }
        return i3 != this.f5258d;
    }

    public final boolean m(Collection collection) {
        int i3 = this.f5258d;
        for (int i4 = i3 - 1; i4 >= 0; i4--) {
            if (!collection.contains(f(i4))) {
                h(i4);
            }
        }
        return i3 != this.f5258d;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        b(map.size() + this.f5258d);
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        d dVar = this.g;
        if (dVar != null) {
            return dVar;
        }
        d dVar2 = new d(this);
        this.g = dVar2;
        return dVar2;
    }
}
