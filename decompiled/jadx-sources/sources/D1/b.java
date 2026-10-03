package D1;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f806a = new AtomicReference(a.b);
    public final AtomicBoolean b = new AtomicBoolean(false);

    public final boolean a() {
        return this.f806a.get() != a.f804d;
    }

    public final boolean b() {
        AtomicReference atomicReference;
        a aVar = a.b;
        a aVar2 = a.f803c;
        do {
            atomicReference = this.f806a;
            if (atomicReference.compareAndSet(aVar, aVar2)) {
                return true;
            }
        } while (atomicReference.get() == aVar);
        return false;
    }
}
