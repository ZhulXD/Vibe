package p046s;

import com.bumptech.glide.d;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import p020h1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g implements a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f5312e = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    public static final Logger f = Logger.getLogger(g.class.getName());
    public static final d g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Object f5313h;
    public volatile Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile c f5314c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile f f5315d;

    static {
        d eVar;
        try {
            eVar = new d(AtomicReferenceFieldUpdater.newUpdater(f.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(f.class, f.class, "b"), AtomicReferenceFieldUpdater.newUpdater(g.class, f.class, "d"), AtomicReferenceFieldUpdater.newUpdater(g.class, c.class, "c"), AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, "b"));
            th = null;
        } catch (Throwable th) {
            th = th;
            eVar = new e();
        }
        g = eVar;
        if (th != null) {
            f.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f5313h = new Object();
    }

    public static void b(g gVar) {
        f fVar;
        c cVar;
        c cVar2;
        c cVar3;
        do {
            fVar = gVar.f5315d;
        } while (!g.i(gVar, fVar, f.f5310c));
        while (true) {
            cVar = null;
            if (fVar == null) {
                break;
            }
            Thread thread = fVar.f5311a;
            if (thread != null) {
                fVar.f5311a = null;
                LockSupport.unpark(thread);
            }
            fVar = fVar.b;
        }
        do {
            cVar2 = gVar.f5314c;
        } while (!g.g(gVar, cVar2, c.f5304d));
        while (true) {
            cVar3 = cVar;
            cVar = cVar2;
            if (cVar == null) {
                break;
            }
            cVar2 = cVar.f5306c;
            cVar.f5306c = cVar3;
        }
        while (cVar3 != null) {
            c cVar4 = cVar3.f5306c;
            c(cVar3.f5305a, cVar3.b);
            cVar3 = cVar4;
        }
    }

    public static void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            f.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    public static Object d(Object obj) throws ExecutionException {
        if (obj instanceof a) {
            Throwable th = ((a) obj).f5303a;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof b) {
            throw new ExecutionException((Throwable) null);
        }
        if (obj == f5313h) {
            return null;
        }
        return obj;
    }

    public static Object e(g gVar) {
        Object obj;
        boolean z2 = false;
        while (true) {
            try {
                obj = gVar.get();
                break;
            } catch (InterruptedException unused) {
                z2 = true;
            } catch (Throwable th) {
                if (z2) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public final void a(StringBuilder sb) {
        try {
            Object objE = e(this);
            sb.append("SUCCESS, result=[");
            sb.append(objE == this ? "this future" : String.valueOf(objE));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z2) {
        a aVar;
        Object obj = this.b;
        if (obj != null) {
            return false;
        }
        if (f5312e) {
            aVar = new a(new CancellationException("Future.cancel() was called."), z2);
        } else {
            aVar = z2 ? a.b : a.f5302c;
        }
        if (!g.h(this, obj, aVar)) {
            return false;
        }
        b(this);
        return true;
    }

    public final void f(f fVar) {
        fVar.f5311a = null;
        while (true) {
            f fVar2 = this.f5315d;
            if (fVar2 == f.f5310c) {
                return;
            }
            f fVar3 = null;
            while (fVar2 != null) {
                f fVar4 = fVar2.b;
                if (fVar2.f5311a != null) {
                    fVar3 = fVar2;
                } else if (fVar3 != null) {
                    fVar3.b = fVar4;
                    if (fVar3.f5311a == null) {
                    }
                } else if (!g.i(this, fVar2, fVar4)) {
                }
                fVar2 = fVar4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j2, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        f fVar = f.f5310c;
        long nanos = timeUnit.toNanos(j2);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.b;
        if (obj != null) {
            return d(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            f fVar2 = this.f5315d;
            if (fVar2 != fVar) {
                f fVar3 = new f();
                while (true) {
                    d dVar = g;
                    dVar.U(fVar3, fVar2);
                    if (dVar.i(this, fVar2, fVar3)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                f(fVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.b;
                            if (obj2 != null) {
                                return d(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        f(fVar3);
                        break;
                    }
                    fVar2 = this.f5315d;
                    if (fVar2 == fVar) {
                    }
                }
            }
            return d(this.b);
        }
        while (nanos > 0) {
            Object obj3 = this.b;
            if (obj3 != null) {
                return d(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String strG = "Waited " + j2 + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String strG2 = kotlin.collections.unsigned.a.g(strG, " (plus ");
            long j3 = -nanos;
            long jConvert = timeUnit.convert(j3, TimeUnit.NANOSECONDS);
            long nanos2 = j3 - timeUnit.toNanos(jConvert);
            boolean z2 = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String strG3 = strG2 + jConvert + " " + lowerCase;
                if (z2) {
                    strG3 = kotlin.collections.unsigned.a.g(strG3, ",");
                }
                strG2 = kotlin.collections.unsigned.a.g(strG3, " ");
            }
            if (z2) {
                strG2 = strG2 + nanos2 + " nanoseconds ";
            }
            strG = kotlin.collections.unsigned.a.g(strG2, "delay)");
        }
        if (isDone()) {
            throw new TimeoutException(kotlin.collections.unsigned.a.g(strG, " but future completed as timeout expired"));
        }
        throw new TimeoutException(kotlin.collections.unsigned.a.h(strG, " for ", string));
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.b instanceof a;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.b != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.b instanceof a) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                if (this instanceof ScheduledFuture) {
                    str = "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
                } else {
                    str = null;
                }
            } catch (RuntimeException e2) {
                str = "Exception thrown from implementation: " + e2.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        f fVar = f.f5310c;
        if (!Thread.interrupted()) {
            Object obj2 = this.b;
            if (obj2 != null) {
                return d(obj2);
            }
            f fVar2 = this.f5315d;
            if (fVar2 != fVar) {
                f fVar3 = new f();
                do {
                    d dVar = g;
                    dVar.U(fVar3, fVar2);
                    if (dVar.i(this, fVar2, fVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.b;
                            } else {
                                f(fVar3);
                                throw new InterruptedException();
                            }
                        } while (obj == null);
                        return d(obj);
                    }
                    fVar2 = this.f5315d;
                } while (fVar2 != fVar);
            }
            return d(this.b);
        }
        throw new InterruptedException();
    }
}
