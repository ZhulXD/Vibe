package D;

import A1.u0;
import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final d f738v = new d(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f739a;
    public final int b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float[] f741d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float[] f742e;
    public float[] f;
    public float[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f743h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f744i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f745j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f746k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public VelocityTracker f747l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float f748m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float f749n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f750o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final OverScroller f751p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final p000a.a f752q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public View f753r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f754s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final CoordinatorLayout f755t;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f740c = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final u0 f756u = new u0(1, this);

    public e(Context context, CoordinatorLayout coordinatorLayout, p000a.a aVar) {
        if (aVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f755t = coordinatorLayout;
        this.f752q = aVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f750o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.b = viewConfiguration.getScaledTouchSlop();
        this.f748m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f749n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f751p = new OverScroller(context, f738v);
    }

    public final void a() {
        this.f740c = -1;
        float[] fArr = this.f741d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f742e, 0.0f);
            Arrays.fill(this.f, 0.0f);
            Arrays.fill(this.g, 0.0f);
            Arrays.fill(this.f743h, 0);
            Arrays.fill(this.f744i, 0);
            Arrays.fill(this.f745j, 0);
            this.f746k = 0;
        }
        VelocityTracker velocityTracker = this.f747l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f747l = null;
        }
    }

    public final void b(View view, int i3) {
        ViewParent parent = view.getParent();
        CoordinatorLayout coordinatorLayout = this.f755t;
        if (parent != coordinatorLayout) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + coordinatorLayout + ")");
        }
        this.f753r = view;
        this.f740c = i3;
        this.f752q.y(view, i3);
        n(1);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0044 A[RETURN] */
    public final boolean c(View view, float f, float f3) {
        if (view != null) {
            p000a.a aVar = this.f752q;
            boolean z2 = aVar.o(view) > 0;
            boolean z3 = aVar.p() > 0;
            if (z2 && z3) {
                float f4 = (f3 * f3) + (f * f);
                int i3 = this.b;
                if (f4 > i3 * i3) {
                    return true;
                }
            } else if (!z2 ? !(!z3 || Math.abs(f3) <= this.b) : Math.abs(f) > this.b) {
                return true;
            }
        }
        return false;
    }

    public final void d(int i3) {
        float[] fArr = this.f741d;
        if (fArr != null) {
            int i4 = this.f746k;
            int i5 = 1 << i3;
            if ((i4 & i5) != 0) {
                fArr[i3] = 0.0f;
                this.f742e[i3] = 0.0f;
                this.f[i3] = 0.0f;
                this.g[i3] = 0.0f;
                this.f743h[i3] = 0;
                this.f744i[i3] = 0;
                this.f745j[i3] = 0;
                this.f746k = (~i5) & i4;
            }
        }
    }

    public final int e(int i3, int i4, int i5) {
        if (i3 == 0) {
            return 0;
        }
        int width = this.f755t.getWidth();
        float f = width / 2;
        float fSin = (((float) Math.sin((Math.min(1.0f, Math.abs(i3) / width) - 0.5f) * 0.47123894f)) * f) + f;
        int iAbs = Math.abs(i4);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fSin / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i3) / i5) + 1.0f) * 256.0f), 600);
    }

    public final boolean f() {
        if (this.f739a == 2) {
            OverScroller overScroller = this.f751p;
            boolean zComputeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.f753r.getLeft();
            int top = currY - this.f753r.getTop();
            if (left != 0) {
                ViewCompat.offsetLeftAndRight(this.f753r, left);
            }
            if (top != 0) {
                ViewCompat.offsetTopAndBottom(this.f753r, top);
            }
            if (left != 0 || top != 0) {
                this.f752q.A(this.f753r, currX, currY);
            }
            if (zComputeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                this.f755t.post(this.f756u);
            }
        }
        return this.f739a == 2;
    }

    public final View g(int i3, int i4) {
        CoordinatorLayout coordinatorLayout = this.f755t;
        for (int childCount = coordinatorLayout.getChildCount() - 1; childCount >= 0; childCount--) {
            this.f752q.getClass();
            View childAt = coordinatorLayout.getChildAt(childCount);
            if (i3 >= childAt.getLeft() && i3 < childAt.getRight() && i4 >= childAt.getTop() && i4 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final boolean h(int i3, int i4, int i5, int i6) {
        float f;
        float f3;
        float f4;
        float f5;
        int left = this.f753r.getLeft();
        int top = this.f753r.getTop();
        int i7 = i3 - left;
        int i8 = i4 - top;
        OverScroller overScroller = this.f751p;
        if (i7 == 0 && i8 == 0) {
            overScroller.abortAnimation();
            n(0);
            return false;
        }
        View view = this.f753r;
        int i9 = (int) this.f749n;
        int i10 = (int) this.f748m;
        int iAbs = Math.abs(i5);
        if (iAbs < i9) {
            i5 = 0;
        } else if (iAbs > i10) {
            i5 = i5 > 0 ? i10 : -i10;
        }
        int iAbs2 = Math.abs(i6);
        if (iAbs2 < i9) {
            i6 = 0;
        } else if (iAbs2 > i10) {
            i6 = i6 > 0 ? i10 : -i10;
        }
        int iAbs3 = Math.abs(i7);
        int iAbs4 = Math.abs(i8);
        int iAbs5 = Math.abs(i5);
        int iAbs6 = Math.abs(i6);
        int i11 = iAbs5 + iAbs6;
        int i12 = iAbs3 + iAbs4;
        if (i5 != 0) {
            f = iAbs5;
            f3 = i11;
        } else {
            f = iAbs3;
            f3 = i12;
        }
        float f6 = f / f3;
        if (i6 != 0) {
            f4 = iAbs6;
            f5 = i11;
        } else {
            f4 = iAbs4;
            f5 = i12;
        }
        float f7 = f4 / f5;
        p000a.a aVar = this.f752q;
        overScroller.startScroll(left, top, i7, i8, (int) ((e(i8, i6, aVar.p()) * f7) + (e(i7, i5, aVar.o(view)) * f6)));
        n(2);
        return true;
    }

    public final boolean i(int i3) {
        if ((this.f746k & (1 << i3)) != 0) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i3 + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public final void j(MotionEvent motionEvent) {
        int i3;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f747l == null) {
            this.f747l = VelocityTracker.obtain();
        }
        this.f747l.addMovement(motionEvent);
        int i4 = 0;
        if (actionMasked == 0) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewG = g((int) x2, (int) y2);
            l(pointerId, x2, y2);
            q(viewG, pointerId);
            int i5 = this.f743h[pointerId];
            return;
        }
        if (actionMasked == 1) {
            if (this.f739a == 1) {
                k();
            }
            a();
            return;
        }
        p000a.a aVar = this.f752q;
        if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.f739a == 1) {
                    this.f754s = true;
                    aVar.B(this.f753r, 0.0f, 0.0f);
                    this.f754s = false;
                    if (this.f739a == 1) {
                        n(0);
                    }
                }
                a();
                return;
            }
            if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x3 = motionEvent.getX(actionIndex);
                float y3 = motionEvent.getY(actionIndex);
                l(pointerId2, x3, y3);
                if (this.f739a == 0) {
                    q(g((int) x3, (int) y3), pointerId2);
                    int i6 = this.f743h[pointerId2];
                    return;
                }
                int i7 = (int) x3;
                int i8 = (int) y3;
                View view = this.f753r;
                if (view != null && i7 >= view.getLeft() && i7 < view.getRight() && i8 >= view.getTop() && i8 < view.getBottom()) {
                    i4 = 1;
                }
                if (i4 != 0) {
                    q(this.f753r, pointerId2);
                    return;
                }
                return;
            }
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.f739a == 1 && pointerId3 == this.f740c) {
                int pointerCount = motionEvent.getPointerCount();
                while (true) {
                    if (i4 >= pointerCount) {
                        i3 = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i4);
                    if (pointerId4 != this.f740c) {
                        View viewG2 = g((int) motionEvent.getX(i4), (int) motionEvent.getY(i4));
                        View view2 = this.f753r;
                        if (viewG2 == view2 && q(view2, pointerId4)) {
                            i3 = this.f740c;
                            break;
                        }
                    }
                    i4++;
                }
                if (i3 == -1) {
                    k();
                }
            }
            d(pointerId3);
            return;
        }
        if (this.f739a == 1) {
            if (i(this.f740c)) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f740c);
                float x4 = motionEvent.getX(iFindPointerIndex);
                float y4 = motionEvent.getY(iFindPointerIndex);
                float[] fArr = this.f;
                int i9 = this.f740c;
                int i10 = (int) (x4 - fArr[i9]);
                int i11 = (int) (y4 - this.g[i9]);
                int left = this.f753r.getLeft() + i10;
                int top = this.f753r.getTop() + i11;
                int left2 = this.f753r.getLeft();
                int top2 = this.f753r.getTop();
                if (i10 != 0) {
                    left = aVar.e(this.f753r, left);
                    ViewCompat.offsetLeftAndRight(this.f753r, left - left2);
                }
                if (i11 != 0) {
                    top = aVar.f(this.f753r, top);
                    ViewCompat.offsetTopAndBottom(this.f753r, top - top2);
                }
                if (i10 != 0 || i11 != 0) {
                    aVar.A(this.f753r, left, top);
                }
                m(motionEvent);
                return;
            }
            return;
        }
        int pointerCount2 = motionEvent.getPointerCount();
        while (i4 < pointerCount2) {
            int pointerId5 = motionEvent.getPointerId(i4);
            if (i(pointerId5)) {
                float x5 = motionEvent.getX(i4);
                float y5 = motionEvent.getY(i4);
                float f = x5 - this.f741d[pointerId5];
                float f3 = y5 - this.f742e[pointerId5];
                Math.abs(f);
                Math.abs(f3);
                int i12 = this.f743h[pointerId5];
                Math.abs(f3);
                Math.abs(f);
                int i13 = this.f743h[pointerId5];
                Math.abs(f);
                Math.abs(f3);
                int i14 = this.f743h[pointerId5];
                Math.abs(f3);
                Math.abs(f);
                int i15 = this.f743h[pointerId5];
                if (this.f739a != 1) {
                    View viewG3 = g((int) x5, (int) y5);
                    if (c(viewG3, f, f3) && q(viewG3, pointerId5)) {
                        break;
                    }
                } else {
                    break;
                }
            }
            i4++;
        }
        m(motionEvent);
    }

    public final void k() {
        VelocityTracker velocityTracker = this.f747l;
        float f = this.f748m;
        velocityTracker.computeCurrentVelocity(1000, f);
        float xVelocity = this.f747l.getXVelocity(this.f740c);
        float fAbs = Math.abs(xVelocity);
        float f3 = this.f749n;
        if (fAbs < f3) {
            xVelocity = 0.0f;
        } else if (fAbs > f) {
            xVelocity = xVelocity > 0.0f ? f : -f;
        }
        float yVelocity = this.f747l.getYVelocity(this.f740c);
        float fAbs2 = Math.abs(yVelocity);
        if (fAbs2 < f3) {
            f = 0.0f;
        } else if (fAbs2 <= f) {
            f = yVelocity;
        } else if (yVelocity <= 0.0f) {
            f = -f;
        }
        this.f754s = true;
        this.f752q.B(this.f753r, xVelocity, f);
        this.f754s = false;
        if (this.f739a == 1) {
            n(0);
        }
    }

    public final void l(int i3, float f, float f3) {
        float[] fArr = this.f741d;
        if (fArr == null || fArr.length <= i3) {
            int i4 = i3 + 1;
            float[] fArr2 = new float[i4];
            float[] fArr3 = new float[i4];
            float[] fArr4 = new float[i4];
            float[] fArr5 = new float[i4];
            int[] iArr = new int[i4];
            int[] iArr2 = new int[i4];
            int[] iArr3 = new int[i4];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f742e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f743h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f744i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f745j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f741d = fArr2;
            this.f742e = fArr3;
            this.f = fArr4;
            this.g = fArr5;
            this.f743h = iArr;
            this.f744i = iArr2;
            this.f745j = iArr3;
        }
        float[] fArr9 = this.f741d;
        this.f[i3] = f;
        fArr9[i3] = f;
        float[] fArr10 = this.f742e;
        this.g[i3] = f3;
        fArr10[i3] = f3;
        int[] iArr7 = this.f743h;
        int i5 = (int) f;
        int i6 = (int) f3;
        CoordinatorLayout coordinatorLayout = this.f755t;
        int left = coordinatorLayout.getLeft();
        int i7 = this.f750o;
        int i8 = i5 < left + i7 ? 1 : 0;
        if (i6 < coordinatorLayout.getTop() + i7) {
            i8 |= 4;
        }
        if (i5 > coordinatorLayout.getRight() - i7) {
            i8 |= 2;
        }
        if (i6 > coordinatorLayout.getBottom() - i7) {
            i8 |= 8;
        }
        iArr7[i3] = i8;
        this.f746k = (1 << i3) | this.f746k;
    }

    public final void m(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i3 = 0; i3 < pointerCount; i3++) {
            int pointerId = motionEvent.getPointerId(i3);
            if (i(pointerId)) {
                float x2 = motionEvent.getX(i3);
                float y2 = motionEvent.getY(i3);
                this.f[pointerId] = x2;
                this.g[pointerId] = y2;
            }
        }
    }

    public final void n(int i3) {
        this.f755t.removeCallbacks(this.f756u);
        if (this.f739a != i3) {
            this.f739a = i3;
            this.f752q.z(i3);
            if (this.f739a == 0) {
                this.f753r = null;
            }
        }
    }

    public final boolean o(int i3, int i4) {
        if (this.f754s) {
            return h(i3, i4, (int) this.f747l.getXVelocity(this.f740c), (int) this.f747l.getYVelocity(this.f740c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:61:0x0114  */
    public final boolean p(MotionEvent motionEvent) {
        View viewG;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f747l == null) {
            this.f747l = VelocityTracker.obtain();
        }
        this.f747l.addMovement(motionEvent);
        if (actionMasked == 0) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            l(pointerId, x2, y2);
            View viewG2 = g((int) x2, (int) y2);
            if (viewG2 == this.f753r && this.f739a == 2) {
                q(viewG2, pointerId);
            }
            int i3 = this.f743h[pointerId];
        } else if (actionMasked == 1) {
            a();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                a();
            } else if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x3 = motionEvent.getX(actionIndex);
                float y3 = motionEvent.getY(actionIndex);
                l(pointerId2, x3, y3);
                int i4 = this.f739a;
                if (i4 == 0) {
                    int i5 = this.f743h[pointerId2];
                } else if (i4 == 2 && (viewG = g((int) x3, (int) y3)) == this.f753r) {
                    q(viewG, pointerId2);
                }
            } else if (actionMasked == 6) {
                d(motionEvent.getPointerId(actionIndex));
            }
        } else if (this.f741d != null && this.f742e != null) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i6 = 0; i6 < pointerCount; i6++) {
                int pointerId3 = motionEvent.getPointerId(i6);
                if (i(pointerId3)) {
                    float x4 = motionEvent.getX(i6);
                    float y4 = motionEvent.getY(i6);
                    float f = x4 - this.f741d[pointerId3];
                    float f3 = y4 - this.f742e[pointerId3];
                    View viewG3 = g((int) x4, (int) y4);
                    boolean z2 = viewG3 != null && c(viewG3, f, f3);
                    if (!z2) {
                        Math.abs(f);
                        Math.abs(f3);
                        int i7 = this.f743h[pointerId3];
                        Math.abs(f3);
                        Math.abs(f);
                        int i8 = this.f743h[pointerId3];
                        Math.abs(f);
                        Math.abs(f3);
                        int i9 = this.f743h[pointerId3];
                        Math.abs(f3);
                        Math.abs(f);
                        int i10 = this.f743h[pointerId3];
                        if (this.f739a != 1) {
                            break;
                        }
                    } else {
                        int left = viewG3.getLeft();
                        p000a.a aVar = this.f752q;
                        int iE = aVar.e(viewG3, ((int) f) + left);
                        int top = viewG3.getTop();
                        int iF = aVar.f(viewG3, ((int) f3) + top);
                        int iO = aVar.o(viewG3);
                        int iP = aVar.p();
                        if ((iO == 0 || (iO > 0 && iE == left)) && (iP == 0 || (iP > 0 && iF == top))) {
                            break;
                        }
                        Math.abs(f);
                        Math.abs(f3);
                        int i11 = this.f743h[pointerId3];
                        Math.abs(f3);
                        Math.abs(f);
                        int i12 = this.f743h[pointerId3];
                        Math.abs(f);
                        Math.abs(f3);
                        int i13 = this.f743h[pointerId3];
                        Math.abs(f3);
                        Math.abs(f);
                        int i14 = this.f743h[pointerId3];
                        if (this.f739a != 1 || (z2 && q(viewG3, pointerId3))) {
                            break;
                        }
                    }
                }
            }
            m(motionEvent);
        }
        return this.f739a == 1;
    }

    public final boolean q(View view, int i3) {
        if (view == this.f753r && this.f740c == i3) {
            return true;
        }
        if (view == null || !this.f752q.N(view, i3)) {
            return false;
        }
        this.f740c = i3;
        b(view, i3);
        return true;
    }
}
