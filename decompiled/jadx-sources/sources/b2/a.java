package b2;

import V1.AbstractC0185a;
import a2.AbstractC0210a;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static void a(Function2 function2, AbstractC0185a abstractC0185a, AbstractC0185a abstractC0185a2) {
        try {
            Continuation continuationIntercepted = IntrinsicsKt.intercepted(IntrinsicsKt.createCoroutineUnintercepted(function2, abstractC0185a, abstractC0185a2));
            Result.Companion companion = Result.INSTANCE;
            AbstractC0210a.f(Result.m9constructorimpl(Unit.INSTANCE), continuationIntercepted);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            abstractC0185a2.resumeWith(Result.m9constructorimpl(ResultKt.createFailure(th)));
            throw th;
        }
    }
}
