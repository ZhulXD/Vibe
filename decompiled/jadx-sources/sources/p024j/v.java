package p024j;

import android.view.MenuItem;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class v implements MenuItem.OnActionExpandListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MenuItem.OnActionExpandListener f4605a;
    public final /* synthetic */ x b;

    public v(x xVar, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.b = xVar;
        this.f4605a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f4605a.onMenuItemActionCollapse(this.b.a(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f4605a.onMenuItemActionExpand(this.b.a(menuItem));
    }
}
