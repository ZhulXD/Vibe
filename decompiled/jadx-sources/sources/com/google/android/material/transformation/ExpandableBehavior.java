package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import z.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class ExpandableBehavior extends a {
    public ExpandableBehavior() {
    }

    @Override // z.a
    public abstract void f(View view);

    @Override // z.a
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
        view2.getClass();
        throw new ClassCastException();
    }

    @Override // z.a
    public final boolean k(CoordinatorLayout coordinatorLayout, View view, int i3) {
        if (!ViewCompat.isLaidOut(view)) {
            ArrayList arrayListD = coordinatorLayout.d(view);
            int size = arrayListD.size();
            for (int i4 = 0; i4 < size; i4++) {
                f(view);
            }
        }
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
    }
}
