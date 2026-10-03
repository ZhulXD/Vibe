package V1;

import a2.AbstractC0210a;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: V1.g, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0191g extends d0 {
    public final C0189e f;

    public C0191g(C0189e c0189e) {
        this.f = c0189e;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        k((Throwable) obj);
        return Unit.INSTANCE;
    }

    @Override // V1.f0
    public final void k(Throwable th) {
        CancellationException cancellationExceptionS = j().s();
        C0189e c0189e = this.f;
        if (c0189e.v()) {
            Continuation continuation = c0189e.f2279e;
            Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            a2.h hVar = (a2.h) continuation;
            hVar.getClass();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a2.h.f2579i;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(hVar);
                a2.w wVar = AbstractC0210a.f2573c;
                if (Intrinsics.areEqual(obj, wVar)) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(hVar, wVar, cancellationExceptionS)) {
                        if (atomicReferenceFieldUpdater.get(hVar) != wVar) {
                        }
                    }
                    return;
                } else {
                    if (obj instanceof Throwable) {
                        return;
                    }
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(hVar, obj, null)) {
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(hVar) == obj);
                }
            }
        }
        c0189e.n(cancellationExceptionS);
        if (c0189e.v()) {
            return;
        }
        c0189e.o();
    }
}
