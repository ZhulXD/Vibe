package p064y1;

import E.b;

/* JADX INFO: renamed from: y1.t, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0412t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f6351a;
    public final long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6352c;

    public C0412t(long j2, long j3, int i3) {
        this.f6351a = j2;
        this.b = j3;
        this.f6352c = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0412t)) {
            return false;
        }
        C0412t c0412t = (C0412t) obj;
        return this.f6351a == c0412t.f6351a && this.b == c0412t.b && this.f6352c == c0412t.f6352c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f6352c) + b.c(this.b, Long.hashCode(this.f6351a) * 31, 31);
    }

    public final String toString() {
        return "DirectoryIdentity(dev=" + this.f6351a + ", ino=" + this.b + ", mode=" + this.f6352c + ")";
    }
}
