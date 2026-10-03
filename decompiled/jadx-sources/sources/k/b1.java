package k;

import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b1 implements InterfaceC0306o, p024j.n {
    public final /* synthetic */ Toolbar b;

    public /* synthetic */ b1(Toolbar toolbar) {
        this.b = toolbar;
    }

    @Override // p024j.n
    public void c(p024j.p pVar) {
        Toolbar toolbar = this.b;
        C0300l c0300l = toolbar.b.f2699u;
        if (c0300l == null || !c0300l.f()) {
            toolbar.f2720H.onPrepareMenu(pVar);
        }
    }

    @Override // p024j.n
    public boolean h(p024j.p pVar, MenuItem menuItem) {
        this.b.getClass();
        return false;
    }
}
