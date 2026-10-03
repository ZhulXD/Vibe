package androidx.activity;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2606c;

    public /* synthetic */ e(int i3, Object obj) {
        this.b = i3;
        this.f2606c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                ComponentActivity.ReportFullyDrawnExecutorImpl.execute$lambda$0((ComponentActivity.ReportFullyDrawnExecutorImpl) this.f2606c);
                break;
            case 1:
                ComponentDialog.onBackPressedDispatcher$lambda$1((ComponentDialog) this.f2606c);
                break;
            default:
                FullyDrawnReporter.reportRunnable$lambda$2((FullyDrawnReporter) this.f2606c);
                break;
        }
    }
}
