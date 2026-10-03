package p011e;

import A1.C0013d;
import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class K extends ViewPropertyAnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4068a;
    public final /* synthetic */ M b;

    public /* synthetic */ K(M m2, int i3) {
        this.f4068a = i3;
        this.b = m2;
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
    public final void onAnimationEnd(View view) {
        View view2;
        switch (this.f4068a) {
            case 0:
                M m2 = this.b;
                if (m2.f4085p && (view2 = m2.f4077h) != null) {
                    view2.setTranslationY(0.0f);
                    m2.f4076e.setTranslationY(0.0f);
                }
                m2.f4076e.setVisibility(8);
                m2.f4076e.setTransitioning(false);
                m2.f4089t = null;
                C0013d c0013d = m2.f4081l;
                if (c0013d != null) {
                    c0013d.w(m2.f4080k);
                    m2.f4080k = null;
                    m2.f4081l = null;
                }
                ActionBarOverlayLayout actionBarOverlayLayout = m2.f4075d;
                if (actionBarOverlayLayout != null) {
                    ViewCompat.requestApplyInsets(actionBarOverlayLayout);
                }
                break;
            default:
                M m3 = this.b;
                m3.f4089t = null;
                m3.f4076e.requestLayout();
                break;
        }
    }
}
