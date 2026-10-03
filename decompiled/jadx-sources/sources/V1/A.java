package V1;

import a2.AbstractC0210a;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class A {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a2.w f2254a = new a2.w("RESUME_TOKEN", 0);
    public static final a2.w b = new a2.w("REMOVED_TASK", 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a2.w f2255c = new a2.w("CLOSED_EMPTY", 0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a2.w f2256d = new a2.w("COMPLETING_ALREADY", 0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a2.w f2257e = new a2.w("COMPLETING_WAITING_CHILDREN", 0);
    public static final a2.w f = new a2.w("COMPLETING_RETRY", 0);
    public static final a2.w g = new a2.w("TOO_LATE_TO_CANCEL", 0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a2.w f2258h = new a2.w("SEALED", 0);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final K f2259i = new K(false);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final K f2260j = new K(true);

    public static final String a(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final C0189e b(Continuation continuation) {
        C0189e c0189e;
        C0189e c0189e2;
        if (!(continuation instanceof a2.h)) {
            return new C0189e(1, continuation);
        }
        a2.h hVar = (a2.h) continuation;
        a2.w wVar = AbstractC0210a.f2573c;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a2.h.f2579i;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(hVar);
            c0189e = null;
            if (obj == null) {
                atomicReferenceFieldUpdater.set(hVar, wVar);
                c0189e2 = null;
                break;
            }
            if (obj instanceof C0189e) {
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(hVar, obj, wVar)) {
                        c0189e2 = (C0189e) obj;
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(hVar) == obj);
            } else if (obj != wVar && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
        if (c0189e2 != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = C0189e.f2277h;
            Object obj2 = atomicReferenceFieldUpdater2.get(c0189e2);
            if (!(obj2 instanceof C0194j) || ((C0194j) obj2).f2293d == null) {
                C0189e.g.set(c0189e2, 536870911);
                atomicReferenceFieldUpdater2.set(c0189e2, C0186b.b);
                c0189e = c0189e2;
            } else {
                c0189e2.o();
            }
            if (c0189e != null) {
                return c0189e;
            }
        }
        return new C0189e(2, continuation);
    }

    public static p0 c(InterfaceC0207x interfaceC0207x, CoroutineContext coroutineContext, Function2 function2, int i3) {
        if ((i3 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContextA = AbstractC0201q.a(interfaceC0207x.getCoroutineContext(), coroutineContext, true);
        c2.d dVar = H.f2265a;
        if (coroutineContextA != dVar && coroutineContextA.get(ContinuationInterceptor.INSTANCE) == null) {
            coroutineContextA = coroutineContextA.plus(dVar);
        }
        p0 p0Var = new p0(coroutineContextA, true);
        p0Var.L(1, p0Var, function2);
        return p0Var;
    }

    public static final String d(Continuation continuation) {
        Object objM9constructorimpl;
        if (continuation instanceof a2.h) {
            return continuation.toString();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(continuation + '@' + a(continuation));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m12exceptionOrNullimpl(objM9constructorimpl) != null) {
            objM9constructorimpl = continuation.getClass().getName() + '@' + a(continuation);
        }
        return (String) objM9constructorimpl;
    }

    public static final Object e(CoroutineContext coroutineContext, Function2 function2, Continuation continuation) throws Throwable {
        Object objW;
        W w2;
        CoroutineContext context = continuation.getContext();
        CoroutineContext coroutineContextPlus = !((Boolean) coroutineContext.fold(Boolean.FALSE, C0200p.b)).booleanValue() ? context.plus(coroutineContext) : AbstractC0201q.a(context, coroutineContext, false);
        b0 b0Var = (b0) coroutineContextPlus.get(a0.b);
        if (b0Var != null && !b0Var.a()) {
            throw ((j0) b0Var).s();
        }
        if (coroutineContextPlus == context) {
            a2.t tVar = new a2.t(continuation, coroutineContextPlus);
            objW = com.bumptech.glide.c.X(tVar, tVar, function2);
        } else {
            ContinuationInterceptor.Companion key = ContinuationInterceptor.INSTANCE;
            if (Intrinsics.areEqual(coroutineContextPlus.get(key), context.get(key))) {
                u0 u0Var = new u0(continuation, coroutineContextPlus);
                CoroutineContext coroutineContext2 = u0Var.f2275d;
                Object objB = a2.B.b(coroutineContext2, null);
                try {
                    Object objX = com.bumptech.glide.c.X(u0Var, u0Var, function2);
                    a2.B.a(coroutineContext2, objB);
                    objW = objX;
                } catch (Throwable th) {
                    a2.B.a(coroutineContext2, objB);
                    throw th;
                }
            } else {
                E e2 = new E(continuation, coroutineContextPlus);
                b2.a.a(function2, e2, e2);
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = E.f;
                while (true) {
                    int i3 = atomicIntegerFieldUpdater.get(e2);
                    if (i3 != 0) {
                        if (i3 != 2) {
                            throw new IllegalStateException("Already suspended");
                        }
                        objW = e2.w();
                        X x2 = objW instanceof X ? (X) objW : null;
                        if (x2 != null && (w2 = x2.f2274a) != null) {
                            objW = w2;
                        }
                        if (!(objW instanceof C0195k)) {
                            break;
                        }
                        throw ((C0195k) objW).f2296a;
                    }
                    if (atomicIntegerFieldUpdater.compareAndSet(e2, 0, 1)) {
                        objW = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        break;
                    }
                }
            }
        }
        if (objW == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objW;
    }
}
