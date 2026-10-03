package k;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class H0 implements View.OnTouchListener {
    public final /* synthetic */ I0 b;

    public H0(I0 i3) {
        this.b = i3;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        I0 i3 = this.b;
        E0 e2 = i3.f4698s;
        Handler handler = i3.f4702w;
        D d3 = i3.f4683A;
        int action = motionEvent.getAction();
        int x2 = (int) motionEvent.getX();
        int y2 = (int) motionEvent.getY();
        if (action == 0 && d3 != null && d3.isShowing() && x2 >= 0 && x2 < d3.getWidth() && y2 >= 0 && y2 < d3.getHeight()) {
            handler.postDelayed(e2, 250L);
            return false;
        }
        if (action != 1) {
            return false;
        }
        handler.removeCallbacks(e2);
        return false;
    }
}
