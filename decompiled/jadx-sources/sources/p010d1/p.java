package p010d1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;
import k.C0285d0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class p extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3930a;
    public final /* synthetic */ TextView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3931c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TextView f3932d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ r f3933e;

    public p(r rVar, int i3, TextView textView, int i4, TextView textView2) {
        this.f3933e = rVar;
        this.f3930a = i3;
        this.b = textView;
        this.f3931c = i4;
        this.f3932d = textView2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C0285d0 c0285d0;
        int i3 = this.f3930a;
        r rVar = this.f3933e;
        rVar.f3947n = i3;
        rVar.f3945l = null;
        TextView textView = this.b;
        if (textView != null) {
            textView.setVisibility(4);
            if (this.f3931c == 1 && (c0285d0 = rVar.f3951r) != null) {
                c0285d0.setText((CharSequence) null);
            }
        }
        TextView textView2 = this.f3932d;
        if (textView2 != null) {
            textView2.setTranslationY(0.0f);
            textView2.setAlpha(1.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        TextView textView = this.f3932d;
        if (textView != null) {
            textView.setVisibility(0);
            textView.setAlpha(0.0f);
        }
    }
}
