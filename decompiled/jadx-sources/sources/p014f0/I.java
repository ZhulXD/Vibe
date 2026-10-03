package p014f0;

import android.os.Handler;
import android.os.Looper;
import p004b1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4199a;
    public final Handler b = new Handler(Looper.getMainLooper(), new a(1));

    public final synchronized void a(F f, boolean z2) {
        try {
            if (this.f4199a || z2) {
                this.b.obtainMessage(1, f).sendToTarget();
            } else {
                this.f4199a = true;
                f.e();
                this.f4199a = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
