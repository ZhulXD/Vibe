package p031l1;

import java.lang.reflect.Field;
import java.util.LinkedHashMap;
import p023i1.p;
import p028k1.n;
import p036n1.c;
import p1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l extends k {
    public final n b;

    public l(n nVar, LinkedHashMap linkedHashMap) {
        super(linkedHashMap);
        this.b = nVar;
    }

    @Override // p031l1.k
    public final Object c() {
        return this.b.n();
    }

    @Override // p031l1.k
    public final void e(Object obj, a aVar, j jVar) throws IllegalAccessException {
        Field field = jVar.b;
        Object objA = jVar.f5056h.a(aVar);
        if (objA == null && jVar.f5059k) {
            return;
        }
        if (jVar.f5060l) {
            throw new p(kotlin.collections.unsigned.a.o("Cannot set value of 'static final' ", c.d(field, false)));
        }
        field.set(obj, objA);
    }

    @Override // p031l1.k
    public final Object d(Object obj) {
        return obj;
    }
}
