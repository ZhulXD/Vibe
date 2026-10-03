package k;

import android.view.View;

/* JADX INFO: renamed from: k.i, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0294i implements Runnable {
    public final C0290g b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0300l f4828c;

    public RunnableC0294i(C0300l c0300l, C0290g c0290g) {
        this.f4828c = c0300l;
        this.b = c0290g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p024j.n nVar;
        C0300l c0300l = this.f4828c;
        p024j.p pVar = c0300l.f4507d;
        if (pVar != null && (nVar = pVar.f4556e) != null) {
            nVar.c(pVar);
        }
        View view = (View) c0300l.f4510i;
        if (view != null && view.getWindowToken() != null) {
            C0290g c0290g = this.b;
            if (c0290g.b()) {
                c0300l.f4865u = c0290g;
            } else if (c0290g.f4465e != null) {
                c0290g.d(0, 0, false, false);
                c0300l.f4865u = c0290g;
            }
        }
        c0300l.f4867w = null;
    }
}
