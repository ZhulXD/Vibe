package V1;

import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class u0 extends a2.t {
    public final ThreadLocal f;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    public u0(Continuation continuation, CoroutineContext coroutineContext) {
        v0 v0Var = v0.b;
        super(continuation, coroutineContext.get(v0Var) == null ? coroutineContext.plus(v0Var) : coroutineContext);
        this.f = new ThreadLocal();
        if (continuation.get$context().get(ContinuationInterceptor.INSTANCE) instanceof AbstractC0203t) {
            return;
        }
        Object objB = a2.B.b(coroutineContext, null);
        a2.B.a(coroutineContext, objB);
        N(coroutineContext, objB);
    }

    public final boolean M() {
        boolean z2 = this.threadLocalIsSet && this.f.get() == null;
        this.f.remove();
        return !z2;
    }

    public final void N(CoroutineContext coroutineContext, Object obj) {
        this.threadLocalIsSet = true;
        this.f.set(TuplesKt.to(coroutineContext, obj));
    }

    @Override // a2.t, V1.j0
    public final void j(Object obj) {
        if (this.threadLocalIsSet) {
            Pair pair = (Pair) this.f.get();
            if (pair != null) {
                a2.B.a((CoroutineContext) pair.component1(), pair.component2());
            }
            this.f.remove();
        }
        Object objA = AbstractC0197m.a(obj);
        Continuation continuation = this.f2595e;
        CoroutineContext context = continuation.get$context();
        Object objB = a2.B.b(context, null);
        u0 u0VarB = objB != a2.B.f2566a ? AbstractC0201q.b(continuation, context, objB) : null;
        try {
            this.f2595e.resumeWith(objA);
            Unit unit = Unit.INSTANCE;
        } finally {
            if (u0VarB == null || u0VarB.M()) {
                a2.B.a(context, objB);
            }
        }
    }
}
