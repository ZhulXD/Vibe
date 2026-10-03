package org.godotengine.godot;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GodotGLRenderView f5183c;

    public /* synthetic */ l(GodotGLRenderView godotGLRenderView, int i3) {
        this.b = i3;
        this.f5183c = godotGLRenderView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                this.f5183c.lambda$onActivityPaused$0();
                break;
            default:
                this.f5183c.lambda$onActivityResumed$1();
                break;
        }
    }
}
