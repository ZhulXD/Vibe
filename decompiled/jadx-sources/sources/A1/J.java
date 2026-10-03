package A1;

import V1.C0189e;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class J extends SuspendLambda implements Function2 {
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ long f67c;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        J j2 = new J(2, continuation);
        j2.f67c = ((Number) obj).longValue();
        return j2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((J) create(Long.valueOf(((Number) obj).longValue()), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objQ;
        long j2 = this.f67c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = this.b;
        if (i3 == 0) {
            ResultKt.throwOnFailure(obj);
            this.f67c = j2;
            this.b = 1;
            if (j2 <= 0) {
                objQ = Unit.INSTANCE;
            } else {
                C0189e c0189e = new C0189e(1, IntrinsicsKt.intercepted(this));
                c0189e.r();
                if (j2 < Long.MAX_VALUE) {
                    CoroutineContext.Element element = c0189e.f.get(ContinuationInterceptor.INSTANCE);
                    V1.D d3 = element instanceof V1.D ? (V1.D) element : null;
                    if (d3 == null) {
                        d3 = V1.C.f2263a;
                    }
                    d3.c(j2, c0189e);
                }
                objQ = c0189e.q();
                if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(this);
                }
                if (objQ != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objQ = Unit.INSTANCE;
                }
            }
            if (objQ == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
