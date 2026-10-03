package p024j;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.core.view.ActionProvider;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class t extends ActionProvider implements android.view.ActionProvider.VisibilityListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ActionProvider.VisibilityListener f4603a;
    public final android.view.ActionProvider b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x f4604c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(x xVar, Context context, android.view.ActionProvider actionProvider) {
        super(context);
        this.f4604c = xVar;
        this.b = actionProvider;
    }

    @Override // androidx.core.view.ActionProvider
    public final boolean hasSubMenu() {
        return this.b.hasSubMenu();
    }

    @Override // androidx.core.view.ActionProvider
    public final boolean isVisible() {
        return this.b.isVisible();
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z2) {
        ActionProvider.VisibilityListener visibilityListener = this.f4603a;
        if (visibilityListener != null) {
            visibilityListener.onActionProviderVisibilityChanged(z2);
        }
    }

    @Override // androidx.core.view.ActionProvider
    public final View onCreateActionView(MenuItem menuItem) {
        return this.b.onCreateActionView(menuItem);
    }

    @Override // androidx.core.view.ActionProvider
    public final boolean onPerformDefaultAction() {
        return this.b.onPerformDefaultAction();
    }

    @Override // androidx.core.view.ActionProvider
    public final void onPrepareSubMenu(SubMenu subMenu) {
        this.b.onPrepareSubMenu(this.f4604c.b(subMenu));
    }

    @Override // androidx.core.view.ActionProvider
    public final boolean overridesItemVisibility() {
        return this.b.overridesItemVisibility();
    }

    @Override // androidx.core.view.ActionProvider
    public final void refreshVisibility() {
        this.b.refreshVisibility();
    }

    @Override // androidx.core.view.ActionProvider
    public final void setVisibilityListener(ActionProvider.VisibilityListener visibilityListener) {
        this.f4603a = visibilityListener;
        this.b.setVisibilityListener(visibilityListener != null ? this : null);
    }

    @Override // androidx.core.view.ActionProvider
    public final View onCreateActionView() {
        return this.b.onCreateActionView();
    }
}
