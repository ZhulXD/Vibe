package X;

import P.Y;
import androidx.viewpager2.widget.ViewPager2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2320a;
    public final /* synthetic */ Object b;

    public /* synthetic */ f(int i3, Object obj) {
        this.f2320a = i3;
        this.b = obj;
    }

    @Override // P.Y
    public final void a() {
        switch (this.f2320a) {
            case 0:
                ViewPager2 viewPager2 = (ViewPager2) this.b;
                viewPager2.f = true;
                viewPager2.f3067m.f2319l = true;
                break;
            default:
                ((m) this.b).e0();
                break;
        }
    }

    @Override // P.Y
    public final void b(int i3, int i4) {
        a();
    }

    @Override // P.Y
    public final void c(int i3, int i4) {
        a();
    }

    @Override // P.Y
    public final void d(int i3, int i4) {
        a();
    }

    @Override // P.Y
    public final void e(int i3, int i4) {
        a();
    }
}
