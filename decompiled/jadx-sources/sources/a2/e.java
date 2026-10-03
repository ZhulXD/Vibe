package a2;

import V1.InterfaceC0207x;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements InterfaceC0207x {
    public final CoroutineContext b;

    public e(CoroutineContext coroutineContext) {
        this.b = coroutineContext;
    }

    @Override // V1.InterfaceC0207x
    public final CoroutineContext getCoroutineContext() {
        return this.b;
    }

    public final String toString() {
        return "CoroutineScope(coroutineContext=" + this.b + ')';
    }
}
