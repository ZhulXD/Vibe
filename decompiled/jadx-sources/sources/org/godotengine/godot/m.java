package org.godotengine.godot;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GodotVulkanRenderView f5184c;

    public /* synthetic */ m(GodotVulkanRenderView godotVulkanRenderView, int i3) {
        this.b = i3;
        this.f5184c = godotVulkanRenderView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                this.f5184c.lambda$onActivityPaused$0();
                break;
            default:
                this.f5184c.lambda$onActivityResumed$1();
                break;
        }
    }
}
