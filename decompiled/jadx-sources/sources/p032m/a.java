package p032m;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends f {
    public final HashMap f = new HashMap();

    @Override // p032m.f
    public final c a(Object obj) {
        return (c) this.f.get(obj);
    }

    @Override // p032m.f
    public final Object b(Object obj, Object obj2) {
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
        } else {
            cVar2.f5102d = cVar;
            cVar.f5103e = cVar2;
            this.f5106c = cVar;
        }
        this.f.put(obj, cVar);
        return null;
    }

    @Override // p032m.f
    public final Object c(Object obj) {
        Object objC = super.c(obj);
        this.f.remove(obj);
        return objC;
    }
}
