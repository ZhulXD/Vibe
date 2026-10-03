package org.godotengine.godot;

import android.widget.TextView;
import com.minhub.gamehub.game.VxAceGameActivity;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f5178c;

    public /* synthetic */ h(int i3, boolean z2) {
        this.b = i3;
        this.f5178c = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                GodotLib.onPictureInPictureModeChanged(this.f5178c);
                break;
            default:
                TextView textView = VxAceGameActivity.tvFps;
                if (textView != null) {
                    textView.setVisibility(this.f5178c ? 0 : 4);
                }
                break;
        }
    }
}
