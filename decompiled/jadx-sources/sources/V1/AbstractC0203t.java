package V1;

import a2.AbstractC0210a;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: V1.t, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0203t extends AbstractCoroutineContextElement implements ContinuationInterceptor {
    public static final C0202s Key = new C0202s(ContinuationInterceptor.INSTANCE, r.b);

    public AbstractC0203t() {
        super(ContinuationInterceptor.INSTANCE);
    }

    public abstract void dispatch(CoroutineContext coroutineContext, Runnable runnable);

    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        dispatch(coroutineContext, runnable);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.Element> E get(CoroutineContext.Key<E> key) {
        return (E) ContinuationInterceptor.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public final <T> Continuation<T> interceptContinuation(Continuation<? super T> continuation) {
        return new a2.h(this, continuation);
    }

    public boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return !(this instanceof t0);
    }

    public AbstractC0203t limitedParallelism(int i3) {
        AbstractC0210a.a(i3);
        return new a2.i(this, i3);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key<?> key) {
        return ContinuationInterceptor.DefaultImpls.minusKey(this, key);
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public final void releaseInterceptedContinuation(Continuation<?> continuation) {
        Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        a2.h hVar = (a2.h) continuation;
        hVar.getClass();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a2.h.f2579i;
        while (atomicReferenceFieldUpdater.get(hVar) == AbstractC0210a.f2573c) {
        }
        Object obj = atomicReferenceFieldUpdater.get(hVar);
        C0189e c0189e = obj instanceof C0189e ? (C0189e) obj : null;
        if (c0189e != null) {
            c0189e.o();
        }
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + A.a(this);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two CoroutineDispatcher objects is meaningless. CoroutineDispatcher is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The dispatcher to the right of `+` just replaces the dispatcher to the left.")
    public final AbstractC0203t plus(AbstractC0203t abstractC0203t) {
        return abstractC0203t;
    }
}
