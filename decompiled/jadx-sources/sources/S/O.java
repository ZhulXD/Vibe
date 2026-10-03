package S;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class O extends AnimatorListenerAdapter implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f1964a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ViewGroup f1965c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1967e;
    public boolean f = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f1966d = true;

    public O(View view, int i3) {
        this.f1964a = view;
        this.b = i3;
        this.f1965c = (ViewGroup) view.getParent();
        g(true);
    }

    @Override // S.t
    public final void a(v vVar) {
        vVar.B(this);
    }

    @Override // S.t
    public final void b() {
        g(false);
        if (this.f) {
            return;
        }
        H.b(this.f1964a, this.b);
    }

    @Override // S.t
    public final void c() {
        g(true);
        if (this.f) {
            return;
        }
        H.b(this.f1964a, 0);
    }

    public final void g(boolean z2) {
        ViewGroup viewGroup;
        if (!this.f1966d || this.f1967e == z2 || (viewGroup = this.f1965c) == null) {
            return;
        }
        this.f1967e = z2;
        com.bumptech.glide.d.Y(viewGroup, z2);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (!this.f) {
            H.b(this.f1964a, this.b);
            ViewGroup viewGroup = this.f1965c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        g(false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator, boolean z2) {
        if (z2) {
            H.b(this.f1964a, 0);
            ViewGroup viewGroup = this.f1965c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z2) {
        if (z2) {
            return;
        }
        if (!this.f) {
            H.b(this.f1964a, this.b);
            ViewGroup viewGroup = this.f1965c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        g(false);
    }

    @Override // S.t
    public final void e(v vVar) {
    }

    @Override // S.t
    public final void f(v vVar) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }
}
