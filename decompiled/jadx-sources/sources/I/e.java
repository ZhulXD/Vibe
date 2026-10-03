package I;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f1108a;
    public final long b;

    public e(long j2, long j3) {
        if (j3 == 0) {
            this.f1108a = 0L;
            this.b = 1L;
        } else {
            this.f1108a = j2;
            this.b = j3;
        }
    }

    public final String toString() {
        return this.f1108a + "/" + this.b;
    }
}
