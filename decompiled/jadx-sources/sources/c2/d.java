package c2;

import V1.AbstractC0203t;
import a2.AbstractC0210a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d f3184c;

    static {
        int i3 = k.f3190c;
        int i4 = k.f3191d;
        long j2 = k.f3192e;
        String str = k.f3189a;
        d dVar = new d();
        dVar.b = new b(i3, i4, j2, str);
        f3184c = dVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // V1.AbstractC0203t
    public final AbstractC0203t limitedParallelism(int i3) {
        AbstractC0210a.a(i3);
        return i3 >= k.f3190c ? this : super.limitedParallelism(i3);
    }

    @Override // V1.AbstractC0203t
    public final String toString() {
        return "Dispatchers.Default";
    }
}
