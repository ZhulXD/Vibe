package P;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: renamed from: P.l, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0154l extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y0 f1700a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f1701c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1702d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f1703e;
    public final /* synthetic */ C0158p f;

    public C0154l(C0158p c0158p, y0 y0Var, int i3, View view, int i4, ViewPropertyAnimator viewPropertyAnimator) {
        this.f = c0158p;
        this.f1700a = y0Var;
        this.b = i3;
        this.f1701c = view;
        this.f1702d = i4;
        this.f1703e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i3 = this.b;
        View view = this.f1701c;
        if (i3 != 0) {
            view.setTranslationX(0.0f);
        }
        if (this.f1702d != 0) {
            view.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f1703e.setListener(null);
        C0158p c0158p = this.f;
        y0 y0Var = this.f1700a;
        c0158p.c(y0Var);
        c0158p.f1735p.remove(y0Var);
        c0158p.i();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f.getClass();
    }
}
