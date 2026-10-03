package f2;

import android.app.Activity;
import org.godotengine.godot.nativeapi.GodotNativeBridge;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Activity f4313c;

    public /* synthetic */ b(Activity activity, int i3) {
        this.b = i3;
        this.f4313c = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                GodotNativeBridge.nativeEnterPiPMode$lambda$7(this.f4313c);
                break;
            default:
                GodotNativeBridge.nativeBuildEnvConnect$lambda$6(this.f4313c);
                break;
        }
    }
}
