package Z0;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends com.bumptech.glide.d {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SideSheetBehavior f2480c;

    public /* synthetic */ a(SideSheetBehavior sideSheetBehavior, int i3) {
        this.b = i3;
        this.f2480c = sideSheetBehavior;
    }

    @Override // com.bumptech.glide.d
    public final int A() {
        switch (this.b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.f2480c;
                return (-sideSheetBehavior.f3496l) - sideSheetBehavior.f3499o;
            default:
                return this.f2480c.f3497m;
        }
    }

    @Override // com.bumptech.glide.d
    public final int C() {
        switch (this.b) {
            case 0:
                return this.f2480c.f3499o;
            default:
                return this.f2480c.f3497m;
        }
    }

    @Override // com.bumptech.glide.d
    public final int D() {
        switch (this.b) {
            case 0:
                return -this.f2480c.f3496l;
            default:
                return y();
        }
    }

    @Override // com.bumptech.glide.d
    public final int E(View view) {
        switch (this.b) {
            case 0:
                return view.getRight() + this.f2480c.f3499o;
            default:
                return view.getLeft() - this.f2480c.f3499o;
        }
    }

    @Override // com.bumptech.glide.d
    public final int F(CoordinatorLayout coordinatorLayout) {
        switch (this.b) {
            case 0:
                return coordinatorLayout.getLeft();
            default:
                return coordinatorLayout.getRight();
        }
    }

    @Override // com.bumptech.glide.d
    public final int H() {
        switch (this.b) {
            case 0:
                return 1;
            default:
                return 0;
        }
    }

    @Override // com.bumptech.glide.d
    public final boolean J(float f) {
        switch (this.b) {
            case 0:
                return f > 0.0f;
            default:
                return f < 0.0f;
        }
    }

    @Override // com.bumptech.glide.d
    public final boolean M(View view) {
        switch (this.b) {
            case 0:
                return view.getRight() < (y() - A()) / 2;
            default:
                return view.getLeft() > (y() + this.f2480c.f3497m) / 2;
        }
    }

    @Override // com.bumptech.glide.d
    public final boolean N(float f, float f3) {
        switch (this.b) {
            case 0:
                return Math.abs(f) > Math.abs(f3) && Math.abs(f) > ((float) 500);
            default:
                return Math.abs(f) > Math.abs(f3) && Math.abs(f) > ((float) 500);
        }
    }

    @Override // com.bumptech.glide.d
    public final boolean X(View view, float f) {
        switch (this.b) {
            case 0:
                float left = view.getLeft();
                SideSheetBehavior sideSheetBehavior = this.f2480c;
                float fAbs = Math.abs((f * sideSheetBehavior.f3495k) + left);
                sideSheetBehavior.getClass();
                return fAbs > 0.5f;
            default:
                float right = view.getRight();
                SideSheetBehavior sideSheetBehavior2 = this.f2480c;
                float fAbs2 = Math.abs((f * sideSheetBehavior2.f3495k) + right);
                sideSheetBehavior2.getClass();
                return fAbs2 > 0.5f;
        }
    }

    @Override // com.bumptech.glide.d
    public final void b0(ViewGroup.MarginLayoutParams marginLayoutParams, int i3) {
        switch (this.b) {
            case 0:
                marginLayoutParams.leftMargin = i3;
                break;
            default:
                marginLayoutParams.rightMargin = i3;
                break;
        }
    }

    @Override // com.bumptech.glide.d
    public final void c0(ViewGroup.MarginLayoutParams marginLayoutParams, int i3, int i4) {
        switch (this.b) {
            case 0:
                if (i3 <= this.f2480c.f3497m) {
                    marginLayoutParams.leftMargin = i4;
                }
                break;
            default:
                int i5 = this.f2480c.f3497m;
                if (i3 <= i5) {
                    marginLayoutParams.rightMargin = i5 - i3;
                }
                break;
        }
    }

    @Override // com.bumptech.glide.d
    public final int e(ViewGroup.MarginLayoutParams marginLayoutParams) {
        switch (this.b) {
            case 0:
                return marginLayoutParams.leftMargin;
            default:
                return marginLayoutParams.rightMargin;
        }
    }

    @Override // com.bumptech.glide.d
    public final float f(int i3) {
        switch (this.b) {
            case 0:
                float fA = A();
                return (i3 - fA) / (y() - fA);
            default:
                float f = this.f2480c.f3497m;
                return (f - i3) / (f - y());
        }
    }

    @Override // com.bumptech.glide.d
    public final int u(ViewGroup.MarginLayoutParams marginLayoutParams) {
        switch (this.b) {
            case 0:
                return marginLayoutParams.leftMargin;
            default:
                return marginLayoutParams.rightMargin;
        }
    }

    @Override // com.bumptech.glide.d
    public final int y() {
        switch (this.b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.f2480c;
                return Math.max(0, sideSheetBehavior.f3498n + sideSheetBehavior.f3499o);
            default:
                SideSheetBehavior sideSheetBehavior2 = this.f2480c;
                return Math.max(0, (sideSheetBehavior2.f3497m - sideSheetBehavior2.f3496l) - sideSheetBehavior2.f3499o);
        }
    }
}
