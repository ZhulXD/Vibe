package P;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1620a = -1;
    public RecyclerView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AbstractC0147g0 f1621c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1622d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1623e;
    public View f;
    public final s0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1624h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearInterpolator f1625i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DecelerateInterpolator f1626j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PointF f1627k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final DisplayMetrics f1628l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1629m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f1630n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1631o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1632p;

    public M(Context context) {
        s0 s0Var = new s0();
        s0Var.f1750d = -1;
        s0Var.f = false;
        s0Var.g = 0;
        s0Var.f1748a = 0;
        s0Var.b = 0;
        s0Var.f1749c = Integer.MIN_VALUE;
        s0Var.f1751e = null;
        this.g = s0Var;
        this.f1625i = new LinearInterpolator();
        this.f1626j = new DecelerateInterpolator();
        this.f1629m = false;
        this.f1631o = 0;
        this.f1632p = 0;
        this.f1628l = context.getResources().getDisplayMetrics();
    }

    public static int a(int i3, int i4, int i5, int i6, int i7) {
        if (i7 == -1) {
            return i5 - i3;
        }
        if (i7 != 0) {
            if (i7 == 1) {
                return i6 - i4;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i8 = i5 - i3;
        if (i8 > 0) {
            return i8;
        }
        int i9 = i6 - i4;
        if (i9 < 0) {
            return i9;
        }
        return 0;
    }

    public int b(View view, int i3) {
        AbstractC0147g0 abstractC0147g0 = this.f1621c;
        if (abstractC0147g0 == null || !abstractC0147g0.d()) {
            return 0;
        }
        C0149h0 c0149h0 = (C0149h0) view.getLayoutParams();
        return a(AbstractC0147g0.A(view) - ((ViewGroup.MarginLayoutParams) c0149h0).leftMargin, AbstractC0147g0.D(view) + ((ViewGroup.MarginLayoutParams) c0149h0).rightMargin, abstractC0147g0.H(), abstractC0147g0.f1684n - abstractC0147g0.I(), i3);
    }

    public int c(View view, int i3) {
        AbstractC0147g0 abstractC0147g0 = this.f1621c;
        if (abstractC0147g0 == null || !abstractC0147g0.e()) {
            return 0;
        }
        C0149h0 c0149h0 = (C0149h0) view.getLayoutParams();
        return a(AbstractC0147g0.E(view) - ((ViewGroup.MarginLayoutParams) c0149h0).topMargin, AbstractC0147g0.y(view) + ((ViewGroup.MarginLayoutParams) c0149h0).bottomMargin, abstractC0147g0.J(), abstractC0147g0.f1685o - abstractC0147g0.G(), i3);
    }

    public float d(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int e(int i3) {
        float fAbs = Math.abs(i3);
        if (!this.f1629m) {
            this.f1630n = d(this.f1628l);
            this.f1629m = true;
        }
        return (int) Math.ceil(fAbs * this.f1630n);
    }

    public PointF f(int i3) {
        Object obj = this.f1621c;
        if (obj instanceof t0) {
            return ((t0) obj).a(i3);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + t0.class.getCanonicalName());
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00f8  */
    public final void g(int i3, int i4) {
        PointF pointFF;
        RecyclerView recyclerView = this.b;
        if (this.f1620a == -1 || recyclerView == null) {
            i();
        }
        if (this.f1622d && this.f == null && this.f1621c != null && (pointFF = f(this.f1620a)) != null) {
            float f = pointFF.x;
            if (f != 0.0f || pointFF.y != 0.0f) {
                recyclerView.e0((int) Math.signum(f), (int) Math.signum(pointFF.y), null);
            }
        }
        this.f1622d = false;
        View view = this.f;
        s0 s0Var = this.g;
        if (view != null) {
            this.b.getClass();
            y0 y0VarK = RecyclerView.K(view);
            if ((y0VarK != null ? y0VarK.b() : -1) == this.f1620a) {
                View view2 = this.f;
                u0 u0Var = recyclerView.f2990i0;
                h(view2, s0Var);
                s0Var.a(recyclerView);
                i();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.f = null;
            }
        }
        if (this.f1623e) {
            u0 u0Var2 = recyclerView.f2990i0;
            if (this.b.f3000o.v() == 0) {
                i();
            } else {
                int i5 = this.f1631o;
                int i6 = i5 - i3;
                if (i5 * i6 <= 0) {
                    i6 = 0;
                }
                this.f1631o = i6;
                int i7 = this.f1632p;
                int i8 = i7 - i4;
                if (i7 * i8 <= 0) {
                    i8 = 0;
                }
                this.f1632p = i8;
                if (i6 == 0 && i8 == 0) {
                    PointF pointFF2 = f(this.f1620a);
                    if (pointFF2 != null) {
                        float f3 = pointFF2.x;
                        if (f3 == 0.0f && pointFF2.y == 0.0f) {
                            s0Var.f1750d = this.f1620a;
                            i();
                        } else {
                            float f4 = pointFF2.y;
                            float fSqrt = (float) Math.sqrt((f4 * f4) + (f3 * f3));
                            float f5 = pointFF2.x / fSqrt;
                            pointFF2.x = f5;
                            float f6 = pointFF2.y / fSqrt;
                            pointFF2.y = f6;
                            this.f1627k = pointFF2;
                            this.f1631o = (int) (f5 * 10000.0f);
                            this.f1632p = (int) (f6 * 10000.0f);
                            int iE = e(10000);
                            int i9 = (int) (this.f1631o * 1.2f);
                            int i10 = (int) (this.f1632p * 1.2f);
                            s0Var.f1748a = i9;
                            s0Var.b = i10;
                            s0Var.f1749c = (int) (iE * 1.2f);
                            s0Var.f1751e = this.f1625i;
                            s0Var.f = true;
                        }
                    } else {
                        s0Var.f1750d = this.f1620a;
                        i();
                    }
                }
            }
            boolean z2 = s0Var.f1750d >= 0;
            s0Var.a(recyclerView);
            if (z2 && this.f1623e) {
                this.f1622d = true;
                recyclerView.f2985f0.b();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0015  */
    public void h(View view, s0 s0Var) {
        int i3;
        PointF pointF = this.f1627k;
        int i4 = 0;
        if (pointF != null) {
            float f = pointF.x;
            if (f == 0.0f) {
                i3 = 0;
            } else {
                i3 = f > 0.0f ? 1 : -1;
            }
        } else {
            i3 = 0;
        }
        int iB = b(view, i3);
        PointF pointF2 = this.f1627k;
        if (pointF2 != null) {
            float f3 = pointF2.y;
            if (f3 != 0.0f) {
                i4 = f3 > 0.0f ? 1 : -1;
            }
        }
        int iC = c(view, i4);
        int iCeil = (int) Math.ceil(((double) e((int) Math.sqrt((iC * iC) + (iB * iB)))) / 0.3356d);
        if (iCeil > 0) {
            s0Var.f1748a = -iB;
            s0Var.b = -iC;
            s0Var.f1749c = iCeil;
            s0Var.f1751e = this.f1626j;
            s0Var.f = true;
        }
    }

    public final void i() {
        if (this.f1623e) {
            this.f1623e = false;
            this.f1632p = 0;
            this.f1631o = 0;
            this.f1627k = null;
            this.b.f2990i0.f1759a = -1;
            this.f = null;
            this.f1620a = -1;
            this.f1622d = false;
            AbstractC0147g0 abstractC0147g0 = this.f1621c;
            if (abstractC0147g0.f1677e == this) {
                abstractC0147g0.f1677e = null;
            }
            this.f1621c = null;
            this.b = null;
        }
    }
}
