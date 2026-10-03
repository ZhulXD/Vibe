package C1;

/* JADX INFO: renamed from: C1.e0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0061e0 extends p000a.a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f580m;

    public C0061e0(int i3) {
        this.f580m = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0061e0) && this.f580m == ((C0061e0) obj).f580m;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f580m);
    }

    public final String toString() {
        return E.b.j(this.f580m, "Remote(page=", ")");
    }
}
