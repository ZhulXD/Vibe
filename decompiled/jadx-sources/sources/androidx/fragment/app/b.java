package androidx.fragment.app;

import java.util.ArrayList;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2908c;

    public /* synthetic */ b(int i3, Object obj) {
        this.b = i3;
        this.f2908c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                DefaultSpecialEffectsController.TransitionEffect.createMergedTransition$lambda$14((ArrayList) this.f2908c);
                break;
            case 1:
                DefaultSpecialEffectsController.TransitionEffect.onStart$lambda$6$lambda$4((Ref.ObjectRef) this.f2908c);
                break;
            case 2:
                DefaultSpecialEffectsController$TransitionEffect$onStart$4.AnonymousClass2.invoke$lambda$4((DefaultSpecialEffectsController.TransitionEffect) this.f2908c);
                break;
            case 3:
                ((Fragment) this.f2908c).lambda$performCreateView$0();
                break;
            default:
                ((FragmentManager) this.f2908c).lambda$cancelBackStackTransition$4();
                break;
        }
    }
}
