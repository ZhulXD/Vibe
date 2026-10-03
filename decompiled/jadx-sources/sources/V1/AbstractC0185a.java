package V1;

import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: renamed from: V1.a, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0185a extends j0 implements Continuation, InterfaceC0207x {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CoroutineContext f2275d;

    public AbstractC0185a(CoroutineContext coroutineContext, boolean z2) {
        super(z2);
        z((b0) coroutineContext.get(a0.b));
        this.f2275d = coroutineContext.plus(this);
    }

    @Override // V1.j0
    public final void E(Object obj) {
        if (!(obj instanceof C0195k)) {
            K(obj);
        } else {
            C0195k c0195k = (C0195k) obj;
            J(c0195k.f2296a, C0195k.b.get(c0195k) != 0);
        }
    }

    public final void L(int i3, AbstractC0185a abstractC0185a, Function2 function2) {
        int iA = p051u.h.a(i3);
        if (iA == 0) {
            b2.a.a(function2, abstractC0185a, this);
            return;
        }
        if (iA != 1) {
            if (iA == 2) {
                ContinuationKt.startCoroutine(function2, abstractC0185a, this);
                return;
            }
            if (iA != 3) {
                throw new NoWhenBranchMatchedException();
            }
            Continuation continuationProbeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(this);
            try {
                CoroutineContext coroutineContext = this.f2275d;
                Object objB = a2.B.b(coroutineContext, null);
                try {
                    Object objInvoke = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(abstractC0185a, continuationProbeCoroutineCreated);
                    a2.B.a(coroutineContext, objB);
                    if (objInvoke != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        continuationProbeCoroutineCreated.resumeWith(Result.m9constructorimpl(objInvoke));
                    }
                } catch (Throwable th) {
                    a2.B.a(coroutineContext, objB);
                    throw th;
                }
            } catch (Throwable th2) {
                Result.Companion companion = Result.INSTANCE;
                continuationProbeCoroutineCreated.resumeWith(Result.m9constructorimpl(ResultKt.createFailure(th2)));
            }
        }
    }

    @Override // kotlin.coroutines.Continuation
    /* JADX INFO: renamed from: getContext */
    public final CoroutineContext get$context() {
        return this.f2275d;
    }

    @Override // V1.InterfaceC0207x
    public final CoroutineContext getCoroutineContext() {
        return this.f2275d;
    }

    @Override // V1.j0
    public final String n() {
        return getClass().getSimpleName().concat(" was cancelled");
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(obj);
        if (thM12exceptionOrNullimpl != null) {
            obj = new C0195k(thM12exceptionOrNullimpl, false);
        }
        Object objB = B(obj);
        if (objB == A.f2257e) {
            return;
        }
        j(objB);
    }

    @Override // V1.j0
    public final void y(Q.c cVar) {
        AbstractC0206w.a(this.f2275d, cVar);
    }

    public void K(Object obj) {
    }

    public void J(Throwable th, boolean z2) {
    }
}
