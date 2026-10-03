package p007c1;

import B1.C0046b;
import E1.x;
import P.W;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.SettingsActivity;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TabLayout f3165a;
    public final ViewPager2 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0046b f3166c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public W f3167d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3168e;

    public j(TabLayout tabLayout, ViewPager2 viewPager2, C0046b c0046b) {
        this.f3165a = tabLayout;
        this.b = viewPager2;
        this.f3166c = c0046b;
    }

    public final void a() {
        TabLayout tabLayout = this.f3165a;
        tabLayout.i();
        W w2 = this.f3167d;
        if (w2 != null) {
            int iA = w2.a();
            for (int i3 = 0; i3 < iA; i3++) {
                f tab = tabLayout.h();
                x xVar = (x) this.f3166c.f306c;
                int i4 = SettingsActivity.f;
                Intrinsics.checkNotNullParameter(tab, "tab");
                SettingsActivity settingsActivity = xVar.f936m;
                Object obj = CollectionsKt.listOf((Object[]) new String[]{settingsActivity.getString(R.string.settings_tab_general), settingsActivity.getString(R.string.settings_tab_plugins), settingsActivity.getString(R.string.settings_tab_translation), settingsActivity.getString(R.string.settings_tab_gamepad), settingsActivity.getString(R.string.settings_tab_utilities)}).get(i3);
                Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
                tab.b((String) obj);
                tabLayout.c(tab, false);
            }
            if (iA > 0) {
                int iMin = Math.min(this.b.getCurrentItem(), tabLayout.getTabCount() - 1);
                if (iMin != tabLayout.getSelectedTabPosition()) {
                    tabLayout.j((iMin < 0 || iMin >= tabLayout.getTabCount()) ? null : (f) tabLayout.f3532c.get(iMin), true);
                }
            }
        }
    }
}
