package V1;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class t0 extends AbstractC0203t {
    public static final /* synthetic */ int b = 0;

    static {
        new t0();
    }

    @Override // V1.AbstractC0203t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        if (coroutineContext.get(y0.b) != null) {
            throw new ClassCastException();
        }
        throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
    }

    @Override // V1.AbstractC0203t
    public final AbstractC0203t limitedParallelism(int i3) {
        throw new UnsupportedOperationException("limitedParallelism is not supported for Dispatchers.Unconfined");
    }

    @Override // V1.AbstractC0203t
    public final String toString() {
        return "Dispatchers.Unconfined";
    }
}
