package androidx.fragment.app;

import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2911c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f2912d;

    public /* synthetic */ d(int i3, Object obj, Object obj2) {
        this.b = i3;
        this.f2911c = obj;
        this.f2912d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                DefaultSpecialEffectsController$TransitionEffect$onStart$4.AnonymousClass2.invoke$lambda$2((DefaultSpecialEffectsController.TransitionEffect) this.f2911c, (ViewGroup) this.f2912d);
                break;
            default:
                DefaultSpecialEffectsController.collectEffects$lambda$2((DefaultSpecialEffectsController) this.f2911c, (SpecialEffectsController.Operation) this.f2912d);
                break;
        }
    }
}
