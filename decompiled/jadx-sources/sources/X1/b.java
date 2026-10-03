package X1;

import A1.E0;
import V1.A;
import V1.C0189e;
import V1.InterfaceC0188d;
import V1.w0;
import a2.AbstractC0210a;
import a2.AbstractC0212c;
import a2.AbstractC0213d;
import a2.u;
import a2.w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class b implements f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f2343c = AtomicLongFieldUpdater.newUpdater(b.class, "sendersAndCloseStatus");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f2344d = AtomicLongFieldUpdater.newUpdater(b.class, "receivers");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f2345e = AtomicLongFieldUpdater.newUpdater(b.class, "bufferEnd");
    public static final AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(b.class, "completedExpandBuffersAndPauseFlag");
    public static final AtomicReferenceFieldUpdater g = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "sendSegment");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2346h = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "receiveSegment");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2347i = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "bufferEndSegment");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2348j = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_closeCause");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2349k = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "closeHandler");

    @Volatile
    private volatile Object _closeCause;
    public final int b;

    @Volatile
    private volatile long bufferEnd;

    @Volatile
    private volatile Object bufferEndSegment;

    @Volatile
    private volatile Object closeHandler;

    @Volatile
    private volatile long completedExpandBuffersAndPauseFlag;

    @Volatile
    private volatile Object receiveSegment;

    @Volatile
    private volatile long receivers;

    @Volatile
    private volatile Object sendSegment;

    @Volatile
    private volatile long sendersAndCloseStatus;

    public b(int i3) {
        this.b = i3;
        if (i3 < 0) {
            throw new IllegalArgumentException(E.b.j(i3, "Invalid channel capacity: ", ", should be >=0").toString());
        }
        j jVar = d.f2350a;
        this.bufferEnd = i3 != 0 ? i3 != Integer.MAX_VALUE ? i3 : Long.MAX_VALUE : 0L;
        this.completedExpandBuffersAndPauseFlag = f2345e.get(this);
        j jVar2 = new j(0L, null, this, 3);
        this.sendSegment = jVar2;
        this.receiveSegment = jVar2;
        if (r()) {
            jVar2 = d.f2350a;
            Intrinsics.checkNotNull(jVar2, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.bufferEndSegment = jVar2;
        this._closeCause = d.f2365s;
    }

    public static final j a(b bVar, long j2, j jVar) {
        Object objA;
        b bVar2;
        j jVar2 = d.f2350a;
        c cVar = c.b;
        loop0: while (true) {
            objA = AbstractC0212c.a(jVar, j2, cVar);
            if (!AbstractC0210a.d(objA)) {
                u uVarB = AbstractC0210a.b(objA);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g;
                    u uVar = (u) atomicReferenceFieldUpdater.get(bVar);
                    if (uVar.f2597d >= uVarB.f2597d) {
                        break loop0;
                    }
                    if (!uVarB.i()) {
                        break;
                    }
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(bVar, uVar, uVarB)) {
                            if (!uVar.e()) {
                                break loop0;
                            }
                            uVar.d();
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(bVar) == uVar);
                    if (uVarB.e()) {
                        uVarB.d();
                    }
                }
            } else {
                break;
            }
        }
        boolean zD = AbstractC0210a.d(objA);
        AtomicLongFieldUpdater atomicLongFieldUpdater = f2344d;
        if (zD) {
            bVar.q();
            if (jVar.f2597d * ((long) d.b) < atomicLongFieldUpdater.get(bVar)) {
                jVar.a();
                return null;
            }
        } else {
            j jVar3 = (j) AbstractC0210a.b(objA);
            long j3 = jVar3.f2597d;
            if (j3 <= j2) {
                return jVar3;
            }
            long j4 = ((long) d.b) * j3;
            while (true) {
                long j5 = f2343c.get(bVar);
                long j6 = 1152921504606846975L & j5;
                if (j6 >= j4) {
                    bVar2 = bVar;
                    break;
                }
                bVar2 = bVar;
                if (f2343c.compareAndSet(bVar2, j5, (((long) ((int) (j5 >> 60))) << 60) + j6)) {
                    break;
                }
                bVar = bVar2;
            }
            if (j3 * ((long) d.b) < atomicLongFieldUpdater.get(bVar2)) {
                jVar3.a();
            }
        }
        return null;
    }

    public static final void c(b bVar, Object obj, C0189e c0189e) {
        Throwable thM = bVar.m();
        Result.Companion companion = Result.INSTANCE;
        c0189e.resumeWith(Result.m9constructorimpl(ResultKt.createFailure(thM)));
    }

    public static final int d(b bVar, j jVar, int i3, Object obj, long j2, Object obj2, boolean z2) {
        jVar.m(i3, obj);
        if (z2) {
            return bVar.y(jVar, i3, obj, j2, obj2, z2);
        }
        Object objK = jVar.k(i3);
        if (objK == null) {
            if (bVar.g(j2)) {
                if (jVar.j(i3, null, d.f2352d)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (jVar.j(i3, null, obj2)) {
                    return 2;
                }
            }
        } else if (objK instanceof w0) {
            jVar.m(i3, null);
            if (bVar.v(objK, obj)) {
                jVar.n(i3, d.f2355i);
                return 0;
            }
            w wVar = d.f2357k;
            if (jVar.g.getAndSet((i3 * 2) + 1, wVar) == wVar) {
                return 5;
            }
            jVar.l(i3, true);
            return 5;
        }
        return bVar.y(jVar, i3, obj, j2, obj2, z2);
    }

    public static void o(b bVar) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f;
        if ((atomicLongFieldUpdater.addAndGet(bVar, 1L) & 4611686018427387904L) != 0) {
            while ((atomicLongFieldUpdater.get(bVar) & 4611686018427387904L) != 0) {
            }
        }
    }

    public static boolean w(Object obj) {
        if (!(obj instanceof InterfaceC0188d)) {
            throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
        InterfaceC0188d interfaceC0188d = (InterfaceC0188d) obj;
        Unit unit = Unit.INSTANCE;
        j jVar = d.f2350a;
        w wVarD = interfaceC0188d.d(unit, null);
        if (wVarD == null) {
            return false;
        }
        interfaceC0188d.g(wVarD);
        return true;
    }

    @Override // X1.q
    public final void b(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException("Channel was cancelled");
        }
        h(cancellationException, true);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0066  */
    /* JADX WARN: Code duplicated, block: B:24:0x0069  */
    /* JADX WARN: Code duplicated, block: B:26:0x006c  */
    /* JADX WARN: Code duplicated, block: B:28:0x006f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0072  */
    /* JADX WARN: Code duplicated, block: B:33:0x0076  */
    /* JADX WARN: Code duplicated, block: B:37:0x0086  */
    /* JADX WARN: Code duplicated, block: B:43:0x009d  */
    /* JADX WARN: Code duplicated, block: B:45:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:58:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x009b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x0093 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x007c A[SYNTHETIC] */
    @Override // X1.r
    public Object e(Object obj) {
        int iD;
        w0 w0Var;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f2343c;
        long j2 = atomicLongFieldUpdater.get(this);
        boolean z2 = false;
        long j3 = 1152921504606846975L;
        boolean z3 = p(j2, false) ? false : !g(j2 & 1152921504606846975L);
        Y0.e eVar = i.f2370a;
        if (z3) {
            return eVar;
        }
        p028k1.n nVar = d.f2356j;
        j jVar = (j) g.get(this);
        while (true) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j4 = andIncrement & j3;
            boolean zP = p(andIncrement, z2);
            int i3 = d.b;
            long j5 = i3;
            long j6 = j4 / j5;
            int i4 = (int) (j4 % j5);
            if (jVar.f2597d == j6) {
                iD = d(this, jVar, i4, obj, j4, nVar, zP);
                if (iD != 0) {
                    jVar.a();
                    return Unit.INSTANCE;
                }
                if (iD != 1) {
                    return Unit.INSTANCE;
                }
                if (iD != 2) {
                    if (zP) {
                        jVar.h();
                        return new h(m());
                    }
                    if (nVar instanceof w0) {
                        w0Var = (w0) nVar;
                    } else {
                        w0Var = null;
                    }
                    if (w0Var != null) {
                        w0Var.a(jVar, i4 + i3);
                    }
                    jVar.h();
                    return eVar;
                }
                if (iD != 3) {
                    throw new IllegalStateException("unexpected");
                }
                if (iD != 4) {
                    if (j4 < f2344d.get(this)) {
                        jVar.a();
                    }
                    return new h(m());
                }
                if (iD == 5) {
                    jVar.a();
                }
                z2 = false;
            } else {
                j jVarA = a(this, j6, jVar);
                if (jVarA != null) {
                    jVar = jVarA;
                    iD = d(this, jVar, i4, obj, j4, nVar, zP);
                    if (iD != 0) {
                        jVar.a();
                        return Unit.INSTANCE;
                    }
                    if (iD != 1) {
                        return Unit.INSTANCE;
                    }
                    if (iD != 2) {
                        if (zP) {
                            jVar.h();
                            return new h(m());
                        }
                        if (nVar instanceof w0) {
                            w0Var = (w0) nVar;
                        } else {
                            w0Var = null;
                        }
                        if (w0Var != null) {
                            w0Var.a(jVar, i4 + i3);
                        }
                        jVar.h();
                        return eVar;
                    }
                    if (iD != 3) {
                        throw new IllegalStateException("unexpected");
                    }
                    if (iD != 4) {
                        if (j4 < f2344d.get(this)) {
                            jVar.a();
                        }
                        return new h(m());
                    }
                    if (iD == 5) {
                        jVar.a();
                    }
                    z2 = false;
                } else {
                    if (zP) {
                        return new h(m());
                    }
                    z2 = false;
                }
            }
            j3 = 1152921504606846975L;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0190 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:93:0x017e  */
    /* JADX WARN: Code duplicated, block: B:97:0x0188  */
    @Override // X1.r
    public Object f(Object obj, Continuation continuation) throws Throwable {
        Unit unit;
        Object objQ;
        Object obj2;
        b bVar;
        j jVar;
        boolean z2;
        b bVar2 = this;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g;
        j jVar2 = (j) atomicReferenceFieldUpdater.get(bVar2);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f2343c;
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(bVar2);
            long j2 = andIncrement & 1152921504606846975L;
            boolean zP = bVar2.p(andIncrement, false);
            int i3 = d.b;
            long j3 = i3;
            long j4 = j2 / j3;
            int i4 = (int) (j2 % j3);
            if (jVar2.f2597d != j4) {
                j jVarA = a(bVar2, j4, jVar2);
                if (jVarA != null) {
                    jVar2 = jVarA;
                } else if (zP) {
                    Object objT = t(obj, continuation);
                    if (objT != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        break;
                    }
                    return objT;
                }
            }
            int iD = d(bVar2, jVar2, i4, obj, j2, null, zP);
            if (iD == 0) {
                jVar2.a();
            } else {
                if (iD == 1) {
                    break;
                }
                if (iD != 2) {
                    AtomicLongFieldUpdater atomicLongFieldUpdater2 = f2344d;
                    if (iD == 3) {
                        C0189e c0189eB = A.b(IntrinsicsKt.intercepted(continuation));
                        Object obj3 = obj;
                        try {
                            int iD2 = d(bVar2, jVar2, i4, obj3, j2, c0189eB, false);
                            try {
                                if (iD2 == 0) {
                                    jVar2.a();
                                    Result.Companion companion = Result.INSTANCE;
                                    unit = Unit.INSTANCE;
                                } else if (iD2 != 1) {
                                    if (iD2 != 2) {
                                        if (iD2 != 4) {
                                            String str = "unexpected";
                                            if (iD2 != 5) {
                                                throw new IllegalStateException("unexpected");
                                            }
                                            jVar2.a();
                                            j jVar3 = (j) atomicReferenceFieldUpdater.get(bVar2);
                                            while (true) {
                                                long andIncrement2 = atomicLongFieldUpdater.getAndIncrement(bVar2);
                                                long j5 = andIncrement2 & 1152921504606846975L;
                                                boolean zP2 = bVar2.p(andIncrement2, false);
                                                int i5 = d.b;
                                                atomicLongFieldUpdater = atomicLongFieldUpdater;
                                                long j6 = i5;
                                                str = str;
                                                long j7 = j5 / j6;
                                                int i6 = (int) (j5 % j6);
                                                if (jVar3.f2597d != j7) {
                                                    j jVarA2 = a(bVar2, j7, jVar3);
                                                    if (jVarA2 != null) {
                                                        z2 = zP2;
                                                        jVar = jVarA2;
                                                    } else if (zP2) {
                                                        c(bVar2, obj3, c0189eB);
                                                    }
                                                } else {
                                                    jVar = jVar3;
                                                    z2 = zP2;
                                                }
                                                int iD3 = d(bVar2, jVar, i6, obj3, j5, c0189eB, z2);
                                                Object obj4 = obj3;
                                                bVar = bVar2;
                                                j jVar4 = jVar;
                                                obj2 = obj4;
                                                if (iD3 == 0) {
                                                    jVar4.a();
                                                    Result.Companion companion2 = Result.INSTANCE;
                                                    unit = Unit.INSTANCE;
                                                } else if (iD3 == 1) {
                                                    Result.Companion companion3 = Result.INSTANCE;
                                                    unit = Unit.INSTANCE;
                                                } else if (iD3 != 2) {
                                                    if (iD3 == 3) {
                                                        throw new IllegalStateException(str);
                                                    }
                                                    if (iD3 != 4) {
                                                        if (iD3 == 5) {
                                                            jVar4.a();
                                                        }
                                                        jVar3 = jVar4;
                                                        bVar2 = bVar;
                                                        obj3 = obj2;
                                                    } else if (j5 < atomicLongFieldUpdater2.get(bVar)) {
                                                        jVar4.a();
                                                    }
                                                } else if (z2) {
                                                    jVar4.h();
                                                } else {
                                                    c0189eB.a(jVar4, i6 + i5);
                                                }
                                            }
                                            c0189eB.x();
                                            throw th;
                                        }
                                        obj2 = obj3;
                                        bVar = bVar2;
                                        if (j2 < atomicLongFieldUpdater2.get(bVar)) {
                                            jVar2.a();
                                        }
                                        c(bVar, obj2, c0189eB);
                                    } else {
                                        c0189eB.a(jVar2, i4 + i3);
                                    }
                                    objQ = c0189eB.q();
                                    if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                        DebugProbesKt.probeCoroutineSuspended(continuation);
                                    }
                                    if (objQ != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                        objQ = Unit.INSTANCE;
                                    }
                                    if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                        return objQ;
                                    }
                                } else {
                                    Result.Companion companion4 = Result.INSTANCE;
                                    unit = Unit.INSTANCE;
                                }
                                c0189eB.resumeWith(Result.m9constructorimpl(unit));
                                objQ = c0189eB.q();
                                if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    DebugProbesKt.probeCoroutineSuspended(continuation);
                                }
                                if (objQ != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    objQ = Unit.INSTANCE;
                                }
                                if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    return objQ;
                                }
                            } catch (Throwable th) {
                                th = th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } else {
                        if (iD == 4) {
                            if (j2 < atomicLongFieldUpdater2.get(bVar2)) {
                                jVar2.a();
                            }
                            Object objT2 = t(obj, continuation);
                            if (objT2 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                break;
                            }
                            return objT2;
                        }
                        if (iD == 5) {
                            jVar2.a();
                        }
                    }
                } else if (zP) {
                    jVar2.h();
                    Object objT3 = t(obj, continuation);
                    if (objT3 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        return objT3;
                    }
                }
            }
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    public final boolean g(long j2) {
        return j2 < f2345e.get(this) || j2 < f2344d.get(this) + ((long) this.b);
    }

    public final boolean h(Throwable th, boolean z2) {
        b bVar;
        boolean z3;
        long j2;
        long j3;
        long j4;
        Object obj;
        long j5;
        long j6;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f2343c;
        if (!z2) {
            bVar = this;
            break;
        }
        do {
            j6 = atomicLongFieldUpdater.get(this);
            if (((int) (j6 >> 60)) != 0) {
                bVar = this;
                break;
            }
            j jVar = d.f2350a;
            bVar = this;
        } while (!atomicLongFieldUpdater.compareAndSet(bVar, j6, (j6 & 1152921504606846975L) + (((long) 1) << 60)));
        w wVar = d.f2365s;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2348j;
            if (atomicReferenceFieldUpdater.compareAndSet(this, wVar, th)) {
                z3 = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != wVar) {
                z3 = false;
                break;
            }
        }
        if (z2) {
            do {
                j5 = atomicLongFieldUpdater.get(this);
            } while (!atomicLongFieldUpdater.compareAndSet(bVar, j5, (((long) 3) << 60) + (j5 & 1152921504606846975L)));
        } else {
            do {
                j2 = atomicLongFieldUpdater.get(this);
                int i3 = (int) (j2 >> 60);
                if (i3 == 0) {
                    j3 = j2 & 1152921504606846975L;
                    j4 = 2;
                } else {
                    if (i3 != 1) {
                        break;
                    }
                    j3 = j2 & 1152921504606846975L;
                    j4 = 3;
                }
            } while (!atomicLongFieldUpdater.compareAndSet(bVar, j2, (j4 << 60) + j3));
        }
        q();
        if (z3) {
            loop3: while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f2349k;
                obj = atomicReferenceFieldUpdater2.get(this);
                w wVar2 = obj == null ? d.f2363q : d.f2364r;
                do {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, obj, wVar2)) {
                        break loop3;
                    }
                } while (atomicReferenceFieldUpdater2.get(this) == obj);
            }
            if (obj != null) {
                ((Function1) obj).invoke(l());
                return z3;
            }
        }
        return z3;
    }

    public final j i(long j2) {
        Object objE;
        Object obj = f2347i.get(this);
        j jVar = (j) g.get(this);
        if (jVar.f2597d > ((j) obj).f2597d) {
            obj = jVar;
        }
        j jVar2 = (j) f2346h.get(this);
        if (jVar2.f2597d > ((j) obj).f2597d) {
            obj = jVar2;
        }
        AbstractC0213d abstractC0213d = (AbstractC0213d) obj;
        loop0: while (true) {
            abstractC0213d.getClass();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = AbstractC0213d.b;
            Object obj2 = atomicReferenceFieldUpdater.get(abstractC0213d);
            objE = null;
            w wVar = AbstractC0212c.f2576a;
            if (obj2 == wVar) {
                break;
            }
            AbstractC0213d abstractC0213d2 = (AbstractC0213d) obj2;
            if (abstractC0213d2 == null) {
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(abstractC0213d, null, wVar)) {
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(abstractC0213d) == null);
            } else {
                abstractC0213d = abstractC0213d2;
            }
        }
        j jVar3 = (j) abstractC0213d;
        loop2: for (j jVar4 = jVar3; jVar4 != null; jVar4 = (j) ((AbstractC0213d) AbstractC0213d.f2577c.get(jVar4))) {
            for (int i3 = d.b - 1; -1 < i3; i3--) {
                if ((jVar4.f2597d * ((long) d.b)) + ((long) i3) < j2) {
                    break loop2;
                }
                while (true) {
                    Object objK = jVar4.k(i3);
                    if (objK != null && objK != d.f2353e) {
                        if (!(objK instanceof s)) {
                            if (!(objK instanceof w0)) {
                                break;
                            }
                            if (jVar4.j(i3, objK, d.f2358l)) {
                                objE = AbstractC0210a.e(objE, objK);
                                jVar4.l(i3, true);
                                break;
                            }
                        } else {
                            if (jVar4.j(i3, objK, d.f2358l)) {
                                objE = AbstractC0210a.e(objE, ((s) objK).f2374a);
                                jVar4.l(i3, true);
                                break;
                            }
                        }
                    } else {
                        if (jVar4.j(i3, objK, d.f2358l)) {
                            jVar4.h();
                            break;
                        }
                    }
                }
            }
        }
        if (objE != null) {
            if (!(objE instanceof ArrayList)) {
                u((w0) objE, true);
                return jVar3;
            }
            Intrinsics.checkNotNull(objE, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
            ArrayList arrayList = (ArrayList) objE;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                u((w0) arrayList.get(size), true);
            }
        }
        return jVar3;
    }

    public final void j() {
        Object objA;
        if (r()) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2347i;
        j jVar = (j) atomicReferenceFieldUpdater.get(this);
        while (true) {
            long andIncrement = f2345e.getAndIncrement(this);
            long j2 = andIncrement / ((long) d.b);
            if (n() <= andIncrement) {
                if (jVar.f2597d < j2 && jVar.b() != null) {
                    s(j2, jVar);
                }
                o(this);
                return;
            }
            if (jVar.f2597d != j2) {
                c cVar = c.b;
                while (true) {
                    objA = AbstractC0212c.a(jVar, j2, cVar);
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
                j jVar2 = null;
                if (AbstractC0210a.d(objA)) {
                    q();
                    s(j2, jVar);
                    o(this);
                } else {
                    j jVar3 = (j) AbstractC0210a.b(objA);
                    long j3 = jVar3.f2597d;
                    if (j3 > j2) {
                        long j4 = d.b;
                        if (f2345e.compareAndSet(this, 1 + andIncrement, j3 * j4)) {
                            AtomicLongFieldUpdater atomicLongFieldUpdater = f;
                            if ((atomicLongFieldUpdater.addAndGet(this, (j3 * j4) - andIncrement) & 4611686018427387904L) != 0) {
                                while ((atomicLongFieldUpdater.get(this) & 4611686018427387904L) != 0) {
                                }
                            }
                        } else {
                            o(this);
                        }
                    } else {
                        jVar2 = jVar3;
                    }
                }
                if (jVar2 == null) {
                    continue;
                } else {
                    jVar = jVar2;
                }
            }
            int i3 = (int) (andIncrement % ((long) d.b));
            Object objK = jVar.k(i3);
            boolean z2 = objK instanceof w0;
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = f2344d;
            if (!z2 || andIncrement < atomicLongFieldUpdater2.get(this) || !jVar.j(i3, objK, d.g)) {
                while (true) {
                    Object objK2 = jVar.k(i3);
                    if (objK2 instanceof w0) {
                        if (andIncrement < atomicLongFieldUpdater2.get(this)) {
                            if (jVar.j(i3, objK2, new s((w0) objK2))) {
                                o(this);
                                return;
                            }
                        } else if (jVar.j(i3, objK2, d.g)) {
                            if (!w(objK2)) {
                                jVar.n(i3, d.f2356j);
                                jVar.h();
                                break;
                            } else {
                                jVar.n(i3, d.f2352d);
                                o(this);
                                return;
                            }
                        }
                    } else {
                        if (objK2 == d.f2356j) {
                            break;
                        }
                        if (objK2 == null) {
                            if (jVar.j(i3, objK2, d.f2353e)) {
                                o(this);
                                return;
                            }
                        } else if (objK2 == d.f2352d || objK2 == d.f2354h || objK2 == d.f2355i || objK2 == d.f2357k || objK2 == d.f2358l) {
                            o(this);
                            return;
                        } else if (objK2 != d.f) {
                            throw new IllegalStateException(("Unexpected cell state: " + objK2).toString());
                        }
                    }
                }
                o(this);
            } else if (w(objK)) {
                jVar.n(i3, d.f2352d);
                o(this);
                return;
            } else {
                jVar.n(i3, d.f2356j);
                jVar.h();
                o(this);
            }
        }
    }

    public final j k(long j2, j jVar) {
        Object objA;
        long j3;
        j jVar2 = d.f2350a;
        c cVar = c.b;
        loop0: while (true) {
            objA = AbstractC0212c.a(jVar, j2, cVar);
            if (!AbstractC0210a.d(objA)) {
                u uVarB = AbstractC0210a.b(objA);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2346h;
                    u uVar = (u) atomicReferenceFieldUpdater.get(this);
                    if (uVar.f2597d >= uVarB.f2597d) {
                        break loop0;
                    }
                    if (!uVarB.i()) {
                        break;
                    }
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, uVar, uVarB)) {
                            if (!uVar.e()) {
                                break loop0;
                            }
                            uVar.d();
                            break loop0;
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
        if (AbstractC0210a.d(objA)) {
            q();
            if (jVar.f2597d * ((long) d.b) < n()) {
                jVar.a();
                return null;
            }
        } else {
            j jVar3 = (j) AbstractC0210a.b(objA);
            long j4 = jVar3.f2597d;
            if (!r() && j2 <= f2345e.get(this) / ((long) d.b)) {
                loop3: while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f2347i;
                    u uVar2 = (u) atomicReferenceFieldUpdater2.get(this);
                    if (uVar2.f2597d >= j4 || !jVar3.i()) {
                        break;
                    }
                    do {
                        if (atomicReferenceFieldUpdater2.compareAndSet(this, uVar2, jVar3)) {
                            if (!uVar2.e()) {
                                break loop3;
                            }
                            uVar2.d();
                            break loop3;
                        }
                    } while (atomicReferenceFieldUpdater2.get(this) == uVar2);
                    if (jVar3.e()) {
                        jVar3.d();
                    }
                }
            }
            if (j4 <= j2) {
                return jVar3;
            }
            long j5 = j4 * ((long) d.b);
            do {
                j3 = f2344d.get(this);
                if (j3 >= j5) {
                    break;
                }
            } while (!f2344d.compareAndSet(this, j3, j5));
            if (j4 * ((long) d.b) < n()) {
                jVar3.a();
            }
        }
        return null;
    }

    public final Throwable l() {
        return (Throwable) f2348j.get(this);
    }

    public final Throwable m() {
        Throwable thL = l();
        return thL == null ? new E0("Channel was closed") : thL;
    }

    public final long n() {
        return f2343c.get(this) & 1152921504606846975L;
    }

    public final boolean p(long j2, boolean z2) {
        int i3 = (int) (j2 >> 60);
        if (i3 != 0 && i3 != 1) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f2344d;
            if (i3 == 2) {
                i(1152921504606846975L & j2);
                if (z2) {
                    while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2346h;
                        j jVarK = (j) atomicReferenceFieldUpdater.get(this);
                        long j3 = atomicLongFieldUpdater.get(this);
                        if (n() <= j3) {
                            break;
                        }
                        long j4 = d.b;
                        long j5 = j3 / j4;
                        if (jVarK.f2597d != j5 && (jVarK = k(j5, jVarK)) == null) {
                            if (((j) atomicReferenceFieldUpdater.get(this)).f2597d < j5) {
                                break;
                            }
                        } else {
                            jVarK.a();
                            int i4 = (int) (j3 % j4);
                            while (true) {
                                Object objK = jVarK.k(i4);
                                if (objK != null && objK != d.f2353e) {
                                    if (objK != d.f2352d && (objK == d.f2356j || objK == d.f2358l || objK == d.f2355i || objK == d.f2354h || (objK != d.g && (objK == d.f || j3 != atomicLongFieldUpdater.get(this))))) {
                                        break;
                                        break;
                                        break;
                                        break;
                                        break;
                                        break;
                                    }
                                } else if (jVarK.j(i4, objK, d.f2354h)) {
                                    j();
                                    break;
                                }
                            }
                            f2344d.compareAndSet(this, j3, j3 + 1);
                        }
                    }
                }
            } else {
                if (i3 != 3) {
                    throw new IllegalStateException(E.b.i(i3, "unexpected close status: ").toString());
                }
                j jVarI = i(1152921504606846975L & j2);
                Object objE = null;
                loop0: do {
                    for (int i5 = d.b - 1; -1 < i5; i5--) {
                        long j6 = (jVarI.f2597d * ((long) d.b)) + ((long) i5);
                        while (true) {
                            Object objK2 = jVarI.k(i5);
                            if (objK2 == d.f2355i) {
                                break loop0;
                            }
                            if (objK2 != d.f2352d) {
                                if (objK2 != d.f2353e && objK2 != null) {
                                    if (!(objK2 instanceof w0) && !(objK2 instanceof s)) {
                                        w wVar = d.g;
                                        if (objK2 == wVar || objK2 == d.f) {
                                            break loop0;
                                        }
                                        if (objK2 != wVar) {
                                            break;
                                        }
                                    } else {
                                        if (j6 < atomicLongFieldUpdater.get(this)) {
                                            break loop0;
                                        }
                                        w0 w0Var = objK2 instanceof s ? ((s) objK2).f2374a : (w0) objK2;
                                        if (jVarI.j(i5, objK2, d.f2358l)) {
                                            objE = AbstractC0210a.e(objE, w0Var);
                                            jVarI.m(i5, null);
                                            jVarI.h();
                                            break;
                                        }
                                    }
                                } else {
                                    if (jVarI.j(i5, objK2, d.f2358l)) {
                                        jVarI.h();
                                        break;
                                    }
                                }
                            } else {
                                if (j6 < atomicLongFieldUpdater.get(this)) {
                                    break loop0;
                                }
                                if (jVarI.j(i5, objK2, d.f2358l)) {
                                    jVarI.m(i5, null);
                                    jVarI.h();
                                    break;
                                }
                            }
                        }
                    }
                    jVarI = (j) ((AbstractC0213d) AbstractC0213d.f2577c.get(jVarI));
                } while (jVarI != null);
                if (objE != null) {
                    if (objE instanceof ArrayList) {
                        Intrinsics.checkNotNull(objE, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
                        ArrayList arrayList = (ArrayList) objE;
                        for (int size = arrayList.size() - 1; -1 < size; size--) {
                            u((w0) arrayList.get(size), false);
                        }
                    } else {
                        u((w0) objE, false);
                    }
                }
            }
            return true;
        }
        return false;
    }

    public final boolean q() {
        return p(f2343c.get(this), false);
    }

    public final boolean r() {
        long j2 = f2345e.get(this);
        return j2 == 0 || j2 == Long.MAX_VALUE;
    }

    public final void s(long j2, j jVar) {
        j jVar2;
        j jVar3;
        while (jVar.f2597d < j2 && (jVar3 = (j) jVar.b()) != null) {
            jVar = jVar3;
        }
        while (true) {
            if (!jVar.c() || (jVar2 = (j) jVar.b()) == null) {
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2347i;
                    u uVar = (u) atomicReferenceFieldUpdater.get(this);
                    if (uVar.f2597d >= jVar.f2597d) {
                        return;
                    }
                    if (!jVar.i()) {
                        break;
                    }
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, uVar, jVar)) {
                            if (uVar.e()) {
                                uVar.d();
                                return;
                            }
                            return;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == uVar);
                    if (jVar.e()) {
                        jVar.d();
                    }
                }
            } else {
                jVar = jVar2;
            }
        }
    }

    public final Object t(Object obj, Continuation continuation) throws Throwable {
        C0189e c0189e = new C0189e(1, IntrinsicsKt.intercepted(continuation));
        c0189e.r();
        Throwable thM = m();
        Result.Companion companion = Result.INSTANCE;
        c0189e.resumeWith(Result.m9constructorimpl(ResultKt.createFailure(thM)));
        Object objQ = c0189e.q();
        if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objQ : Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String string;
        StringBuilder sb = new StringBuilder();
        int i3 = (int) (f2343c.get(this) >> 60);
        if (i3 == 2) {
            sb.append("closed,");
        } else if (i3 == 3) {
            sb.append("cancelled,");
        }
        sb.append("capacity=" + this.b + ',');
        sb.append("data=[");
        int i4 = 0;
        boolean z2 = true;
        List listListOf = CollectionsKt.listOf((Object[]) new j[]{f2346h.get(this), g.get(this), f2347i.get(this)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listListOf) {
            if (((j) obj) != d.f2350a) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j2 = ((j) next).f2597d;
            do {
                Object next2 = it.next();
                long j3 = ((j) next2).f2597d;
                if (j2 > j3) {
                    next = next2;
                    j2 = j3;
                }
            } while (it.hasNext());
        }
        j jVar = (j) next;
        long j4 = f2344d.get(this);
        long jN = n();
        loop2: while (true) {
            int i5 = d.b;
            int i6 = i4;
            while (i6 < i5) {
                long j5 = (jVar.f2597d * ((long) d.b)) + ((long) i6);
                if (j5 >= jN && j5 >= j4) {
                    break loop2;
                }
                Object objK = jVar.k(i6);
                boolean z3 = z2;
                Object obj2 = jVar.g.get(i6 * 2);
                if (objK instanceof InterfaceC0188d) {
                    string = (j5 >= j4 || j5 < jN) ? (j5 >= jN || j5 < j4) ? "cont" : "send" : "receive";
                } else if (objK instanceof s) {
                    string = "EB(" + objK + ')';
                } else if (Intrinsics.areEqual(objK, d.f) ? z3 : Intrinsics.areEqual(objK, d.g)) {
                    string = "resuming_sender";
                } else {
                    if (!(objK == null ? z3 : Intrinsics.areEqual(objK, d.f2353e) ? z3 : Intrinsics.areEqual(objK, d.f2355i) ? z3 : Intrinsics.areEqual(objK, d.f2354h) ? z3 : Intrinsics.areEqual(objK, d.f2357k) ? z3 : Intrinsics.areEqual(objK, d.f2356j) ? z3 : Intrinsics.areEqual(objK, d.f2358l))) {
                        string = objK.toString();
                    }
                    i6++;
                    z2 = z3;
                }
                if (obj2 != null) {
                    sb.append("(" + string + ',' + obj2 + "),");
                } else {
                    sb.append(string + ',');
                }
                i6++;
                z2 = z3;
            }
            boolean z4 = z2;
            jVar = (j) jVar.b();
            if (jVar == null) {
                break;
            }
            z2 = z4;
            i4 = 0;
        }
        if (StringsKt.last(sb) == ',') {
            Intrinsics.checkNotNullExpressionValue(sb.deleteCharAt(sb.length() - 1), "this.deleteCharAt(index)");
        }
        sb.append("]");
        return sb.toString();
    }

    public final void u(w0 w0Var, boolean z2) {
        Throwable thM;
        if (w0Var instanceof InterfaceC0188d) {
            Continuation continuation = (Continuation) w0Var;
            Result.Companion companion = Result.INSTANCE;
            if (z2) {
                thM = l();
                if (thM == null) {
                    thM = new k("Channel was closed");
                }
            } else {
                thM = m();
            }
            continuation.resumeWith(Result.m9constructorimpl(ResultKt.createFailure(thM)));
            return;
        }
        if (!(w0Var instanceof a)) {
            throw new IllegalStateException(("Unexpected waiter: " + w0Var).toString());
        }
        a aVar = (a) w0Var;
        C0189e c0189e = aVar.f2341c;
        Intrinsics.checkNotNull(c0189e);
        aVar.f2341c = null;
        aVar.b = d.f2358l;
        Throwable thL = aVar.f2342d.l();
        if (thL == null) {
            Result.Companion companion2 = Result.INSTANCE;
            c0189e.resumeWith(Result.m9constructorimpl(Boolean.FALSE));
        } else {
            Result.Companion companion3 = Result.INSTANCE;
            c0189e.resumeWith(Result.m9constructorimpl(ResultKt.createFailure(thL)));
        }
    }

    public final boolean v(Object obj, Object obj2) {
        if (!(obj instanceof a)) {
            if (!(obj instanceof InterfaceC0188d)) {
                throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
            }
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            InterfaceC0188d interfaceC0188d = (InterfaceC0188d) obj;
            j jVar = d.f2350a;
            w wVarD = interfaceC0188d.d(obj2, null);
            if (wVarD == null) {
                return false;
            }
            interfaceC0188d.g(wVarD);
            return true;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
        a aVar = (a) obj;
        C0189e c0189e = aVar.f2341c;
        Intrinsics.checkNotNull(c0189e);
        aVar.f2341c = null;
        aVar.b = obj2;
        Boolean bool = Boolean.TRUE;
        j jVar2 = d.f2350a;
        w wVarD2 = c0189e.d(bool, null);
        if (wVarD2 == null) {
            return false;
        }
        c0189e.g(wVarD2);
        return true;
    }

    public final Object x(j jVar, int i3, long j2, a aVar) {
        AtomicReferenceArray atomicReferenceArray = jVar.g;
        Object objK = jVar.k(i3);
        AtomicLongFieldUpdater atomicLongFieldUpdater = f2343c;
        if (objK == null) {
            if (j2 >= (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (aVar == null) {
                    return d.f2360n;
                }
                if (jVar.j(i3, objK, aVar)) {
                    j();
                    return d.f2359m;
                }
            }
        } else if (objK == d.f2352d && jVar.j(i3, objK, d.f2355i)) {
            j();
            Object obj = atomicReferenceArray.get(i3 * 2);
            jVar.m(i3, null);
            return obj;
        }
        while (true) {
            Object objK2 = jVar.k(i3);
            if (objK2 == null || objK2 == d.f2353e) {
                if (j2 < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                    if (jVar.j(i3, objK2, d.f2354h)) {
                        j();
                        return d.f2361o;
                    }
                } else {
                    if (aVar == null) {
                        return d.f2360n;
                    }
                    if (jVar.j(i3, objK2, aVar)) {
                        j();
                        return d.f2359m;
                    }
                }
            } else if (objK2 != d.f2352d) {
                w wVar = d.f2356j;
                if (objK2 == wVar) {
                    return d.f2361o;
                }
                if (objK2 == d.f2354h) {
                    return d.f2361o;
                }
                if (objK2 == d.f2358l) {
                    j();
                    return d.f2361o;
                }
                if (objK2 != d.g && jVar.j(i3, objK2, d.f)) {
                    boolean z2 = objK2 instanceof s;
                    if (z2) {
                        objK2 = ((s) objK2).f2374a;
                    }
                    if (w(objK2)) {
                        jVar.n(i3, d.f2355i);
                        j();
                        Object obj2 = atomicReferenceArray.get(i3 * 2);
                        jVar.m(i3, null);
                        return obj2;
                    }
                    jVar.n(i3, wVar);
                    jVar.h();
                    if (z2) {
                        j();
                    }
                    return d.f2361o;
                }
            } else if (jVar.j(i3, objK2, d.f2355i)) {
                j();
                Object obj3 = atomicReferenceArray.get(i3 * 2);
                jVar.m(i3, null);
                return obj3;
            }
        }
    }

    public final int y(j jVar, int i3, Object obj, long j2, Object obj2, boolean z2) {
        while (true) {
            Object objK = jVar.k(i3);
            if (objK == null) {
                if (!g(j2) || z2) {
                    if (z2) {
                        if (jVar.j(i3, null, d.f2356j)) {
                            jVar.h();
                            return 4;
                        }
                    } else {
                        if (obj2 == null) {
                            return 3;
                        }
                        if (jVar.j(i3, null, obj2)) {
                            return 2;
                        }
                    }
                } else if (jVar.j(i3, null, d.f2352d)) {
                    break;
                }
            } else {
                if (objK != d.f2353e) {
                    w wVar = d.f2357k;
                    if (objK == wVar) {
                        jVar.m(i3, null);
                        return 5;
                    }
                    if (objK == d.f2354h) {
                        jVar.m(i3, null);
                        return 5;
                    }
                    if (objK == d.f2358l) {
                        jVar.m(i3, null);
                        q();
                        return 4;
                    }
                    jVar.m(i3, null);
                    if (objK instanceof s) {
                        objK = ((s) objK).f2374a;
                    }
                    if (v(objK, obj)) {
                        jVar.n(i3, d.f2355i);
                        return 0;
                    }
                    if (jVar.g.getAndSet((i3 * 2) + 1, wVar) != wVar) {
                        jVar.l(i3, true);
                    }
                    return 5;
                }
                if (jVar.j(i3, objK, d.f2352d)) {
                    break;
                }
            }
        }
        return 1;
    }
}
