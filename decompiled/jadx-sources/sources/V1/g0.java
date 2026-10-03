package V1;

import kotlin.Unit;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g0 extends f0 {
    public final j0 f;
    public final h0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0193i f2283h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f2284i;

    public g0(j0 j0Var, h0 h0Var, C0193i c0193i, Object obj) {
        this.f = j0Var;
        this.g = h0Var;
        this.f2283h = c0193i;
        this.f2284i = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        k((Throwable) obj);
        return Unit.INSTANCE;
    }

    @Override // V1.f0
    public final void k(Throwable th) {
        C0193i c0193iC = j0.C(this.f2283h);
        j0 j0Var = this.f;
        h0 h0Var = this.g;
        Object obj = this.f2284i;
        if (c0193iC != null) {
            while (Z.a(c0193iC.f, new g0(j0Var, h0Var, c0193iC, obj), 1) == m0.b) {
                c0193iC = j0.C(c0193iC);
                if (c0193iC == null) {
                }
            }
            return;
        }
        j0Var.i(j0Var.r(h0Var, obj));
    }
}
