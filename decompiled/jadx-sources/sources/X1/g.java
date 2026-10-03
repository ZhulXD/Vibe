package X1;

import V1.AbstractC0185a;
import V1.C0195k;
import V1.c0;
import V1.h0;
import a2.w;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g extends AbstractC0185a implements f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b f2368e;

    public g(CoroutineContext coroutineContext, b bVar) {
        super(coroutineContext, true);
        this.f2368e = bVar;
    }

    public final void M(m mVar) {
        b bVar = this.f2368e;
        bVar.getClass();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b.f2349k;
        while (!atomicReferenceFieldUpdater.compareAndSet(bVar, null, mVar)) {
            if (atomicReferenceFieldUpdater.get(bVar) != null) {
                while (true) {
                    Object obj = atomicReferenceFieldUpdater.get(bVar);
                    w wVar = d.f2363q;
                    if (obj != wVar) {
                        if (obj == d.f2364r) {
                            throw new IllegalStateException("Another handler was already registered and successfully invoked");
                        }
                        throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
                    }
                    w wVar2 = d.f2364r;
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(bVar, wVar, wVar2)) {
                            mVar.invoke(bVar.l());
                            return;
                        }
                    } while (atomicReferenceFieldUpdater.get(bVar) == wVar);
                }
            }
        }
    }

    @Override // V1.j0, V1.b0
    public final void b(CancellationException cancellationException) {
        Object objW = w();
        if (objW instanceof C0195k) {
            return;
        }
        if ((objW instanceof h0) && ((h0) objW).e()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new c0(n(), null, this);
        }
        l(cancellationException);
    }

    @Override // X1.r
    public final Object e(Object obj) {
        return this.f2368e.e(obj);
    }

    @Override // X1.r
    public final Object f(Object obj, Continuation continuation) {
        return this.f2368e.f(obj, continuation);
    }

    @Override // V1.j0
    public final void l(CancellationException cancellationException) {
        this.f2368e.h(cancellationException, true);
        k(cancellationException);
    }
}
