package V1;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f0 extends a2.l implements I, W, Function1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public j0 f2282e;

    @Override // V1.W
    public final boolean a() {
        return true;
    }

    @Override // V1.I
    public final void b() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        j0 j0VarJ = j();
        while (true) {
            Object objW = j0VarJ.w();
            if (objW instanceof f0) {
                if (objW != this) {
                    return;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = j0.b;
                K k2 = A.f2260j;
                while (!atomicReferenceFieldUpdater2.compareAndSet(j0VarJ, objW, k2)) {
                    if (atomicReferenceFieldUpdater2.get(j0VarJ) != objW) {
                    }
                }
                return;
            }
            if (!(objW instanceof W) || ((W) objW).d() == null) {
                return;
            }
            while (true) {
                Object objG = g();
                if (objG instanceof a2.r) {
                    return;
                }
                if (objG == this) {
                    return;
                }
                Intrinsics.checkNotNull(objG, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
                a2.l lVar = (a2.l) objG;
                lVar.getClass();
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = a2.l.f2586d;
                a2.r rVar = (a2.r) atomicReferenceFieldUpdater3.get(lVar);
                if (rVar == null) {
                    rVar = new a2.r(lVar);
                    atomicReferenceFieldUpdater3.lazySet(lVar, rVar);
                }
                do {
                    atomicReferenceFieldUpdater = a2.l.b;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, objG, rVar)) {
                        lVar.e();
                        return;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == objG);
            }
        }
    }

    @Override // V1.W
    public final l0 d() {
        return null;
    }

    public final j0 j() {
        j0 j0Var = this.f2282e;
        if (j0Var != null) {
            return j0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("job");
        return null;
    }

    public abstract void k(Throwable th);

    @Override // a2.l
    public final String toString() {
        return getClass().getSimpleName() + '@' + A.a(this) + "[job@" + A.a(j()) + ']';
    }
}
