package p023i1;

import p1.a;
import p1.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public y f4435a;

    @Override // p023i1.y
    public final Object a(a aVar) {
        y yVar = this.f4435a;
        if (yVar != null) {
            return yVar.a(aVar);
        }
        throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
    }

    @Override // p023i1.y
    public final void b(b bVar, Object obj) {
        y yVar = this.f4435a;
        if (yVar == null) {
            throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        }
        yVar.b(bVar, obj);
    }
}
