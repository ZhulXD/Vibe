package E0;

import android.view.View;
import android.view.ViewParent;
import androidx.core.view.ViewCompat;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends p000a.a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f856m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f857n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f858o;

    public b(SwipeDismissBehavior swipeDismissBehavior) {
        this.f858o = swipeDismissBehavior;
    }

    @Override // p000a.a
    public final void A(View view, int i3, int i4) {
        float width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.f858o;
        float f = width * swipeDismissBehavior.f3298e;
        float width2 = view.getWidth() * swipeDismissBehavior.f;
        float fAbs = Math.abs(i3 - this.f856m);
        if (fAbs <= f) {
            view.setAlpha(1.0f);
        } else if (fAbs >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((fAbs - f) / (width2 - f))), 1.0f));
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0050  */
    /* JADX WARN: Code duplicated, block: B:29:0x0054  */
    /* JADX WARN: Code duplicated, block: B:32:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x005f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0065  */
    @Override // p000a.a
    public final void B(View view, float f, float f3) {
        int i3;
        int left;
        int i4;
        this.f857n = -1;
        int width = view.getWidth();
        boolean z2 = false;
        SwipeDismissBehavior swipeDismissBehavior = this.f858o;
        if (f != 0.0f) {
            boolean z3 = ViewCompat.getLayoutDirection(view) == 1;
            int i5 = swipeDismissBehavior.f3297d;
            if (i5 != 2 && (i5 != 0 ? i5 != 1 || (!z3 ? f < 0.0f : f > 0.0f) : !z3 ? f > 0.0f : f < 0.0f)) {
                i3 = this.f856m;
            } else {
                if (f >= 0.0f) {
                    left = view.getLeft();
                    i4 = this.f856m;
                    if (left < i4) {
                        i3 = this.f856m - width;
                    } else {
                        i3 = i4 + width;
                    }
                } else {
                    i3 = this.f856m - width;
                }
                z2 = true;
            }
        } else {
            if (Math.abs(view.getLeft() - this.f856m) >= Math.round(view.getWidth() * 0.5f)) {
                if (f >= 0.0f) {
                    left = view.getLeft();
                    i4 = this.f856m;
                    if (left < i4) {
                        i3 = this.f856m - width;
                    } else {
                        i3 = i4 + width;
                    }
                } else {
                    i3 = this.f856m - width;
                }
                z2 = true;
            } else {
                i3 = this.f856m;
            }
        }
        if (swipeDismissBehavior.f3295a.o(i3, view.getTop())) {
            ViewCompat.postOnAnimation(view, new d(swipeDismissBehavior, view, z2));
        }
    }

    @Override // p000a.a
    public final boolean N(View view, int i3) {
        int i4 = this.f857n;
        return (i4 == -1 || i4 == i3) && this.f858o.v(view);
    }

    @Override // p000a.a
    public final int e(View view, int i3) {
        int width;
        int width2;
        int width3;
        boolean z2 = ViewCompat.getLayoutDirection(view) == 1;
        int i4 = this.f858o.f3297d;
        if (i4 == 0) {
            if (z2) {
                width = this.f856m - view.getWidth();
                width2 = this.f856m;
            } else {
                width = this.f856m;
                width3 = view.getWidth();
                width2 = width3 + width;
            }
        } else if (i4 != 1) {
            width = this.f856m - view.getWidth();
            width2 = view.getWidth() + this.f856m;
        } else if (z2) {
            width = this.f856m;
            width3 = view.getWidth();
            width2 = width3 + width;
        } else {
            width = this.f856m - view.getWidth();
            width2 = this.f856m;
        }
        return Math.min(Math.max(width, i3), width2);
    }

    @Override // p000a.a
    public final int f(View view, int i3) {
        return view.getTop();
    }

    @Override // p000a.a
    public final int o(View view) {
        return view.getWidth();
    }

    @Override // p000a.a
    public final void y(View view, int i3) {
        this.f857n = i3;
        this.f856m = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            SwipeDismissBehavior swipeDismissBehavior = this.f858o;
            swipeDismissBehavior.f3296c = true;
            parent.requestDisallowInterceptTouchEvent(true);
            swipeDismissBehavior.f3296c = false;
        }
    }

    @Override // p000a.a
    public final void z(int i3) {
    }
}
