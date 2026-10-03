package V1;

import a2.AbstractC0210a;
import kotlin.collections.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class L extends AbstractC0203t {
    public long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2267c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayDeque f2268d;

    public final void d() {
        long j2 = this.b - 4294967296L;
        this.b = j2;
        if (j2 <= 0 && this.f2267c) {
            shutdown();
        }
    }

    public final void e(boolean z2) {
        this.b = (z2 ? 4294967296L : 1L) + this.b;
        if (z2) {
            return;
        }
        this.f2267c = true;
    }

    public final boolean f() {
        F f;
        ArrayDeque arrayDeque = this.f2268d;
        if (arrayDeque == null || (f = (F) arrayDeque.removeFirstOrNull()) == null) {
            return false;
        }
        f.run();
        return true;
    }

    @Override // V1.AbstractC0203t
    public final AbstractC0203t limitedParallelism(int i3) {
        AbstractC0210a.a(i3);
        return this;
    }

    public abstract void shutdown();
}
