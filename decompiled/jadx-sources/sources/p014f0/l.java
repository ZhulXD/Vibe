package p014f0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l {
    public static final l b = new l(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final l f4262c = new l(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final l f4263d = new l(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4264a;

    public /* synthetic */ l(int i3) {
        this.f4264a = i3;
    }

    public final boolean a(int i3) {
        switch (this.f4264a) {
            case 0:
                return false;
            case 1:
                return (i3 == 3 || i3 == 5) ? false : true;
            default:
                return i3 == 2;
        }
    }
}
