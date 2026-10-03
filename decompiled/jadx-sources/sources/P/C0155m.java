package P;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: renamed from: P.m, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0155m extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1704a;
    public final /* synthetic */ C0156n b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f1705c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ View f1706d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0158p f1707e;

    public /* synthetic */ C0155m(C0158p c0158p, C0156n c0156n, ViewPropertyAnimator viewPropertyAnimator, View view, int i3) {
        this.f1704a = i3;
        this.f1707e = c0158p;
        this.b = c0156n;
        this.f1705c = viewPropertyAnimator;
        this.f1706d = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f1704a) {
            case 0:
                this.f1705c.setListener(null);
                View view = this.f1706d;
                view.setAlpha(1.0f);
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                C0156n c0156n = this.b;
                y0 y0Var = c0156n.f1711a;
                C0158p c0158p = this.f1707e;
                c0158p.c(y0Var);
                c0158p.f1737r.remove(c0156n.f1711a);
                c0158p.i();
                break;
            default:
                this.f1705c.setListener(null);
                View view2 = this.f1706d;
                view2.setAlpha(1.0f);
                view2.setTranslationX(0.0f);
                view2.setTranslationY(0.0f);
                C0156n c0156n2 = this.b;
                y0 y0Var2 = c0156n2.b;
                C0158p c0158p2 = this.f1707e;
                c0158p2.c(y0Var2);
                c0158p2.f1737r.remove(c0156n2.b);
                c0158p2.i();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f1704a) {
            case 0:
                y0 y0Var = this.b.f1711a;
                this.f1707e.getClass();
                break;
            default:
                y0 y0Var2 = this.b.b;
                this.f1707e.getClass();
                break;
        }
    }
}
