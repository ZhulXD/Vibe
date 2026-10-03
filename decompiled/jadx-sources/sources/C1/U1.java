package C1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class U1 extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f507a = 0;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f508c;

    public U1(V1 v2, Function0 function0) {
        this.b = v2;
        this.f508c = function0;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animation) {
        switch (this.f507a) {
            case 0:
                Intrinsics.checkNotNullParameter(animation, "animation");
                V1 v2 = (V1) this.b;
                v2.b.setTranslationX(0.0f);
                v2.f = false;
                ((Function0) this.f508c).invoke();
                break;
            default:
                ((p041q.e) this.b).remove(animation);
                ((S.v) this.f508c).f2026o.remove(animation);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f507a) {
            case 1:
                ((S.v) this.f508c).f2026o.add(animator);
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }

    public U1(S.v vVar, p041q.e eVar) {
        this.f508c = vVar;
        this.b = eVar;
    }
}
