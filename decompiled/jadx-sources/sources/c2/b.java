package c2;

import V1.A;
import a2.s;
import a2.w;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Executor, Closeable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f3175i = AtomicLongFieldUpdater.newUpdater(b.class, "parkedWorkersStack");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f3176j = AtomicLongFieldUpdater.newUpdater(b.class, "controlState");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f3177k = AtomicIntegerFieldUpdater.newUpdater(b.class, "_isTerminated");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final w f3178l = new w("NOT_IN_STACK", 0);

    @Volatile
    private volatile int _isTerminated;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3179c;

    @Volatile
    private volatile long controlState;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f3180d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f3181e;
    public final e f;
    public final e g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final s f3182h;

    @Volatile
    private volatile long parkedWorkersStack;

    public b(int i3, int i4, long j2, String str) {
        this.b = i3;
        this.f3179c = i4;
        this.f3180d = j2;
        this.f3181e = str;
        if (i3 < 1) {
            throw new IllegalArgumentException(E.b.j(i3, "Core pool size ", " should be at least 1").toString());
        }
        if (i4 < i3) {
            throw new IllegalArgumentException(("Max pool size " + i4 + " should be greater than or equals to core pool size " + i3).toString());
        }
        if (i4 > 2097150) {
            throw new IllegalArgumentException(E.b.j(i4, "Max pool size ", " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j2 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j2 + " must be positive").toString());
        }
        this.f = new e();
        this.g = new e();
        this.f3182h = new s((i3 + 1) * 2);
        this.controlState = ((long) i3) << 42;
        this._isTerminated = 0;
    }

    public static /* synthetic */ void c(b bVar, Runnable runnable, int i3) {
        bVar.b(runnable, k.g, (i3 & 4) == 0);
    }

    public final int a() {
        synchronized (this.f3182h) {
            try {
                if (f3177k.get(this) != 0) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = f3176j;
                long j2 = atomicLongFieldUpdater.get(this);
                int i3 = (int) (j2 & 2097151);
                int iCoerceAtLeast = RangesKt.coerceAtLeast(i3 - ((int) ((j2 & 4398044413952L) >> 21)), 0);
                if (iCoerceAtLeast >= this.b) {
                    return 0;
                }
                if (i3 >= this.f3179c) {
                    return 0;
                }
                int i4 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
                if (i4 <= 0 || this.f3182h.b(i4) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                a aVar = new a(this, i4);
                this.f3182h.c(i4, aVar);
                if (i4 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i5 = iCoerceAtLeast + 1;
                aVar.start();
                return i5;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Runnable runnable, i iVar, boolean z2) {
        h jVar;
        int i3;
        k.f.getClass();
        long jNanoTime = System.nanoTime();
        if (runnable instanceof h) {
            jVar = (h) runnable;
            jVar.b = jNanoTime;
            jVar.f3186c = iVar;
        } else {
            jVar = new j(runnable, jNanoTime, iVar);
        }
        boolean z3 = false;
        boolean z4 = jVar.f3186c.f3187a == 1;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f3176j;
        long jAddAndGet = z4 ? atomicLongFieldUpdater.addAndGet(this, 2097152L) : 0L;
        Thread threadCurrentThread = Thread.currentThread();
        a aVar = threadCurrentThread instanceof a ? (a) threadCurrentThread : null;
        if (aVar == null || !Intrinsics.areEqual(aVar.f3174i, this)) {
            aVar = null;
        }
        if (aVar != null && (i3 = aVar.f3171d) != 5 && (jVar.f3186c.f3187a != 0 || i3 != 2)) {
            aVar.f3173h = true;
            m mVar = aVar.b;
            if (z2) {
                jVar = mVar.a(jVar);
            } else {
                mVar.getClass();
                h hVar = (h) m.b.getAndSet(mVar, jVar);
                jVar = hVar == null ? null : mVar.a(hVar);
            }
        }
        if (jVar != null) {
            if (!(jVar.f3186c.f3187a == 1 ? this.g.a(jVar) : this.f.a(jVar))) {
                throw new RejectedExecutionException(kotlin.collections.unsigned.a.i(new StringBuilder(), this.f3181e, " was terminated"));
            }
        }
        if (z2 && aVar != null) {
            z3 = true;
        }
        if (z4) {
            if (z3 || f() || e(jAddAndGet)) {
                return;
            }
            f();
            return;
        }
        if (z3 || f() || e(atomicLongFieldUpdater.get(this))) {
            return;
        }
        f();
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0088  */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws InterruptedException {
        int i3;
        h hVarA;
        if (f3177k.compareAndSet(this, 0, 1)) {
            Thread threadCurrentThread = Thread.currentThread();
            a aVar = threadCurrentThread instanceof a ? (a) threadCurrentThread : null;
            if (aVar == null || !Intrinsics.areEqual(aVar.f3174i, this)) {
                aVar = null;
            }
            synchronized (this.f3182h) {
                i3 = (int) (f3176j.get(this) & 2097151);
            }
            if (1 <= i3) {
                int i4 = 1;
                while (true) {
                    Object objB = this.f3182h.b(i4);
                    Intrinsics.checkNotNull(objB);
                    a aVar2 = (a) objB;
                    if (aVar2 != aVar) {
                        while (aVar2.isAlive()) {
                            LockSupport.unpark(aVar2);
                            aVar2.join(10000L);
                        }
                        m mVar = aVar2.b;
                        e eVar = this.g;
                        mVar.getClass();
                        h hVar = (h) m.b.getAndSet(mVar, null);
                        if (hVar != null) {
                            eVar.a(hVar);
                        }
                        while (true) {
                            h hVarB = mVar.b();
                            if (hVarB == null) {
                                break;
                            } else {
                                eVar.a(hVarB);
                            }
                        }
                    }
                    if (i4 == i3) {
                        break;
                    } else {
                        i4++;
                    }
                }
            }
            this.g.b();
            this.f.b();
            while (true) {
                if (aVar != null) {
                    hVarA = aVar.a(true);
                    if (hVarA == null) {
                        hVarA = (h) this.f.d();
                        if (hVarA == null) {
                            break;
                            break;
                        }
                    }
                } else {
                    hVarA = (h) this.f.d();
                    if (hVarA == null && (hVarA = (h) this.g.d()) == null) {
                        break;
                    }
                }
                try {
                    hVarA.run();
                } catch (Throwable th) {
                    Thread threadCurrentThread2 = Thread.currentThread();
                    threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
                }
            }
            if (aVar != null) {
                aVar.h(5);
            }
            f3175i.set(this, 0L);
            f3176j.set(this, 0L);
        }
    }

    public final void d(a aVar, int i3, int i4) {
        while (true) {
            long j2 = f3175i.get(this);
            int i5 = (int) (2097151 & j2);
            long j3 = (2097152 + j2) & (-2097152);
            if (i5 == i3) {
                if (i4 == 0) {
                    Object objC = aVar.c();
                    while (true) {
                        if (objC == f3178l) {
                            i5 = -1;
                            break;
                        }
                        if (objC == null) {
                            i5 = 0;
                            break;
                        }
                        a aVar2 = (a) objC;
                        int iB = aVar2.b();
                        if (iB != 0) {
                            i5 = iB;
                            break;
                        }
                        objC = aVar2.c();
                    }
                } else {
                    i5 = i4;
                }
            }
            if (i5 >= 0) {
                if (f3175i.compareAndSet(this, j2, ((long) i5) | j3)) {
                    return;
                }
            }
        }
    }

    public final boolean e(long j2) {
        int iCoerceAtLeast = RangesKt.coerceAtLeast(((int) (2097151 & j2)) - ((int) ((j2 & 4398044413952L) >> 21)), 0);
        int i3 = this.b;
        if (iCoerceAtLeast < i3) {
            int iA = a();
            if (iA == 1 && i3 > 1) {
                a();
            }
            if (iA > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        c(this, runnable, 6);
    }

    public final boolean f() {
        w wVar;
        int iB;
        while (true) {
            long j2 = f3175i.get(this);
            a aVar = (a) this.f3182h.b((int) (2097151 & j2));
            if (aVar == null) {
                aVar = null;
            } else {
                long j3 = (2097152 + j2) & (-2097152);
                Object objC = aVar.c();
                while (true) {
                    wVar = f3178l;
                    if (objC == wVar) {
                        iB = -1;
                        break;
                    }
                    if (objC == null) {
                        iB = 0;
                        break;
                    }
                    a aVar2 = (a) objC;
                    iB = aVar2.b();
                    if (iB != 0) {
                        break;
                    }
                    objC = aVar2.c();
                }
                if (iB >= 0) {
                    if (f3175i.compareAndSet(this, j2, ((long) iB) | j3)) {
                        aVar.g(wVar);
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
            if (aVar == null) {
                return false;
            }
            if (a.f3169j.compareAndSet(aVar, -1, 0)) {
                LockSupport.unpark(aVar);
                return true;
            }
        }
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        s sVar = this.f3182h;
        int iA = sVar.a();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 1; i8 < iA; i8++) {
            a aVar = (a) sVar.b(i8);
            if (aVar != null) {
                m mVar = aVar.b;
                mVar.getClass();
                int i9 = m.b.get(mVar) != null ? (m.f3194c.get(mVar) - m.f3195d.get(mVar)) + 1 : m.f3194c.get(mVar) - m.f3195d.get(mVar);
                int iA2 = p051u.h.a(aVar.f3171d);
                if (iA2 == 0) {
                    i3++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i9);
                    sb.append('c');
                    arrayList.add(sb.toString());
                } else if (iA2 == 1) {
                    i4++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i9);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (iA2 == 2) {
                    i5++;
                } else if (iA2 == 3) {
                    i6++;
                    if (i9 > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(i9);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (iA2 == 4) {
                    i7++;
                }
            }
        }
        long j2 = f3176j.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.f3181e);
        sb4.append('@');
        sb4.append(A.a(this));
        sb4.append("[Pool Size {core = ");
        int i10 = this.b;
        sb4.append(i10);
        sb4.append(", max = ");
        sb4.append(this.f3179c);
        sb4.append("}, Worker States {CPU = ");
        sb4.append(i3);
        sb4.append(", blocking = ");
        sb4.append(i4);
        sb4.append(", parked = ");
        sb4.append(i5);
        sb4.append(", dormant = ");
        sb4.append(i6);
        sb4.append(", terminated = ");
        sb4.append(i7);
        sb4.append("}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.f.c());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.g.c());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j2));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j2) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i10 - ((int) ((j2 & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }
}
