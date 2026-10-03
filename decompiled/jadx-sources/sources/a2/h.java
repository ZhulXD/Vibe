package a2;

import V1.AbstractC0196l;
import V1.AbstractC0203t;
import V1.C0195k;
import V1.F;
import V1.L;
import V1.s0;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends F implements CoroutineStackFrame, Continuation {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2579i = AtomicReferenceFieldUpdater.newUpdater(h.class, Object.class, "_reusableCancellableContinuation");

    @Volatile
    private volatile Object _reusableCancellableContinuation;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AbstractC0203t f2580e;
    public final Continuation f;
    public Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f2581h;

    public h(AbstractC0203t abstractC0203t, Continuation continuation) {
        super(-1);
        this.f2580e = abstractC0203t;
        this.f = continuation;
        this.g = AbstractC0210a.b;
        Object objFold = continuation.get$context().fold(0, B.b);
        Intrinsics.checkNotNull(objFold);
        this.f2581h = objFold;
    }

    @Override // V1.F
    public final void b(Object obj, CancellationException cancellationException) {
        if (obj instanceof AbstractC0196l) {
            throw null;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.f;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    /* JADX INFO: renamed from: getContext */
    public final CoroutineContext get$context() {
        return this.f.get$context();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // V1.F
    public final Object j() {
        Object obj = this.g;
        this.g = AbstractC0210a.b;
        return obj;
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Continuation continuation = this.f;
        CoroutineContext context = continuation.get$context();
        Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(obj);
        Object c0195k = thM12exceptionOrNullimpl == null ? obj : new C0195k(thM12exceptionOrNullimpl, false);
        AbstractC0203t abstractC0203t = this.f2580e;
        if (abstractC0203t.isDispatchNeeded(context)) {
            this.g = c0195k;
            this.f2264d = 0;
            abstractC0203t.dispatch(context, this);
            return;
        }
        L lA = s0.a();
        if (lA.b >= 4294967296L) {
            this.g = c0195k;
            this.f2264d = 0;
            ArrayDeque arrayDeque = lA.f2268d;
            if (arrayDeque == null) {
                arrayDeque = new ArrayDeque();
                lA.f2268d = arrayDeque;
            }
            arrayDeque.addLast(this);
            return;
        }
        lA.e(true);
        try {
            CoroutineContext context2 = continuation.get$context();
            Object objB = B.b(context2, this.f2581h);
            try {
                continuation.resumeWith(obj);
                Unit unit = Unit.INSTANCE;
                B.a(context2, objB);
                while (lA.f()) {
                }
            } catch (Throwable th) {
                B.a(context2, objB);
                throw th;
            }
        } catch (Throwable th2) {
            try {
                i(th2, null);
            } finally {
                lA.d();
            }
        }
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.f2580e + ", " + V1.A.d(this.f) + ']';
    }

    @Override // V1.F
    public final Continuation e() {
        return this;
    }
}
