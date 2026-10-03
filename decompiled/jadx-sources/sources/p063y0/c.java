package p063y0;

import p041q.e;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends e {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6014h;

    @Override // p041q.j, java.util.Map
    public final void clear() {
        this.f6014h = 0;
        super.clear();
    }

    @Override // p041q.j
    public final void g(e eVar) {
        this.f6014h = 0;
        super.g(eVar);
    }

    @Override // p041q.j
    public final Object h(int i3) {
        this.f6014h = 0;
        return super.h(i3);
    }

    @Override // p041q.j, java.util.Map
    public final int hashCode() {
        if (this.f6014h == 0) {
            this.f6014h = super.hashCode();
        }
        return this.f6014h;
    }

    @Override // p041q.j
    public final Object i(int i3, Object obj) {
        this.f6014h = 0;
        return super.i(i3, obj);
    }

    @Override // p041q.j, java.util.Map
    public final Object put(Object obj, Object obj2) {
        this.f6014h = 0;
        return super.put(obj, obj2);
    }
}
