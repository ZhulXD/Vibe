package V1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class K implements W {
    public final boolean b;

    public K(boolean z2) {
        this.b = z2;
    }

    @Override // V1.W
    public final boolean a() {
        return this.b;
    }

    @Override // V1.W
    public final l0 d() {
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Empty{");
        sb.append(this.b ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
