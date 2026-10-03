package k;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: renamed from: k.y0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractViewOnTouchListenerC0326y0 implements View.OnTouchListener, View.OnAttachStateChangeListener {
    public final float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f4943e;
    public RunnableC0324x0 f;
    public RunnableC0324x0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f4944h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4945i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f4946j = new int[2];

    public AbstractViewOnTouchListenerC0326y0(View view) {
        this.f4943e = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.b = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f4941c = tapTimeout;
        this.f4942d = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        RunnableC0324x0 runnableC0324x0 = this.g;
        View view = this.f4943e;
        if (runnableC0324x0 != null) {
            view.removeCallbacks(runnableC0324x0);
        }
        RunnableC0324x0 runnableC0324x1 = this.f;
        if (runnableC0324x1 != null) {
            view.removeCallbacks(runnableC0324x1);
        }
    }

    public abstract p024j.G b();

    public abstract boolean c();

    public boolean d() {
        p024j.G gB = b();
        if (gB == null || !gB.b()) {
            return true;
        }
        gB.dismiss();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005c  */
    /* JADX WARN: Code duplicated, block: B:24:0x0062  */
    /* JADX WARN: Code duplicated, block: B:25:0x0065  */
    /* JADX WARN: Code duplicated, block: B:50:0x00cb  */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z2;
        C0320v0 c0320v0F;
        boolean z3 = this.f4944h;
        View view2 = this.f4943e;
        if (z3) {
            p024j.G gB = b();
            if (gB != null && gB.b() && (c0320v0F = gB.f()) != null && c0320v0F.isShown()) {
                MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                int[] iArr = this.f4946j;
                view2.getLocationOnScreen(iArr);
                motionEventObtainNoHistory.offsetLocation(iArr[0], iArr[1]);
                c0320v0F.getLocationOnScreen(iArr);
                motionEventObtainNoHistory.offsetLocation(-iArr[0], -iArr[1]);
                boolean zB = c0320v0F.b(motionEventObtainNoHistory, this.f4945i);
                motionEventObtainNoHistory.recycle();
                int actionMasked = motionEvent.getActionMasked();
                boolean z4 = (actionMasked == 1 || actionMasked == 3) ? false : true;
                if (zB && z4) {
                    z2 = true;
                } else if (d()) {
                    z2 = false;
                } else {
                    z2 = true;
                }
            } else if (d()) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            if (view2.isEnabled()) {
                int actionMasked2 = motionEvent.getActionMasked();
                if (actionMasked2 == 0) {
                    this.f4945i = motionEvent.getPointerId(0);
                    if (this.f == null) {
                        this.f = new RunnableC0324x0(this, 0);
                    }
                    view2.postDelayed(this.f, this.f4941c);
                    if (this.g == null) {
                        this.g = new RunnableC0324x0(this, 1);
                    }
                    view2.postDelayed(this.g, this.f4942d);
                } else if (actionMasked2 == 1) {
                    a();
                } else if (actionMasked2 == 2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f4945i);
                    if (iFindPointerIndex >= 0) {
                        float x2 = motionEvent.getX(iFindPointerIndex);
                        float y2 = motionEvent.getY(iFindPointerIndex);
                        float f = this.b;
                        float f3 = -f;
                        if (x2 < f3 || y2 < f3 || x2 >= (view2.getRight() - view2.getLeft()) + f || y2 >= (view2.getBottom() - view2.getTop()) + f) {
                            a();
                            view2.getParent().requestDisallowInterceptTouchEvent(true);
                            if (c()) {
                                z2 = true;
                            }
                        }
                    }
                } else if (actionMasked2 == 3) {
                    a();
                }
                z2 = false;
            } else {
                z2 = false;
            }
            if (z2) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                view2.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
        this.f4944h = z2;
        return z2 || z3;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f4944h = false;
        this.f4945i = -1;
        RunnableC0324x0 runnableC0324x0 = this.f;
        if (runnableC0324x0 != null) {
            this.f4943e.removeCallbacks(runnableC0324x0);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
