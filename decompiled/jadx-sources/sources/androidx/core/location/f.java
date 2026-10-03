package androidx.core.location;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Executor f2841c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f2842d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f2843e;

    public /* synthetic */ f(Object obj, Executor executor, int i3, int i4) {
        this.b = i4;
        this.f2843e = obj;
        this.f2841c = executor;
        this.f2842d = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                ((LocationManagerCompat.GnssMeasurementsTransport) this.f2843e).lambda$onStatusChanged$1(this.f2841c, this.f2842d);
                break;
            case 1:
                ((LocationManagerCompat.GpsStatusTransport) this.f2843e).lambda$onGpsStatusChanged$2(this.f2841c, this.f2842d);
                break;
            default:
                ((LocationManagerCompat.PreRGnssStatusTransport) this.f2843e).lambda$onFirstFix$2(this.f2841c, this.f2842d);
                break;
        }
    }
}
