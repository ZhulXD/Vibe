package S;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class x extends w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p041q.e f2038a;
    public final /* synthetic */ y b;

    public x(y yVar, p041q.e eVar) {
        this.b = yVar;
        this.f2038a = eVar;
    }

    @Override // S.w, S.t
    public final void a(v vVar) {
        ((ArrayList) this.f2038a.get(this.b.f2039c)).remove(vVar);
        vVar.B(this);
    }
}
