package k;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class R0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4733a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4734c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4735d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4736e;
    public int f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f4737h;

    public final void a(int i3, int i4) {
        this.f4734c = i3;
        this.f4735d = i4;
        this.f4737h = true;
        if (this.g) {
            if (i4 != Integer.MIN_VALUE) {
                this.f4733a = i4;
            }
            if (i3 != Integer.MIN_VALUE) {
                this.b = i3;
                return;
            }
            return;
        }
        if (i3 != Integer.MIN_VALUE) {
            this.f4733a = i3;
        }
        if (i4 != Integer.MIN_VALUE) {
            this.b = i4;
        }
    }
}
