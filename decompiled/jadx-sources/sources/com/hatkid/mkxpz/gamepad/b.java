package com.hatkid.mkxpz.gamepad;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements GamepadButton.OnKeyDownListener, GamepadButton.OnKeyUpListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3661a;
    public final /* synthetic */ Gamepad b;

    public /* synthetic */ b(Gamepad gamepad, int i3) {
        this.f3661a = i3;
        this.b = gamepad;
    }

    @Override // com.hatkid.mkxpz.gamepad.GamepadButton.OnKeyDownListener
    public void onKeyDown(int i3) {
        switch (this.f3661a) {
            case 0:
                this.b.lambda$createJoystick$4(i3);
                break;
            default:
                this.b.lambda$createDPad$2(i3);
                break;
        }
    }

    @Override // com.hatkid.mkxpz.gamepad.GamepadButton.OnKeyUpListener
    public void onKeyUp(int i3) {
        switch (this.f3661a) {
            case 1:
                this.b.lambda$createJoystick$5(i3);
                break;
            default:
                this.b.lambda$createDPad$3(i3);
                break;
        }
    }
}
