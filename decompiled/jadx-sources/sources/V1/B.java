package V1;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class B extends P implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final B f2261h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final long f2262i;

    static {
        Long l2;
        B b = new B();
        f2261h = b;
        b.e(false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l2 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l2 = 1000L;
        }
        f2262i = timeUnit.toNanos(l2.longValue());
    }

    @Override // V1.Q
    public final Thread g() {
        Thread thread;
        Thread thread2 = _thread;
        if (thread2 != null) {
            return thread2;
        }
        synchronized (this) {
            thread = _thread;
            if (thread == null) {
                thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                _thread = thread;
                thread.setDaemon(true);
                thread.start();
            }
        }
        return thread;
    }

    @Override // V1.Q
    public final void h(long j2, N n2) {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // V1.P
    public final void i(Runnable runnable) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.i(runnable);
    }

    public final synchronized void n() {
        int i3 = debugStatus;
        if (i3 == 2 || i3 == 3) {
            debugStatus = 3;
            P.f2273e.set(this, null);
            P.f.set(this, null);
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00a1 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.lang.Throwable {
        /*
            r18 = this;
            r1 = r18
            java.lang.ThreadLocal r0 = V1.s0.f2297a
            r0.set(r1)
            r2 = 0
            monitor-enter(r18)     // Catch: java.lang.Throwable -> L54
            int r0 = V1.B.debugStatus     // Catch: java.lang.Throwable -> L9c
            r4 = 3
            r5 = 2
            r6 = 1
            if (r0 == r5) goto L15
            if (r0 != r4) goto L13
            goto L15
        L13:
            r0 = 0
            goto L16
        L15:
            r0 = r6
        L16:
            if (r0 == 0) goto L28
            monitor-exit(r18)     // Catch: java.lang.Throwable -> L54
            V1.B._thread = r2
            r1.n()
            boolean r0 = r1.k()
            if (r0 != 0) goto L95
            r1.g()
            return
        L28:
            V1.B.debugStatus = r6     // Catch: java.lang.Throwable -> L9c
            java.lang.String r0 = "null cannot be cast to non-null type java.lang.Object"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r0)     // Catch: java.lang.Throwable -> L9c
            r1.notifyAll()     // Catch: java.lang.Throwable -> L9c
            monitor-exit(r18)     // Catch: java.lang.Throwable -> L54
            r7 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r7
        L39:
            java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L54
            long r11 = r1.l()     // Catch: java.lang.Throwable -> L54
            int r0 = (r11 > r7 ? 1 : (r11 == r7 ? 0 : -1))
            r13 = 0
            if (r0 != 0) goto L74
            long r15 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L54
            int r0 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r0 != 0) goto L51
            long r9 = V1.B.f2262i     // Catch: java.lang.Throwable -> L54
            long r9 = r9 + r15
        L51:
            r17 = r2
            goto L58
        L54:
            r0 = move-exception
            r17 = r2
            goto La3
        L58:
            long r2 = r9 - r15
            int r15 = (r2 > r13 ? 1 : (r2 == r13 ? 0 : -1))
            if (r15 > 0) goto L6d
            V1.B._thread = r17
            r1.n()
            boolean r0 = r1.k()
            if (r0 != 0) goto L95
            r1.g()
            return
        L6d:
            long r11 = kotlin.ranges.RangesKt.coerceAtMost(r11, r2)     // Catch: java.lang.Throwable -> L72
            goto L77
        L72:
            r0 = move-exception
            goto La3
        L74:
            r17 = r2
            r9 = r7
        L77:
            int r2 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r2 <= 0) goto L99
            int r2 = V1.B.debugStatus     // Catch: java.lang.Throwable -> L72
            if (r2 == r5) goto L84
            if (r2 != r4) goto L82
            goto L84
        L82:
            r2 = 0
            goto L85
        L84:
            r2 = r6
        L85:
            if (r2 == 0) goto L96
            V1.B._thread = r17
            r1.n()
            boolean r0 = r1.k()
            if (r0 != 0) goto L95
            r1.g()
        L95:
            return
        L96:
            java.util.concurrent.locks.LockSupport.parkNanos(r1, r11)     // Catch: java.lang.Throwable -> L72
        L99:
            r2 = r17
            goto L39
        L9c:
            r0 = move-exception
            r17 = r2
        L9f:
            monitor-exit(r18)     // Catch: java.lang.Throwable -> La1
            throw r0     // Catch: java.lang.Throwable -> L72
        La1:
            r0 = move-exception
            goto L9f
        La3:
            V1.B._thread = r17
            r1.n()
            boolean r2 = r1.k()
            if (r2 != 0) goto Lb1
            r1.g()
        Lb1:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: V1.B.run():void");
    }

    @Override // V1.P, V1.L
    public final void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }
}
