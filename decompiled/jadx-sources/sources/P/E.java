package P;

import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class E {
    public static final D.d b = new D.d(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final D.d f1547c = new D.d(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1548a;

    public static void a(y0 y0Var) {
        View view = y0Var.f1807a;
        Object tag = view.getTag(R.id.item_touch_helper_previous_elevation);
        if (tag instanceof Float) {
            ViewCompat.setElevation(view, ((Float) tag).floatValue());
        }
        view.setTag(R.id.item_touch_helper_previous_elevation, null);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
    }

    public static int b(int i3, int i4) {
        int i5;
        int i6 = i3 & 3158064;
        if (i6 == 0) {
            return i3;
        }
        int i7 = i3 & (~i6);
        if (i4 == 0) {
            i5 = i6 >> 2;
        } else {
            int i8 = i6 >> 1;
            i7 |= (-3158065) & i8;
            i5 = (i8 & 3158064) >> 2;
        }
        return i7 | i5;
    }

    public static int c(int i3, int i4) {
        int i5;
        int i6 = i3 & 789516;
        if (i6 == 0) {
            return i3;
        }
        int i7 = i3 & (~i6);
        if (i4 == 0) {
            i5 = i6 << 2;
        } else {
            int i8 = i6 << 1;
            i7 |= (-789517) & i8;
            i5 = (i8 & 789516) << 2;
        }
        return i7 | i5;
    }

    public static void e(RecyclerView recyclerView, y0 y0Var, float f, float f3, boolean z2) {
        View view = y0Var.f1807a;
        if (z2 && view.getTag(R.id.item_touch_helper_previous_elevation) == null) {
            Float fValueOf = Float.valueOf(ViewCompat.getElevation(view));
            int childCount = recyclerView.getChildCount();
            float f4 = 0.0f;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = recyclerView.getChildAt(i3);
                if (childAt != view) {
                    float elevation = ViewCompat.getElevation(childAt);
                    if (elevation > f4) {
                        f4 = elevation;
                    }
                }
            }
            ViewCompat.setElevation(view, f4 + 1.0f);
            view.setTag(R.id.item_touch_helper_previous_elevation, fValueOf);
        }
        view.setTranslationX(f);
        view.setTranslationY(f3);
    }

    public final int d(RecyclerView recyclerView, int i3, int i4, long j2) {
        if (this.f1548a == -1) {
            this.f1548a = recyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame);
        }
        int interpolation = (int) (b.getInterpolation(j2 <= 2000 ? j2 / 2000.0f : 1.0f) * ((int) (f1547c.getInterpolation(Math.min(1.0f, (Math.abs(i4) * 1.0f) / i3)) * ((int) Math.signum(i4)) * this.f1548a)));
        if (interpolation == 0) {
            return i4 > 0 ? 1 : -1;
        }
        return interpolation;
    }
}
