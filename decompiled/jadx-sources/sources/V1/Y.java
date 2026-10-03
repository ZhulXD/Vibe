package V1;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Y extends d0 {
    public static final AtomicIntegerFieldUpdater g = AtomicIntegerFieldUpdater.newUpdater(Y.class, "_invoked");

    @Volatile
    private volatile int _invoked;
    public final Function1 f;

    public Y(Function1 function1) {
        this.f = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        k((Throwable) obj);
        return Unit.INSTANCE;
    }

    @Override // V1.f0
    public final void k(Throwable th) {
        if (g.compareAndSet(this, 0, 1)) {
            this.f.invoke(th);
        }
    }
}
