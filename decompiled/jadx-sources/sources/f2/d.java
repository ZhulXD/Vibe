package f2;

import android.content.DialogInterface;
import org.godotengine.godot.nativeapi.GodotNativeBridge;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements DialogInterface.OnClickListener {
    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        GodotNativeBridge.nativeBuildEnvConnect$lambda$6$lambda$5(dialogInterface, i3);
    }
}
