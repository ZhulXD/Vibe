package org.godotengine.godot;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GodotActivity f5181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Godot f5182d;

    public /* synthetic */ k(GodotActivity godotActivity, Godot godot, int i3) {
        this.b = i3;
        this.f5181c = godotActivity;
        this.f5182d = godot;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                this.f5181c.terminateGodotInstance(this.f5182d);
                break;
            default:
                GodotActivity.onGodotRestartRequested$lambda$6(this.f5181c, this.f5182d);
                break;
        }
    }
}
