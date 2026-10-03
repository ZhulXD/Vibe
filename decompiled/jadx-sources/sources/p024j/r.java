package p024j;

import androidx.core.view.ActionProvider;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class r implements ActionProvider.VisibilityListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f4576a;

    public r(s sVar) {
        this.f4576a = sVar;
    }

    @Override // androidx.core.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z2) {
        p pVar = this.f4576a.f4590n;
        pVar.f4557h = true;
        pVar.p(true);
    }
}
