package S0;

import android.window.OnBackInvokedCallback;
import p011e.B;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements OnBackInvokedCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2046a;
    public final /* synthetic */ Object b;

    public /* synthetic */ c(int i3, Object obj) {
        this.f2046a = i3;
        this.b = obj;
    }

    public final void onBackInvoked() {
        switch (this.f2046a) {
            case 0:
                ((b) this.b).a();
                break;
            case 1:
                ((B) this.b).C();
                break;
            default:
                ((Runnable) this.b).run();
                break;
        }
    }
}
