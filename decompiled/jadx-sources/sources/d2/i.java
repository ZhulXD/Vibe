package d2;

import V1.InterfaceC0188d;
import X1.m;
import a2.AbstractC0210a;
import a2.AbstractC0212c;
import a2.u;
import a2.w;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class i {
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(i.class, Object.class, "head");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f3983c = AtomicLongFieldUpdater.newUpdater(i.class, "deqIdx");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f3984d = AtomicReferenceFieldUpdater.newUpdater(i.class, Object.class, "tail");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f3985e = AtomicLongFieldUpdater.newUpdater(i.class, "enqIdx");
    public static final AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(i.class, "_availablePermits");

    @Volatile
    private volatile int _availablePermits;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m f3986a;

    @Volatile
    private volatile long deqIdx;

    @Volatile
    private volatile long enqIdx;

    @Volatile
    private volatile Object head;

    @Volatile
    private volatile Object tail;

    public i() {
        k kVar = new k(0L, null, 2);
        this.head = kVar;
        this.tail = kVar;
        this._availablePermits = 1;
        this.f3986a = new m(1, this);
    }

    public final void a(c cVar) {
        Object objA;
        long j2;
        k kVar;
        while (true) {
            int andDecrement = f.getAndDecrement(this);
            if (andDecrement <= 1) {
                Function1 function1 = this.f3986a;
                if (andDecrement > 0) {
                    cVar.c(Unit.INSTANCE, function1);
                    return;
                }
                Intrinsics.checkNotNull(cVar, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3984d;
                k kVar2 = (k) atomicReferenceFieldUpdater.get(this);
                long andIncrement = f3985e.getAndIncrement(this);
                g gVar = g.b;
                long j3 = andIncrement / ((long) j.f);
                while (true) {
                    objA = AbstractC0212c.a(kVar2, j3, gVar);
                    if (AbstractC0210a.d(objA)) {
                        j2 = andIncrement;
                        break;
                    }
                    u uVarB = AbstractC0210a.b(objA);
                    while (true) {
                        u uVar = (u) atomicReferenceFieldUpdater.get(this);
                        kVar = kVar2;
                        j2 = andIncrement;
                        if (uVar.f2597d >= uVarB.f2597d) {
                            break;
                        }
                        if (!uVarB.i()) {
                            break;
                        }
                        do {
                            if (atomicReferenceFieldUpdater.compareAndSet(this, uVar, uVarB)) {
                                if (!uVar.e()) {
                                    break;
                                }
                                uVar.d();
                                break;
                            }
                        } while (atomicReferenceFieldUpdater.get(this) == uVar);
                        if (uVarB.e()) {
                            uVarB.d();
                        }
                        kVar2 = kVar;
                        andIncrement = j2;
                    }
                    kVar2 = kVar;
                    andIncrement = j2;
                }
                k kVar3 = (k) AbstractC0210a.b(objA);
                AtomicReferenceArray atomicReferenceArray = kVar3.f;
                int i3 = (int) (j2 % ((long) j.f));
                do {
                    if (atomicReferenceArray.compareAndSet(i3, null, cVar)) {
                        cVar.a(kVar3, i3);
                        return;
                    }
                } while (atomicReferenceArray.get(i3) == null);
                w wVar = j.b;
                w wVar2 = j.f3988c;
                do {
                    if (atomicReferenceArray.compareAndSet(i3, wVar, wVar2)) {
                        Intrinsics.checkNotNull(cVar, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
                        cVar.c(Unit.INSTANCE, function1);
                        return;
                    }
                } while (atomicReferenceArray.get(i3) == wVar);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0078  */
    public final void b() {
        boolean z2;
        int i3;
        Object objA;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f;
            int andIncrement = atomicIntegerFieldUpdater.getAndIncrement(this);
            z2 = true;
            if (andIncrement >= 1) {
                do {
                    i3 = atomicIntegerFieldUpdater.get(this);
                    if (i3 <= 1) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i3, 1));
                throw new IllegalStateException("The number of released permits cannot be greater than 1".toString());
            }
            if (andIncrement >= 0) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b;
            k kVar = (k) atomicReferenceFieldUpdater.get(this);
            long andIncrement2 = f3983c.getAndIncrement(this);
            long j2 = andIncrement2 / ((long) j.f);
            h hVar = h.b;
            while (true) {
                objA = AbstractC0212c.a(kVar, j2, hVar);
                if (!AbstractC0210a.d(objA)) {
                    u uVarB = AbstractC0210a.b(objA);
                    while (true) {
                        u uVar = (u) atomicReferenceFieldUpdater.get(this);
                        if (uVar.f2597d >= uVarB.f2597d) {
                            break;
                        }
                        if (!uVarB.i()) {
                            break;
                        }
                        do {
                            if (atomicReferenceFieldUpdater.compareAndSet(this, uVar, uVarB)) {
                                if (!uVar.e()) {
                                    break;
                                }
                                uVar.d();
                                break;
                            }
                        } while (atomicReferenceFieldUpdater.get(this) == uVar);
                        if (uVarB.e()) {
                            uVarB.d();
                        }
                    }
                } else {
                    break;
                }
            }
            k kVar2 = (k) AbstractC0210a.b(objA);
            kVar2.a();
            AtomicReferenceArray atomicReferenceArray = kVar2.f;
            boolean z3 = false;
            if (kVar2.f2597d <= j2) {
                int i4 = (int) (andIncrement2 % ((long) j.f));
                Object andSet = atomicReferenceArray.getAndSet(i4, j.b);
                if (andSet == null) {
                    int i5 = j.f3987a;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= i5) {
                            w wVar = j.b;
                            w wVar2 = j.f3989d;
                            do {
                                if (atomicReferenceArray.compareAndSet(i4, wVar, wVar2)) {
                                    z3 = true;
                                    break;
                                }
                            } while (atomicReferenceArray.get(i4) == wVar);
                            z2 = true ^ z3;
                            break;
                        }
                        if (atomicReferenceArray.get(i4) == j.f3988c) {
                            break;
                        } else {
                            i6++;
                        }
                    }
                } else if (andSet == j.f3990e) {
                    z2 = false;
                } else {
                    if (!(andSet instanceof InterfaceC0188d)) {
                        throw new IllegalStateException(("unexpected: " + andSet).toString());
                    }
                    Intrinsics.checkNotNull(andSet, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
                    InterfaceC0188d interfaceC0188d = (InterfaceC0188d) andSet;
                    w wVarD = interfaceC0188d.d(Unit.INSTANCE, this.f3986a);
                    if (wVarD != null) {
                        interfaceC0188d.g(wVarD);
                    } else {
                        z2 = false;
                    }
                }
            } else {
                z2 = false;
            }
        } while (!z2);
    }
}
