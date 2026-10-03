package androidx.core.view;

import android.os.IBinder;
import android.os.Parcelable;
import android.view.Display;
import android.view.SurfaceControlViewHost;
import org.godotengine.godot.service.GodotService;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class o {
    public static /* bridge */ /* synthetic */ SurfaceControlViewHost.SurfacePackage d(Parcelable parcelable) {
        return (SurfaceControlViewHost.SurfacePackage) parcelable;
    }

    public static /* synthetic */ SurfaceControlViewHost f(GodotService godotService, Display display, IBinder iBinder) {
        return new SurfaceControlViewHost(godotService, display, iBinder);
    }

    public static /* synthetic */ void i() {
    }
}
