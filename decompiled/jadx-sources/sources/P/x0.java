package P;

import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class x0 implements Runnable {
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public OverScroller f1800d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Interpolator f1801e;
    public boolean f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f1802h;

    public x0(RecyclerView recyclerView) {
        this.f1802h = recyclerView;
        D.d dVar = RecyclerView.f2952J0;
        this.f1801e = dVar;
        this.f = false;
        this.g = false;
        this.f1800d = new OverScroller(recyclerView.getContext(), dVar);
    }

    public final void a(int i3, int i4) {
        RecyclerView recyclerView = this.f1802h;
        recyclerView.setScrollState(2);
        this.f1799c = 0;
        this.b = 0;
        Interpolator interpolator = this.f1801e;
        D.d dVar = RecyclerView.f2952J0;
        if (interpolator != dVar) {
            this.f1801e = dVar;
            this.f1800d = new OverScroller(recyclerView.getContext(), dVar);
        }
        this.f1800d.fling(0, 0, i3, i4, Integer.MIN_VALUE, IntCompanionObject.MAX_VALUE, Integer.MIN_VALUE, IntCompanionObject.MAX_VALUE);
        b();
    }

    public final void b() {
        if (this.f) {
            this.g = true;
            return;
        }
        RecyclerView recyclerView = this.f1802h;
        recyclerView.removeCallbacks(this);
        ViewCompat.postOnAnimation(recyclerView, this);
    }

    public final void c(int i3, int i4, int i5, Interpolator interpolator) {
        RecyclerView recyclerView = this.f1802h;
        if (i5 == Integer.MIN_VALUE) {
            int iAbs = Math.abs(i3);
            int iAbs2 = Math.abs(i4);
            boolean z2 = iAbs > iAbs2;
            int width = z2 ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z2) {
                iAbs = iAbs2;
            }
            i5 = Math.min((int) (((iAbs / width) + 1.0f) * 300.0f), 2000);
        }
        int i6 = i5;
        if (interpolator == null) {
            interpolator = RecyclerView.f2952J0;
        }
        if (this.f1801e != interpolator) {
            this.f1801e = interpolator;
            this.f1800d = new OverScroller(recyclerView.getContext(), interpolator);
        }
        this.f1799c = 0;
        this.b = 0;
        recyclerView.setScrollState(2);
        this.f1800d.startScroll(0, 0, i3, i4, i6);
        b();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        RecyclerView recyclerView = this.f1802h;
        int[] iArr = recyclerView.f3011u0;
        if (recyclerView.f3000o == null) {
            recyclerView.removeCallbacks(this);
            this.f1800d.abortAnimation();
            return;
        }
        this.g = false;
        this.f = true;
        recyclerView.p();
        OverScroller overScroller = this.f1800d;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i8 = currX - this.b;
            int i9 = currY - this.f1799c;
            this.b = currX;
            this.f1799c = currY;
            int iO = RecyclerView.o(i8, recyclerView.f2964J, recyclerView.f2965L, recyclerView.getWidth());
            int iO2 = RecyclerView.o(i9, recyclerView.K, recyclerView.f2966M, recyclerView.getHeight());
            int[] iArr2 = recyclerView.f3011u0;
            iArr2[0] = 0;
            iArr2[1] = 0;
            if (recyclerView.dispatchNestedPreScroll(iO, iO2, iArr2, null, 1)) {
                iO -= iArr[0];
                iO2 -= iArr[1];
            }
            if (recyclerView.getOverScrollMode() != 2) {
                recyclerView.n(iO, iO2);
            }
            if (recyclerView.f2999n != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                recyclerView.e0(iO, iO2, iArr);
                int i10 = iArr[0];
                int i11 = iArr[1];
                int i12 = iO - i10;
                int i13 = iO2 - i11;
                M m2 = recyclerView.f3000o.f1677e;
                if (m2 != null && !m2.f1622d && m2.f1623e) {
                    int iB = recyclerView.f2990i0.b();
                    if (iB == 0) {
                        m2.i();
                    } else if (m2.f1620a >= iB) {
                        m2.f1620a = iB - 1;
                        m2.g(i10, i11);
                    } else {
                        m2.g(i10, i11);
                    }
                }
                i3 = i12;
                i5 = i10;
                i4 = i13;
                i6 = i11;
            } else {
                i3 = iO;
                i4 = iO2;
                i5 = 0;
                i6 = 0;
            }
            if (!recyclerView.f3003q.isEmpty()) {
                recyclerView.invalidate();
            }
            int[] iArr3 = recyclerView.f3011u0;
            iArr3[0] = 0;
            iArr3[1] = 0;
            recyclerView.dispatchNestedScroll(i5, i6, i3, i4, null, 1, iArr3);
            int i14 = i3 - iArr[0];
            int i15 = i4 - iArr[1];
            if (i5 != 0 || i6 != 0) {
                recyclerView.v(i5, i6);
            }
            if (!recyclerView.awakenScrollBars()) {
                recyclerView.invalidate();
            }
            boolean z2 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i14 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i15 != 0));
            M m3 = recyclerView.f3000o.f1677e;
            if ((m3 == null || !m3.f1622d) && z2) {
                if (recyclerView.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    if (i14 < 0) {
                        i7 = -currVelocity;
                    } else {
                        i7 = i14 > 0 ? currVelocity : 0;
                    }
                    if (i15 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i15 <= 0) {
                        currVelocity = 0;
                    }
                    if (i7 < 0) {
                        recyclerView.x();
                        if (recyclerView.f2964J.isFinished()) {
                            recyclerView.f2964J.onAbsorb(-i7);
                        }
                    } else if (i7 > 0) {
                        recyclerView.y();
                        if (recyclerView.f2965L.isFinished()) {
                            recyclerView.f2965L.onAbsorb(i7);
                        }
                    }
                    if (currVelocity < 0) {
                        recyclerView.z();
                        if (recyclerView.K.isFinished()) {
                            recyclerView.K.onAbsorb(-currVelocity);
                        }
                    } else if (currVelocity > 0) {
                        recyclerView.w();
                        if (recyclerView.f2966M.isFinished()) {
                            recyclerView.f2966M.onAbsorb(currVelocity);
                        }
                    }
                    if (i7 != 0 || currVelocity != 0) {
                        ViewCompat.postInvalidateOnAnimation(recyclerView);
                    }
                }
                if (RecyclerView.f2950H0) {
                    C0166y c0166y = recyclerView.f2988h0;
                    int[] iArr4 = c0166y.f1804c;
                    if (iArr4 != null) {
                        Arrays.fill(iArr4, -1);
                    }
                    c0166y.f1805d = 0;
                }
            } else {
                b();
                A a3 = recyclerView.f2986g0;
                if (a3 != null) {
                    a3.a(recyclerView, i5, i6);
                }
            }
        }
        M m4 = recyclerView.f3000o.f1677e;
        if (m4 != null && m4.f1622d) {
            m4.g(0, 0);
        }
        this.f = false;
        if (this.g) {
            recyclerView.removeCallbacks(this);
            ViewCompat.postOnAnimation(recyclerView, this);
        } else {
            recyclerView.setScrollState(0);
            recyclerView.stopNestedScroll(1);
        }
    }
}
