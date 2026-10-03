package T0;

import android.animation.ValueAnimator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ float f2134a;
    public final /* synthetic */ d b;

    public b(d dVar, float f) {
        this.b = dVar;
        this.f2134a = f;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.b.e(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.f2134a);
    }
}
