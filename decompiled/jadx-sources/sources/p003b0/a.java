package p003b0;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f3076a;

    public a(e eVar) {
        this.f3076a = eVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        synchronized (this.f3076a) {
            try {
                e eVar = this.f3076a;
                if (eVar.f3089j == null) {
                    return null;
                }
                eVar.n();
                if (this.f3076a.g()) {
                    this.f3076a.l();
                    this.f3076a.f3091l = 0;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
