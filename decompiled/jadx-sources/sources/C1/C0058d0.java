package C1;

/* JADX INFO: renamed from: C1.d0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0058d0 extends p000a.a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f573m;

    public C0058d0(int i3) {
        this.f573m = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0058d0) && this.f573m == ((C0058d0) obj).f573m;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f573m);
    }

    public final String toString() {
        return E.b.j(this.f573m, "Local(page=", ")");
    }
}
