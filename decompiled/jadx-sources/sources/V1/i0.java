package V1;

import a2.AbstractC0210a;
import a2.AbstractC0211b;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i0 extends AbstractC0211b {
    public final f0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l0 f2288c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ j0 f2289d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ W f2290e;

    public i0(f0 f0Var, j0 j0Var, W w2) {
        this.f2289d = j0Var;
        this.f2290e = w2;
        this.b = f0Var;
    }

    @Override // a2.AbstractC0211b
    public final void b(Object obj, Object obj2) {
        a2.l lVar = (a2.l) obj;
        boolean z2 = obj2 == null;
        a2.l lVar2 = this.b;
        a2.l lVar3 = z2 ? lVar2 : this.f2288c;
        if (lVar3 != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a2.l.b;
            while (!atomicReferenceFieldUpdater.compareAndSet(lVar, this, lVar3)) {
                if (atomicReferenceFieldUpdater.get(lVar) != this) {
                    return;
                }
            }
            if (z2) {
                a2.l lVar4 = this.f2288c;
                Intrinsics.checkNotNull(lVar4);
                lVar2.f(lVar4);
            }
        }
    }

    @Override // a2.AbstractC0211b
    public final a2.w c(Object obj) {
        if (this.f2289d.w() == this.f2290e) {
            return null;
        }
        return AbstractC0210a.f2574d;
    }
}
