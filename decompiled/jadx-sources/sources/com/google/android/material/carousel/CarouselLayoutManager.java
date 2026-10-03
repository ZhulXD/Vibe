package com.google.android.material.carousel;

import F.d;
import K0.a;
import K0.b;
import K0.c;
import P.AbstractC0147g0;
import P.C0149h0;
import P.o0;
import P.t0;
import P.u0;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class CarouselLayoutManager extends AbstractC0147g0 implements t0 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final d f3380p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public K0.d f3381q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final View.OnLayoutChangeListener f3382r;

    public CarouselLayoutManager() {
        d dVar = new d();
        new c();
        this.f3382r = new a(0, this);
        this.f3380p = dVar;
        r0();
        I0(0);
    }

    @Override // P.AbstractC0147g0
    public final void D0(RecyclerView recyclerView, int i3) {
        b bVar = new b(this, recyclerView.getContext());
        bVar.f1620a = i3;
        E0(bVar);
    }

    public final boolean G0() {
        return this.f3381q.f1220a == 0;
    }

    public final boolean H0() {
        return G0() && ViewCompat.getLayoutDirection(this.b) == 1;
    }

    public final void I0(int i3) {
        K0.d dVar;
        if (i3 != 0 && i3 != 1) {
            throw new IllegalArgumentException(E.b.i(i3, "invalid orientation:"));
        }
        c(null);
        K0.d dVar2 = this.f3381q;
        if (dVar2 == null || i3 != dVar2.f1220a) {
            if (i3 == 0) {
                dVar = new K0.d(this, 1);
            } else {
                if (i3 != 1) {
                    throw new IllegalArgumentException("invalid orientation");
                }
                dVar = new K0.d(this, 0);
            }
            this.f3381q = dVar;
            r0();
        }
    }

    @Override // P.AbstractC0147g0
    public final boolean O() {
        return true;
    }

    @Override // P.AbstractC0147g0
    public final void U(RecyclerView recyclerView) {
        Context context = recyclerView.getContext();
        d dVar = this.f3380p;
        float dimension = dVar.f950a;
        if (dimension <= 0.0f) {
            dimension = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_min);
        }
        dVar.f950a = dimension;
        float dimension2 = dVar.b;
        if (dimension2 <= 0.0f) {
            dimension2 = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_max);
        }
        dVar.b = dimension2;
        r0();
        recyclerView.addOnLayoutChangeListener(this.f3382r);
    }

    @Override // P.AbstractC0147g0
    public final void V(RecyclerView recyclerView) {
        recyclerView.removeOnLayoutChangeListener(this.f3382r);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0038  */
    /* JADX WARN: Code duplicated, block: B:20:0x003c  */
    /* JADX WARN: Code duplicated, block: B:24:0x0046  */
    @Override // P.AbstractC0147g0
    public final View W(View view, int i3, o0 o0Var, u0 u0Var) {
        byte b;
        if (v() == 0) {
            return null;
        }
        int i4 = this.f3381q.f1220a;
        if (i3 == 1) {
            b = -1;
        } else if (i3 == 2) {
            b = 1;
        } else if (i3 != 17) {
            if (i3 != 33) {
                if (i3 != 66) {
                    if (i3 != 130) {
                        Log.d("CarouselLayoutManager", "Unknown focus request:" + i3);
                    } else if (i4 == 1) {
                        b = 1;
                    }
                    b = -2147483648;
                } else if (i4 != 0) {
                    b = -2147483648;
                } else if (H0()) {
                    b = -1;
                } else {
                    b = 1;
                }
            } else if (i4 == 1) {
                b = -1;
            } else {
                b = -2147483648;
            }
        } else if (i4 != 0) {
            b = -2147483648;
        } else if (H0()) {
            b = 1;
        } else {
            b = -1;
        }
        if (b == -2147483648) {
            return null;
        }
        if (b == -1) {
            if (AbstractC0147g0.K(view) == 0) {
                return null;
            }
            int iK = AbstractC0147g0.K(u(0)) - 1;
            if (iK < 0 || iK >= F()) {
                return u(H0() ? v() - 1 : 0);
            }
            this.f3381q.a();
            throw null;
        }
        if (AbstractC0147g0.K(view) == F() - 1) {
            return null;
        }
        int iK2 = AbstractC0147g0.K(u(v() - 1)) + 1;
        if (iK2 < 0 || iK2 >= F()) {
            return u(H0() ? 0 : v() - 1);
        }
        this.f3381q.a();
        throw null;
    }

    @Override // P.AbstractC0147g0
    public final void X(AccessibilityEvent accessibilityEvent) {
        super.X(accessibilityEvent);
        if (v() > 0) {
            accessibilityEvent.setFromIndex(AbstractC0147g0.K(u(0)));
            accessibilityEvent.setToIndex(AbstractC0147g0.K(u(v() - 1)));
        }
    }

    @Override // P.t0
    public final PointF a(int i3) {
        return null;
    }

    @Override // P.AbstractC0147g0
    public final void b0(int i3, int i4) {
        F();
    }

    @Override // P.AbstractC0147g0
    public final boolean d() {
        return G0();
    }

    @Override // P.AbstractC0147g0
    public final boolean e() {
        return !G0();
    }

    @Override // P.AbstractC0147g0
    public final void e0(int i3, int i4) {
        F();
    }

    @Override // P.AbstractC0147g0
    public final void g0(o0 o0Var, u0 u0Var) {
        if (u0Var.b() > 0) {
            if ((G0() ? this.f1684n : this.f1685o) > 0.0f) {
                H0();
                View view = o0Var.k(0, Long.MAX_VALUE).f1807a;
                throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
            }
        }
        m0(o0Var);
    }

    @Override // P.AbstractC0147g0
    public final void h0(u0 u0Var) {
        if (v() == 0) {
            return;
        }
        AbstractC0147g0.K(u(0));
    }

    @Override // P.AbstractC0147g0
    public final int j(u0 u0Var) {
        v();
        return 0;
    }

    @Override // P.AbstractC0147g0
    public final int k(u0 u0Var) {
        return 0;
    }

    @Override // P.AbstractC0147g0
    public final int l(u0 u0Var) {
        return 0;
    }

    @Override // P.AbstractC0147g0
    public final int m(u0 u0Var) {
        v();
        return 0;
    }

    @Override // P.AbstractC0147g0
    public final int n(u0 u0Var) {
        return 0;
    }

    @Override // P.AbstractC0147g0
    public final int o(u0 u0Var) {
        return 0;
    }

    @Override // P.AbstractC0147g0
    public final boolean q0(RecyclerView recyclerView, View view, Rect rect, boolean z2, boolean z3) {
        return false;
    }

    @Override // P.AbstractC0147g0
    public final C0149h0 r() {
        return new C0149h0(-2, -2);
    }

    @Override // P.AbstractC0147g0
    public final int s0(int i3, o0 o0Var, u0 u0Var) {
        if (!G0() || v() == 0 || i3 == 0) {
            return 0;
        }
        View view = o0Var.k(0, Long.MAX_VALUE).f1807a;
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // P.AbstractC0147g0
    public final int u0(int i3, o0 o0Var, u0 u0Var) {
        if (!e() || v() == 0 || i3 == 0) {
            return 0;
        }
        View view = o0Var.k(0, Long.MAX_VALUE).f1807a;
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // P.AbstractC0147g0
    public final void z(View view, Rect rect) {
        super.z(view, rect);
        rect.centerY();
        if (G0()) {
            rect.centerX();
        }
        throw null;
    }

    @SuppressLint({"UnknownNullness"})
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i3, int i4) {
        new c();
        this.f3382r = new a(0, this);
        this.f3380p = new d();
        r0();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, A0.a.f21e);
            typedArrayObtainStyledAttributes.getInt(0, 0);
            r0();
            I0(typedArrayObtainStyledAttributes.getInt(0, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // P.AbstractC0147g0
    public final void t0(int i3) {
    }
}
