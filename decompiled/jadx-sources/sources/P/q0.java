package P;

import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class q0 extends Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1740a;
    public final /* synthetic */ Object b;

    public /* synthetic */ q0(int i3, Object obj) {
        this.f1740a = i3;
        this.b = obj;
    }

    @Override // P.Y
    public final void a() {
        switch (this.f1740a) {
            case 0:
                RecyclerView recyclerView = (RecyclerView) this.b;
                recyclerView.k(null);
                recyclerView.f2990i0.f = true;
                recyclerView.W(true);
                if (!recyclerView.f.g()) {
                    recyclerView.requestLayout();
                }
                break;
            case 1:
                ((androidx.viewpager2.adapter.c) this.b).b(true);
                break;
            default:
                ((p007c1.j) this.b).a();
                break;
        }
    }

    @Override // P.Y
    public final void b(int i3, int i4) {
        switch (this.f1740a) {
            case 0:
                RecyclerView recyclerView = (RecyclerView) this.b;
                recyclerView.k(null);
                C0136b c0136b = recyclerView.f;
                ArrayList arrayList = c0136b.b;
                if (i4 >= 1) {
                    arrayList.add(c0136b.h(4, i3, i4));
                    c0136b.f |= 4;
                    if (arrayList.size() == 1) {
                        f();
                    }
                    break;
                }
                break;
            case 1:
                a();
                break;
            default:
                ((p007c1.j) this.b).a();
                break;
        }
    }

    @Override // P.Y
    public final void c(int i3, int i4) {
        switch (this.f1740a) {
            case 0:
                RecyclerView recyclerView = (RecyclerView) this.b;
                recyclerView.k(null);
                C0136b c0136b = recyclerView.f;
                ArrayList arrayList = c0136b.b;
                if (i4 >= 1) {
                    arrayList.add(c0136b.h(1, i3, i4));
                    c0136b.f |= 1;
                    if (arrayList.size() == 1) {
                        f();
                    }
                    break;
                }
                break;
            case 1:
                a();
                break;
            default:
                ((p007c1.j) this.b).a();
                break;
        }
    }

    @Override // P.Y
    public final void d(int i3, int i4) {
        switch (this.f1740a) {
            case 0:
                RecyclerView recyclerView = (RecyclerView) this.b;
                recyclerView.k(null);
                C0136b c0136b = recyclerView.f;
                ArrayList arrayList = c0136b.b;
                if (i3 != i4) {
                    arrayList.add(c0136b.h(8, i3, i4));
                    c0136b.f |= 8;
                    if (arrayList.size() == 1) {
                        f();
                    }
                    break;
                }
                break;
            case 1:
                a();
                break;
            default:
                ((p007c1.j) this.b).a();
                break;
        }
    }

    @Override // P.Y
    public final void e(int i3, int i4) {
        switch (this.f1740a) {
            case 0:
                RecyclerView recyclerView = (RecyclerView) this.b;
                recyclerView.k(null);
                C0136b c0136b = recyclerView.f;
                ArrayList arrayList = c0136b.b;
                if (i4 >= 1) {
                    arrayList.add(c0136b.h(2, i3, i4));
                    c0136b.f |= 2;
                    if (arrayList.size() == 1) {
                        f();
                    }
                    break;
                }
                break;
            case 1:
                a();
                break;
            default:
                ((p007c1.j) this.b).a();
                break;
        }
    }

    public void f() {
        RecyclerView recyclerView = (RecyclerView) this.b;
        if (RecyclerView.f2949G0 && recyclerView.f3010u && recyclerView.f3008t) {
            ViewCompat.postOnAnimation(recyclerView, recyclerView.f2991j);
        } else {
            recyclerView.f2956B = true;
            recyclerView.requestLayout();
        }
    }
}
