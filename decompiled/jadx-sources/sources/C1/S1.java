package C1;

import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class S1 implements View.OnTouchListener {
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            view.animate().setStartDelay(0L).scaleX(0.88f).scaleY(0.88f).setDuration(90L).setInterpolator(new DecelerateInterpolator()).start();
            return false;
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return false;
        }
        view.animate().setStartDelay(0L).scaleX(1.0f).scaleY(1.0f).setDuration(280L).setInterpolator(new OvershootInterpolator(3.0f)).start();
        return false;
    }
}
