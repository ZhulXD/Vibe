package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2905c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f2906d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f2907e;

    public /* synthetic */ a(Object obj, Object obj2, Object obj3, int i3) {
        this.b = i3;
        this.f2905c = obj;
        this.f2906d = obj2;
        this.f2907e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                DefaultSpecialEffectsController$AnimationEffect$onCommit$1.onAnimationEnd$lambda$0((ViewGroup) this.f2905c, (View) this.f2906d, (DefaultSpecialEffectsController.AnimationEffect) this.f2907e);
                break;
            case 1:
                DefaultSpecialEffectsController.TransitionEffect.createMergedTransition$lambda$12((SpecialEffectsController.Operation) this.f2905c, (SpecialEffectsController.Operation) this.f2906d, (DefaultSpecialEffectsController.TransitionEffect) this.f2907e);
                break;
            default:
                DefaultSpecialEffectsController.TransitionEffect.createMergedTransition$lambda$13((FragmentTransitionImpl) this.f2905c, (View) this.f2906d, (Rect) this.f2907e);
                break;
        }
    }
}
