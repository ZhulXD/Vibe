package O0;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements View.OnTouchListener {
    public final Dialog b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1507c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1508d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1509e;

    public a(Dialog dialog, Rect rect) {
        this.b = dialog;
        this.f1507c = rect.left;
        this.f1508d = rect.top;
        this.f1509e = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R.id.content);
        int left = viewFindViewById.getLeft() + this.f1507c;
        int width = viewFindViewById.getWidth() + left;
        int top = viewFindViewById.getTop() + this.f1508d;
        if (new RectF(left, top, width, viewFindViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            motionEventObtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            motionEventObtain.setAction(0);
            int i3 = this.f1509e;
            motionEventObtain.setLocation((-i3) - 1, (-i3) - 1);
        }
        view.performClick();
        return this.b.onTouchEvent(motionEventObtain);
    }
}
