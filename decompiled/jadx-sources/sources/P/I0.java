package P;

import androidx.core.util.Pools;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class I0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pools.SimplePool f1603d = new Pools.SimplePool(20);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1604a;
    public C0137b0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C0137b0 f1605c;

    /* JADX WARN: Multi-variable type inference failed */
    public static I0 a() {
        I0 i3 = (I0) f1603d.acquire();
        return i3 == null ? new I0() : i3;
    }
}
