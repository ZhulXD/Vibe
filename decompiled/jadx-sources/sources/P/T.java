package P;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class T extends j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RecyclerView f1638a;
    public final B0 b = new B0(this);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public P f1639c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public P f1640d;

    public static int c(View view, Q q2) {
        return ((q2.c(view) / 2) + q2.e(view)) - ((q2.l() / 2) + q2.k());
    }

    public static View d(AbstractC0147g0 abstractC0147g0, Q q2) {
        int iV = abstractC0147g0.v();
        View view = null;
        if (iV == 0) {
            return null;
        }
        int iL = (q2.l() / 2) + q2.k();
        int i3 = IntCompanionObject.MAX_VALUE;
        for (int i4 = 0; i4 < iV; i4++) {
            View viewU = abstractC0147g0.u(i4);
            int iAbs = Math.abs(((q2.c(viewU) / 2) + q2.e(viewU)) - iL);
            if (iAbs < i3) {
                view = viewU;
                i3 = iAbs;
            }
        }
        return view;
    }

    public final void a(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f1638a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        B0 b3 = this.b;
        if (recyclerView2 != null) {
            ArrayList arrayList = recyclerView2.f2994k0;
            if (arrayList != null) {
                arrayList.remove(b3);
            }
            this.f1638a.setOnFlingListener(null);
        }
        this.f1638a = recyclerView;
        if (recyclerView != null) {
            if (recyclerView.getOnFlingListener() != null) {
                throw new IllegalStateException("An instance of OnFlingListener already set.");
            }
            this.f1638a.j(b3);
            this.f1638a.setOnFlingListener(this);
            new Scroller(this.f1638a.getContext(), new DecelerateInterpolator());
            h();
        }
    }

    public final int[] b(AbstractC0147g0 abstractC0147g0, View view) {
        int[] iArr = new int[2];
        if (abstractC0147g0.d()) {
            iArr[0] = c(view, f(abstractC0147g0));
        } else {
            iArr[0] = 0;
        }
        if (abstractC0147g0.e()) {
            iArr[1] = c(view, g(abstractC0147g0));
            return iArr;
        }
        iArr[1] = 0;
        return iArr;
    }

    public View e(AbstractC0147g0 abstractC0147g0) {
        if (abstractC0147g0.e()) {
            return d(abstractC0147g0, g(abstractC0147g0));
        }
        if (abstractC0147g0.d()) {
            return d(abstractC0147g0, f(abstractC0147g0));
        }
        return null;
    }

    public final Q f(AbstractC0147g0 abstractC0147g0) {
        P p2 = this.f1640d;
        if (p2 == null || ((AbstractC0147g0) p2.b) != abstractC0147g0) {
            this.f1640d = new P(abstractC0147g0, 0);
        }
        return this.f1640d;
    }

    public final Q g(AbstractC0147g0 abstractC0147g0) {
        P p2 = this.f1639c;
        if (p2 == null || ((AbstractC0147g0) p2.b) != abstractC0147g0) {
            this.f1639c = new P(abstractC0147g0, 1);
        }
        return this.f1639c;
    }

    public final void h() {
        AbstractC0147g0 layoutManager;
        View viewE;
        RecyclerView recyclerView = this.f1638a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewE = e(layoutManager)) == null) {
            return;
        }
        int[] iArrB = b(layoutManager, viewE);
        int i3 = iArrB[0];
        if (i3 == 0 && iArrB[1] == 0) {
            return;
        }
        this.f1638a.h0(i3, iArrB[1], false);
    }
}
