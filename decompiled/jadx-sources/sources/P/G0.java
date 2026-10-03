package P;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class G0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f1585a = new ArrayList();
    public int b = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1586c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1587d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1588e;
    public final /* synthetic */ StaggeredGridLayoutManager f;

    public G0(StaggeredGridLayoutManager staggeredGridLayoutManager, int i3) {
        this.f = staggeredGridLayoutManager;
        this.f1588e = i3;
    }

    public final void a() {
        ArrayList arrayList = this.f1585a;
        View view = (View) arrayList.get(arrayList.size() - 1);
        D0 d3 = (D0) view.getLayoutParams();
        this.f1586c = this.f.f3034r.b(view);
        d3.getClass();
    }

    public final void b() {
        this.f1585a.clear();
        this.b = Integer.MIN_VALUE;
        this.f1586c = Integer.MIN_VALUE;
        this.f1587d = 0;
    }

    public final int c() {
        boolean z2 = this.f.f3039w;
        ArrayList arrayList = this.f1585a;
        return z2 ? e(arrayList.size() - 1, -1) : e(0, arrayList.size());
    }

    public final int d() {
        boolean z2 = this.f.f3039w;
        ArrayList arrayList = this.f1585a;
        return z2 ? e(0, arrayList.size()) : e(arrayList.size() - 1, -1);
    }

    public final int e(int i3, int i4) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f;
        int iK = staggeredGridLayoutManager.f3034r.k();
        int iG = staggeredGridLayoutManager.f3034r.g();
        int i5 = i4 > i3 ? 1 : -1;
        while (i3 != i4) {
            View view = (View) this.f1585a.get(i3);
            int iE = staggeredGridLayoutManager.f3034r.e(view);
            int iB = staggeredGridLayoutManager.f3034r.b(view);
            boolean z2 = iE <= iG;
            boolean z3 = iB >= iK;
            if (z2 && z3 && (iE < iK || iB > iG)) {
                return AbstractC0147g0.K(view);
            }
            i3 += i5;
        }
        return -1;
    }

    public final int f(int i3) {
        int i4 = this.f1586c;
        if (i4 != Integer.MIN_VALUE) {
            return i4;
        }
        if (this.f1585a.size() == 0) {
            return i3;
        }
        a();
        return this.f1586c;
    }

    public final View g(int i3, int i4) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f;
        ArrayList arrayList = this.f1585a;
        View view = null;
        if (i4 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = (View) arrayList.get(size);
                if ((staggeredGridLayoutManager.f3039w && AbstractC0147g0.K(view2) >= i3) || ((!staggeredGridLayoutManager.f3039w && AbstractC0147g0.K(view2) <= i3) || !view2.hasFocusable())) {
                    break;
                }
                size--;
                view = view2;
            }
            return view;
        }
        int size2 = arrayList.size();
        int i5 = 0;
        while (i5 < size2) {
            View view3 = (View) arrayList.get(i5);
            if ((staggeredGridLayoutManager.f3039w && AbstractC0147g0.K(view3) <= i3) || ((!staggeredGridLayoutManager.f3039w && AbstractC0147g0.K(view3) >= i3) || !view3.hasFocusable())) {
                break;
            }
            i5++;
            view = view3;
        }
        return view;
    }

    public final int h(int i3) {
        int i4 = this.b;
        if (i4 != Integer.MIN_VALUE) {
            return i4;
        }
        ArrayList arrayList = this.f1585a;
        if (arrayList.size() == 0) {
            return i3;
        }
        View view = (View) arrayList.get(0);
        D0 d3 = (D0) view.getLayoutParams();
        this.b = this.f.f3034r.e(view);
        d3.getClass();
        return this.b;
    }
}
