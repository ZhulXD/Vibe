package com.google.android.material.appbar;

import C0.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import z.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class AppBarLayout$ScrollingViewBehavior extends a {
    public final int b;

    public AppBarLayout$ScrollingViewBehavior() {
        new Rect();
        new Rect();
    }

    public static void w(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
        }
    }

    @Override // z.a
    public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (((d) view2.getLayoutParams()).f6413a instanceof AppBarLayout$BaseBehavior) {
            int bottom = view2.getBottom() - view.getTop();
            int i3 = this.b;
            ViewCompat.offsetTopAndBottom(view, bottom - (i3 == 0 ? 0 : MathUtils.clamp((int) (0.0f * i3), 0, i3)));
        }
        return false;
    }

    @Override // z.a
    public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i3, int i4, int i5) {
        int i6 = view.getLayoutParams().height;
        if (i6 != -1 && i6 != -2) {
            return false;
        }
        w(coordinatorLayout.d(view));
        return false;
    }

    @Override // z.a
    public final void p(CoordinatorLayout coordinatorLayout, View view) {
        w(coordinatorLayout.d(view));
    }

    @Override // C0.a
    public final void v(CoordinatorLayout coordinatorLayout, View view, int i3) {
        w(coordinatorLayout.d(view));
        coordinatorLayout.k(view, i3);
    }

    public AppBarLayout$ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        new Rect();
        new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, A0.a.f7D);
        this.b = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // z.a
    public final void f(View view) {
    }
}
