package p011e;

import java.util.concurrent.Executor;
import p063y0.n;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o implements Executor {
    public final /* synthetic */ int b;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.b) {
            case 0:
                new Thread(runnable).start();
                break;
            case 1:
                n.f().post(runnable);
                break;
            default:
                runnable.run();
                break;
        }
    }
}
