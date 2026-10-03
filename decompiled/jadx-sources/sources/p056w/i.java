package p056w;

import java.util.ArrayList;
import p053v.a;
import p053v.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends m {
    @Override // p056w.d
    public final void a(d dVar) {
        a aVar = (a) this.b;
        int i3 = aVar.f5425f0;
        f fVar = this.f5608h;
        ArrayList arrayList = fVar.f5598l;
        int size = arrayList.size();
        int i4 = 0;
        int i5 = -1;
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            int i7 = ((f) obj).g;
            if (i5 == -1 || i7 < i5) {
                i5 = i7;
            }
            if (i4 < i7) {
                i4 = i7;
            }
        }
        if (i3 == 0 || i3 == 2) {
            fVar.d(i5 + aVar.f5427h0);
        } else {
            fVar.d(i4 + aVar.f5427h0);
        }
    }

    @Override // p056w.m
    public final void d() {
        d dVar = this.b;
        if (dVar instanceof a) {
            f fVar = this.f5608h;
            fVar.b = true;
            ArrayList arrayList = fVar.f5598l;
            a aVar = (a) dVar;
            int i3 = aVar.f5425f0;
            boolean z2 = aVar.f5426g0;
            int i4 = 0;
            if (i3 == 0) {
                fVar.f5593e = 4;
                while (i4 < aVar.f5562e0) {
                    d dVar2 = aVar.f5561d0[i4];
                    if (z2 || dVar2.f5466V != 8) {
                        f fVar2 = dVar2.f5475d.f5608h;
                        fVar2.f5597k.add(fVar);
                        arrayList.add(fVar2);
                    }
                    i4++;
                }
                m(this.b.f5475d.f5608h);
                m(this.b.f5475d.f5609i);
                return;
            }
            if (i3 == 1) {
                fVar.f5593e = 5;
                while (i4 < aVar.f5562e0) {
                    d dVar3 = aVar.f5561d0[i4];
                    if (z2 || dVar3.f5466V != 8) {
                        f fVar3 = dVar3.f5475d.f5609i;
                        fVar3.f5597k.add(fVar);
                        arrayList.add(fVar3);
                    }
                    i4++;
                }
                m(this.b.f5475d.f5608h);
                m(this.b.f5475d.f5609i);
                return;
            }
            if (i3 == 2) {
                fVar.f5593e = 6;
                while (i4 < aVar.f5562e0) {
                    d dVar4 = aVar.f5561d0[i4];
                    if (z2 || dVar4.f5466V != 8) {
                        f fVar4 = dVar4.f5476e.f5608h;
                        fVar4.f5597k.add(fVar);
                        arrayList.add(fVar4);
                    }
                    i4++;
                }
                m(this.b.f5476e.f5608h);
                m(this.b.f5476e.f5609i);
                return;
            }
            if (i3 != 3) {
                return;
            }
            fVar.f5593e = 7;
            while (i4 < aVar.f5562e0) {
                d dVar5 = aVar.f5561d0[i4];
                if (z2 || dVar5.f5466V != 8) {
                    f fVar5 = dVar5.f5476e.f5609i;
                    fVar5.f5597k.add(fVar);
                    arrayList.add(fVar5);
                }
                i4++;
            }
            m(this.b.f5476e.f5608h);
            m(this.b.f5476e.f5609i);
        }
    }

    @Override // p056w.m
    public final void e() {
        d dVar = this.b;
        if (dVar instanceof a) {
            int i3 = ((a) dVar).f5425f0;
            f fVar = this.f5608h;
            if (i3 == 0 || i3 == 1) {
                dVar.f5458N = fVar.g;
            } else {
                dVar.f5459O = fVar.g;
            }
        }
    }

    @Override // p056w.m
    public final void f() {
        this.f5605c = null;
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
