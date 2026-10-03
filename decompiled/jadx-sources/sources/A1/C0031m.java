package A1;

import android.app.Activity;
import android.os.Process;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: A1.m, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0031m implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Runnable f204c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Activity f205d;

    public /* synthetic */ C0031m(Runnable runnable, Activity activity, int i3) {
        this.b = i3;
        this.f204c = runnable;
        this.f205d = activity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.b) {
            case 0:
                Runnable runnable = this.f204c;
                if (runnable != null) {
                    runnable.run();
                } else {
                    this.f205d.finish();
                }
                break;
            default:
                Runnable runnable2 = this.f204c;
                if (runnable2 != null) {
                    runnable2.run();
                } else {
                    this.f205d.finishAndRemoveTask();
                    Process.killProcess(Process.myPid());
                }
                break;
        }
        return Unit.INSTANCE;
    }
}
