package S;

import android.view.View;
import java.util.ArrayList;

/* JADX INFO: renamed from: S.k, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0178k implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f1992a;
    public final /* synthetic */ ArrayList b;

    public C0178k(View view, ArrayList arrayList) {
        this.f1992a = view;
        this.b = arrayList;
    }

    @Override // S.t
    public final void a(v vVar) {
        vVar.B(this);
        this.f1992a.setVisibility(8);
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((View) arrayList.get(i3)).setVisibility(0);
        }
    }

    @Override // S.t
    public final void f(v vVar) {
        vVar.B(this);
        vVar.a(this);
    }

    @Override // S.t
    public final void b() {
    }

    @Override // S.t
    public final void c() {
    }

    @Override // S.t
    public final void e(v vVar) {
    }
}
