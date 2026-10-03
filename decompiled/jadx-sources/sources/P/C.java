package P;

import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C implements k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ G f1528a;

    public C(G g) {
        this.f1528a = g;
    }

    @Override // P.k0
    public final void b(MotionEvent motionEvent) {
        G g = this.f1528a;
        A1.u0 u0Var = g.f1577s;
        g.f1582x.onTouchEvent(motionEvent);
        VelocityTracker velocityTracker = g.f1578t;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        if (g.f1570l == -1) {
            return;
        }
        int actionMasked = motionEvent.getActionMasked();
        int iFindPointerIndex = motionEvent.findPointerIndex(g.f1570l);
        if (iFindPointerIndex >= 0) {
            g.j(motionEvent, actionMasked, iFindPointerIndex);
        }
        y0 y0Var = g.f1563c;
        if (y0Var == null) {
            return;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (iFindPointerIndex >= 0) {
                    g.s(motionEvent, g.f1573o, iFindPointerIndex);
                    g.p(y0Var);
                    g.f1576r.removeCallbacks(u0Var);
                    u0Var.run();
                    g.f1576r.invalidate();
                    return;
                }
                return;
            }
            if (actionMasked != 3) {
                if (actionMasked != 6) {
                    return;
                }
                int actionIndex = motionEvent.getActionIndex();
                if (motionEvent.getPointerId(actionIndex) == g.f1570l) {
                    g.f1570l = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                    g.s(motionEvent, g.f1573o, actionIndex);
                    return;
                }
                return;
            }
            VelocityTracker velocityTracker2 = g.f1578t;
            if (velocityTracker2 != null) {
                velocityTracker2.clear();
            }
        }
        g.r(null, 0);
        g.f1570l = -1;
    }

    @Override // P.k0
    public final boolean c(MotionEvent motionEvent) {
        int iFindPointerIndex;
        G g = this.f1528a;
        g.f1582x.onTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        D d3 = null;
        if (actionMasked == 0) {
            g.f1570l = motionEvent.getPointerId(0);
            g.f1564d = motionEvent.getX();
            g.f1565e = motionEvent.getY();
            VelocityTracker velocityTracker = g.f1578t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
            }
            g.f1578t = VelocityTracker.obtain();
            if (g.f1563c == null) {
                ArrayList arrayList = g.f1574p;
                if (!arrayList.isEmpty()) {
                    View viewM = g.m(motionEvent);
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        D d4 = (D) arrayList.get(size);
                        if (d4.f1536e.f1807a == viewM) {
                            d3 = d4;
                            break;
                        }
                    }
                }
                if (d3 != null) {
                    y0 y0Var = d3.f1536e;
                    g.f1564d -= d3.f1538i;
                    g.f1565e -= d3.f1539j;
                    g.l(y0Var, true);
                    if (g.f1562a.remove(y0Var.f1807a)) {
                        g.f1571m.getClass();
                        E.a(y0Var);
                    }
                    g.r(y0Var, d3.f);
                    g.s(motionEvent, g.f1573o, 0);
                }
            }
        } else if (actionMasked == 3 || actionMasked == 1) {
            g.f1570l = -1;
            g.r(null, 0);
        } else {
            int i3 = g.f1570l;
            if (i3 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i3)) >= 0) {
                g.j(motionEvent, actionMasked, iFindPointerIndex);
            }
        }
        VelocityTracker velocityTracker2 = g.f1578t;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        return g.f1563c != null;
    }

    @Override // P.k0
    public final void e(boolean z2) {
        if (z2) {
            this.f1528a.r(null, 0);
        }
    }
}
