package p060x0;

import java.security.MessageDigest;
import p009d0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements f {
    public final Object b;

    public b(Object obj) {
        p063y0.f.c(obj, "Argument must not be null");
        this.b = obj;
    }

    @Override // p009d0.f
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(this.b.toString().getBytes(f.f3868a));
    }

    @Override // p009d0.f
    public final boolean equals(Object obj) {
        if (obj instanceof b) {
            return this.b.equals(((b) obj).b);
        }
        return false;
    }

    @Override // p009d0.f
    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "ObjectKey{object=" + this.b + '}';
    }
}
