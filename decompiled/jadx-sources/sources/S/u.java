package S;

import com.hatkid.mkxpz.gamepad.Gamepad;
import com.hatkid.mkxpz.gamepad.GamepadButton;
import com.hatkid.mkxpz.gamepad.GamepadDPad;
import org.libsdl.app.SDLActivity;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u implements Gamepad.OnKeyDownListener, Gamepad.OnKeyUpListener, GamepadButton.OnKeyDownListener, GamepadButton.OnKeyUpListener, p010d1.z {
    public static final u b = new u(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final u f2007c = new u(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final u f2008d = new u(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final u f2009e = new u(3);
    public static final u f = new u(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2010a;

    public /* synthetic */ u(int i3) {
        this.f2010a = i3;
    }

    @Override // com.hatkid.mkxpz.gamepad.Gamepad.OnKeyDownListener, com.hatkid.mkxpz.gamepad.GamepadButton.OnKeyDownListener
    public void onKeyDown(int i3) {
        switch (this.f2010a) {
            case 5:
                Gamepad.lambda$new$0(i3);
                break;
            case 6:
            case 8:
            default:
                SDLActivity.onNativeKeyDown(i3);
                break;
            case 7:
                GamepadButton.lambda$new$0(i3);
                break;
            case 9:
                GamepadDPad.lambda$new$0(i3);
                break;
        }
    }

    @Override // com.hatkid.mkxpz.gamepad.Gamepad.OnKeyUpListener, com.hatkid.mkxpz.gamepad.GamepadButton.OnKeyUpListener
    public void onKeyUp(int i3) {
        switch (this.f2010a) {
            case 6:
                Gamepad.lambda$new$1(i3);
                break;
            case 7:
            case 9:
            default:
                SDLActivity.onNativeKeyUp(i3);
                break;
            case 8:
                GamepadButton.lambda$new$1(i3);
                break;
            case 10:
                GamepadDPad.lambda$new$1(i3);
                break;
        }
    }
}
