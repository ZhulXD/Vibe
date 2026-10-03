package androidx.core.widget;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContentLoadingProgressBar f2869c;

    public /* synthetic */ a(ContentLoadingProgressBar contentLoadingProgressBar, int i3) {
        this.b = i3;
        this.f2869c = contentLoadingProgressBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                this.f2869c.lambda$new$0();
                break;
            case 1:
                this.f2869c.lambda$new$1();
                break;
            case 2:
                this.f2869c.showOnUiThread();
                break;
            default:
                this.f2869c.hideOnUiThread();
                break;
        }
    }
}
