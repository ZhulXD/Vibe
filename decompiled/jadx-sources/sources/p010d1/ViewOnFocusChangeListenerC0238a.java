package p010d1;

import android.view.View;

/* JADX INFO: renamed from: d1.a, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnFocusChangeListenerC0238a implements View.OnFocusChangeListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ o f3876c;

    public /* synthetic */ ViewOnFocusChangeListenerC0238a(o oVar, int i3) {
        this.b = i3;
        this.f3876c = oVar;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z2) {
        switch (this.b) {
            case 0:
                d dVar = (d) this.f3876c;
                dVar.s(dVar.t());
                break;
            default:
                i iVar = (i) this.f3876c;
                iVar.f3896l = z2;
                iVar.p();
                if (!z2) {
                    iVar.s(false);
                    iVar.f3897m = false;
                }
                break;
        }
    }
}
