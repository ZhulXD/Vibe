package androidx.fragment.app;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SpecialEffectsController.Operation f2909c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ DefaultSpecialEffectsController.TransitionEffect f2910d;

    public /* synthetic */ c(SpecialEffectsController.Operation operation, DefaultSpecialEffectsController.TransitionEffect transitionEffect, int i3) {
        this.b = i3;
        this.f2909c = operation;
        this.f2910d = transitionEffect;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                DefaultSpecialEffectsController.TransitionEffect.onStart$lambda$6$lambda$5(this.f2909c, this.f2910d);
                break;
            default:
                DefaultSpecialEffectsController.TransitionEffect.onCommit$lambda$11$lambda$10(this.f2909c, this.f2910d);
                break;
        }
    }
}
