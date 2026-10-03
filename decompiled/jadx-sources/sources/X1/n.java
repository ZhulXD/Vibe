package X1;

import V1.C0189e;
import V1.a0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class n {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Object a(p pVar, Function0 function0, ContinuationImpl continuationImpl) {
        l lVar;
        if (continuationImpl instanceof l) {
            lVar = (l) continuationImpl;
            int i3 = lVar.f2372d;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                lVar.f2372d = i3 - Integer.MIN_VALUE;
            } else {
                lVar = new l(continuationImpl);
            }
        } else {
            lVar = new l(continuationImpl);
        }
        Object obj = lVar.f2371c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = lVar.f2372d;
        try {
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                if (lVar.getContext().get(a0.b) != pVar) {
                    throw new IllegalStateException("awaitClose() can only be invoked from the producer context");
                }
                lVar.b = (Lambda) function0;
                lVar.f2372d = 1;
                C0189e c0189e = new C0189e(1, IntrinsicsKt.intercepted(lVar));
                c0189e.r();
                ((g) pVar).M(new m(0, c0189e));
                Object objQ = c0189e.q();
                if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(lVar);
                }
                if (objQ == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function0 = (Function0) lVar.b;
                ResultKt.throwOnFailure(obj);
            }
            function0.invoke();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            function0.invoke();
            throw th;
        }
    }
}
