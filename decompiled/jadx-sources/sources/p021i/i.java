package p021i;

import android.view.View;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import k.i1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends ViewPropertyAnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4418a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f4420d;

    public i(j jVar) {
        this.f4418a = 0;
        this.f4420d = jVar;
        this.b = false;
        this.f4419c = 0;
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationCancel(View view) {
        switch (this.f4418a) {
            case 1:
                this.b = true;
                break;
            default:
                super.onAnimationCancel(view);
                break;
        }
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
    public final void onAnimationEnd(View view) {
        switch (this.f4418a) {
            case 0:
                int i3 = this.f4419c + 1;
                this.f4419c = i3;
                j jVar = (j) this.f4420d;
                if (i3 == jVar.f4421a.size()) {
                    ViewPropertyAnimatorListener viewPropertyAnimatorListener = jVar.f4423d;
                    if (viewPropertyAnimatorListener != null) {
                        viewPropertyAnimatorListener.onAnimationEnd(null);
                    }
                    this.f4419c = 0;
                    this.b = false;
                    jVar.f4424e = false;
                }
                break;
            default:
                if (!this.b) {
                    ((i1) this.f4420d).f4839a.setVisibility(this.f4419c);
                }
                break;
        }
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
    public final void onAnimationStart(View view) {
        switch (this.f4418a) {
            case 0:
                if (!this.b) {
                    this.b = true;
                    ViewPropertyAnimatorListener viewPropertyAnimatorListener = ((j) this.f4420d).f4423d;
                    if (viewPropertyAnimatorListener != null) {
                        viewPropertyAnimatorListener.onAnimationStart(null);
                    }
                    break;
                }
                break;
            default:
                ((i1) this.f4420d).f4839a.setVisibility(0);
                break;
        }
    }

    public i(i1 i1Var, int i3) {
        this.f4418a = 1;
        this.f4420d = i1Var;
        this.f4419c = i3;
        this.b = false;
    }
}
