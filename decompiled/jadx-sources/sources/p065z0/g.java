package p065z0;

import androidx.core.util.Pools;
import p043r.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f6432a = new b();

    public static d a(int i3, c cVar) {
        return new d(new Pools.SynchronizedPool(i3), cVar, f6432a);
    }
}
