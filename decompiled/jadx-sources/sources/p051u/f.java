package p051u;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Comparable {
    public i b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g f5356c;

    public f(g gVar) {
        this.f5356c = gVar;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.b.b - ((i) obj).b;
    }

    public final String toString() {
        String str = "[ ";
        if (this.b != null) {
            for (int i3 = 0; i3 < 9; i3++) {
                str = str + this.b.f5364h[i3] + " ";
            }
        }
        return str + "] " + this.b;
    }
}
