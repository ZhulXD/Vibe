package a2;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2587a = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "_cur");

    @Volatile
    private volatile Object _cur = new o(8, false);

    public final boolean a(Runnable runnable) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2587a;
            o oVar = (o) atomicReferenceFieldUpdater.get(this);
            int iA = oVar.a(runnable);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                o oVarC = oVar.c();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, oVar, oVarC) && atomicReferenceFieldUpdater.get(this) == oVar) {
                }
            } else if (iA == 2) {
                return false;
            }
        }
    }

    public final void b() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2587a;
            o oVar = (o) atomicReferenceFieldUpdater.get(this);
            if (oVar.b()) {
                return;
            }
            o oVarC = oVar.c();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, oVar, oVarC) && atomicReferenceFieldUpdater.get(this) == oVar) {
            }
        }
    }

    public final int c() {
        o oVar = (o) f2587a.get(this);
        oVar.getClass();
        long j2 = o.f.get(oVar);
        return (((int) ((j2 & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j2))) & 1073741823;
    }

    public final Object d() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2587a;
            o oVar = (o) atomicReferenceFieldUpdater.get(this);
            Object objD = oVar.d();
            if (objD != o.g) {
                return objD;
            }
            o oVarC = oVar.c();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, oVar, oVarC) && atomicReferenceFieldUpdater.get(this) == oVar) {
            }
        }
    }
}
