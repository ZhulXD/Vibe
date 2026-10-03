package p024j;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.internal.view.SupportSubMenu;
import p041q.j;

/* JADX INFO: renamed from: j.e, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0266e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4512a;
    public j b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public j f4513c;

    public AbstractC0266e(Context context) {
        this.f4512a = context;
    }

    public final MenuItem a(MenuItem menuItem) {
        if (!(menuItem instanceof SupportMenuItem)) {
            return menuItem;
        }
        SupportMenuItem supportMenuItem = (SupportMenuItem) menuItem;
        if (this.b == null) {
            this.b = new j(0);
        }
        MenuItem menuItem2 = (MenuItem) this.b.get(supportMenuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        x xVar = new x(this.f4512a, supportMenuItem);
        this.b.put(supportMenuItem, xVar);
        return xVar;
    }

    public final SubMenu b(SubMenu subMenu) {
        if (!(subMenu instanceof SupportSubMenu)) {
            return subMenu;
        }
        SupportSubMenu supportSubMenu = (SupportSubMenu) subMenu;
        if (this.f4513c == null) {
            this.f4513c = new j(0);
        }
        SubMenu subMenu2 = (SubMenu) this.f4513c.get(supportSubMenu);
        if (subMenu2 != null) {
            return subMenu2;
        }
        J j2 = new J(this.f4512a, supportSubMenu);
        this.f4513c.put(supportSubMenu, j2);
        return j2;
    }
}
