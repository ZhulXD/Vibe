package a2;

import V1.AbstractC0201q;
import V1.AbstractC0203t;
import V1.C0195k;
import V1.InterfaceC0205v;
import V1.L;
import V1.a0;
import V1.b0;
import V1.j0;
import V1.s0;
import V1.u0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: a2.a, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0210a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f2572a;
    public static final w b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final w f2573c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final w f2574d;

    static {
        int i3 = 0;
        f2572a = new w("NO_DECISION", i3);
        b = new w("UNDEFINED", i3);
        f2573c = new w("REUSABLE_CLAIMED", i3);
        f2574d = new w("CONDITION_FALSE", i3);
    }

    public static final void a(int i3) {
        if (i3 < 1) {
            throw new IllegalArgumentException(E.b.i(i3, "Expected positive parallelism level, but got ").toString());
        }
    }

    public static final u b(Object obj) {
        if (obj == AbstractC0212c.f2576a) {
            throw new IllegalStateException("Does not contain segment");
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
        return (u) obj;
    }

    public static final void c(CoroutineContext coroutineContext, Throwable th) {
        Throwable runtimeException;
        Iterator it = f.f2578a.iterator();
        while (it.hasNext()) {
            try {
                ((W1.b) ((InterfaceC0205v) it.next())).d(th);
            } catch (Throwable th2) {
                if (th == th2) {
                    runtimeException = th;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                    ExceptionsKt.addSuppressed(runtimeException, th);
                }
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, runtimeException);
            }
        }
        try {
            ExceptionsKt.addSuppressed(th, new g(coroutineContext));
        } catch (Throwable unused) {
        }
        Thread threadCurrentThread2 = Thread.currentThread();
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
    }

    public static final boolean d(Object obj) {
        return obj == AbstractC0212c.f2576a;
    }

    public static final Object e(Object obj, Object obj2) {
        if (obj == null) {
            return obj2;
        }
        if (obj instanceof ArrayList) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
            ((ArrayList) obj).add(obj2);
            return obj;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(obj2);
        return arrayList;
    }

    public static final void f(Object obj, Continuation continuation) {
        if (!(continuation instanceof h)) {
            continuation.resumeWith(obj);
            return;
        }
        h hVar = (h) continuation;
        AbstractC0203t abstractC0203t = hVar.f2580e;
        Continuation continuation2 = hVar.f;
        Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(obj);
        Object c0195k = thM12exceptionOrNullimpl == null ? obj : new C0195k(thM12exceptionOrNullimpl, false);
        if (abstractC0203t.isDispatchNeeded(continuation2.get$context())) {
            hVar.g = c0195k;
            hVar.f2264d = 1;
            abstractC0203t.dispatch(continuation2.get$context(), hVar);
            return;
        }
        L lA = s0.a();
        if (lA.b >= 4294967296L) {
            hVar.g = c0195k;
            hVar.f2264d = 1;
            ArrayDeque arrayDeque = lA.f2268d;
            if (arrayDeque == null) {
                arrayDeque = new ArrayDeque();
                lA.f2268d = arrayDeque;
            }
            arrayDeque.addLast(hVar);
            return;
        }
        lA.e(true);
        try {
            b0 b0Var = (b0) continuation2.get$context().get(a0.b);
            if (b0Var == null || b0Var.a()) {
                Object obj2 = hVar.f2581h;
                CoroutineContext context = continuation2.get$context();
                Object objB = B.b(context, obj2);
                u0 u0VarB = objB != B.f2566a ? AbstractC0201q.b(continuation2, context, objB) : null;
                try {
                    continuation2.resumeWith(obj);
                    Unit unit = Unit.INSTANCE;
                    if (u0VarB == null || u0VarB.M()) {
                        B.a(context, objB);
                    }
                } catch (Throwable th) {
                    if (u0VarB == null || u0VarB.M()) {
                        B.a(context, objB);
                    }
                    throw th;
                }
            } else {
                CancellationException cancellationExceptionS = ((j0) b0Var).s();
                hVar.b(c0195k, cancellationExceptionS);
                hVar.resumeWith(Result.m9constructorimpl(ResultKt.createFailure(cancellationExceptionS)));
            }
            while (lA.f()) {
            }
        } catch (Throwable th2) {
            try {
                hVar.i(th2, null);
            } finally {
                lA.d();
            }
        }
    }

    public static final long h(long j2, long j3, long j4, String str) {
        String property;
        int i3 = x.f2600a;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            return j2;
        }
        Long longOrNull = StringsKt.toLongOrNull(property);
        if (longOrNull == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + property + '\'').toString());
        }
        long jLongValue = longOrNull.longValue();
        if (j3 <= jLongValue && jLongValue <= j4) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j3 + ".." + j4 + ", but is '" + jLongValue + '\'').toString());
    }

    public static int i(String str, int i3, int i4) {
        return (int) h(i3, 1, (i4 & 8) != 0 ? IntCompanionObject.MAX_VALUE : 2097150, str);
    }
}
