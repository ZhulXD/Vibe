package V1;

import a2.AbstractC0210a;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: V1.e, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0189e extends F implements InterfaceC0188d, CoroutineStackFrame, w0 {
    public static final AtomicIntegerFieldUpdater g = AtomicIntegerFieldUpdater.newUpdater(C0189e.class, "_decisionAndIndex");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2277h = AtomicReferenceFieldUpdater.newUpdater(C0189e.class, Object.class, "_state");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2278i = AtomicReferenceFieldUpdater.newUpdater(C0189e.class, Object.class, "_parentHandle");

    @Volatile
    private volatile int _decisionAndIndex;

    @Volatile
    private volatile Object _parentHandle;

    @Volatile
    private volatile Object _state;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Continuation f2279e;
    public final CoroutineContext f;

    public C0189e(int i3, Continuation continuation) {
        super(i3);
        this.f2279e = continuation;
        this.f = continuation.get$context();
        this._decisionAndIndex = 536870911;
        this._state = C0186b.b;
    }

    public static Object A(n0 n0Var, Object obj, int i3, Function1 function1) {
        if (obj instanceof C0195k) {
            return obj;
        }
        if (i3 != 1 && i3 != 2) {
            return obj;
        }
        if (function1 != null || (n0Var instanceof J)) {
            return new C0194j(obj, n0Var instanceof J ? (J) n0Var : null, function1, (CancellationException) null, 16);
        }
        return obj;
    }

    public static void w(n0 n0Var, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + n0Var + ", already has " + obj).toString());
    }

    @Override // V1.w0
    public final void a(a2.u uVar, int i3) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i4;
        do {
            atomicIntegerFieldUpdater = g;
            i4 = atomicIntegerFieldUpdater.get(this);
            if ((i4 & 536870911) != 536870911) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once");
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i4, ((i4 >> 29) << 29) + i3));
        u(uVar);
    }

    @Override // V1.F
    public final void b(Object obj, CancellationException cancellationException) {
        CancellationException cancellationException2;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2277h;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof n0) {
                throw new IllegalStateException("Not completed");
            }
            if (obj2 instanceof C0195k) {
                return;
            }
            if (!(obj2 instanceof C0194j)) {
                cancellationException2 = cancellationException;
                C0194j c0194j = new C0194j(obj2, (J) null, (Function1) null, cancellationException2, 14);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, c0194j)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                    }
                }
                return;
            }
            C0194j c0194j2 = (C0194j) obj2;
            if (c0194j2.f2294e != null) {
                throw new IllegalStateException("Must be called at most once");
            }
            C0194j c0194jA = C0194j.a(c0194j2, null, cancellationException, 15);
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, c0194jA)) {
                    J j2 = c0194j2.b;
                    if (j2 != null) {
                        k(j2, cancellationException);
                    }
                    Function1 function1 = c0194j2.f2292c;
                    if (function1 != null) {
                        l(function1, cancellationException);
                        return;
                    }
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj2);
            cancellationException2 = cancellationException;
            cancellationException = cancellationException2;
        }
    }

    @Override // V1.InterfaceC0188d
    public final void c(Object obj, Function1 function1) {
        y(obj, this.f2264d, function1);
    }

    @Override // V1.InterfaceC0188d
    public final a2.w d(Object obj, Function1 function1) {
        a2.w wVar = A.f2254a;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2277h;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof n0)) {
                return null;
            }
            Object objA = A((n0) obj2, obj, this.f2264d, function1);
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, objA)) {
                    if (!v()) {
                        o();
                    }
                    return wVar;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj2);
        }
    }

    @Override // V1.F
    public final Continuation e() {
        return this.f2279e;
    }

    @Override // V1.F
    public final Throwable f(Object obj) {
        Throwable thF = super.f(obj);
        if (thF != null) {
            return thF;
        }
        return null;
    }

    @Override // V1.InterfaceC0188d
    public final void g(Object obj) {
        p(this.f2264d);
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.f2279e;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    /* JADX INFO: renamed from: getContext */
    public final CoroutineContext get$context() {
        return this.f;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // V1.F
    public final Object h(Object obj) {
        return obj instanceof C0194j ? ((C0194j) obj).f2291a : obj;
    }

    @Override // V1.F
    public final Object j() {
        return f2277h.get(this);
    }

    public final void k(J j2, Throwable th) {
        try {
            j2.a(th);
        } catch (Throwable th2) {
            AbstractC0206w.a(this.f, new Q.c("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void l(Function1 function1, Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            AbstractC0206w.a(this.f, new Q.c("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    public final void m(a2.u uVar, Throwable th) {
        CoroutineContext coroutineContext = this.f;
        int i3 = g.get(this) & 536870911;
        if (i3 == 536870911) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken");
        }
        try {
            uVar.g(i3, coroutineContext);
        } catch (Throwable th2) {
            AbstractC0206w.a(coroutineContext, new Q.c("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void n(Throwable th) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2277h;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof n0)) {
                return;
            }
            C0190f c0190f = new C0190f(this, th, (obj instanceof J) || (obj instanceof a2.u));
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj, c0190f)) {
                    n0 n0Var = (n0) obj;
                    if (n0Var instanceof J) {
                        k((J) obj, th);
                    } else if (n0Var instanceof a2.u) {
                        m((a2.u) obj, th);
                    }
                    if (!v()) {
                        o();
                    }
                    p(this.f2264d);
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj);
        }
    }

    public final void o() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2278i;
        I i3 = (I) atomicReferenceFieldUpdater.get(this);
        if (i3 == null) {
            return;
        }
        i3.b();
        atomicReferenceFieldUpdater.set(this, m0.b);
    }

    public final void p(int i3) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i4;
        do {
            atomicIntegerFieldUpdater = g;
            i4 = atomicIntegerFieldUpdater.get(this);
            int i5 = i4 >> 29;
            if (i5 != 0) {
                if (i5 != 1) {
                    throw new IllegalStateException("Already resumed");
                }
                boolean z2 = i3 == 4;
                Continuation continuation = this.f2279e;
                if (!z2 && (continuation instanceof a2.h)) {
                    boolean z3 = i3 == 1 || i3 == 2;
                    int i6 = this.f2264d;
                    if (z3 == (i6 == 1 || i6 == 2)) {
                        a2.h hVar = (a2.h) continuation;
                        AbstractC0203t abstractC0203t = hVar.f2580e;
                        CoroutineContext context = hVar.f.get$context();
                        if (abstractC0203t.isDispatchNeeded(context)) {
                            abstractC0203t.dispatch(context, this);
                            return;
                        }
                        L lA = s0.a();
                        if (lA.b >= 4294967296L) {
                            ArrayDeque arrayDeque = lA.f2268d;
                            if (arrayDeque == null) {
                                arrayDeque = new ArrayDeque();
                                lA.f2268d = arrayDeque;
                            }
                            arrayDeque.addLast(this);
                            return;
                        }
                        lA.e(true);
                        try {
                            G.a(this, continuation, true);
                            do {
                            } while (lA.f());
                        } catch (Throwable th) {
                            try {
                                i(th, null);
                            } finally {
                                lA.d();
                            }
                        }
                        return;
                    }
                }
                G.a(this, continuation, z2);
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i4, 1073741824 + (536870911 & i4)));
    }

    public final Object q() throws Throwable {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i3;
        b0 b0Var;
        boolean zV = v();
        do {
            atomicIntegerFieldUpdater = g;
            i3 = atomicIntegerFieldUpdater.get(this);
            int i4 = i3 >> 29;
            if (i4 != 0) {
                if (i4 != 2) {
                    throw new IllegalStateException("Already suspended");
                }
                if (zV) {
                    x();
                }
                Object obj = f2277h.get(this);
                if (obj instanceof C0195k) {
                    throw ((C0195k) obj).f2296a;
                }
                int i5 = this.f2264d;
                if ((i5 != 1 && i5 != 2) || (b0Var = (b0) this.f.get(a0.b)) == null || b0Var.a()) {
                    return h(obj);
                }
                CancellationException cancellationExceptionS = ((j0) b0Var).s();
                b(obj, cancellationExceptionS);
                throw cancellationExceptionS;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i3, 536870912 + (536870911 & i3)));
        if (((I) f2278i.get(this)) == null) {
            s();
        }
        if (zV) {
            x();
        }
        return IntrinsicsKt.getCOROUTINE_SUSPENDED();
    }

    public final void r() {
        I iS = s();
        if (iS == null || (f2277h.get(this) instanceof n0)) {
            return;
        }
        iS.b();
        f2278i.set(this, m0.b);
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(obj);
        if (thM12exceptionOrNullimpl != null) {
            obj = new C0195k(thM12exceptionOrNullimpl, false);
        }
        y(obj, this.f2264d, null);
    }

    public final I s() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        b0 b0Var = (b0) this.f.get(a0.b);
        if (b0Var == null) {
            return null;
        }
        I iA = Z.a(b0Var, new C0191g(this), 2);
        do {
            atomicReferenceFieldUpdater = f2278i;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, iA)) {
                break;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return iA;
    }

    public final void t(Function1 function1) {
        u(function1 instanceof J ? (J) function1 : new J(1, function1));
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("CancellableContinuation(");
        sb.append(A.d(this.f2279e));
        sb.append("){");
        Object obj = f2277h.get(this);
        if (obj instanceof n0) {
            str = "Active";
        } else {
            str = obj instanceof C0190f ? "Cancelled" : "Completed";
        }
        sb.append(str);
        sb.append("}@");
        sb.append(A.a(this));
        return sb.toString();
    }

    public final void u(n0 n0Var) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2277h;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof C0186b) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, n0Var)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                    }
                }
                return;
            }
            boolean z2 = true;
            if (obj instanceof J ? true : obj instanceof a2.u) {
                w(n0Var, obj);
                throw null;
            }
            if (obj instanceof C0195k) {
                C0195k c0195k = (C0195k) obj;
                if (!C0195k.b.compareAndSet(c0195k, 0, 1)) {
                    w(n0Var, obj);
                    throw null;
                }
                if (obj instanceof C0190f) {
                    Throwable th = c0195k.f2296a;
                    if (n0Var instanceof J) {
                        k((J) n0Var, th);
                        return;
                    } else {
                        Intrinsics.checkNotNull(n0Var, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                        m((a2.u) n0Var, th);
                        return;
                    }
                }
                return;
            }
            if (obj instanceof C0194j) {
                C0194j c0194j = (C0194j) obj;
                if (c0194j.b != null) {
                    w(n0Var, obj);
                    throw null;
                }
                if (n0Var instanceof a2.u) {
                    return;
                }
                Intrinsics.checkNotNull(n0Var, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                J j2 = (J) n0Var;
                Throwable th2 = c0194j.f2294e;
                if (th2 != null) {
                    k(j2, th2);
                    return;
                }
                C0194j c0194jA = C0194j.a(c0194j, j2, null, 29);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c0194jA)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        z2 = false;
                        break;
                    }
                }
                if (z2) {
                    return;
                }
            } else {
                if (n0Var instanceof a2.u) {
                    return;
                }
                Intrinsics.checkNotNull(n0Var, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                C0194j c0194j2 = new C0194j(obj, (J) n0Var, (Function1) null, (CancellationException) null, 28);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c0194j2)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        z2 = false;
                        break;
                    }
                }
                if (z2) {
                    return;
                }
            }
        }
    }

    public final boolean v() {
        if (this.f2264d != 2) {
            return false;
        }
        Continuation continuation = this.f2279e;
        Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        a2.h hVar = (a2.h) continuation;
        hVar.getClass();
        return a2.h.f2579i.get(hVar) != null;
    }

    public final void x() {
        Continuation continuation = this.f2279e;
        Throwable th = null;
        a2.h hVar = continuation instanceof a2.h ? (a2.h) continuation : null;
        if (hVar != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a2.h.f2579i;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(hVar);
                a2.w wVar = AbstractC0210a.f2573c;
                if (obj != wVar) {
                    if (!(obj instanceof Throwable)) {
                        throw new IllegalStateException(("Inconsistent state " + obj).toString());
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(hVar, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(hVar) != obj) {
                            throw new IllegalArgumentException("Failed requirement.");
                        }
                    }
                    th = (Throwable) obj;
                    break;
                }
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(hVar, wVar, this)) {
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(hVar) == wVar);
            }
            if (th == null) {
                return;
            }
            o();
            n(th);
        }
    }

    public final void y(Object obj, int i3, Function1 function1) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2277h;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof n0)) {
                if (obj2 instanceof C0190f) {
                    C0190f c0190f = (C0190f) obj2;
                    if (C0190f.f2281c.compareAndSet(c0190f, 0, 1)) {
                        if (function1 != null) {
                            l(function1, c0190f.f2296a);
                            return;
                        }
                        return;
                    }
                }
                throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
            }
            Object objA = A((n0) obj2, obj, i3, function1);
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, objA)) {
                    if (!v()) {
                        o();
                    }
                    p(i3);
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj2);
        }
    }

    public final void z(AbstractC0203t abstractC0203t, Unit unit) {
        Continuation continuation = this.f2279e;
        a2.h hVar = continuation instanceof a2.h ? (a2.h) continuation : null;
        y(unit, (hVar != null ? hVar.f2580e : null) == abstractC0203t ? 4 : this.f2264d, null);
    }
}
