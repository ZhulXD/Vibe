package S;

import java.util.ArrayList;

/* JADX INFO: renamed from: S.l, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0179l extends w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f1993a;
    public final /* synthetic */ ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1994c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1995d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1996e;
    public final /* synthetic */ ArrayList f;
    public final /* synthetic */ C0181n g;

    public C0179l(C0181n c0181n, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
        this.g = c0181n;
        this.f1993a = obj;
        this.b = arrayList;
        this.f1994c = obj2;
        this.f1995d = arrayList2;
        this.f1996e = obj3;
        this.f = arrayList3;
    }

    @Override // S.w, S.t
    public final void a(v vVar) {
        vVar.B(this);
    }

    @Override // S.w, S.t
    public final void f(v vVar) {
        C0181n c0181n = this.g;
        Object obj = this.f1993a;
        if (obj != null) {
            c0181n.replaceTargets(obj, this.b, null);
        }
        Object obj2 = this.f1994c;
        if (obj2 != null) {
            c0181n.replaceTargets(obj2, this.f1995d, null);
        }
        Object obj3 = this.f1996e;
        if (obj3 != null) {
            c0181n.replaceTargets(obj3, this.f, null);
        }
    }
}
