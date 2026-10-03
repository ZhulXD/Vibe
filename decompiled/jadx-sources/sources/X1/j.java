package X1;

import V1.w0;
import a2.u;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends u {
    public final b f;
    public final AtomicReferenceArray g;

    public j(long j2, j jVar, b bVar, int i3) {
        super(j2, jVar, i3);
        this.f = bVar;
        this.g = new AtomicReferenceArray(d.b * 2);
    }

    @Override // a2.u
    public final int f() {
        return d.b;
    }

    @Override // a2.u
    public final void g(int i3, CoroutineContext coroutineContext) {
        b bVar;
        int i4 = d.b;
        boolean z2 = i3 >= i4;
        if (z2) {
            i3 -= i4;
        }
        this.g.get(i3 * 2);
        while (true) {
            Object objK = k(i3);
            boolean z3 = objK instanceof w0;
            bVar = this.f;
            if (z3 || (objK instanceof s)) {
                if (j(i3, objK, z2 ? d.f2356j : d.f2357k)) {
                    m(i3, null);
                    l(i3, !z2);
                    if (z2) {
                        Intrinsics.checkNotNull(bVar);
                        bVar.getClass();
                        return;
                    }
                    return;
                }
            } else {
                if (objK == d.f2356j || objK == d.f2357k) {
                    break;
                }
                if (objK != d.g && objK != d.f) {
                    if (objK == d.f2355i || objK == d.f2352d || objK == d.f2358l) {
                        return;
                    }
                    throw new IllegalStateException(("unexpected state: " + objK).toString());
                }
            }
        }
        m(i3, null);
        if (z2) {
            Intrinsics.checkNotNull(bVar);
            bVar.getClass();
        }
    }

    public final boolean j(int i3, Object obj, Object obj2) {
        AtomicReferenceArray atomicReferenceArray;
        int i4 = (i3 * 2) + 1;
        do {
            atomicReferenceArray = this.g;
            if (atomicReferenceArray.compareAndSet(i4, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceArray.get(i4) == obj);
        return false;
    }

    public final Object k(int i3) {
        return this.g.get((i3 * 2) + 1);
    }

    public final void l(int i3, boolean z2) {
        long j2;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j3;
        if (z2) {
            b bVar = this.f;
            Intrinsics.checkNotNull(bVar);
            long j4 = (this.f2597d * ((long) d.b)) + ((long) i3);
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = b.f;
            AtomicLongFieldUpdater atomicLongFieldUpdater3 = b.f2345e;
            if (!bVar.r()) {
                while (atomicLongFieldUpdater3.get(bVar) <= j4) {
                }
                int i4 = d.f2351c;
                for (int i5 = 0; i5 < i4; i5++) {
                    long j5 = atomicLongFieldUpdater3.get(bVar);
                    if (j5 != (DurationKt.MAX_MILLIS & atomicLongFieldUpdater2.get(bVar)) || j5 != atomicLongFieldUpdater3.get(bVar)) {
                    }
                }
                do {
                    j2 = atomicLongFieldUpdater2.get(bVar);
                } while (!atomicLongFieldUpdater2.compareAndSet(bVar, j2, (j2 & DurationKt.MAX_MILLIS) + 4611686018427387904L));
                while (true) {
                    long j6 = atomicLongFieldUpdater3.get(bVar);
                    atomicLongFieldUpdater = b.f;
                    long j7 = atomicLongFieldUpdater.get(bVar);
                    long j8 = j7 & DurationKt.MAX_MILLIS;
                    boolean z3 = (j7 & 4611686018427387904L) != 0;
                    if (j6 == j8 && j6 == atomicLongFieldUpdater3.get(bVar)) {
                        break;
                    } else if (!z3) {
                        atomicLongFieldUpdater.compareAndSet(bVar, j7, 4611686018427387904L + j8);
                    }
                }
                do {
                    j3 = atomicLongFieldUpdater.get(bVar);
                } while (!atomicLongFieldUpdater.compareAndSet(bVar, j3, j3 & DurationKt.MAX_MILLIS));
            }
        }
        h();
    }

    public final void m(int i3, Object obj) {
        this.g.lazySet(i3 * 2, obj);
    }

    public final void n(int i3, Object obj) {
        this.g.set((i3 * 2) + 1, obj);
    }
}
