package V1;

import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class F extends c2.h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2264d;

    public F(int i3) {
        super(0L, c2.k.g);
        this.f2264d = i3;
    }

    public abstract void b(Object obj, CancellationException cancellationException);

    public abstract Continuation e();

    public Throwable f(Object obj) {
        C0195k c0195k = obj instanceof C0195k ? (C0195k) obj : null;
        if (c0195k != null) {
            return c0195k.f2296a;
        }
        return null;
    }

    public final void i(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            ExceptionsKt.addSuppressed(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        Intrinsics.checkNotNull(th);
        AbstractC0206w.a(e().get$context(), new C0209z("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object j();

    /* JADX WARN: Code duplicated, block: B:22:0x004c  */
    @Override // java.lang.Runnable
    public final void run() {
        Object objM9constructorimpl;
        b0 b0Var;
        Object objM9constructorimpl2;
        c2.i iVar = this.f3186c;
        try {
            Continuation continuationE = e();
            Intrinsics.checkNotNull(continuationE, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            a2.h hVar = (a2.h) continuationE;
            Continuation continuation = hVar.f;
            Object obj = hVar.f2581h;
            CoroutineContext context = continuation.get$context();
            Object objB = a2.B.b(context, obj);
            u0 u0VarB = objB != a2.B.f2566a ? AbstractC0201q.b(continuation, context, objB) : null;
            try {
                CoroutineContext context2 = continuation.get$context();
                Object objJ = j();
                Throwable thF = f(objJ);
                if (thF == null) {
                    int i3 = this.f2264d;
                    boolean z2 = true;
                    if (i3 != 1 && i3 != 2) {
                        z2 = false;
                    }
                    if (z2) {
                        b0Var = (b0) context2.get(a0.b);
                    } else {
                        b0Var = null;
                    }
                } else {
                    b0Var = null;
                }
                if (b0Var != null && !b0Var.a()) {
                    CancellationException cancellationExceptionS = ((j0) b0Var).s();
                    b(objJ, cancellationExceptionS);
                    Result.Companion companion = Result.INSTANCE;
                    continuation.resumeWith(Result.m9constructorimpl(ResultKt.createFailure(cancellationExceptionS)));
                } else if (thF != null) {
                    Result.Companion companion2 = Result.INSTANCE;
                    continuation.resumeWith(Result.m9constructorimpl(ResultKt.createFailure(thF)));
                } else {
                    Result.Companion companion3 = Result.INSTANCE;
                    continuation.resumeWith(Result.m9constructorimpl(h(objJ)));
                }
                Unit unit = Unit.INSTANCE;
                if (u0VarB == null || u0VarB.M()) {
                    a2.B.a(context, objB);
                }
                try {
                    iVar.getClass();
                    objM9constructorimpl2 = Result.m9constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                i(null, Result.m12exceptionOrNullimpl(objM9constructorimpl2));
            } catch (Throwable th2) {
                if (u0VarB == null || u0VarB.M()) {
                    a2.B.a(context, objB);
                }
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                Result.Companion companion5 = Result.INSTANCE;
                iVar.getClass();
                objM9constructorimpl = Result.m9constructorimpl(Unit.INSTANCE);
            } catch (Throwable th4) {
                Result.Companion companion6 = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th4));
            }
            i(th3, Result.m12exceptionOrNullimpl(objM9constructorimpl));
        }
    }

    public Object h(Object obj) {
        return obj;
    }
}
