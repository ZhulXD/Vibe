package K0;

import com.google.android.material.carousel.CarouselLayoutManager;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1220a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CarouselLayoutManager f1221c;

    public d(int i3) {
        this.f1220a = i3;
    }

    public final int a() {
        switch (this.b) {
            case 0:
                return 0;
            default:
                CarouselLayoutManager carouselLayoutManager = this.f1221c;
                if (carouselLayoutManager.H0()) {
                    return carouselLayoutManager.f1684n;
                }
                return 0;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public d(CarouselLayoutManager carouselLayoutManager, int i3) {
        this(1);
        this.b = i3;
        switch (i3) {
            case 1:
                this.f1221c = carouselLayoutManager;
                this(0);
                break;
            default:
                this.f1221c = carouselLayoutManager;
                break;
        }
    }
}
