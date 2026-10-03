package V1;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Ref;

/* JADX INFO: renamed from: V1.q, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0201q {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    public static final CoroutineContext a(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, boolean z2) {
        Boolean bool = Boolean.FALSE;
        C0200p c0200p = C0200p.b;
        boolean zBooleanValue = ((Boolean) coroutineContext.fold(bool, c0200p)).booleanValue();
        boolean zBooleanValue2 = ((Boolean) coroutineContext2.fold(bool, c0200p)).booleanValue();
        if (!zBooleanValue && !zBooleanValue2) {
            return coroutineContext.plus(coroutineContext2);
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = coroutineContext2;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        CoroutineContext coroutineContext3 = (CoroutineContext) coroutineContext.fold(emptyCoroutineContext, new C0199o(2));
        if (zBooleanValue2) {
            objectRef.element = ((CoroutineContext) objectRef.element).fold(emptyCoroutineContext, C0198n.b);
        }
        return coroutineContext3.plus((CoroutineContext) objectRef.element);
    }

    public static final u0 b(Continuation continuation, CoroutineContext coroutineContext, Object obj) {
        u0 u0Var = null;
        if (!(continuation instanceof CoroutineStackFrame)) {
            return null;
        }
        if (coroutineContext.get(v0.b) != null) {
            CoroutineStackFrame callerFrame = (CoroutineStackFrame) continuation;
            while (!(callerFrame instanceof E) && (callerFrame = callerFrame.getCallerFrame()) != null) {
                if (callerFrame instanceof u0) {
                    u0Var = (u0) callerFrame;
                    break;
                }
            }
            if (u0Var != null) {
                u0Var.N(coroutineContext, obj);
            }
        }
        return u0Var;
    }
}
