package p007c1;

import X.j;
import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f3163a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3164c = 0;
    public int b = 0;

    public i(TabLayout tabLayout) {
        this.f3163a = new WeakReference(tabLayout);
    }

    @Override // X.j
    public final void a(int i3) {
        this.b = this.f3164c;
        this.f3164c = i3;
        TabLayout tabLayout = (TabLayout) this.f3163a.get();
        if (tabLayout != null) {
            tabLayout.f3530O = this.f3164c;
        }
    }

    @Override // X.j
    public final void b(int i3, float f, int i4) {
        TabLayout tabLayout = (TabLayout) this.f3163a.get();
        if (tabLayout != null) {
            int i5 = this.f3164c;
            boolean z2 = true;
            if (i5 == 2 && this.b != 1) {
                z2 = false;
            }
            if (i5 == 2 && this.b == 0) {
                z2 = false;
            }
            tabLayout.l(i3, f, z2, z2, false);
        }
    }

    @Override // X.j
    public final void c(int i3) {
        TabLayout tabLayout = (TabLayout) this.f3163a.get();
        if (tabLayout == null || tabLayout.getSelectedTabPosition() == i3 || i3 >= tabLayout.getTabCount()) {
            return;
        }
        int i4 = this.f3164c;
        tabLayout.j((i3 < 0 || i3 >= tabLayout.getTabCount()) ? null : (f) tabLayout.f3532c.get(i3), i4 == 0 || (i4 == 2 && this.b == 0));
    }
}
