package androidx.core.location;

import android.location.GnssMeasurementsEvent;
import android.location.GnssStatus;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Executor f2838c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f2839d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f2840e;

    public /* synthetic */ e(Object obj, Executor executor, Object obj2, int i3) {
        this.b = i3;
        this.f2839d = obj;
        this.f2838c = executor;
        this.f2840e = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                ((LocationManagerCompat.GnssMeasurementsTransport) this.f2839d).lambda$onGnssMeasurementsReceived$0(this.f2838c, (GnssMeasurementsEvent) this.f2840e);
                break;
            case 1:
                ((LocationManagerCompat.GpsStatusTransport) this.f2839d).lambda$onGpsStatusChanged$3(this.f2838c, (GnssStatusCompat) this.f2840e);
                break;
            default:
                ((LocationManagerCompat.PreRGnssStatusTransport) this.f2839d).lambda$onSatelliteStatusChanged$3(this.f2838c, (GnssStatus) this.f2840e);
                break;
        }
    }
}
