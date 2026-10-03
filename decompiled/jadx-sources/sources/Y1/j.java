package Y1;

import V1.C0189e;
import a2.w;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.Volatile;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends Z1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2479a = AtomicReferenceFieldUpdater.newUpdater(j.class, Object.class, "_state");

    @Volatile
    private volatile Object _state;

    public final Object a(g gVar) throws Throwable {
        C0189e c0189e = new C0189e(1, IntrinsicsKt.intercepted(gVar));
        c0189e.r();
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2479a;
            w wVar = i.f2478a;
            if (atomicReferenceFieldUpdater.compareAndSet(this, wVar, c0189e)) {
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != wVar) {
                Result.Companion companion = Result.INSTANCE;
                c0189e.resumeWith(Result.m9constructorimpl(Unit.INSTANCE));
                break;
            }
        }
        Object objQ = c0189e.q();
        if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(gVar);
        }
        return objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objQ : Unit.INSTANCE;
    }
}
