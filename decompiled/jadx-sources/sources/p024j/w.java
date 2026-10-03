package p024j;

import android.view.MenuItem;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class w implements MenuItem.OnMenuItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MenuItem.OnMenuItemClickListener f4606a;
    public final /* synthetic */ x b;

    public w(x xVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.b = xVar;
        this.f4606a = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return this.f4606a.onMenuItemClick(this.b.a(menuItem));
    }
}
