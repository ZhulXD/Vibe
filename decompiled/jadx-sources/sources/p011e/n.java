package p011e;

import C1.RunnableC0078k;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n implements Executor {
    public final Object b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayDeque f4149c = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final o f4150d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f4151e;

    public n(o oVar) {
        this.f4150d = oVar;
    }

    public final void a() {
        synchronized (this.b) {
            try {
                Runnable runnable = (Runnable) this.f4149c.poll();
                this.f4151e = runnable;
                if (runnable != null) {
                    this.f4150d.execute(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.b) {
            try {
                this.f4149c.add(new RunnableC0078k(14, this, runnable));
                if (this.f4151e == null) {
                    a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
