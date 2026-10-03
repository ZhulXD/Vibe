package X;

import androidx.viewpager2.widget.ViewPager2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2321a;
    public final /* synthetic */ ViewPager2 b;

    public /* synthetic */ g(ViewPager2 viewPager2, int i3) {
        this.f2321a = i3;
        this.b = viewPager2;
    }

    @Override // X.j
    public void a(int i3) {
        switch (this.f2321a) {
            case 0:
                if (i3 == 0) {
                    this.b.d();
                }
                break;
        }
    }

    @Override // X.j
    public final void c(int i3) {
        switch (this.f2321a) {
            case 0:
                ViewPager2 viewPager2 = this.b;
                if (viewPager2.f3061e != i3) {
                    viewPager2.f3061e = i3;
                    viewPager2.f3075u.e0();
                }
                break;
            default:
                ViewPager2 viewPager3 = this.b;
                viewPager3.clearFocus();
                if (viewPager3.hasFocus()) {
                    viewPager3.f3065k.requestFocus(2);
                }
                break;
        }
    }
}
