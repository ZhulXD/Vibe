package a2;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;

/* JADX INFO: renamed from: a2.b, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0211b extends q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2575a = AtomicReferenceFieldUpdater.newUpdater(AbstractC0211b.class, Object.class, "_consensus");

    @Volatile
    private volatile Object _consensus = AbstractC0210a.f2572a;

    @Override // a2.q
    public final Object a(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2575a;
        Object obj2 = atomicReferenceFieldUpdater.get(this);
        w wVar = AbstractC0210a.f2572a;
        if (obj2 == wVar) {
            w wVarC = c(obj);
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 == wVar) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, wVar, wVarC)) {
                    if (atomicReferenceFieldUpdater.get(this) != wVar) {
                        obj2 = atomicReferenceFieldUpdater.get(this);
                    }
                }
                obj2 = wVarC;
            }
        }
        b(obj, obj2);
        return obj2;
    }

    public abstract void b(Object obj, Object obj2);

    public abstract w c(Object obj);
}
