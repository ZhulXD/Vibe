package p032m;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends e implements Iterator {
    public c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5104c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ f f5105d;

    public d(f fVar) {
        this.f5105d = fVar;
    }

    @Override // p032m.e
    public final void a(c cVar) {
        c cVar2 = this.b;
        if (cVar == cVar2) {
            c cVar3 = cVar2.f5103e;
            this.b = cVar3;
            this.f5104c = cVar3 == null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f5104c) {
            return this.f5105d.b != null;
        }
        c cVar = this.b;
        return (cVar == null || cVar.f5102d == null) ? false : true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f5104c) {
            this.f5104c = false;
            this.b = this.f5105d.b;
        } else {
            c cVar = this.b;
            this.b = cVar != null ? cVar.f5102d : null;
        }
        return this.b;
    }
}
