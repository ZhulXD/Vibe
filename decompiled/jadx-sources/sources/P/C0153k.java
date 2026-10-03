package P;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: renamed from: P.k, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0153k extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1696a = 1;
    public final /* synthetic */ y0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f1697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f1698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0158p f1699e;

    public C0153k(C0158p c0158p, y0 y0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f1699e = c0158p;
        this.b = y0Var;
        this.f1698d = viewPropertyAnimator;
        this.f1697c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f1696a) {
            case 1:
                this.f1697c.setAlpha(1.0f);
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f1696a) {
            case 0:
                this.f1698d.setListener(null);
                this.f1697c.setAlpha(1.0f);
                C0158p c0158p = this.f1699e;
                y0 y0Var = this.b;
                c0158p.c(y0Var);
                c0158p.f1736q.remove(y0Var);
                c0158p.i();
                break;
            default:
                this.f1698d.setListener(null);
                C0158p c0158p2 = this.f1699e;
                y0 y0Var2 = this.b;
                c0158p2.c(y0Var2);
                c0158p2.f1734o.remove(y0Var2);
                c0158p2.i();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f1696a) {
            case 0:
                this.f1699e.getClass();
                break;
            default:
                this.f1699e.getClass();
                break;
        }
    }

    public C0153k(C0158p c0158p, y0 y0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f1699e = c0158p;
        this.b = y0Var;
        this.f1697c = view;
        this.f1698d = viewPropertyAnimator;
    }
}
