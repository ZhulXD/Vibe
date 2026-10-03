package S0;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends a {
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f2052h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f2053i;

    public i(View view) {
        super(view);
        Resources resources = view.getResources();
        this.g = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
        this.f2052h = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
        this.f2053i = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_y_distance);
    }

    public final void a(float f, boolean z2, int i3) {
        float interpolation = this.f2042a.getInterpolation(f);
        View view = this.b;
        boolean z3 = (GravityCompat.getAbsoluteGravity(i3, ViewCompat.getLayoutDirection(view)) & 3) == 3;
        boolean z4 = z2 == z3;
        int width = view.getWidth();
        int height = view.getHeight();
        float f3 = width;
        if (f3 > 0.0f) {
            float f4 = height;
            if (f4 <= 0.0f) {
                return;
            }
            float f5 = this.g / f3;
            float f6 = this.f2052h / f3;
            float f7 = this.f2053i / f4;
            if (z3) {
                f3 = 0.0f;
            }
            view.setPivotX(f3);
            if (!z4) {
                f6 = -f5;
            }
            float fA = B0.a.a(0.0f, f6, interpolation);
            float f8 = fA + 1.0f;
            view.setScaleX(f8);
            float fA2 = 1.0f - B0.a.a(0.0f, f7, interpolation);
            view.setScaleY(fA2);
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                    View childAt = viewGroup.getChildAt(i4);
                    childAt.setPivotX(z3 ? childAt.getWidth() + (width - childAt.getRight()) : -childAt.getLeft());
                    childAt.setPivotY(-childAt.getTop());
                    float f9 = z4 ? 1.0f - fA : 1.0f;
                    float f10 = fA2 != 0.0f ? (f8 / fA2) * f9 : 1.0f;
                    childAt.setScaleX(f9);
                    childAt.setScaleY(f10);
                }
            }
        }
    }
}
