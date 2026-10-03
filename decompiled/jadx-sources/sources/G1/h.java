package G1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f998a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f999c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1000d;

    public h(int i3, int i4, boolean z2, boolean z3) {
        this.f998a = z2;
        this.b = z3;
        this.f999c = i3;
        this.f1000d = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f998a == hVar.f998a && this.b == hVar.b && this.f999c == hVar.f999c && this.f1000d == hVar.f1000d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f1000d) + E.b.a(this.f999c, E.b.b(Boolean.hashCode(this.f998a) * 31, 31, this.b), 31);
    }

    public final String toString() {
        return "OtaAvailability(reachable=" + this.f998a + ", updateAvailable=" + this.b + ", serverVersion=" + this.f999c + ", cachedVersion=" + this.f1000d + ")";
    }
}
