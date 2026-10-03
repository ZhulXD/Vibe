package J0;

import android.animation.ValueAnimator;
import p010d1.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1192a;
    public final /* synthetic */ Object b;

    public /* synthetic */ b(int i3, Object obj) {
        this.f1192a = i3;
        this.b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f1192a) {
            case 0:
                d dVar = (d) this.b;
                dVar.getClass();
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                dVar.f1201j.setAlpha((int) (255.0f * fFloatValue));
                dVar.f1215x = fFloatValue;
                break;
            default:
                i iVar = (i) this.b;
                iVar.getClass();
                iVar.f3929d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
        }
    }
}
