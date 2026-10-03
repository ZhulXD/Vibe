package p056w;

import p053v.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends m {
    @Override // p056w.d
    public final void a(d dVar) {
        f fVar = this.f5608h;
        if (fVar.f5591c && !fVar.f5596j) {
            fVar.d((int) ((((f) fVar.f5598l.get(0)).g * ((p053v.h) this.b).f5556d0) + 0.5f));
        }
    }

    @Override // p056w.m
    public final void d() {
        d dVar = this.b;
        p053v.h hVar = (p053v.h) dVar;
        int i3 = hVar.f5557e0;
        int i4 = hVar.f5558f0;
        int i5 = hVar.f5560h0;
        f fVar = this.f5608h;
        if (i5 == 1) {
            if (i3 != -1) {
                fVar.f5598l.add(dVar.f5454I.f5475d.f5608h);
                this.b.f5454I.f5475d.f5608h.f5597k.add(fVar);
                fVar.f = i3;
            } else if (i4 != -1) {
                fVar.f5598l.add(dVar.f5454I.f5475d.f5609i);
                this.b.f5454I.f5475d.f5609i.f5597k.add(fVar);
                fVar.f = -i4;
            } else {
                fVar.b = true;
                fVar.f5598l.add(dVar.f5454I.f5475d.f5609i);
                this.b.f5454I.f5475d.f5609i.f5597k.add(fVar);
            }
            m(this.b.f5475d.f5608h);
            m(this.b.f5475d.f5609i);
            return;
        }
        if (i3 != -1) {
            fVar.f5598l.add(dVar.f5454I.f5476e.f5608h);
            this.b.f5454I.f5476e.f5608h.f5597k.add(fVar);
            fVar.f = i3;
        } else if (i4 != -1) {
            fVar.f5598l.add(dVar.f5454I.f5476e.f5609i);
            this.b.f5454I.f5476e.f5609i.f5597k.add(fVar);
            fVar.f = -i4;
        } else {
            fVar.b = true;
            fVar.f5598l.add(dVar.f5454I.f5476e.f5609i);
            this.b.f5454I.f5476e.f5609i.f5597k.add(fVar);
        }
        m(this.b.f5476e.f5608h);
        m(this.b.f5476e.f5609i);
    }

    @Override // p056w.m
    public final void e() {
        d dVar = this.b;
        int i3 = ((p053v.h) dVar).f5560h0;
        f fVar = this.f5608h;
        if (i3 == 1) {
            dVar.f5458N = fVar.g;
        } else {
            dVar.f5459O = fVar.g;
        }
    }

    @Override // p056w.m
    public final void f() {
        this.f5608h.c();
    }

    @Override // p056w.m
    public final boolean k() {
        return false;
    }

    public final void m(f fVar) {
        f fVar2 = this.f5608h;
        fVar2.f5597k.add(fVar);
        fVar.f5598l.add(fVar2);
    }
}
