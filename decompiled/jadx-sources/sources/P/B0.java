package P;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class B0 extends l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1527a = false;
    public final /* synthetic */ T b;

    public B0(T t2) {
        this.b = t2;
    }

    @Override // P.l0
    public final void a(RecyclerView recyclerView, int i3) {
        if (i3 == 0 && this.f1527a) {
            this.f1527a = false;
            this.b.h();
        }
    }

    @Override // P.l0
    public final void b(RecyclerView recyclerView, int i3, int i4) {
        if (i3 == 0 && i4 == 0) {
            return;
        }
        this.f1527a = true;
    }
}
