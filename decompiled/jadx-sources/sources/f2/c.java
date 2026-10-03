package f2;

import android.app.Activity;
import android.content.DialogInterface;
import org.godotengine.godot.nativeapi.GodotNativeBridge;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements DialogInterface.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Activity f4314c;

    public /* synthetic */ c(Activity activity, int i3) {
        this.b = i3;
        this.f4314c = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        switch (this.b) {
            case 0:
                GodotNativeBridge.nativeBuildEnvConnect$lambda$6$lambda$4(this.f4314c, dialogInterface, i3);
                break;
            case 1:
                this.f4314c.finish();
                break;
            case 2:
                this.f4314c.finish();
                break;
            case 3:
                this.f4314c.finish();
                break;
            case 4:
                this.f4314c.finish();
                break;
            default:
                this.f4314c.finish();
                break;
        }
    }
}
