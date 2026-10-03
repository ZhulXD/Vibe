package p014f0;

import java.security.MessageDigest;
import p009d0.f;

/* JADX INFO: renamed from: f0.e, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0256e implements f {
    public final f b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f f4212c;

    public C0256e(f fVar, f fVar2) {
        this.b = fVar;
        this.f4212c = fVar2;
    }

    @Override // p009d0.f
    public final void b(MessageDigest messageDigest) {
        this.b.b(messageDigest);
        this.f4212c.b(messageDigest);
    }

    @Override // p009d0.f
    public final boolean equals(Object obj) {
        if (obj instanceof C0256e) {
            C0256e c0256e = (C0256e) obj;
            if (this.b.equals(c0256e.b) && this.f4212c.equals(c0256e.f4212c)) {
                return true;
            }
        }
        return false;
    }

    @Override // p009d0.f
    public final int hashCode() {
        return this.f4212c.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.b + ", signature=" + this.f4212c + '}';
    }
}
