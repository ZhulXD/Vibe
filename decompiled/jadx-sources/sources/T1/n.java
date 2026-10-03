package T1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f2223a;
    public final long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f2224c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f2225d;

    public n(boolean z2, long j2, long j3, long j4) {
        this.f2223a = z2;
        this.b = j2;
        this.f2224c = j3;
        this.f2225d = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f2223a == nVar.f2223a && this.b == nVar.b && this.f2224c == nVar.f2224c && this.f2225d == nVar.f2225d;
    }

    public final int hashCode() {
        return Long.hashCode(this.f2225d) + E.b.c(this.f2224c, E.b.c(this.b, Boolean.hashCode(this.f2223a) * 31, 31), 31);
    }

    public final String toString() {
        return "Xp3Segment(isCompressed=" + this.f2223a + ", offset=" + this.b + ", originalSize=" + this.f2224c + ", compressedSize=" + this.f2225d + ")";
    }
}
