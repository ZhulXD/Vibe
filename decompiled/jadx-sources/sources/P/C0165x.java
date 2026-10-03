package P;

import android.R;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: renamed from: P.x, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0165x extends AbstractC0141d0 implements k0 {

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final int[] f1772C = {R.attr.state_pressed};

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final int[] f1773D = new int[0];

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f1774A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final A1.u0 f1775B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1776a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateListDrawable f1777c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Drawable f1778d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1779e;
    public final int f;
    public final StateListDrawable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Drawable f1780h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f1781i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f1782j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1783k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1784l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f1785m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1786n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1787o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f1788p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final RecyclerView f1791s;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final ValueAnimator f1798z;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1789q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1790r = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1792t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1793u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1794v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f1795w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int[] f1796x = new int[2];

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int[] f1797y = new int[2];

    public C0165x(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i3, int i4, int i5) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f1798z = valueAnimatorOfFloat;
        this.f1774A = 0;
        A1.u0 u0Var = new A1.u0(3, this);
        this.f1775B = u0Var;
        C0163v c0163v = new C0163v(this);
        this.f1777c = stateListDrawable;
        this.f1778d = drawable;
        this.g = stateListDrawable2;
        this.f1780h = drawable2;
        this.f1779e = Math.max(i3, stateListDrawable.getIntrinsicWidth());
        this.f = Math.max(i3, drawable.getIntrinsicWidth());
        this.f1781i = Math.max(i3, stateListDrawable2.getIntrinsicWidth());
        this.f1782j = Math.max(i3, drawable2.getIntrinsicWidth());
        this.f1776a = i4;
        this.b = i5;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new C0164w(this));
        valueAnimatorOfFloat.addUpdateListener(new H0.c(1, this));
        RecyclerView recyclerView2 = this.f1791s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            recyclerView2.a0(this);
            RecyclerView recyclerView3 = this.f1791s;
            recyclerView3.f3005r.remove(this);
            if (recyclerView3.f3007s == this) {
                recyclerView3.f3007s = null;
            }
            ArrayList arrayList = this.f1791s.f2994k0;
            if (arrayList != null) {
                arrayList.remove(c0163v);
            }
            this.f1791s.removeCallbacks(u0Var);
        }
        this.f1791s = recyclerView;
        recyclerView.i(this);
        this.f1791s.f3005r.add(this);
        this.f1791s.j(c0163v);
    }

    public static int k(float f, float f3, int[] iArr, int i3, int i4, int i5) {
        int i6 = iArr[1] - iArr[0];
        if (i6 != 0) {
            int i7 = i3 - i5;
            int i8 = (int) (((f3 - f) / i6) * i7);
            int i9 = i4 + i8;
            if (i9 < i7 && i9 >= 0) {
                return i8;
            }
        }
        return 0;
    }

    @Override // P.k0
    public final void b(MotionEvent motionEvent) {
        if (this.f1794v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zJ = j(motionEvent.getX(), motionEvent.getY());
            boolean zI = i(motionEvent.getX(), motionEvent.getY());
            if (zJ || zI) {
                if (zI) {
                    this.f1795w = 1;
                    this.f1788p = (int) motionEvent.getX();
                } else if (zJ) {
                    this.f1795w = 2;
                    this.f1785m = (int) motionEvent.getY();
                }
                l(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.f1794v == 2) {
            this.f1785m = 0.0f;
            this.f1788p = 0.0f;
            l(1);
            this.f1795w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.f1794v == 2) {
            m();
            int i3 = this.f1795w;
            int i4 = this.b;
            if (i3 == 1) {
                float x2 = motionEvent.getX();
                int[] iArr = this.f1797y;
                iArr[0] = i4;
                int i5 = this.f1789q - i4;
                iArr[1] = i5;
                float fMax = Math.max(i4, Math.min(i5, x2));
                if (Math.abs(this.f1787o - fMax) >= 2.0f) {
                    int iK = k(this.f1788p, fMax, iArr, this.f1791s.computeHorizontalScrollRange(), this.f1791s.computeHorizontalScrollOffset(), this.f1789q);
                    if (iK != 0) {
                        this.f1791s.scrollBy(iK, 0);
                    }
                    this.f1788p = fMax;
                }
            }
            if (this.f1795w == 2) {
                float y2 = motionEvent.getY();
                int[] iArr2 = this.f1796x;
                iArr2[0] = i4;
                int i6 = this.f1790r - i4;
                iArr2[1] = i6;
                float fMax2 = Math.max(i4, Math.min(i6, y2));
                if (Math.abs(this.f1784l - fMax2) < 2.0f) {
                    return;
                }
                int iK2 = k(this.f1785m, fMax2, iArr2, this.f1791s.computeVerticalScrollRange(), this.f1791s.computeVerticalScrollOffset(), this.f1790r);
                if (iK2 != 0) {
                    this.f1791s.scrollBy(0, iK2);
                }
                this.f1785m = fMax2;
            }
        }
    }

    @Override // P.k0
    public final boolean c(MotionEvent motionEvent) {
        int i3 = this.f1794v;
        if (i3 != 1) {
            return i3 == 2;
        }
        boolean zJ = j(motionEvent.getX(), motionEvent.getY());
        boolean zI = i(motionEvent.getX(), motionEvent.getY());
        if (motionEvent.getAction() != 0) {
            return false;
        }
        if (!zJ && !zI) {
            return false;
        }
        if (zI) {
            this.f1795w = 1;
            this.f1788p = (int) motionEvent.getX();
        } else if (zJ) {
            this.f1795w = 2;
            this.f1785m = (int) motionEvent.getY();
        }
        l(2);
        return true;
    }

    @Override // P.AbstractC0141d0
    public final void h(Canvas canvas, RecyclerView recyclerView) {
        if (this.f1789q != this.f1791s.getWidth() || this.f1790r != this.f1791s.getHeight()) {
            this.f1789q = this.f1791s.getWidth();
            this.f1790r = this.f1791s.getHeight();
            l(0);
            return;
        }
        if (this.f1774A != 0) {
            if (this.f1792t) {
                int i3 = this.f1789q;
                int i4 = this.f1779e;
                int i5 = i3 - i4;
                int i6 = this.f1784l;
                int i7 = this.f1783k;
                int i8 = i6 - (i7 / 2);
                StateListDrawable stateListDrawable = this.f1777c;
                stateListDrawable.setBounds(0, 0, i4, i7);
                int i9 = this.f;
                int i10 = this.f1790r;
                Drawable drawable = this.f1778d;
                drawable.setBounds(0, 0, i9, i10);
                if (ViewCompat.getLayoutDirection(this.f1791s) == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i4, i8);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-i4, -i8);
                } else {
                    canvas.translate(i5, 0.0f);
                    drawable.draw(canvas);
                    canvas.translate(0.0f, i8);
                    stateListDrawable.draw(canvas);
                    canvas.translate(-i5, -i8);
                }
            }
            if (this.f1793u) {
                int i11 = this.f1790r;
                int i12 = this.f1781i;
                int i13 = i11 - i12;
                int i14 = this.f1787o;
                int i15 = this.f1786n;
                int i16 = i14 - (i15 / 2);
                StateListDrawable stateListDrawable2 = this.g;
                stateListDrawable2.setBounds(0, 0, i15, i12);
                int i17 = this.f1789q;
                int i18 = this.f1782j;
                Drawable drawable2 = this.f1780h;
                drawable2.setBounds(0, 0, i17, i18);
                canvas.translate(0.0f, i13);
                drawable2.draw(canvas);
                canvas.translate(i16, 0.0f);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i16, -i13);
            }
        }
    }

    public final boolean i(float f, float f3) {
        if (f3 < this.f1790r - this.f1781i) {
            return false;
        }
        int i3 = this.f1787o;
        int i4 = this.f1786n;
        return f >= ((float) (i3 - (i4 / 2))) && f <= ((float) ((i4 / 2) + i3));
    }

    public final boolean j(float f, float f3) {
        int layoutDirection = ViewCompat.getLayoutDirection(this.f1791s);
        int i3 = this.f1779e;
        if (layoutDirection == 1) {
            if (f > i3) {
                return false;
            }
        } else if (f < this.f1789q - i3) {
            return false;
        }
        int i4 = this.f1784l;
        int i5 = this.f1783k / 2;
        return f3 >= ((float) (i4 - i5)) && f3 <= ((float) (i5 + i4));
    }

    public final void l(int i3) {
        A1.u0 u0Var = this.f1775B;
        StateListDrawable stateListDrawable = this.f1777c;
        if (i3 == 2 && this.f1794v != 2) {
            stateListDrawable.setState(f1772C);
            this.f1791s.removeCallbacks(u0Var);
        }
        if (i3 == 0) {
            this.f1791s.invalidate();
        } else {
            m();
        }
        if (this.f1794v == 2 && i3 != 2) {
            stateListDrawable.setState(f1773D);
            this.f1791s.removeCallbacks(u0Var);
            this.f1791s.postDelayed(u0Var, 1200);
        } else if (i3 == 1) {
            this.f1791s.removeCallbacks(u0Var);
            this.f1791s.postDelayed(u0Var, 1500);
        }
        this.f1794v = i3;
    }

    public final void m() {
        int i3 = this.f1774A;
        ValueAnimator valueAnimator = this.f1798z;
        if (i3 != 0) {
            if (i3 != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.f1774A = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }

    @Override // P.k0
    public final void e(boolean z2) {
    }
}
