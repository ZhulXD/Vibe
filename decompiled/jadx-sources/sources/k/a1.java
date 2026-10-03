package k;

import androidx.appcompat.widget.Toolbar;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a1 implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Toolbar f4810c;

    public /* synthetic */ a1(Toolbar toolbar, int i3) {
        this.b = i3;
        this.f4810c = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                d1 d1Var = this.f4810c.f2724M;
                p024j.s sVar = d1Var == null ? null : d1Var.f4819c;
                if (sVar != null) {
                    sVar.collapseActionView();
                }
                break;
            default:
                this.f4810c.invalidateMenu();
                break;
        }
    }
}
