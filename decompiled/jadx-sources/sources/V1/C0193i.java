package V1;

import kotlin.Unit;

/* JADX INFO: renamed from: V1.i, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0193i extends d0 implements InterfaceC0192h {
    public final j0 f;

    public C0193i(j0 j0Var) {
        this.f = j0Var;
    }

    @Override // V1.InterfaceC0192h
    public final boolean c(Throwable th) {
        return j().o(th);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        k((Throwable) obj);
        return Unit.INSTANCE;
    }

    @Override // V1.f0
    public final void k(Throwable th) {
        this.f.k(j());
    }
}
