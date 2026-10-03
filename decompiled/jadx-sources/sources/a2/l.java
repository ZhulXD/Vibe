package a2;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class l {
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_next");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2585c = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_prev");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2586d = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_removedRef");

    @Volatile
    private volatile Object _next = this;

    @Volatile
    private volatile Object _prev = this;

    @Volatile
    private volatile Object _removedRef;

    public final l e() {
        l lVar;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Object obj;
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f2585c;
            l lVar2 = (l) atomicReferenceFieldUpdater2.get(this);
            lVar = lVar2;
            while (true) {
                l lVar3 = null;
                while (true) {
                    atomicReferenceFieldUpdater = b;
                    obj = atomicReferenceFieldUpdater.get(lVar);
                    if (obj == this) {
                        if (lVar2 != lVar) {
                            while (!atomicReferenceFieldUpdater2.compareAndSet(this, lVar2, lVar)) {
                                if (atomicReferenceFieldUpdater2.get(this) != lVar2) {
                                    break;
                                }
                            }
                            break loop0;
                        }
                        break;
                    }
                    if (i()) {
                        return null;
                    }
                    if (obj == null) {
                        break loop0;
                    }
                    if (obj instanceof q) {
                        ((q) obj).a(lVar);
                        break;
                    }
                    if (!(obj instanceof r)) {
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
                        lVar3 = lVar;
                        lVar = (l) obj;
                    } else {
                        if (lVar3 != null) {
                            break;
                        }
                        lVar = (l) atomicReferenceFieldUpdater2.get(lVar);
                    }
                }
                l lVar4 = ((r) obj).f2594a;
                while (!atomicReferenceFieldUpdater.compareAndSet(lVar3, lVar, lVar4)) {
                    if (atomicReferenceFieldUpdater.get(lVar3) != lVar) {
                        break;
                    }
                }
                lVar = lVar3;
            }
        }
        return lVar;
    }

    public final void f(l lVar) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2585c;
            l lVar2 = (l) atomicReferenceFieldUpdater.get(lVar);
            if (g() != lVar) {
                return;
            }
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(lVar, lVar2, this)) {
                    if (i()) {
                        lVar.e();
                        return;
                    }
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(lVar) == lVar2);
        }
    }

    public final Object g() {
        while (true) {
            Object obj = b.get(this);
            if (!(obj instanceof q)) {
                return obj;
            }
            ((q) obj).a(this);
        }
    }

    public final l h() {
        l lVar;
        Object objG = g();
        r rVar = objG instanceof r ? (r) objG : null;
        if (rVar != null && (lVar = rVar.f2594a) != null) {
            return lVar;
        }
        Intrinsics.checkNotNull(objG, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        return (l) objG;
    }

    public boolean i() {
        return g() instanceof r;
    }

    public String toString() {
        return new k(this, V1.A.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", 1) + '@' + V1.A.a(this);
    }
}
