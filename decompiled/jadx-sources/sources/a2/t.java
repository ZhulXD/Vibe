package a2;

import V1.AbstractC0185a;
import V1.AbstractC0197m;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class t extends AbstractC0185a implements CoroutineStackFrame {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Continuation f2595e;

    public t(Continuation continuation, CoroutineContext coroutineContext) {
        super(coroutineContext, true);
        this.f2595e = continuation;
    }

    @Override // V1.j0
    public final boolean A() {
        return true;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.f2595e;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // V1.j0
    public void i(Object obj) {
        AbstractC0210a.f(AbstractC0197m.a(obj), IntrinsicsKt.intercepted(this.f2595e));
    }

    @Override // V1.j0
    public void j(Object obj) {
        this.f2595e.resumeWith(AbstractC0197m.a(obj));
    }
}
