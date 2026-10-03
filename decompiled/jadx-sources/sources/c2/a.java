package c2;

import a2.w;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Unit;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.random.Random;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends Thread {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f3169j = AtomicIntegerFieldUpdater.newUpdater(a.class, "workerCtl");
    public final m b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Ref.ObjectRef f3170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f3172e;
    public long f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3173h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ b f3174i;
    private volatile int indexInArray;
    private volatile Object nextParkedWorker;

    @Volatile
    private volatile int workerCtl;

    public a(b bVar, int i3) {
        this.f3174i = bVar;
        setDaemon(true);
        this.b = new m();
        this.f3170c = new Ref.ObjectRef();
        this.f3171d = 4;
        this.nextParkedWorker = b.f3178l;
        this.g = Random.INSTANCE.nextInt();
        f(i3);
    }

    public final h a(boolean z2) {
        h hVarE;
        h hVarE2;
        long j2;
        int i3 = this.f3171d;
        b bVar = this.f3174i;
        h hVar = null;
        m mVar = this.b;
        if (i3 != 1) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = b.f3176j;
            do {
                j2 = atomicLongFieldUpdater.get(bVar);
                if (((int) ((9223367638808264704L & j2) >> 42)) == 0) {
                    mVar.getClass();
                    loop1: while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = m.b;
                        h hVar2 = (h) atomicReferenceFieldUpdater.get(mVar);
                        if (hVar2 == null || hVar2.f3186c.f3187a != 1) {
                            int i4 = m.f3195d.get(mVar);
                            int i5 = m.f3194c.get(mVar);
                            while (i4 != i5 && m.f3196e.get(mVar) != 0) {
                                i5--;
                                h hVarC = mVar.c(i5, true);
                                if (hVarC != null) {
                                    hVar = hVarC;
                                    break;
                                }
                            }
                            break;
                        }
                        do {
                            if (atomicReferenceFieldUpdater.compareAndSet(mVar, hVar2, null)) {
                                hVar = hVar2;
                                break loop1;
                            }
                        } while (atomicReferenceFieldUpdater.get(mVar) == hVar2);
                    }
                    if (hVar != null) {
                        return hVar;
                    }
                    h hVar3 = (h) bVar.g.d();
                    return hVar3 == null ? i(1) : hVar3;
                }
            } while (!b.f3176j.compareAndSet(bVar, j2, j2 - 4398046511104L));
            this.f3171d = 1;
        }
        if (z2) {
            boolean z3 = d(bVar.b * 2) == 0;
            if (z3 && (hVarE2 = e()) != null) {
                return hVarE2;
            }
            mVar.getClass();
            h hVarB = (h) m.b.getAndSet(mVar, null);
            if (hVarB == null) {
                hVarB = mVar.b();
            }
            if (hVarB != null) {
                return hVarB;
            }
            if (!z3 && (hVarE = e()) != null) {
                return hVarE;
            }
        } else {
            h hVarE3 = e();
            if (hVarE3 != null) {
                return hVarE3;
            }
        }
        return i(3);
    }

    public final int b() {
        return this.indexInArray;
    }

    public final Object c() {
        return this.nextParkedWorker;
    }

    public final int d(int i3) {
        int i4 = this.g;
        int i5 = i4 ^ (i4 << 13);
        int i6 = i5 ^ (i5 >> 17);
        int i7 = i6 ^ (i6 << 5);
        this.g = i7;
        int i8 = i3 - 1;
        return (i8 & i3) == 0 ? i7 & i8 : (i7 & IntCompanionObject.MAX_VALUE) % i3;
    }

    public final h e() {
        int iD = d(2);
        b bVar = this.f3174i;
        if (iD == 0) {
            h hVar = (h) bVar.f.d();
            return hVar != null ? hVar : (h) bVar.g.d();
        }
        h hVar2 = (h) bVar.g.d();
        return hVar2 != null ? hVar2 : (h) bVar.f.d();
    }

    public final void f(int i3) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f3174i.f3181e);
        sb.append("-worker-");
        sb.append(i3 == 0 ? "TERMINATED" : String.valueOf(i3));
        setName(sb.toString());
        this.indexInArray = i3;
    }

    public final void g(Object obj) {
        this.nextParkedWorker = obj;
    }

    public final boolean h(int i3) {
        int i4 = this.f3171d;
        boolean z2 = i4 == 1;
        if (z2) {
            b.f3176j.addAndGet(this.f3174i, 4398046511104L);
        }
        if (i4 != i3) {
            this.f3171d = i3;
        }
        return z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1, types: [T, c2.h, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v14, types: [c2.h] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [c2.h] */
    public final h i(int i3) {
        long j2;
        T tC;
        long j3;
        long j4;
        T t2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = b.f3176j;
        b bVar = this.f3174i;
        int i4 = (int) (atomicLongFieldUpdater.get(bVar) & 2097151);
        Object obj = null;
        if (i4 < 2) {
            return null;
        }
        int iD = d(i4);
        int i5 = 0;
        long jMin = Long.MAX_VALUE;
        while (i5 < i4) {
            iD++;
            if (iD > i4) {
                iD = 1;
            }
            a aVar = (a) bVar.f3182h.b(iD);
            if (aVar != null && aVar != this) {
                m mVar = aVar.b;
                if (i3 != 3) {
                    mVar.getClass();
                    int i6 = m.f3195d.get(mVar);
                    int i7 = m.f3194c.get(mVar);
                    boolean z2 = i3 == 1;
                    while (true) {
                        if (i6 != i7) {
                            j2 = 0;
                            if (!z2 || m.f3196e.get(mVar) != 0) {
                                int i8 = i6 + 1;
                                tC = mVar.c(i6, z2);
                                if (tC != 0) {
                                    break;
                                }
                                i6 = i8;
                            }
                        } else {
                            j2 = 0;
                        }
                        tC = obj;
                        break;
                    }
                } else {
                    tC = mVar.b();
                    j2 = 0;
                }
                Ref.ObjectRef objectRef = this.f3170c;
                if (tC == 0) {
                    while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = m.b;
                        ?? r14 = (h) atomicReferenceFieldUpdater.get(mVar);
                        if (r14 == 0) {
                            j3 = -1;
                        } else {
                            j3 = -1;
                            if (((r14.f3186c.f3187a == 1 ? 1 : 2) & i3) != 0) {
                                k.f.getClass();
                                m mVar2 = mVar;
                                long jNanoTime = System.nanoTime() - r14.b;
                                long j5 = k.b;
                                if (jNanoTime < j5) {
                                    j4 = j5 - jNanoTime;
                                    t2 = 0;
                                    break;
                                }
                                do {
                                    t2 = 0;
                                    if (atomicReferenceFieldUpdater.compareAndSet(mVar2, r14, null)) {
                                        objectRef.element = r14;
                                        j4 = -1;
                                        break;
                                    }
                                } while (atomicReferenceFieldUpdater.get(mVar2) == r14);
                                mVar = mVar2;
                                obj = null;
                            }
                        }
                        j4 = -2;
                        t2 = obj;
                        break;
                    }
                } else {
                    objectRef.element = tC;
                    t2 = obj;
                    j4 = -1;
                    j3 = -1;
                }
                if (j4 == j3) {
                    h hVar = (h) objectRef.element;
                    objectRef.element = t2;
                    return hVar;
                }
                if (j4 > j2) {
                    jMin = Math.min(jMin, j4);
                }
            }
            i5++;
            obj = null;
        }
        if (jMin == Long.MAX_VALUE) {
            jMin = 0;
        }
        this.f = jMin;
        return null;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        long j2;
        loop0: while (true) {
            boolean z2 = false;
            while (true) {
                if (b.f3177k.get(this.f3174i) != 0 || this.f3171d == 5) {
                    break loop0;
                }
                h hVarA = a(this.f3173h);
                if (hVarA != null) {
                    this.f = 0L;
                    b bVar = this.f3174i;
                    int i3 = hVarA.f3186c.f3187a;
                    this.f3172e = 0L;
                    if (this.f3171d == 3) {
                        this.f3171d = 2;
                    }
                    if (i3 != 0 && h(2) && !bVar.f() && !bVar.e(b.f3176j.get(bVar))) {
                        bVar.f();
                    }
                    try {
                        hVarA.run();
                    } catch (Throwable th) {
                        Thread threadCurrentThread = Thread.currentThread();
                        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
                    }
                    if (i3 != 0) {
                        b.f3176j.addAndGet(bVar, -2097152L);
                        if (this.f3171d == 5) {
                            break;
                        }
                        this.f3171d = 4;
                        break;
                    }
                    break;
                }
                this.f3173h = false;
                if (this.f == 0) {
                    Object obj = this.nextParkedWorker;
                    w wVar = b.f3178l;
                    if (obj != wVar) {
                        f3169j.set(this, -1);
                        while (this.nextParkedWorker != b.f3178l) {
                            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f3169j;
                            if (atomicIntegerFieldUpdater.get(this) != -1) {
                                break;
                            }
                            b bVar2 = this.f3174i;
                            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = b.f3177k;
                            if (atomicIntegerFieldUpdater2.get(bVar2) != 0 || this.f3171d == 5) {
                                break;
                            }
                            h(3);
                            Thread.interrupted();
                            if (this.f3172e == 0) {
                                j2 = 2097151;
                                this.f3172e = System.nanoTime() + this.f3174i.f3180d;
                            } else {
                                j2 = 2097151;
                            }
                            LockSupport.parkNanos(this.f3174i.f3180d);
                            if (System.nanoTime() - this.f3172e >= 0) {
                                this.f3172e = 0L;
                                b bVar3 = this.f3174i;
                                synchronized (bVar3.f3182h) {
                                    try {
                                        if (!(atomicIntegerFieldUpdater2.get(bVar3) != 0)) {
                                            AtomicLongFieldUpdater atomicLongFieldUpdater = b.f3176j;
                                            if (((int) (atomicLongFieldUpdater.get(bVar3) & j2)) > bVar3.b) {
                                                if (atomicIntegerFieldUpdater.compareAndSet(this, -1, 1)) {
                                                    int i4 = this.indexInArray;
                                                    f(0);
                                                    bVar3.d(this, i4, 0);
                                                    int andDecrement = (int) (atomicLongFieldUpdater.getAndDecrement(bVar3) & j2);
                                                    if (andDecrement != i4) {
                                                        Object objB = bVar3.f3182h.b(andDecrement);
                                                        Intrinsics.checkNotNull(objB);
                                                        a aVar = (a) objB;
                                                        bVar3.f3182h.c(i4, aVar);
                                                        aVar.f(i4);
                                                        bVar3.d(aVar, andDecrement, i4);
                                                    }
                                                    bVar3.f3182h.c(andDecrement, null);
                                                    Unit unit = Unit.INSTANCE;
                                                    this.f3171d = 5;
                                                }
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                            }
                        }
                    } else {
                        b bVar4 = this.f3174i;
                        if (this.nextParkedWorker == wVar) {
                            AtomicLongFieldUpdater atomicLongFieldUpdater2 = b.f3175i;
                            while (true) {
                                long j3 = atomicLongFieldUpdater2.get(bVar4);
                                int i5 = this.indexInArray;
                                this.nextParkedWorker = bVar4.f3182h.b((int) (j3 & 2097151));
                                b bVar5 = bVar4;
                                if (b.f3175i.compareAndSet(bVar5, j3, ((j3 + 2097152) & (-2097152)) | ((long) i5))) {
                                    break;
                                } else {
                                    bVar4 = bVar5;
                                }
                            }
                        }
                    }
                } else {
                    if (z2) {
                        h(3);
                        Thread.interrupted();
                        LockSupport.parkNanos(this.f);
                        this.f = 0L;
                        break;
                    }
                    z2 = true;
                }
            }
        }
        h(5);
    }
}
