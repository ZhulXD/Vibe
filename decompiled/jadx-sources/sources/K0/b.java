package K0;

import P.M;
import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import com.google.android.material.carousel.CarouselLayoutManager;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends M {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ int f1218q = 1;

    public /* synthetic */ b(Context context) {
        super(context);
    }

    @Override // P.M
    public int b(View view, int i3) {
        switch (this.f1218q) {
            case 0:
                return 0;
            default:
                return super.b(view, i3);
        }
    }

    @Override // P.M
    public int c(View view, int i3) {
        switch (this.f1218q) {
            case 0:
                return 0;
            default:
                return super.c(view, i3);
        }
    }

    @Override // P.M
    public float d(DisplayMetrics displayMetrics) {
        switch (this.f1218q) {
            case 1:
                return 100.0f / displayMetrics.densityDpi;
            default:
                return super.d(displayMetrics);
        }
    }

    @Override // P.M
    public PointF f(int i3) {
        switch (this.f1218q) {
            case 0:
                return null;
            default:
                return super.f(i3);
        }
    }

    public b(CarouselLayoutManager carouselLayoutManager, Context context) {
        super(context);
    }
}
