package P;

import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class V {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f1642a;

    public /* synthetic */ V(RecyclerView recyclerView) {
        this.f1642a = recyclerView;
    }

    public void a(C0134a c0134a) {
        int i3 = c0134a.f1645a;
        RecyclerView recyclerView = this.f1642a;
        if (i3 == 1) {
            recyclerView.f3000o.b0(c0134a.b, c0134a.f1646c);
            return;
        }
        if (i3 == 2) {
            recyclerView.f3000o.e0(c0134a.b, c0134a.f1646c);
        } else if (i3 == 4) {
            recyclerView.f3000o.f0(c0134a.b, c0134a.f1646c);
        } else {
            if (i3 != 8) {
                return;
            }
            recyclerView.f3000o.d0(c0134a.b, c0134a.f1646c);
        }
    }

    public y0 b(int i3) {
        RecyclerView recyclerView = this.f1642a;
        int iH = recyclerView.g.h();
        y0 y0Var = null;
        for (int i4 = 0; i4 < iH; i4++) {
            y0 y0VarK = RecyclerView.K(recyclerView.g.g(i4));
            if (y0VarK != null && !y0VarK.h() && y0VarK.f1808c == i3) {
                if (!recyclerView.g.f1691c.contains(y0VarK.f1807a)) {
                    y0Var = y0VarK;
                    break;
                }
                y0Var = y0VarK;
            }
        }
        if (y0Var != null) {
            if (!recyclerView.g.f1691c.contains(y0Var.f1807a)) {
                return y0Var;
            }
            if (RecyclerView.f2945C0) {
                Log.d("RecyclerView", "assuming view holder cannot be find because it is hidden");
            }
        }
        return null;
    }

    public void c(int i3, int i4) {
        int i5;
        int i6;
        RecyclerView recyclerView = this.f1642a;
        int iH = recyclerView.g.h();
        int i7 = i4 + i3;
        for (int i8 = 0; i8 < iH; i8++) {
            View viewG = recyclerView.g.g(i8);
            y0 y0VarK = RecyclerView.K(viewG);
            if (y0VarK != null && !y0VarK.o() && (i6 = y0VarK.f1808c) >= i3 && i6 < i7) {
                y0VarK.a(2);
                y0VarK.a(1024);
                ((C0149h0) viewG.getLayoutParams()).f1688c = true;
            }
        }
        o0 o0Var = recyclerView.f2981d;
        ArrayList arrayList = o0Var.f1722c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            y0 y0Var = (y0) arrayList.get(size);
            if (y0Var != null && (i5 = y0Var.f1808c) >= i3 && i5 < i7) {
                y0Var.a(2);
                o0Var.g(size);
            }
        }
        recyclerView.f2998m0 = true;
    }

    public void d(int i3, int i4) {
        RecyclerView recyclerView = this.f1642a;
        int iH = recyclerView.g.h();
        for (int i5 = 0; i5 < iH; i5++) {
            y0 y0VarK = RecyclerView.K(recyclerView.g.g(i5));
            if (y0VarK != null && !y0VarK.o() && y0VarK.f1808c >= i3) {
                if (RecyclerView.f2945C0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForInsert attached child " + i5 + " holder " + y0VarK + " now at position " + (y0VarK.f1808c + i4));
                }
                y0VarK.l(i4, false);
                recyclerView.f2990i0.f = true;
            }
        }
        ArrayList arrayList = recyclerView.f2981d.f1722c;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            y0 y0Var = (y0) arrayList.get(i6);
            if (y0Var != null && y0Var.f1808c >= i3) {
                if (RecyclerView.f2945C0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForInsert cached " + i6 + " holder " + y0Var + " now at position " + (y0Var.f1808c + i4));
                }
                y0Var.l(i4, false);
            }
        }
        recyclerView.requestLayout();
        recyclerView.f2996l0 = true;
    }

    public void e(int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        RecyclerView recyclerView = this.f1642a;
        int iH = recyclerView.g.h();
        if (i3 < i4) {
            i6 = i3;
            i5 = i4;
            i7 = -1;
        } else {
            i5 = i3;
            i6 = i4;
            i7 = 1;
        }
        boolean z2 = false;
        for (int i13 = 0; i13 < iH; i13++) {
            y0 y0VarK = RecyclerView.K(recyclerView.g.g(i13));
            if (y0VarK != null && (i12 = y0VarK.f1808c) >= i6 && i12 <= i5) {
                if (RecyclerView.f2945C0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForMove attached child " + i13 + " holder " + y0VarK);
                }
                if (y0VarK.f1808c == i3) {
                    y0VarK.l(i4 - i3, false);
                } else {
                    y0VarK.l(i7, false);
                }
                recyclerView.f2990i0.f = true;
            }
        }
        ArrayList arrayList = recyclerView.f2981d.f1722c;
        if (i3 < i4) {
            i9 = i3;
            i8 = i4;
            i10 = -1;
        } else {
            i8 = i3;
            i9 = i4;
            i10 = 1;
        }
        int size = arrayList.size();
        int i14 = 0;
        while (i14 < size) {
            y0 y0Var = (y0) arrayList.get(i14);
            if (y0Var != null && (i11 = y0Var.f1808c) >= i9 && i11 <= i8) {
                if (i11 == i3) {
                    y0Var.l(i4 - i3, z2);
                } else {
                    y0Var.l(i10, z2);
                }
                if (RecyclerView.f2945C0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForMove cached child " + i14 + " holder " + y0Var);
                }
            }
            i14++;
            z2 = false;
        }
        recyclerView.requestLayout();
        recyclerView.f2996l0 = true;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0020  */
    public void f(y0 y0Var, C0137b0 c0137b0, C0137b0 c0137b1) {
        boolean zG;
        RecyclerView recyclerView = this.f1642a;
        recyclerView.getClass();
        y0Var.n(false);
        C0158p c0158p = (C0158p) recyclerView.f2967N;
        if (c0137b0 != null) {
            c0158p.getClass();
            int i3 = c0137b0.f1651a;
            int i4 = c0137b1.f1651a;
            if (i3 == i4 && c0137b0.b == c0137b1.b) {
                c0158p.l(y0Var);
                y0Var.f1807a.setAlpha(0.0f);
                c0158p.f1728i.add(y0Var);
                zG = true;
            } else {
                zG = c0158p.g(y0Var, i3, c0137b0.b, i4, c0137b1.b);
            }
        } else {
            c0158p.l(y0Var);
            y0Var.f1807a.setAlpha(0.0f);
            c0158p.f1728i.add(y0Var);
            zG = true;
        }
        if (zG) {
            recyclerView.U();
        }
    }

    public void g(y0 y0Var, C0137b0 c0137b0, C0137b0 c0137b1) {
        boolean zG;
        RecyclerView recyclerView = this.f1642a;
        recyclerView.f2981d.l(y0Var);
        recyclerView.h(y0Var);
        y0Var.n(false);
        C0158p c0158p = (C0158p) recyclerView.f2967N;
        c0158p.getClass();
        int i3 = c0137b0.f1651a;
        int i4 = c0137b0.b;
        View view = y0Var.f1807a;
        int left = c0137b1 == null ? view.getLeft() : c0137b1.f1651a;
        int top = c0137b1 == null ? view.getTop() : c0137b1.b;
        if (y0Var.h() || (i3 == left && i4 == top)) {
            c0158p.l(y0Var);
            c0158p.f1727h.add(y0Var);
            zG = true;
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            zG = c0158p.g(y0Var, i3, i4, left, top);
        }
        if (zG) {
            recyclerView.U();
        }
    }

    public void h(int i3) {
        RecyclerView recyclerView = this.f1642a;
        View childAt = recyclerView.getChildAt(i3);
        if (childAt != null) {
            recyclerView.r(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeViewAt(i3);
    }
}
