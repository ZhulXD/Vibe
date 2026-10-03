package S;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class P extends AnimatorListenerAdapter implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewGroup f1968a;
    public final View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f1969c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1970d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0175h f1971e;

    public P(C0175h c0175h, ViewGroup viewGroup, View view, View view2) {
        this.f1971e = c0175h;
        this.f1968a = viewGroup;
        this.b = view;
        this.f1969c = view2;
    }

    @Override // S.t
    public final void a(v vVar) {
        vVar.B(this);
    }

    @Override // S.t
    public final void e(v vVar) {
        if (this.f1970d) {
            g();
        }
    }

    public final void g() {
        this.f1969c.setTag(R.id.save_overlay_view, null);
        this.f1968a.getOverlay().remove(this.b);
        this.f1970d = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        g();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        this.f1968a.getOverlay().remove(this.b);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        View view = this.b;
        if (view.getParent() == null) {
            this.f1968a.getOverlay().add(view);
        } else {
            this.f1971e.d();
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator, boolean z2) {
        if (z2) {
            View view = this.f1969c;
            View view2 = this.b;
            view.setTag(R.id.save_overlay_view, view2);
            this.f1968a.getOverlay().add(view2);
            this.f1970d = true;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z2) {
        if (z2) {
            return;
        }
        g();
    }

    @Override // S.t
    public final void b() {
    }

    @Override // S.t
    public final void c() {
    }

    @Override // S.t
    public final void f(v vVar) {
    }
}
