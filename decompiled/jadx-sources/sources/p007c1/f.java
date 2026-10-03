package p007c1;

import android.text.TextUtils;
import android.view.View;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CharSequence f3149a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f3150c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TabLayout f3151d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public h f3152e;

    public final void a(int i3) {
        TabLayout tabLayout = this.f3151d;
        if (tabLayout == null) {
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }
        b(tabLayout.getResources().getText(i3));
    }

    public final void b(CharSequence charSequence) {
        if (TextUtils.isEmpty(null) && !TextUtils.isEmpty(charSequence)) {
            this.f3152e.setContentDescription(charSequence);
        }
        this.f3149a = charSequence;
        h hVar = this.f3152e;
        if (hVar != null) {
            hVar.d();
        }
    }
}
