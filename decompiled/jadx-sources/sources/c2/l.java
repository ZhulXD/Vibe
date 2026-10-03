package c2;

import V1.AbstractC0203t;
import a2.AbstractC0210a;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l extends AbstractC0203t {
    public static final l b = new l();

    @Override // V1.AbstractC0203t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        d dVar = d.f3184c;
        dVar.b.b(runnable, k.f3193h, false);
    }

    @Override // V1.AbstractC0203t
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        d dVar = d.f3184c;
        dVar.b.b(runnable, k.f3193h, true);
    }

    @Override // V1.AbstractC0203t
    public final AbstractC0203t limitedParallelism(int i3) {
        AbstractC0210a.a(i3);
        return i3 >= k.f3191d ? this : super.limitedParallelism(i3);
    }
}
