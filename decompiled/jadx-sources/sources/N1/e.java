package N1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1423a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f1424c;

    public e(boolean z2, boolean z3, long j2) {
        this.f1423a = z2;
        this.b = z3;
        this.f1424c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f1423a == eVar.f1423a && this.b == eVar.b && this.f1424c == eVar.f1424c;
    }

    public final int hashCode() {
        return Long.hashCode(this.f1424c) + E.b.b(Boolean.hashCode(this.f1423a) * 31, 31, this.b);
    }

    public final String toString() {
        return "Stat(regular=" + this.f1423a + ", symlink=" + this.b + ", size=" + this.f1424c + ")";
    }
}
