package a2;

import V1.n0;
import androidx.core.internal.view.SupportMenu;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.Volatile;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class u extends AbstractC0213d implements n0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f2596e = AtomicIntegerFieldUpdater.newUpdater(u.class, "cleanedAndPointers");

    @Volatile
    private volatile int cleanedAndPointers;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f2597d;

    public u(long j2, u uVar, int i3) {
        super(uVar);
        this.f2597d = j2;
        this.cleanedAndPointers = i3 << 16;
    }

    @Override // a2.AbstractC0213d
    public final boolean c() {
        return f2596e.get(this) == f() && b() != null;
    }

    public final boolean e() {
        return f2596e.addAndGet(this, SupportMenu.CATEGORY_MASK) == f() && b() != null;
    }

    public abstract int f();

    public abstract void g(int i3, CoroutineContext coroutineContext);

    public final void h() {
        if (f2596e.incrementAndGet(this) == f()) {
            d();
        }
    }

    public final boolean i() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i3;
        do {
            atomicIntegerFieldUpdater = f2596e;
            i3 = atomicIntegerFieldUpdater.get(this);
            if (i3 == f() && b() != null) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i3, 65536 + i3));
        return true;
    }
}
