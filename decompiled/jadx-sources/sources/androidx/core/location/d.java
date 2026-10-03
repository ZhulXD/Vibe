package androidx.core.location;

import android.location.Location;
import androidx.core.util.Consumer;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Consumer f2836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Location f2837d;

    public /* synthetic */ d(Consumer consumer, Location location, int i3) {
        this.b = i3;
        this.f2836c = consumer;
        this.f2837d = location;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                this.f2836c.accept(this.f2837d);
                break;
            default:
                this.f2836c.accept(this.f2837d);
                break;
        }
    }
}
