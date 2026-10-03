package d2;

import V1.A;
import V1.C0189e;
import a2.w;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.Volatile;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends i implements a {
    public static final AtomicReferenceFieldUpdater g = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "owner");

    @Volatile
    private volatile Object owner = f.f3982a;

    public e() {
        new d(this);
    }

    public final Object c(ContinuationImpl continuationImpl) throws Throwable {
        int i3;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = i.f;
            int i4 = atomicIntegerFieldUpdater.get(this);
            if (i4 > 1) {
                do {
                    i3 = atomicIntegerFieldUpdater.get(this);
                    if (i3 <= 1) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i3, 1));
            } else {
                if (i4 <= 0) {
                    C0189e c0189eB = A.b(IntrinsicsKt.intercepted(continuationImpl));
                    try {
                        a(new c(this, c0189eB));
                        Object objQ = c0189eB.q();
                        if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                            DebugProbesKt.probeCoroutineSuspended(continuationImpl);
                        }
                        if (objQ != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                            objQ = Unit.INSTANCE;
                        }
                        return objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objQ : Unit.INSTANCE;
                    } catch (Throwable th) {
                        c0189eB.x();
                        throw th;
                    }
                }
                if (atomicIntegerFieldUpdater.compareAndSet(this, i4, i4 - 1)) {
                    g.set(this, null);
                    return Unit.INSTANCE;
                }
            }
        }
    }

    public final void d(Object obj) {
        while (Math.max(i.f.get(this), 0) == 0) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            w wVar = f.f3982a;
            if (obj2 != wVar) {
                if (obj2 != obj && obj != null) {
                    throw new IllegalStateException(("This mutex is locked by " + obj2 + ", but " + obj + " is expected").toString());
                }
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, wVar)) {
                        b();
                        return;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == obj2);
            }
        }
        throw new IllegalStateException("This mutex is not locked");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Mutex@");
        sb.append(A.a(this));
        sb.append("[isLocked=");
        sb.append(Math.max(i.f.get(this), 0) == 0);
        sb.append(",owner=");
        sb.append(g.get(this));
        sb.append(']');
        return sb.toString();
    }
}
