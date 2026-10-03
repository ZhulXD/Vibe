package p024j;

import E.b;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class I extends p implements SubMenu {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final s f4488A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final p f4489z;

    public I(Context context, p pVar, s sVar) {
        super(context);
        this.f4489z = pVar;
        this.f4488A = sVar;
    }

    @Override // p024j.p
    public final boolean d(s sVar) {
        return this.f4489z.d(sVar);
    }

    @Override // p024j.p
    public final boolean e(p pVar, MenuItem menuItem) {
        return super.e(pVar, menuItem) || this.f4489z.e(pVar, menuItem);
    }

    @Override // p024j.p
    public final boolean f(s sVar) {
        return this.f4489z.f(sVar);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.f4488A;
    }

    @Override // p024j.p
    public final String j() {
        s sVar = this.f4488A;
        int i3 = sVar != null ? sVar.f4580a : 0;
        if (i3 == 0) {
            return null;
        }
        return b.i(i3, "android:menu:actionviewstates:");
    }

    @Override // p024j.p
    public final p k() {
        return this.f4489z.k();
    }

    @Override // p024j.p
    public final boolean m() {
        return this.f4489z.m();
    }

    @Override // p024j.p
    public final boolean n() {
        return this.f4489z.n();
    }

    @Override // p024j.p
    public final boolean o() {
        return this.f4489z.o();
    }

    @Override // p024j.p, androidx.core.internal.view.SupportMenu, android.view.Menu
    public final void setGroupDividerEnabled(boolean z2) {
        this.f4489z.setGroupDividerEnabled(z2);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        u(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        u(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        u(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.f4488A.setIcon(drawable);
        return this;
    }

    @Override // p024j.p, android.view.Menu
    public final void setQwertyMode(boolean z2) {
        this.f4489z.setQwertyMode(z2);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i3) {
        u(0, null, i3, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i3) {
        u(i3, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i3) {
        this.f4488A.setIcon(i3);
        return this;
    }
}
