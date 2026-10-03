package androidx.core.location;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LocationManagerCompat.PreRGnssStatusTransport f2854c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Executor f2855d;

    public /* synthetic */ l(LocationManagerCompat.PreRGnssStatusTransport preRGnssStatusTransport, Executor executor, int i3) {
        this.b = i3;
        this.f2854c = preRGnssStatusTransport;
        this.f2855d = executor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                this.f2854c.lambda$onStopped$1(this.f2855d);
                break;
            default:
                this.f2854c.lambda$onStarted$0(this.f2855d);
                break;
        }
    }
}
