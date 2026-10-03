package P;

import android.view.View;
import java.util.concurrent.ExecutorService;

/* JADX INFO: renamed from: P.c, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0138c {
    public static ExecutorService b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f1652a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C1.T f1653c = new C1.T(4);

    public static int a(u0 u0Var, Q q2, View view, View view2, AbstractC0147g0 abstractC0147g0, boolean z2) {
        if (abstractC0147g0.v() == 0 || u0Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z2) {
            return Math.abs(AbstractC0147g0.K(view) - AbstractC0147g0.K(view2)) + 1;
        }
        return Math.min(q2.l(), q2.b(view2) - q2.e(view));
    }

    public static int b(u0 u0Var, Q q2, View view, View view2, AbstractC0147g0 abstractC0147g0, boolean z2, boolean z3) {
        if (abstractC0147g0.v() == 0 || u0Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z3 ? Math.max(0, (u0Var.b() - Math.max(AbstractC0147g0.K(view), AbstractC0147g0.K(view2))) - 1) : Math.max(0, Math.min(AbstractC0147g0.K(view), AbstractC0147g0.K(view2)));
        if (z2) {
            return Math.round((iMax * (Math.abs(q2.b(view2) - q2.e(view)) / (Math.abs(AbstractC0147g0.K(view) - AbstractC0147g0.K(view2)) + 1))) + (q2.k() - q2.e(view)));
        }
        return iMax;
    }

    public static int c(u0 u0Var, Q q2, View view, View view2, AbstractC0147g0 abstractC0147g0, boolean z2) {
        if (abstractC0147g0.v() == 0 || u0Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z2) {
            return u0Var.b();
        }
        return (int) (((q2.b(view2) - q2.e(view)) / (Math.abs(AbstractC0147g0.K(view) - AbstractC0147g0.K(view2)) + 1)) * u0Var.b());
    }
}
