package P;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class D implements Animator.AnimatorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f1533a;
    public final float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f1534c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f1535d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final y0 f1536e;
    public final int f;
    public final ValueAnimator g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1537h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f1538i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f1539j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1540k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1541l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f1542m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final /* synthetic */ int f1543n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final /* synthetic */ y0 f1544o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final /* synthetic */ G f1545p;

    public D(G g, y0 y0Var, int i3, float f, float f3, float f4, float f5, int i4, y0 y0Var2) {
        this.f1545p = g;
        this.f1543n = i4;
        this.f1544o = y0Var2;
        this.f = i3;
        this.f1536e = y0Var;
        this.f1533a = f;
        this.b = f3;
        this.f1534c = f4;
        this.f1535d = f5;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.g = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new H0.c(2, this));
        valueAnimatorOfFloat.setTarget(y0Var.f1807a);
        valueAnimatorOfFloat.addListener(this);
        this.f1542m = 0.0f;
    }

    public final void a(Animator animator) {
        if (!this.f1541l) {
            this.f1536e.n(true);
        }
        this.f1541l = true;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f1542m = 1.0f;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        a(animator);
        if (this.f1540k) {
            return;
        }
        int i3 = this.f1543n;
        y0 y0Var = this.f1544o;
        G g = this.f1545p;
        if (i3 <= 0) {
            g.f1571m.getClass();
            E.a(y0Var);
        } else {
            g.f1562a.add(y0Var.f1807a);
            this.f1537h = true;
            if (i3 > 0) {
                g.f1576r.post(new E0.d(g, this, i3));
            }
        }
        View view = g.f1581w;
        View view2 = y0Var.f1807a;
        if (view == view2) {
            g.q(view2);
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
