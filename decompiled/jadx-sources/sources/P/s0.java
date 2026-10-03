package P;

import android.util.Log;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1748a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1749c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1750d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Interpolator f1751e;
    public boolean f;
    public int g;

    public final void a(RecyclerView recyclerView) {
        int i3 = this.f1750d;
        if (i3 >= 0) {
            this.f1750d = -1;
            recyclerView.O(i3);
            this.f = false;
            return;
        }
        if (!this.f) {
            this.g = 0;
            return;
        }
        Interpolator interpolator = this.f1751e;
        if (interpolator != null && this.f1749c < 1) {
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        int i4 = this.f1749c;
        if (i4 < 1) {
            throw new IllegalStateException("Scroll duration must be a positive number");
        }
        recyclerView.f2985f0.c(this.f1748a, this.b, i4, interpolator);
        int i5 = this.g + 1;
        this.g = i5;
        if (i5 > 10) {
            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
        }
        this.f = false;
    }
}
