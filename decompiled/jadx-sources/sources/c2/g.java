package c2;

import V1.U;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g extends U {
    public b b;

    @Override // V1.AbstractC0203t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        b.c(this.b, runnable, 6);
    }

    @Override // V1.AbstractC0203t
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        b.c(this.b, runnable, 2);
    }
}
