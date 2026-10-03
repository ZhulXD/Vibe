package a2;

import V1.AbstractC0203t;
import V1.C0189e;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.Volatile;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends AbstractC0203t implements V1.D {
    public static final AtomicIntegerFieldUpdater g = AtomicIntegerFieldUpdater.newUpdater(i.class, "runningWorkers");
    public final AbstractC0203t b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2582c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ V1.D f2583d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final m f2584e;
    public final Object f;

    @Volatile
    private volatile int runningWorkers;

    /* JADX WARN: Multi-variable type inference failed */
    public i(AbstractC0203t abstractC0203t, int i3) {
        this.b = abstractC0203t;
        this.f2582c = i3;
        V1.D d3 = abstractC0203t instanceof V1.D ? (V1.D) abstractC0203t : null;
        this.f2583d = d3 == null ? V1.C.f2263a : d3;
        this.f2584e = new m();
        this.f = new Object();
    }

    @Override // V1.D
    public final void c(long j2, C0189e c0189e) {
        this.f2583d.c(j2, c0189e);
    }

    public final Runnable d() {
        while (true) {
            Runnable runnable = (Runnable) this.f2584e.d();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.f) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = g;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.f2584e.c() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }

    @Override // V1.AbstractC0203t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableD;
        this.f2584e.a(runnable);
        if (g.get(this) >= this.f2582c || !e() || (runnableD = d()) == null) {
            return;
        }
        this.b.dispatch(this, new E0.d(4, this, runnableD));
    }

    @Override // V1.AbstractC0203t
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableD;
        this.f2584e.a(runnable);
        if (g.get(this) >= this.f2582c || !e() || (runnableD = d()) == null) {
            return;
        }
        this.b.dispatchYield(this, new E0.d(4, this, runnableD));
    }

    public final boolean e() {
        synchronized (this.f) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = g;
            if (atomicIntegerFieldUpdater.get(this) >= this.f2582c) {
                return false;
            }
            atomicIntegerFieldUpdater.incrementAndGet(this);
            return true;
        }
    }

    @Override // V1.AbstractC0203t
    public final AbstractC0203t limitedParallelism(int i3) {
        AbstractC0210a.a(i3);
        return i3 >= this.f2582c ? this : super.limitedParallelism(i3);
    }
}
