package V1;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class P extends Q implements D {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2273e = AtomicReferenceFieldUpdater.newUpdater(P.class, Object.class, "_queue");
    public static final AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(P.class, Object.class, "_delayed");
    public static final AtomicIntegerFieldUpdater g = AtomicIntegerFieldUpdater.newUpdater(P.class, "_isCompleted");

    @Volatile
    private volatile Object _delayed;

    @Volatile
    private volatile int _isCompleted = 0;

    @Volatile
    private volatile Object _queue;

    @Override // V1.D
    public final void c(long j2, C0189e c0189e) {
        long j3 = 0;
        if (j2 > 0) {
            j3 = j2 >= 9223372036854L ? Long.MAX_VALUE : 1000000 * j2;
        }
        if (j3 < DurationKt.MAX_MILLIS) {
            long jNanoTime = System.nanoTime();
            M m2 = new M(this, j3 + jNanoTime, c0189e);
            m(jNanoTime, m2);
            c0189e.t(new J(0, m2));
        }
    }

    @Override // V1.AbstractC0203t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        i(runnable);
    }

    public void i(Runnable runnable) {
        if (!j(runnable)) {
            B.f2261h.i(runnable);
            return;
        }
        Thread threadG = g();
        if (Thread.currentThread() != threadG) {
            LockSupport.unpark(threadG);
        }
    }

    public final boolean j(Runnable runnable) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2273e;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (g.get(this) != 0) {
                return false;
            }
            if (obj == null) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, null, runnable)) {
                    if (atomicReferenceFieldUpdater.get(this) != null) {
                    }
                }
                return true;
            }
            if (!(obj instanceof a2.o)) {
                if (obj == A.f2255c) {
                    return false;
                }
                a2.o oVar = new a2.o(8, true);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                oVar.a((Runnable) obj);
                oVar.a(runnable);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, oVar)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                    }
                }
                return true;
            }
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
            a2.o oVar2 = (a2.o) obj;
            int iA = oVar2.a(runnable);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                a2.o oVarC = oVar2.c();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, oVarC) && atomicReferenceFieldUpdater.get(this) == obj) {
                }
            } else if (iA == 2) {
                return false;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0027  */
    /* JADX WARN: Code duplicated, block: B:20:0x0030  */
    /* JADX WARN: Code duplicated, block: B:22:0x0034  */
    /* JADX WARN: Code duplicated, block: B:24:0x004d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x004e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x004f  */
    public final boolean k() {
        Object obj;
        long j2;
        ArrayDeque arrayDeque = this.f2268d;
        if (arrayDeque != null ? arrayDeque.isEmpty() : true) {
            O o2 = (O) f.get(this);
            if (o2 == null) {
                obj = f2273e.get(this);
                if (obj != null) {
                    if (obj instanceof a2.o) {
                        j2 = a2.o.f.get((a2.o) obj);
                        if (((int) (1073741823 & j2)) == ((int) ((j2 & 1152921503533105152L) >> 30))) {
                            return true;
                        }
                        return false;
                    }
                    if (obj == A.f2255c) {
                    }
                }
                return true;
            }
            if (a2.C.b.get(o2) == 0) {
                obj = f2273e.get(this);
                if (obj != null) {
                    if (obj instanceof a2.o) {
                        j2 = a2.o.f.get((a2.o) obj);
                        if (((int) (1073741823 & j2)) == ((int) ((j2 & 1152921503533105152L) >> 30))) {
                            return true;
                        }
                        return false;
                    }
                    if (obj == A.f2255c) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x00db, code lost:
    
        if ((((int) (1073741823 & r7)) == ((int) ((r7 & 1152921503533105152L) >> 30))) == false) goto L83;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long l() {
        /*
            Method dump skipped, instruction units count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: V1.P.l():long");
    }

    public final void m(long j2, N n2) {
        int iA;
        Thread threadG;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
        N n3 = null;
        if (g.get(this) != 0) {
            iA = 1;
        } else {
            O o2 = (O) atomicReferenceFieldUpdater.get(this);
            if (o2 == null) {
                O o3 = new O();
                o3.f2272c = j2;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, null, o3) && atomicReferenceFieldUpdater.get(this) == null) {
                }
                Object obj = atomicReferenceFieldUpdater.get(this);
                Intrinsics.checkNotNull(obj);
                o2 = (O) obj;
            }
            iA = n2.a(j2, o2, this);
        }
        if (iA != 0) {
            if (iA == 1) {
                h(j2, n2);
                return;
            } else {
                if (iA != 2) {
                    throw new IllegalStateException("unexpected result");
                }
                return;
            }
        }
        O o4 = (O) atomicReferenceFieldUpdater.get(this);
        if (o4 != null) {
            synchronized (o4) {
                N[] nArr = o4.f2569a;
                n3 = nArr != null ? nArr[0] : null;
            }
        }
        if (n3 != n2 || Thread.currentThread() == (threadG = g())) {
            return;
        }
        LockSupport.unpark(threadG);
    }

    @Override // V1.L
    public void shutdown() {
        N nB;
        s0.f2297a.set(null);
        g.set(this, 1);
        a2.w wVar = A.f2255c;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2273e;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, null, wVar)) {
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == null);
            } else {
                if (obj instanceof a2.o) {
                    ((a2.o) obj).b();
                    break;
                }
                if (obj == wVar) {
                    break;
                }
                a2.o oVar = new a2.o(8, true);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                oVar.a((Runnable) obj);
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj, oVar)) {
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == obj);
            }
        }
        while (l() <= 0) {
        }
        long jNanoTime = System.nanoTime();
        while (true) {
            O o2 = (O) f.get(this);
            if (o2 == null) {
                return;
            }
            synchronized (o2) {
                nB = a2.C.b.get(o2) > 0 ? o2.b(0) : null;
            }
            if (nB == null) {
                return;
            } else {
                h(jNanoTime, nB);
            }
        }
    }
}
