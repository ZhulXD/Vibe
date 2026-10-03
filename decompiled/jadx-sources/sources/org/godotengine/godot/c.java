package org.godotengine.godot;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Godot f5170c;

    public /* synthetic */ c(Godot godot, int i3) {
        this.b = i3;
        this.f5170c = godot;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                this.f5170c.registerSensorsIfNeeded();
                break;
            case 1:
                Godot.onConfigurationChanged$lambda$17(this.f5170c);
                break;
            case 2:
                Godot.onInitRenderView$lambda$14(this.f5170c);
                break;
            case 3:
                this.f5170c.enableImmersiveMode(true, true);
                break;
            default:
                this.f5170c.destroyAndKillProcess();
                break;
        }
    }
}
