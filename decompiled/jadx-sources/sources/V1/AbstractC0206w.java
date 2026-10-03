package V1;

import a2.AbstractC0210a;
import kotlin.ExceptionsKt;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: renamed from: V1.w, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0206w {
    public static final void a(CoroutineContext coroutineContext, Throwable th) {
        try {
            InterfaceC0205v interfaceC0205v = (InterfaceC0205v) coroutineContext.get(C0204u.b);
            if (interfaceC0205v != null) {
                ((W1.b) interfaceC0205v).d(th);
            } else {
                AbstractC0210a.c(coroutineContext, th);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                ExceptionsKt.addSuppressed(runtimeException, th);
                th = runtimeException;
            }
            AbstractC0210a.c(coroutineContext, th);
        }
    }
}
