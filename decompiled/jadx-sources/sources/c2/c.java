package c2;

import V1.AbstractC0203t;
import V1.U;
import a2.AbstractC0210a;
import a2.x;
import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends U implements Executor {
    public static final c b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AbstractC0203t f3183c = l.b.limitedParallelism(AbstractC0210a.i("kotlinx.coroutines.io.parallelism", RangesKt.coerceAtLeast(64, x.f2600a), 12));

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // V1.AbstractC0203t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        f3183c.dispatch(coroutineContext, runnable);
    }

    @Override // V1.AbstractC0203t
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        f3183c.dispatchYield(coroutineContext, runnable);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        dispatch(EmptyCoroutineContext.INSTANCE, runnable);
    }

    @Override // V1.AbstractC0203t
    public final AbstractC0203t limitedParallelism(int i3) {
        return l.b.limitedParallelism(i3);
    }

    @Override // V1.AbstractC0203t
    public final String toString() {
        return "Dispatchers.IO";
    }
}
