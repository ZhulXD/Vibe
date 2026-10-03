package com.google.android.material.behavior;

import E.b;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.bumptech.glide.c;
import com.minhub.gamehub.R;
import java.util.Iterator;
import java.util.LinkedHashSet;
import z.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends a {
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3291c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TimeInterpolator f3292d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TimeInterpolator f3293e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ViewPropertyAnimator f3294h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f3290a = new LinkedHashSet();
    public int f = 0;
    public int g = 2;

    public HideBottomViewOnScrollBehavior() {
    }

    @Override // z.a
    public boolean k(CoordinatorLayout coordinatorLayout, View view, int i3) {
        this.f = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        this.b = c.N(view.getContext(), R.attr.motionDurationLong2, 225);
        this.f3291c = c.N(view.getContext(), R.attr.motionDurationMedium4, 175);
        this.f3292d = c.O(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, B0.a.f292d);
        this.f3293e = c.O(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, B0.a.f291c);
        return false;
    }

    @Override // z.a
    public final void o(CoordinatorLayout coordinatorLayout, View view, int i3, int i4, int i5, int[] iArr) {
        LinkedHashSet linkedHashSet = this.f3290a;
        if (i3 > 0) {
            if (this.g == 1) {
                return;
            }
            ViewPropertyAnimator viewPropertyAnimator = this.f3294h;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                view.clearAnimation();
            }
            this.g = 1;
            Iterator it = linkedHashSet.iterator();
            if (it.hasNext()) {
                throw b.g(it);
            }
            this.f3294h = view.animate().translationY(this.f).setInterpolator(this.f3293e).setDuration(this.f3291c).setListener(new E0.a(0, this));
            return;
        }
        if (i3 >= 0 || this.g == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator2 = this.f3294h;
        if (viewPropertyAnimator2 != null) {
            viewPropertyAnimator2.cancel();
            view.clearAnimation();
        }
        this.g = 2;
        Iterator it2 = linkedHashSet.iterator();
        if (it2.hasNext()) {
            throw b.g(it2);
        }
        this.f3294h = view.animate().translationY(0).setInterpolator(this.f3292d).setDuration(this.b).setListener(new E0.a(0, this));
    }

    @Override // z.a
    public boolean s(View view, int i3, int i4) {
        return i3 == 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
    }
}
