package P;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: P.e, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class ExecutorC0142e implements Executor {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f1661c;

    public ExecutorC0142e(int i3) {
        this.b = i3;
        switch (i3) {
            case 1:
                this.f1661c = new Handler(Looper.getMainLooper());
                break;
            case 2:
                this.f1661c = new Handler(Looper.getMainLooper());
                break;
            default:
                this.f1661c = new Handler(Looper.getMainLooper());
                break;
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.b) {
            case 0:
                this.f1661c.post(runnable);
                break;
            case 1:
                this.f1661c.post(runnable);
                break;
            default:
                this.f1661c.post(runnable);
                break;
        }
    }
}
