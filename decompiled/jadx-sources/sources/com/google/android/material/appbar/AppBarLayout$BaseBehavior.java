package com.google.android.material.appbar;

import C0.a;
import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class AppBarLayout$BaseBehavior<T> extends a {
    public boolean b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3282d;
    public VelocityTracker f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3281c = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3283e = -1;

    public AppBarLayout$BaseBehavior() {
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0046  */
    /* JADX WARN: Code duplicated, block: B:23:0x004a  */
    /* JADX WARN: Code duplicated, block: B:25:0x004e  */
    @Override // z.a
    public final boolean j(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        int iFindPointerIndex;
        if (this.f3283e < 0) {
            this.f3283e = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.b) {
            int i3 = this.f3281c;
            if (i3 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i3)) != -1) {
                int y2 = (int) motionEvent.getY(iFindPointerIndex);
                if (Math.abs(y2 - this.f3282d) > this.f3283e) {
                    this.f3282d = y2;
                    return true;
                }
                if (motionEvent.getActionMasked() != 0) {
                    this.f3281c = -1;
                    motionEvent.getX();
                    motionEvent.getY();
                    throw new ClassCastException();
                }
                velocityTracker = this.f;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                }
            }
        } else {
            if (motionEvent.getActionMasked() != 0) {
                this.f3281c = -1;
                motionEvent.getX();
                motionEvent.getY();
                throw new ClassCastException();
            }
            velocityTracker = this.f;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }
        return false;
    }

    @Override // C0.a, z.a
    public final boolean k(CoordinatorLayout coordinatorLayout, View view, int i3) {
        throw new ClassCastException();
    }

    @Override // z.a
    public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i3, int i4, int i5) {
        throw new ClassCastException();
    }

    @Override // z.a
    public final /* synthetic */ void n(CoordinatorLayout coordinatorLayout, View view, View view2, int i3, int i4, int[] iArr, int i5) {
        throw new ClassCastException();
    }

    @Override // z.a
    public final void o(CoordinatorLayout coordinatorLayout, View view, int i3, int i4, int i5, int[] iArr) {
        throw new ClassCastException();
    }

    @Override // z.a
    public final void q(View view, Parcelable parcelable) {
        throw new ClassCastException();
    }

    @Override // z.a
    public final Parcelable r(View view) {
        throw new ClassCastException();
    }

    @Override // z.a
    public final boolean s(View view, int i3, int i4) {
        throw new ClassCastException();
    }

    @Override // z.a
    public final void t(View view, View view2, int i3) {
        throw new ClassCastException();
    }

    /* JADX WARN: Code duplicated, block: B:28:0x005c  */
    /* JADX WARN: Code duplicated, block: B:32:0x0064 A[RETURN] */
    @Override // z.a
    public final boolean u(View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        int i3 = motionEvent.getActionIndex() == 0 ? 1 : 0;
                        this.f3281c = motionEvent.getPointerId(i3);
                        this.f3282d = (int) (motionEvent.getY(i3) + 0.5f);
                    }
                }
                velocityTracker = this.f;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                }
                if (this.b) {
                    return true;
                }
            } else {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f3281c);
                if (iFindPointerIndex != -1) {
                    this.f3282d = (int) motionEvent.getY(iFindPointerIndex);
                    view.getClass();
                    throw new ClassCastException();
                }
            }
            return false;
        }
        VelocityTracker velocityTracker2 = this.f;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
            this.f.computeCurrentVelocity(1000);
            this.f.getYVelocity(this.f3281c);
            view.getClass();
            throw new ClassCastException();
        }
        this.b = false;
        this.f3281c = -1;
        VelocityTracker velocityTracker3 = this.f;
        if (velocityTracker3 != null) {
            velocityTracker3.recycle();
            this.f = null;
        }
        velocityTracker = this.f;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        if (this.b) {
            return false;
        }
        return true;
    }

    public AppBarLayout$BaseBehavior(Context context, AttributeSet attributeSet) {
    }
}
