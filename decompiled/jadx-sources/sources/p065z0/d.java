package p065z0;

import android.util.Log;
import androidx.core.util.Pools;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Pools.Pool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f6430a;
    public final f b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Pools.SynchronizedPool f6431c;

    public d(Pools.SynchronizedPool synchronizedPool, c cVar, f fVar) {
        this.f6431c = synchronizedPool;
        this.f6430a = cVar;
        this.b = fVar;
    }

    @Override // androidx.core.util.Pools.Pool
    public final Object acquire() {
        Object objAcquire = this.f6431c.acquire();
        if (objAcquire == null) {
            objAcquire = this.f6430a.g();
            if (Log.isLoggable("FactoryPools", 2)) {
                Log.v("FactoryPools", "Created new " + objAcquire.getClass());
            }
        }
        if (objAcquire instanceof e) {
            ((e) objAcquire).b().f6433a = false;
        }
        return objAcquire;
    }

    @Override // androidx.core.util.Pools.Pool
    public final boolean release(Object obj) {
        if (obj instanceof e) {
            ((e) obj).b().f6433a = true;
        }
        this.b.a(obj);
        return this.f6431c.release(obj);
    }
}
