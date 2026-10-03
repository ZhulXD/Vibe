package V1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final D f2263a;

    static {
        String property;
        W1.d dVar;
        D d3;
        int i3 = a2.x.f2600a;
        try {
            property = System.getProperty("kotlinx.coroutines.main.delay");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property != null ? Boolean.parseBoolean(property) : false) {
            c2.d dVar2 = H.f2265a;
            dVar = a2.p.f2593a;
            W1.d dVar3 = dVar.f2306d;
            if (dVar == null) {
                d3 = dVar;
                d3 = B.f2261h;
            }
        } else {
            d3 = B.f2261h;
        }
        d3 = dVar;
        f2263a = d3;
    }
}
