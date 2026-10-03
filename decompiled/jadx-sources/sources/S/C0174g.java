package S;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.minhub.gamehub.R;

/* JADX INFO: renamed from: S.g, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0174g extends AnimatorListenerAdapter implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f1987a;
    public boolean b = false;

    public C0174g(View view) {
        this.f1987a = view;
    }

    @Override // S.t
    public final void b() {
        View view = this.f1987a;
        view.setTag(R.id.transition_pause_alpha, Float.valueOf(view.getVisibility() == 0 ? H.f1959a.l(view) : 0.0f));
    }

    @Override // S.t
    public final void c() {
        this.f1987a.setTag(R.id.transition_pause_alpha, null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        H.f1959a.K(this.f1987a, 1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        onAnimationEnd(animator, false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        View view = this.f1987a;
        if (view.hasOverlappingRendering() && view.getLayerType() == 0) {
            this.b = true;
            view.setLayerType(2, null);
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z2) {
        boolean z3 = this.b;
        View view = this.f1987a;
        if (z3) {
            view.setLayerType(0, null);
        }
        if (z2) {
            return;
        }
        M m2 = H.f1959a;
        m2.K(view, 1.0f);
        m2.getClass();
    }

    @Override // S.t
    public final void a(v vVar) {
    }

    @Override // S.t
    public final void d(v vVar) {
    }

    @Override // S.t
    public final void e(v vVar) {
    }

    @Override // S.t
    public final void f(v vVar) {
    }
}
