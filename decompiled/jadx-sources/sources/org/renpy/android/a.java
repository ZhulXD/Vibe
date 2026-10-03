package org.renpy.android;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PythonSDLActivity f5193c;

    public /* synthetic */ a(PythonSDLActivity pythonSDLActivity, int i3) {
        this.b = i3;
        this.f5193c = pythonSDLActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                this.f5193c.reassertFloatMenuOnTop();
                break;
            default:
                this.f5193c.showLanguageReloadDialog();
                break;
        }
    }
}
