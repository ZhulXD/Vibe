package androidx.core.location;

import android.location.Location;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LocationManagerCompat.LocationListenerTransport f2848c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f2849d;

    public /* synthetic */ i(LocationManagerCompat.LocationListenerTransport locationListenerTransport, Object obj, int i3) {
        this.b = i3;
        this.f2848c = locationListenerTransport;
        this.f2849d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                this.f2848c.lambda$onLocationChanged$1((List) this.f2849d);
                break;
            default:
                this.f2848c.lambda$onLocationChanged$0((Location) this.f2849d);
                break;
        }
    }
}
