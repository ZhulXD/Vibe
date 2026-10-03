package a2;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2589e = AtomicReferenceFieldUpdater.newUpdater(o.class, Object.class, "_next");
    public static final AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(o.class, "_state");
    public static final w g = new w("REMOVE_FROZEN", 0);

    @Volatile
    private volatile Object _next;

    @Volatile
    private volatile long _state;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2590a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2591c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicReferenceArray f2592d;

    public o(int i3, boolean z2) {
        this.f2590a = i3;
        this.b = z2;
        int i4 = i3 - 1;
        this.f2591c = i4;
        this.f2592d = new AtomicReferenceArray(i3);
        if (i4 > 1073741823) {
            throw new IllegalStateException("Check failed.");
        }
        if ((i3 & i4) != 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public final int a(Object obj) {
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f;
            long j2 = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j2) != 0) {
                return (2305843009213693952L & j2) != 0 ? 2 : 1;
            }
            int i3 = (int) (1073741823 & j2);
            int i4 = (int) ((1152921503533105152L & j2) >> 30);
            int i5 = this.f2591c;
            if (((i4 + 2) & i5) == (i3 & i5)) {
                return 1;
            }
            boolean z2 = this.b;
            AtomicReferenceArray atomicReferenceArray = this.f2592d;
            if (z2 || atomicReferenceArray.get(i4 & i5) == null) {
                if (f.compareAndSet(this, j2, ((-1152921503533105153L) & j2) | (((long) ((i4 + 1) & 1073741823)) << 30))) {
                    atomicReferenceArray.set(i4 & i5, obj);
                    o oVarC = this;
                    while ((atomicLongFieldUpdater.get(oVarC) & 1152921504606846976L) != 0) {
                        oVarC = oVarC.c();
                        AtomicReferenceArray atomicReferenceArray2 = oVarC.f2592d;
                        int i6 = oVarC.f2591c & i4;
                        Object obj2 = atomicReferenceArray2.get(i6);
                        if ((obj2 instanceof n) && ((n) obj2).f2588a == i4) {
                            atomicReferenceArray2.set(i6, obj);
                        } else {
                            oVarC = null;
                        }
                        if (oVarC == null) {
                            return 0;
                        }
                    }
                    return 0;
                }
            } else {
                int i7 = this.f2590a;
                if (i7 < 1024 || ((i4 - i3) & 1073741823) > (i7 >> 1)) {
                    return 1;
                }
            }
        }
    }

    public final boolean b() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j2;
        do {
            atomicLongFieldUpdater = f;
            j2 = atomicLongFieldUpdater.get(this);
            if ((j2 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j2) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j2, 2305843009213693952L | j2));
        return true;
    }

    public final o c() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j2;
        o oVar;
        while (true) {
            atomicLongFieldUpdater = f;
            j2 = atomicLongFieldUpdater.get(this);
            if ((j2 & 1152921504606846976L) != 0) {
                oVar = this;
                break;
            }
            long j3 = 1152921504606846976L | j2;
            oVar = this;
            if (atomicLongFieldUpdater.compareAndSet(oVar, j2, j3)) {
                j2 = j3;
                break;
            }
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2589e;
            o oVar2 = (o) atomicReferenceFieldUpdater.get(this);
            if (oVar2 != null) {
                return oVar2;
            }
            o oVar3 = new o(oVar.f2590a * 2, oVar.b);
            int i3 = (int) (1073741823 & j2);
            int i4 = (int) ((1152921503533105152L & j2) >> 30);
            while (true) {
                int i5 = oVar.f2591c;
                int i6 = i3 & i5;
                if (i6 == (i5 & i4)) {
                    break;
                }
                Object nVar = oVar.f2592d.get(i6);
                if (nVar == null) {
                    nVar = new n(i3);
                }
                oVar3.f2592d.set(oVar3.f2591c & i3, nVar);
                i3++;
            }
            atomicLongFieldUpdater.set(oVar3, (-1152921504606846977L) & j2);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, oVar3) && atomicReferenceFieldUpdater.get(this) == null) {
            }
        }
    }

    public final Object d() {
        o oVarC = this;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f;
            long j2 = atomicLongFieldUpdater.get(oVarC);
            if ((j2 & 1152921504606846976L) != 0) {
                return g;
            }
            int i3 = (int) (j2 & 1073741823);
            int i4 = oVarC.f2591c;
            int i5 = i3 & i4;
            if ((((int) ((1152921503533105152L & j2) >> 30)) & i4) != i5) {
                AtomicReferenceArray atomicReferenceArray = oVarC.f2592d;
                Object obj = atomicReferenceArray.get(i5);
                boolean z2 = oVarC.b;
                if (obj == null) {
                    if (z2) {
                    }
                } else if (!(obj instanceof n)) {
                    long j3 = (i3 + 1) & 1073741823;
                    if (f.compareAndSet(oVarC, j2, (j2 & (-1073741824)) | j3)) {
                        atomicReferenceArray.set(i5, null);
                        return obj;
                    }
                    oVarC = this;
                    if (z2) {
                        while (true) {
                            long j4 = atomicLongFieldUpdater.get(oVarC);
                            int i6 = (int) (j4 & 1073741823);
                            if ((j4 & 1152921504606846976L) != 0) {
                                oVarC = oVarC.c();
                            } else {
                                o oVar = oVarC;
                                if (f.compareAndSet(oVar, j4, (j4 & (-1073741824)) | j3)) {
                                    oVar.f2592d.set(i6 & oVar.f2591c, null);
                                    oVarC = null;
                                } else {
                                    oVarC = oVar;
                                }
                            }
                            if (oVarC == null) {
                                return obj;
                            }
                        }
                    }
                }
            }
            return null;
        }
    }
}
