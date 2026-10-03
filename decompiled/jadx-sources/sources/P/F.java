package P;

import C1.N0;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class F extends GestureDetector.SimpleOnGestureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1552a = true;
    public final /* synthetic */ G b;

    public F(G g) {
        this.b = g;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent motionEvent) {
        View viewM;
        y0 y0VarJ;
        G g = this.b;
        N0 n0 = g.f1571m;
        if (!this.f1552a || (viewM = g.m(motionEvent)) == null || (y0VarJ = g.f1576r.J(viewM)) == null) {
            return;
        }
        RecyclerView recyclerView = g.f1576r;
        if ((E.b(n0.f(recyclerView, y0VarJ), ViewCompat.getLayoutDirection(recyclerView)) & 16711680) != 0) {
            int pointerId = motionEvent.getPointerId(0);
            int i3 = g.f1570l;
            if (pointerId == i3) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i3);
                float x2 = motionEvent.getX(iFindPointerIndex);
                float y2 = motionEvent.getY(iFindPointerIndex);
                g.f1564d = x2;
                g.f1565e = y2;
                g.f1567i = 0.0f;
                g.f1566h = 0.0f;
                n0.getClass();
            }
        }
    }
}
