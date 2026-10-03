package P;

import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: renamed from: P.c0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0139c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public V f1654a;
    public ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f1655c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f1656d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f1657e;
    public long f;

    public static void b(y0 y0Var) {
        RecyclerView recyclerView;
        int i3 = y0Var.f1813j;
        if (y0Var.f() || (i3 & 4) != 0 || (recyclerView = y0Var.f1821r) == null) {
            return;
        }
        recyclerView.H(y0Var);
    }

    public abstract boolean a(y0 y0Var, y0 y0Var2, C0137b0 c0137b0, C0137b0 c0137b1);

    /* JADX WARN: Code duplicated, block: B:33:0x006a  */
    /* JADX WARN: Code duplicated, block: B:35:0x0078  */
    /* JADX WARN: Instruction removed from duplicated block: B:35:0x0078, please report this as an issue */
    public final void c(y0 y0Var) {
        V v2 = this.f1654a;
        if (v2 != null) {
            RecyclerView recyclerView = v2.f1642a;
            boolean z2 = true;
            y0Var.n(true);
            View view = y0Var.f1807a;
            if (y0Var.f1811h != null && y0Var.f1812i == null) {
                y0Var.f1811h = null;
            }
            y0Var.f1812i = null;
            if ((y0Var.f1813j & 16) != 0) {
                return;
            }
            o0 o0Var = recyclerView.f2981d;
            recyclerView.j0();
            C0150i c0150i = recyclerView.g;
            C0148h c0148h = c0150i.b;
            V v3 = c0150i.f1690a;
            int i3 = c0150i.f1692d;
            if (i3 != 1) {
                if (i3 == 2) {
                    throw new IllegalStateException("Cannot call removeViewIfHidden within removeViewIfHidden");
                }
                try {
                    c0150i.f1692d = 2;
                    int iIndexOfChild = v3.f1642a.indexOfChild(view);
                    if (iIndexOfChild == -1) {
                        c0150i.j(view);
                    } else if (c0148h.d(iIndexOfChild)) {
                        c0148h.f(iIndexOfChild);
                        c0150i.j(view);
                        v3.h(iIndexOfChild);
                    } else {
                        c0150i.f1692d = 0;
                    }
                    c0150i.f1692d = 0;
                    if (z2) {
                        y0 y0VarK = RecyclerView.K(view);
                        o0Var.l(y0VarK);
                        o0Var.i(y0VarK);
                        if (RecyclerView.f2945C0) {
                            Log.d("RecyclerView", "after removing animated view: " + view + ", " + recyclerView);
                        }
                    }
                    recyclerView.k0(!z2);
                    if (z2 && y0Var.j()) {
                        recyclerView.removeDetachedView(view, false);
                        return;
                    }
                } catch (Throwable th) {
                    c0150i.f1692d = 0;
                    throw th;
                }
            }
            if (c0150i.f1693e != view) {
                throw new IllegalStateException("Cannot call removeViewIfHidden within removeView(At) for a different view");
            }
            z2 = false;
            if (z2) {
                y0 y0VarK2 = RecyclerView.K(view);
                o0Var.l(y0VarK2);
                o0Var.i(y0VarK2);
                if (RecyclerView.f2945C0) {
                    Log.d("RecyclerView", "after removing animated view: " + view + ", " + recyclerView);
                }
            }
            recyclerView.k0(!z2);
            if (z2) {
            }
        }
    }

    public abstract void d(y0 y0Var);

    public abstract void e();

    public abstract boolean f();
}
