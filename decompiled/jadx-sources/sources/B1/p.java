package B1;

import com.minhub.gamehub.gamepad.GamepadOverlay;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GamepadOverlay f346c;

    public /* synthetic */ p(GamepadOverlay gamepadOverlay, int i3) {
        this.b = i3;
        this.f346c = gamepadOverlay;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.b;
        GamepadOverlay gamepadOverlay = this.f346c;
        switch (i3) {
            case 0:
                int i4 = GamepadOverlay.f3736h;
                gamepadOverlay.d();
                break;
            default:
                int i5 = GamepadOverlay.f3736h;
                gamepadOverlay.d();
                break;
        }
    }
}
