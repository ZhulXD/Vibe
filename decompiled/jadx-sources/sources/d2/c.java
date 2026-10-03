package d2;

import V1.C0189e;
import V1.InterfaceC0188d;
import V1.w0;
import a2.u;
import a2.w;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements InterfaceC0188d, w0 {
    public final C0189e b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f3981c;

    public c(e eVar, C0189e c0189e) {
        this.f3981c = eVar;
        this.b = c0189e;
    }

    @Override // V1.w0
    public final void a(u uVar, int i3) {
        this.b.a(uVar, i3);
    }

    @Override // V1.InterfaceC0188d
    public final void c(Object obj, Function1 function1) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e.g;
        e eVar = this.f3981c;
        atomicReferenceFieldUpdater.set(eVar, null);
        b bVar = new b(eVar, this, 0);
        this.b.c((Unit) obj, bVar);
    }

    @Override // V1.InterfaceC0188d
    public final w d(Object obj, Function1 function1) {
        e eVar = this.f3981c;
        b bVar = new b(eVar, this, 1);
        w wVarD = this.b.d((Unit) obj, bVar);
        if (wVarD != null) {
            e.g.set(eVar, null);
        }
        return wVarD;
    }

    @Override // V1.InterfaceC0188d
    public final void g(Object obj) {
        this.b.g(obj);
    }

    @Override // kotlin.coroutines.Continuation
    /* JADX INFO: renamed from: getContext */
    public final CoroutineContext get$context() {
        return this.b.f;
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        this.b.resumeWith(obj);
    }
}
