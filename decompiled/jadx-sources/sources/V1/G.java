package V1;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class G {
    public static final void a(C0189e c0189e, Continuation continuation, boolean z2) {
        Object objH;
        Object obj = C0189e.f2277h.get(c0189e);
        Throwable thF = c0189e.f(obj);
        if (thF != null) {
            Result.Companion companion = Result.INSTANCE;
            objH = ResultKt.createFailure(thF);
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            objH = c0189e.h(obj);
        }
        Object objM9constructorimpl = Result.m9constructorimpl(objH);
        if (!z2) {
            continuation.resumeWith(objM9constructorimpl);
            return;
        }
        Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        a2.h hVar = (a2.h) continuation;
        Continuation continuation2 = hVar.f;
        Object obj2 = hVar.f2581h;
        CoroutineContext coroutineContext = continuation2.get$context();
        Object objB = a2.B.b(coroutineContext, obj2);
        u0 u0VarB = objB != a2.B.f2566a ? AbstractC0201q.b(continuation2, coroutineContext, objB) : null;
        try {
            hVar.f.resumeWith(objM9constructorimpl);
            Unit unit = Unit.INSTANCE;
        } finally {
            if (u0VarB == null || u0VarB.M()) {
                a2.B.a(coroutineContext, objB);
            }
        }
    }
}
