package k;

import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.core.view.ViewPropertyAnimatorListener;

/* JADX INFO: renamed from: k.a, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0278a implements ViewPropertyAnimatorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4808a = false;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActionBarContextView f4809c;

    public C0278a(ActionBarContextView actionBarContextView) {
        this.f4809c = actionBarContextView;
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListener
    public final void onAnimationCancel(View view) {
        this.f4808a = true;
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListener
    public final void onAnimationEnd(View view) {
        if (this.f4808a) {
            return;
        }
        ActionBarContextView actionBarContextView = this.f4809c;
        actionBarContextView.g = null;
        super/*android.view.View*/.setVisibility(this.b);
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListener
    public final void onAnimationStart(View view) {
        super/*android.view.View*/.setVisibility(0);
        this.f4808a = false;
    }
}
