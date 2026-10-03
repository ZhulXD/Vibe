package V1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f2297a = new ThreadLocal();

    public static L a() {
        ThreadLocal threadLocal = f2297a;
        L l2 = (L) threadLocal.get();
        if (l2 != null) {
            return l2;
        }
        C0187c c0187c = new C0187c(Thread.currentThread());
        threadLocal.set(c0187c);
        return c0187c;
    }
}
