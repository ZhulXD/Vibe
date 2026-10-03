package a2;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: a2.d, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0213d {
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(AbstractC0213d.class, Object.class, "_next");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2577c = AtomicReferenceFieldUpdater.newUpdater(AbstractC0213d.class, Object.class, "_prev");

    @Volatile
    private volatile Object _next;

    @Volatile
    private volatile Object _prev;

    public AbstractC0213d(u uVar) {
        this._prev = uVar;
    }

    public final void a() {
        f2577c.lazySet(this, null);
    }

    public final AbstractC0213d b() {
        Object obj = b.get(this);
        if (obj == AbstractC0212c.f2576a) {
            return null;
        }
        return (AbstractC0213d) obj;
    }

    public abstract boolean c();

    public final void d() {
        AbstractC0213d abstractC0213dB;
        if (b() == null) {
            return;
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2577c;
            AbstractC0213d abstractC0213d = (AbstractC0213d) atomicReferenceFieldUpdater.get(this);
            while (abstractC0213d != null && abstractC0213d.c()) {
                abstractC0213d = (AbstractC0213d) atomicReferenceFieldUpdater.get(abstractC0213d);
            }
            AbstractC0213d abstractC0213dB2 = b();
            Intrinsics.checkNotNull(abstractC0213dB2);
            while (abstractC0213dB2.c() && (abstractC0213dB = abstractC0213dB2.b()) != null) {
                abstractC0213dB2 = abstractC0213dB;
            }
            while (true) {
                Object obj = atomicReferenceFieldUpdater.get(abstractC0213dB2);
                AbstractC0213d abstractC0213d2 = ((AbstractC0213d) obj) == null ? null : abstractC0213d;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(abstractC0213dB2, obj, abstractC0213d2)) {
                        break;
                    } else if (atomicReferenceFieldUpdater.get(abstractC0213dB2) != obj) {
                    }
                }
            }
            if (abstractC0213d != null) {
                b.set(abstractC0213d, abstractC0213dB2);
            }
            if (!abstractC0213dB2.c() || abstractC0213dB2.b() == null) {
                if (abstractC0213d == null || !abstractC0213d.c()) {
                    return;
                }
            }
        }
    }
}
