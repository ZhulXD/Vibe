package P;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: renamed from: P.i, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0150i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final V f1690a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public View f1693e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1692d = 0;
    public final C0148h b = new C0148h();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f1691c = new ArrayList();

    public C0150i(V v2) {
        this.f1690a = v2;
    }

    public final void a(View view, int i3, boolean z2) {
        RecyclerView recyclerView = this.f1690a.f1642a;
        int childCount = i3 < 0 ? recyclerView.getChildCount() : f(i3);
        this.b.e(childCount, z2);
        if (z2) {
            i(view);
        }
        recyclerView.addView(view, childCount);
        y0 y0VarK = RecyclerView.K(view);
        W w2 = recyclerView.f2999n;
        if (w2 != null && y0VarK != null) {
            w2.i(y0VarK);
        }
        ArrayList arrayList = recyclerView.f2958D;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((InterfaceC0151i0) recyclerView.f2958D.get(size)).a(view);
            }
        }
    }

    public final void b(View view, int i3, ViewGroup.LayoutParams layoutParams, boolean z2) {
        RecyclerView recyclerView = this.f1690a.f1642a;
        int childCount = i3 < 0 ? recyclerView.getChildCount() : f(i3);
        this.b.e(childCount, z2);
        if (z2) {
            i(view);
        }
        y0 y0VarK = RecyclerView.K(view);
        if (y0VarK != null) {
            if (!y0VarK.j() && !y0VarK.o()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(y0VarK);
                throw new IllegalArgumentException(E.b.k(recyclerView, sb));
            }
            if (RecyclerView.f2945C0) {
                Log.d("RecyclerView", "reAttach " + y0VarK);
            }
            y0VarK.f1813j &= -257;
        } else if (RecyclerView.f2944B0) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            sb2.append(", index: ");
            sb2.append(childCount);
            throw new IllegalArgumentException(E.b.k(recyclerView, sb2));
        }
        recyclerView.attachViewToParent(view, childCount, layoutParams);
    }

    public final void c(int i3) {
        int iF = f(i3);
        this.b.f(iF);
        RecyclerView recyclerView = this.f1690a.f1642a;
        View childAt = recyclerView.getChildAt(iF);
        if (childAt != null) {
            y0 y0VarK = RecyclerView.K(childAt);
            if (y0VarK != null) {
                if (y0VarK.j() && !y0VarK.o()) {
                    StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                    sb.append(y0VarK);
                    throw new IllegalArgumentException(E.b.k(recyclerView, sb));
                }
                if (RecyclerView.f2945C0) {
                    Log.d("RecyclerView", "tmpDetach " + y0VarK);
                }
                y0VarK.a(256);
            }
        } else if (RecyclerView.f2944B0) {
            StringBuilder sb2 = new StringBuilder("No view at offset ");
            sb2.append(iF);
            throw new IllegalArgumentException(E.b.k(recyclerView, sb2));
        }
        recyclerView.detachViewFromParent(iF);
    }

    public final View d(int i3) {
        return this.f1690a.f1642a.getChildAt(f(i3));
    }

    public final int e() {
        return this.f1690a.f1642a.getChildCount() - this.f1691c.size();
    }

    public final int f(int i3) {
        if (i3 < 0) {
            return -1;
        }
        int childCount = this.f1690a.f1642a.getChildCount();
        int i4 = i3;
        while (i4 < childCount) {
            C0148h c0148h = this.b;
            int iB = i3 - (i4 - c0148h.b(i4));
            if (iB == 0) {
                while (c0148h.d(i4)) {
                    i4++;
                }
                return i4;
            }
            i4 += iB;
        }
        return -1;
    }

    public final View g(int i3) {
        return this.f1690a.f1642a.getChildAt(i3);
    }

    public final int h() {
        return this.f1690a.f1642a.getChildCount();
    }

    public final void i(View view) {
        this.f1691c.add(view);
        y0 y0VarK = RecyclerView.K(view);
        if (y0VarK != null) {
            View view2 = y0VarK.f1807a;
            RecyclerView recyclerView = this.f1690a.f1642a;
            int i3 = y0VarK.f1820q;
            if (i3 != -1) {
                y0VarK.f1819p = i3;
            } else {
                y0VarK.f1819p = ViewCompat.getImportantForAccessibility(view2);
            }
            if (!recyclerView.N()) {
                ViewCompat.setImportantForAccessibility(view2, 4);
            } else {
                y0VarK.f1820q = 4;
                recyclerView.f3013v0.add(y0VarK);
            }
        }
    }

    public final void j(View view) {
        y0 y0VarK;
        if (!this.f1691c.remove(view) || (y0VarK = RecyclerView.K(view)) == null) {
            return;
        }
        RecyclerView recyclerView = this.f1690a.f1642a;
        int i3 = y0VarK.f1819p;
        if (recyclerView.N()) {
            y0VarK.f1820q = i3;
            recyclerView.f3013v0.add(y0VarK);
        } else {
            ViewCompat.setImportantForAccessibility(y0VarK.f1807a, i3);
        }
        y0VarK.f1819p = 0;
    }

    public final String toString() {
        return this.b.toString() + ", hidden list:" + this.f1691c.size();
    }
}
