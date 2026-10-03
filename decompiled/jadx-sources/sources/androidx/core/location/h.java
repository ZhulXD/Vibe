package androidx.core.location;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LocationManagerCompat.LocationListenerTransport f2846c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f2847d;

    public /* synthetic */ h(LocationManagerCompat.LocationListenerTransport locationListenerTransport, String str, int i3) {
        this.b = i3;
        this.f2846c = locationListenerTransport;
        this.f2847d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                this.f2846c.lambda$onProviderEnabled$4(this.f2847d);
                break;
            default:
                this.f2846c.lambda$onProviderDisabled$5(this.f2847d);
                break;
        }
    }
}
