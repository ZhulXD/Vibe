package P;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: renamed from: P.w, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0164w extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1771a = false;
    public final /* synthetic */ C0165x b;

    public C0164w(C0165x c0165x) {
        this.b = c0165x;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f1771a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f1771a) {
            this.f1771a = false;
            return;
        }
        C0165x c0165x = this.b;
        if (((Float) c0165x.f1798z.getAnimatedValue()).floatValue() == 0.0f) {
            c0165x.f1774A = 0;
            c0165x.l(0);
        } else {
            c0165x.f1774A = 2;
            c0165x.f1791s.invalidate();
        }
    }
}
