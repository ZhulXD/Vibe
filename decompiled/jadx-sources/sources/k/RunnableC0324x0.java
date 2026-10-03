package k;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

/* JADX INFO: renamed from: k.x0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0324x0 implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractViewOnTouchListenerC0326y0 f4937c;

    public /* synthetic */ RunnableC0324x0(AbstractViewOnTouchListenerC0326y0 abstractViewOnTouchListenerC0326y0, int i3) {
        this.b = i3;
        this.f4937c = abstractViewOnTouchListenerC0326y0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                ViewParent parent = this.f4937c.f4943e.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                break;
            default:
                AbstractViewOnTouchListenerC0326y0 abstractViewOnTouchListenerC0326y0 = this.f4937c;
                abstractViewOnTouchListenerC0326y0.a();
                View view = abstractViewOnTouchListenerC0326y0.f4943e;
                if (view.isEnabled() && !view.isLongClickable() && abstractViewOnTouchListenerC0326y0.c()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    abstractViewOnTouchListenerC0326y0.f4944h = true;
                    break;
                }
                break;
        }
    }
}
