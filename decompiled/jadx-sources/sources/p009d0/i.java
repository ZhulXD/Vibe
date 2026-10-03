package p009d0;

import java.security.MessageDigest;
import p063y0.c;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements f {
    public final c b = new c(0);

    @Override // p009d0.f
    public final void b(MessageDigest messageDigest) {
        int i3 = 0;
        while (true) {
            c cVar = this.b;
            if (i3 >= cVar.f5258d) {
                return;
            }
            h hVar = (h) cVar.f(i3);
            Object objJ = this.b.j(i3);
            g gVar = hVar.b;
            if (hVar.f3872d == null) {
                hVar.f3872d = hVar.f3871c.getBytes(f.f3868a);
            }
            gVar.c(hVar.f3872d, objJ, messageDigest);
            i3++;
        }
    }

    public final Object c(h hVar) {
        c cVar = this.b;
        return cVar.containsKey(hVar) ? cVar.get(hVar) : hVar.f3870a;
    }

    @Override // p009d0.f
    public final boolean equals(Object obj) {
        if (obj instanceof i) {
            return this.b.equals(((i) obj).b);
        }
        return false;
    }

    @Override // p009d0.f
    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "Options{values=" + this.b + '}';
    }
}
