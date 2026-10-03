package V1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class j0 implements b0, o0 {
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(j0.class, Object.class, "_state");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2295c = AtomicReferenceFieldUpdater.newUpdater(j0.class, Object.class, "_parentHandle");

    @Volatile
    private volatile Object _parentHandle;

    @Volatile
    private volatile Object _state;

    public j0(boolean z2) {
        this._state = z2 ? A.f2260j : A.f2259i;
    }

    public static C0193i C(a2.l lVar) {
        while (lVar.i()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a2.l.f2585c;
            a2.l lVarE = lVar.e();
            if (lVarE == null) {
                Object obj = atomicReferenceFieldUpdater.get(lVar);
                while (true) {
                    lVar = (a2.l) obj;
                    if (!lVar.i()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(lVar);
                }
            } else {
                lVar = lVarE;
            }
        }
        while (true) {
            lVar = lVar.h();
            if (!lVar.i()) {
                if (lVar instanceof C0193i) {
                    return (C0193i) lVar;
                }
                if (lVar instanceof l0) {
                    return null;
                }
            }
        }
    }

    public static String H(Object obj) {
        if (!(obj instanceof h0)) {
            if (obj instanceof W) {
                return ((W) obj).a() ? "Active" : "New";
            }
            return obj instanceof C0195k ? "Cancelled" : "Completed";
        }
        h0 h0Var = (h0) obj;
        if (h0Var.e()) {
            return "Cancelling";
        }
        return h0Var.f() ? "Completing" : "Active";
    }

    public boolean A() {
        return false;
    }

    public final Object B(Object obj) {
        Object objI;
        do {
            objI = I(w(), obj);
            if (objI == A.f2256d) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                C0195k c0195k = obj instanceof C0195k ? (C0195k) obj : null;
                throw new IllegalStateException(str, c0195k != null ? c0195k.f2296a : null);
            }
        } while (objI == A.f);
        return objI;
    }

    public final void D(l0 l0Var, Throwable th) {
        Object objG = l0Var.g();
        Intrinsics.checkNotNull(objG, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        Q.c cVar = null;
        for (a2.l lVarH = (a2.l) objG; !Intrinsics.areEqual(lVarH, l0Var); lVarH = lVarH.h()) {
            if (lVarH instanceof d0) {
                f0 f0Var = (f0) lVarH;
                try {
                    f0Var.k(th);
                } catch (Throwable th2) {
                    if (cVar != null) {
                        ExceptionsKt.addSuppressed(cVar, th2);
                    } else {
                        cVar = new Q.c("Exception in completion handler " + f0Var + " for " + this, th2);
                        Unit unit = Unit.INSTANCE;
                    }
                }
            }
        }
        if (cVar != null) {
            y(cVar);
        }
        m(th);
    }

    public final void G(f0 f0Var) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        l0 l0Var = new l0();
        f0Var.getClass();
        a2.l.f2585c.lazySet(l0Var, f0Var);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = a2.l.b;
        atomicReferenceFieldUpdater2.lazySet(l0Var, f0Var);
        loop0: while (f0Var.g() == f0Var) {
            do {
                if (atomicReferenceFieldUpdater2.compareAndSet(f0Var, f0Var, l0Var)) {
                    l0Var.f(f0Var);
                    break loop0;
                }
            } while (atomicReferenceFieldUpdater2.get(f0Var) == f0Var);
        }
        a2.l lVarH = f0Var.h();
        do {
            atomicReferenceFieldUpdater = b;
            if (atomicReferenceFieldUpdater.compareAndSet(this, f0Var, lVarH)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [T, java.lang.Throwable] */
    public final Object I(Object obj, Object obj2) {
        if (!(obj instanceof W)) {
            return A.f2256d;
        }
        if (((obj instanceof K) || (obj instanceof f0)) && !(obj instanceof C0193i) && !(obj2 instanceof C0195k)) {
            W w2 = (W) obj;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b;
            Object x2 = obj2 instanceof W ? new X((W) obj2) : obj2;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, w2, x2)) {
                if (atomicReferenceFieldUpdater.get(this) != w2) {
                    return A.f;
                }
            }
            E(obj2);
            p(w2, obj2);
            return obj2;
        }
        W w3 = (W) obj;
        l0 l0VarV = v(w3);
        if (l0VarV == null) {
            return A.f;
        }
        C0193i c0193iC = null;
        h0 h0Var = w3 instanceof h0 ? (h0) w3 : null;
        if (h0Var == null) {
            h0Var = new h0(l0VarV, null);
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        synchronized (h0Var) {
            if (h0Var.f()) {
                return A.f2256d;
            }
            h0.f2285c.set(h0Var, 1);
            if (h0Var != w3) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = b;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, w3, h0Var)) {
                    if (atomicReferenceFieldUpdater2.get(this) != w3) {
                        return A.f;
                    }
                }
            }
            boolean zE = h0Var.e();
            C0195k c0195k = obj2 instanceof C0195k ? (C0195k) obj2 : null;
            if (c0195k != null) {
                h0Var.b(c0195k.f2296a);
            }
            ?? C2 = !zE ? h0Var.c() : 0;
            objectRef.element = C2;
            Unit unit = Unit.INSTANCE;
            if (C2 != 0) {
                D(l0VarV, C2);
            }
            C0193i c0193i = w3 instanceof C0193i ? (C0193i) w3 : null;
            if (c0193i == null) {
                l0 l0VarD = w3.d();
                if (l0VarD != null) {
                    c0193iC = C(l0VarD);
                }
            } else {
                c0193iC = c0193i;
            }
            if (c0193iC != null) {
                while (Z.a(c0193iC.f, new g0(this, h0Var, c0193iC, obj2), 1) == m0.b) {
                    c0193iC = C(c0193iC);
                    if (c0193iC == null) {
                    }
                }
                return A.f2257e;
            }
            return r(h0Var, obj2);
        }
    }

    @Override // V1.b0
    public boolean a() {
        Object objW = w();
        return (objW instanceof W) && ((W) objW).a();
    }

    @Override // V1.b0
    public void b(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new c0(n(), null, this);
        }
        l(cancellationException);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return CoroutineContext.Element.DefaultImpls.fold(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return a0.b;
    }

    public final boolean h(W w2, l0 l0Var, f0 f0Var) {
        a2.l lVarE;
        i0 i0Var = new i0(f0Var, this, w2);
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a2.l.f2585c;
            lVarE = l0Var.e();
            if (lVarE == null) {
                Object obj = atomicReferenceFieldUpdater.get(l0Var);
                while (true) {
                    lVarE = (a2.l) obj;
                    if (!lVarE.i()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(lVarE);
                }
            }
            a2.l.f2585c.lazySet(f0Var, lVarE);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = a2.l.b;
            atomicReferenceFieldUpdater2.lazySet(f0Var, l0Var);
            i0Var.f2288c = l0Var;
            do {
                if (atomicReferenceFieldUpdater2.compareAndSet(lVarE, l0Var, i0Var)) {
                    break loop0;
                }
            } while (atomicReferenceFieldUpdater2.get(lVarE) == l0Var);
        }
        return i0Var.a(lVarE) == null;
    }

    public void j(Object obj) {
        i(obj);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:101:? A[LOOP:2: B:59:0x00b4->B:101:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:18:0x003a A[PHI: r0
      0x003a: PHI (r0v1 java.lang.Object) = (r0v0 java.lang.Object), (r0v12 java.lang.Object) binds: [B:3:0x0008, B:16:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:20:0x003e  */
    /* JADX WARN: Code duplicated, block: B:26:0x0056  */
    /* JADX WARN: Code duplicated, block: B:27:0x0058  */
    /* JADX WARN: Code duplicated, block: B:29:0x005b A[Catch: all -> 0x0061, TRY_LEAVE, TryCatch #0 {, blocks: (B:24:0x0049, B:29:0x005b, B:34:0x0063, B:40:0x007a, B:38:0x0070, B:39:0x0074), top: B:84:0x0049 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0063 A[Catch: all -> 0x0061, TRY_ENTER, TryCatch #0 {, blocks: (B:24:0x0049, B:29:0x005b, B:34:0x0063, B:40:0x007a, B:38:0x0070, B:39:0x0074), top: B:84:0x0049 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x006e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x0070 A[Catch: all -> 0x0061, TryCatch #0 {, blocks: (B:24:0x0049, B:29:0x005b, B:34:0x0063, B:40:0x007a, B:38:0x0070, B:39:0x0074), top: B:84:0x0049 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0083  */
    /* JADX WARN: Code duplicated, block: B:45:0x0087  */
    /* JADX WARN: Code duplicated, block: B:49:0x0093  */
    /* JADX WARN: Code duplicated, block: B:51:0x0097 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x0099  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:81:0x0105 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:82:0x0106  */
    /* JADX WARN: Code duplicated, block: B:84:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x00f3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x00c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x0048 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x00ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x00db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x00d9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:20:0x003e, please report this as an issue */
    public final boolean k(Object obj) {
        Throwable thQ;
        Object objW;
        boolean z2;
        Throwable thC;
        a2.w wVar;
        W w2;
        l0 l0VarV;
        h0 h0Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Object objI;
        Object objI2 = A.f2256d;
        if (u()) {
            do {
                Object objW2 = w();
                if (!(objW2 instanceof W) || ((objW2 instanceof h0) && ((h0) objW2).f())) {
                    objI2 = A.f2256d;
                    break;
                }
                objI2 = I(objW2, new C0195k(q(obj), false));
            } while (objI2 == A.f);
            if (objI2 != A.f2257e) {
                if (objI2 == A.f2256d) {
                    thQ = null;
                    loop1: while (true) {
                        objW = w();
                        if (objW instanceof h0) {
                            synchronized (objW) {
                                if (h0.f2287e.get((h0) objW) == A.f2258h) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (z2) {
                                    wVar = A.g;
                                } else {
                                    boolean zE = ((h0) objW).e();
                                    if (obj == null || !zE) {
                                        if (thQ == null) {
                                            thQ = q(obj);
                                        }
                                        ((h0) objW).b(thQ);
                                    }
                                    thC = zE ? null : ((h0) objW).c();
                                    if (thC != null) {
                                        D(((h0) objW).b, thC);
                                    }
                                    wVar = A.f2256d;
                                }
                            }
                        } else if (objW instanceof W) {
                            if (thQ == null) {
                                thQ = q(obj);
                            }
                            w2 = (W) objW;
                            if (w2.a()) {
                                l0VarV = v(w2);
                                if (l0VarV == null) {
                                    continue;
                                } else {
                                    h0Var = new h0(l0VarV, thQ);
                                    atomicReferenceFieldUpdater = b;
                                    while (true) {
                                        if (atomicReferenceFieldUpdater.compareAndSet(this, w2, h0Var)) {
                                            D(l0VarV, thQ);
                                            wVar = A.f2256d;
                                        } else if (atomicReferenceFieldUpdater.get(this) != w2) {
                                        }
                                    }
                                }
                            } else {
                                objI = I(objW, new C0195k(thQ, false));
                                if (objI != A.f2256d) {
                                    throw new IllegalStateException(("Cannot happen in " + objW).toString());
                                }
                                if (objI != A.f) {
                                    objI2 = objI;
                                    break;
                                }
                            }
                        } else {
                            wVar = A.g;
                        }
                        objI2 = wVar;
                        break;
                    }
                }
                if (objI2 != A.f2256d && objI2 != A.f2257e) {
                    if (objI2 == A.g) {
                        return false;
                    }
                    i(objI2);
                    return true;
                }
            }
        } else {
            if (objI2 == A.f2256d) {
                thQ = null;
                loop1: while (true) {
                    objW = w();
                    if (objW instanceof h0) {
                        synchronized (objW) {
                            if (h0.f2287e.get((h0) objW) == A.f2258h) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                wVar = A.g;
                            } else {
                                boolean zE2 = ((h0) objW).e();
                                if (obj == null) {
                                    if (thQ == null) {
                                        thQ = q(obj);
                                    }
                                    ((h0) objW).b(thQ);
                                } else {
                                    if (thQ == null) {
                                        thQ = q(obj);
                                    }
                                    ((h0) objW).b(thQ);
                                }
                                if (zE2) {
                                }
                                if (thC != null) {
                                    D(((h0) objW).b, thC);
                                }
                                wVar = A.f2256d;
                            }
                        }
                    } else if (objW instanceof W) {
                        if (thQ == null) {
                            thQ = q(obj);
                        }
                        w2 = (W) objW;
                        if (w2.a()) {
                            l0VarV = v(w2);
                            if (l0VarV == null) {
                                continue;
                            } else {
                                h0Var = new h0(l0VarV, thQ);
                                atomicReferenceFieldUpdater = b;
                                while (true) {
                                    if (atomicReferenceFieldUpdater.compareAndSet(this, w2, h0Var)) {
                                        D(l0VarV, thQ);
                                        wVar = A.f2256d;
                                    } else if (atomicReferenceFieldUpdater.get(this) != w2) {
                                    }
                                }
                            }
                        } else {
                            objI = I(objW, new C0195k(thQ, false));
                            if (objI != A.f2256d) {
                                throw new IllegalStateException(("Cannot happen in " + objW).toString());
                            }
                            if (objI != A.f) {
                                objI2 = objI;
                                break;
                            }
                        }
                    } else {
                        wVar = A.g;
                    }
                    objI2 = wVar;
                    break;
                }
            }
            if (objI2 != A.f2256d) {
                if (objI2 == A.g) {
                    return false;
                }
                i(objI2);
                return true;
            }
        }
        return true;
    }

    public void l(CancellationException cancellationException) {
        k(cancellationException);
    }

    public final boolean m(Throwable th) {
        if (A()) {
            return true;
        }
        boolean z2 = th instanceof CancellationException;
        InterfaceC0192h interfaceC0192h = (InterfaceC0192h) f2295c.get(this);
        if (interfaceC0192h == null || interfaceC0192h == m0.b) {
            return z2;
        }
        return interfaceC0192h.c(th) || z2;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.minusKey(this, key);
    }

    public String n() {
        return "Job was cancelled";
    }

    public boolean o(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return k(th) && t();
    }

    public final void p(W w2, Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2295c;
        InterfaceC0192h interfaceC0192h = (InterfaceC0192h) atomicReferenceFieldUpdater.get(this);
        if (interfaceC0192h != null) {
            interfaceC0192h.b();
            atomicReferenceFieldUpdater.set(this, m0.b);
        }
        Q.c cVar = null;
        C0195k c0195k = obj instanceof C0195k ? (C0195k) obj : null;
        Throwable th = c0195k != null ? c0195k.f2296a : null;
        if (w2 instanceof f0) {
            try {
                ((f0) w2).k(th);
                return;
            } catch (Throwable th2) {
                y(new Q.c("Exception in completion handler " + w2 + " for " + this, th2));
                return;
            }
        }
        l0 l0VarD = w2.d();
        if (l0VarD != null) {
            Object objG = l0VarD.g();
            Intrinsics.checkNotNull(objG, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            for (a2.l lVarH = (a2.l) objG; !Intrinsics.areEqual(lVarH, l0VarD); lVarH = lVarH.h()) {
                if (lVarH instanceof f0) {
                    f0 f0Var = (f0) lVarH;
                    try {
                        f0Var.k(th);
                    } catch (Throwable th3) {
                        if (cVar != null) {
                            ExceptionsKt.addSuppressed(cVar, th3);
                        } else {
                            cVar = new Q.c("Exception in completion handler " + f0Var + " for " + this, th3);
                            Unit unit = Unit.INSTANCE;
                        }
                    }
                }
            }
            if (cVar != null) {
                y(cVar);
            }
        }
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.plus(this, coroutineContext);
    }

    public final Throwable q(Object obj) {
        Throwable thC;
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new c0(n(), null, this) : th;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        j0 j0Var = (j0) ((o0) obj);
        Object objW = j0Var.w();
        if (objW instanceof h0) {
            thC = ((h0) objW).c();
        } else if (objW instanceof C0195k) {
            thC = ((C0195k) objW).f2296a;
        } else {
            if (objW instanceof W) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + objW).toString());
            }
            thC = null;
        }
        CancellationException cancellationException = thC instanceof CancellationException ? (CancellationException) thC : null;
        return cancellationException == null ? new c0("Parent job is ".concat(H(objW)), thC, j0Var) : cancellationException;
    }

    public final Object r(h0 h0Var, Object obj) {
        Object obj2 = null;
        Throwable c0Var = null;
        C0195k c0195k = obj instanceof C0195k ? (C0195k) obj : null;
        Throwable th = c0195k != null ? c0195k.f2296a : null;
        synchronized (h0Var) {
            h0Var.e();
            ArrayList arrayListG = h0Var.g(th);
            if (!arrayListG.isEmpty()) {
                int size = arrayListG.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj3 = arrayListG.get(i3);
                    i3++;
                    if (!(((Throwable) obj3) instanceof CancellationException)) {
                        obj2 = obj3;
                        break;
                    }
                }
                c0Var = (Throwable) obj2;
                if (c0Var == null) {
                    c0Var = (Throwable) arrayListG.get(0);
                }
            } else if (h0Var.e()) {
                c0Var = new c0(n(), null, this);
            }
            if (c0Var != null && arrayListG.size() > 1) {
                Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(arrayListG.size()));
                int size2 = arrayListG.size();
                int i4 = 0;
                while (i4 < size2) {
                    Object obj4 = arrayListG.get(i4);
                    i4++;
                    Throwable th2 = (Throwable) obj4;
                    if (th2 != c0Var && th2 != c0Var && !(th2 instanceof CancellationException) && setNewSetFromMap.add(th2)) {
                        ExceptionsKt.addSuppressed(c0Var, th2);
                    }
                }
            }
        }
        if (c0Var != null && c0Var != th) {
            obj = new C0195k(c0Var, false);
        }
        if (c0Var != null && (m(c0Var) || x(c0Var))) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            C0195k c0195k2 = (C0195k) obj;
            c0195k2.getClass();
            C0195k.b.compareAndSet(c0195k2, 0, 1);
        }
        E(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b;
        Object x2 = obj instanceof W ? new X((W) obj) : obj;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, h0Var, x2) && atomicReferenceFieldUpdater.get(this) == h0Var) {
        }
        p(h0Var, obj);
        return obj;
    }

    public final CancellationException s() {
        CancellationException cancellationException;
        Object objW = w();
        if (!(objW instanceof h0)) {
            if (objW instanceof W) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (!(objW instanceof C0195k)) {
                return new c0(getClass().getSimpleName().concat(" has completed normally"), null, this);
            }
            Throwable th = ((C0195k) objW).f2296a;
            cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
            return cancellationException == null ? new c0(n(), th, this) : cancellationException;
        }
        Throwable thC = ((h0) objW).c();
        if (thC == null) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        String strConcat = getClass().getSimpleName().concat(" is cancelling");
        cancellationException = thC instanceof CancellationException ? (CancellationException) thC : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        if (strConcat == null) {
            strConcat = n();
        }
        return new c0(strConcat, thC, this);
    }

    public boolean t() {
        return true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName() + '{' + H(w()) + '}');
        sb.append('@');
        sb.append(A.a(this));
        return sb.toString();
    }

    public boolean u() {
        return false;
    }

    public final l0 v(W w2) {
        l0 l0VarD = w2.d();
        if (l0VarD != null) {
            return l0VarD;
        }
        if (w2 instanceof K) {
            return new l0();
        }
        if (w2 instanceof f0) {
            G((f0) w2);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + w2).toString());
    }

    public final Object w() {
        while (true) {
            Object obj = b.get(this);
            if (!(obj instanceof a2.q)) {
                return obj;
            }
            ((a2.q) obj).a(this);
        }
    }

    public boolean x(Throwable th) {
        return false;
    }

    public final void z(b0 b0Var) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2295c;
        m0 m0Var = m0.b;
        if (b0Var == null) {
            atomicReferenceFieldUpdater.set(this, m0Var);
            return;
        }
        j0 j0Var = (j0) b0Var;
        loop0: while (true) {
            Object objW = j0Var.w();
            boolean z2 = objW instanceof K;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = b;
            if (!z2) {
                if (!(objW instanceof V)) {
                    break;
                }
                l0 l0Var = ((V) objW).b;
                do {
                    if (atomicReferenceFieldUpdater2.compareAndSet(j0Var, objW, l0Var)) {
                        j0Var.getClass();
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater2.get(j0Var) == objW);
            } else {
                if (((K) objW).b) {
                    break;
                }
                K k2 = A.f2260j;
                do {
                    if (atomicReferenceFieldUpdater2.compareAndSet(j0Var, objW, k2)) {
                        j0Var.getClass();
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater2.get(j0Var) == objW);
            }
        }
        I iA = Z.a(j0Var, new C0193i(this), 2);
        Intrinsics.checkNotNull(iA, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        InterfaceC0192h interfaceC0192h = (InterfaceC0192h) iA;
        atomicReferenceFieldUpdater.set(this, interfaceC0192h);
        if (w() instanceof W) {
            return;
        }
        interfaceC0192h.b();
        atomicReferenceFieldUpdater.set(this, m0Var);
    }

    public void F() {
    }

    public void E(Object obj) {
    }

    public void i(Object obj) {
    }

    public void y(Q.c cVar) {
        throw cVar;
    }
}
