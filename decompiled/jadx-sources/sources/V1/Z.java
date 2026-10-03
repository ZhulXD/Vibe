package V1;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class Z {
    /* JADX WARN: Code duplicated, block: B:102:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:0x00cb A[EDGE_INSN: B:103:0x00cb->B:81:0x00cb BREAK  A[LOOP:0: B:20:0x002b->B:111:0x002b], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x002b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:79:0x00c5  */
    public static I a(b0 b0Var, f0 f0Var, int i3) {
        f0 y2;
        Throwable thC;
        boolean z2 = (i3 & 1) == 0;
        boolean z3 = (i3 & 2) != 0;
        j0 j0Var = (j0) b0Var;
        j0Var.getClass();
        if (z2) {
            y2 = f0Var instanceof d0 ? (d0) f0Var : null;
            if (y2 == null) {
                y2 = new Y(f0Var);
            }
        } else {
            y2 = f0Var;
        }
        y2.f2282e = j0Var;
        loop0: while (true) {
            Object objW = j0Var.w();
            if (objW instanceof K) {
                K k2 = (K) objW;
                if (k2.b) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j0.b;
                    while (!atomicReferenceFieldUpdater.compareAndSet(j0Var, objW, y2)) {
                        if (atomicReferenceFieldUpdater.get(j0Var) != objW) {
                        }
                    }
                    break loop0;
                }
                l0 l0Var = new l0();
                W v2 = k2.b ? l0Var : new V(l0Var);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = j0.b;
                while (!atomicReferenceFieldUpdater2.compareAndSet(j0Var, k2, v2) && atomicReferenceFieldUpdater2.get(j0Var) == k2) {
                }
            } else {
                if (!(objW instanceof W)) {
                    if (z3) {
                        C0195k c0195k = objW instanceof C0195k ? (C0195k) objW : null;
                        f0Var.invoke(c0195k != null ? c0195k.f2296a : null);
                    }
                    return m0.b;
                }
                W w2 = (W) objW;
                l0 l0VarD = w2.d();
                if (l0VarD == null) {
                    Intrinsics.checkNotNull(objW, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    j0Var.G((f0) objW);
                } else {
                    I i4 = m0.b;
                    if (z2 && (objW instanceof h0)) {
                        synchronized (objW) {
                            try {
                                thC = ((h0) objW).c();
                                if (thC == null || ((f0Var instanceof C0193i) && !((h0) objW).f())) {
                                    if (j0Var.h((W) objW, l0VarD, y2)) {
                                        if (thC == null) {
                                            return y2;
                                        }
                                        i4 = y2;
                                    }
                                }
                                Unit unit = Unit.INSTANCE;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (thC != null) {
                            if (z3) {
                                f0Var.invoke(thC);
                            }
                            return i4;
                        }
                        if (j0Var.h(w2, l0VarD, y2)) {
                            break;
                            break;
                        }
                    } else {
                        thC = null;
                        if (thC != null) {
                            if (z3) {
                                f0Var.invoke(thC);
                            }
                            return i4;
                        }
                        if (j0Var.h(w2, l0VarD, y2)) {
                            break;
                        }
                    }
                }
            }
        }
        return y2;
    }
}
