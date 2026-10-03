package d2;

import a2.u;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends u {
    public final AtomicReferenceArray f;

    public k(long j2, k kVar, int i3) {
        super(j2, kVar, i3);
        this.f = new AtomicReferenceArray(j.f);
    }

    @Override // a2.u
    public final int f() {
        return j.f;
    }

    @Override // a2.u
    public final void g(int i3, CoroutineContext coroutineContext) {
        this.f.set(i3, j.f3990e);
        h();
    }

    public final String toString() {
        return "SemaphoreSegment[id=" + this.f2597d + ", hashCode=" + hashCode() + ']';
    }
}
