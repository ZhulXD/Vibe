package a2;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.functions.Function2;

/* JADX INFO: renamed from: a2.c, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0212c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f2576a = new w("CLOSED", 0);

    public static final Object a(u uVar, long j2, Function2 function2) {
        while (true) {
            if (uVar.f2597d >= j2 && !uVar.c()) {
                return uVar;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = AbstractC0213d.b;
            Object obj = atomicReferenceFieldUpdater.get(uVar);
            w wVar = f2576a;
            if (obj == wVar) {
                return wVar;
            }
            u uVar2 = (u) ((AbstractC0213d) obj);
            if (uVar2 == null) {
                uVar2 = (u) function2.invoke(Long.valueOf(uVar.f2597d + 1), uVar);
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(uVar, null, uVar2)) {
                        if (uVar.c()) {
                            uVar.d();
                        }
                    }
                } while (atomicReferenceFieldUpdater.get(uVar) == null);
            }
            uVar = uVar2;
        }
    }
}
