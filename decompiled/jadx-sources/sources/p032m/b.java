package p032m;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends e implements Iterator {
    public c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f5099c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f5100d;

    public b(c cVar, c cVar2, int i3) {
        this.f5100d = i3;
        this.b = cVar2;
        this.f5099c = cVar;
    }

    @Override // p032m.e
    public final void a(c cVar) {
        c cVar2;
        c cVarB = null;
        if (this.b == cVar && cVar == this.f5099c) {
            this.f5099c = null;
            this.b = null;
        }
        c cVar3 = this.b;
        if (cVar3 == cVar) {
            switch (this.f5100d) {
                case 0:
                    cVar2 = cVar3.f5103e;
                    break;
                default:
                    cVar2 = cVar3.f5102d;
                    break;
            }
            this.b = cVar2;
        }
        c cVar4 = this.f5099c;
        if (cVar4 == cVar) {
            c cVar5 = this.b;
            if (cVar4 != cVar5 && cVar5 != null) {
                cVarB = b(cVar4);
            }
            this.f5099c = cVarB;
        }
    }

    public final c b(c cVar) {
        switch (this.f5100d) {
            case 0:
                return cVar.f5102d;
            default:
                return cVar.f5103e;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f5099c != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        c cVar = this.f5099c;
        c cVar2 = this.b;
        this.f5099c = (cVar == cVar2 || cVar2 == null) ? null : b(cVar);
        return cVar;
    }
}
