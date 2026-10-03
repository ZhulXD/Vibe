package com.google.android.material.snackbar;

import A1.C0009b;
import Y0.e;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import p004b1.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f3508h;

    public BaseTransientBottomBar$Behavior() {
        e eVar = new e(20);
        this.f3298e = Math.min(Math.max(0.0f, 0.1f), 1.0f);
        this.f = Math.min(Math.max(0.0f, 0.6f), 1.0f);
        this.f3297d = 0;
        this.f3508h = eVar;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, z.a
    public final boolean j(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.f3508h.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                if (C0009b.f168c == null) {
                    C0009b.f168c = new C0009b(23);
                }
                synchronized (C0009b.f168c.b) {
                }
            }
        } else if (coordinatorLayout.i(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            if (C0009b.f168c == null) {
                C0009b.f168c = new C0009b(23);
            }
            synchronized (C0009b.f168c.b) {
            }
        }
        return super.j(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    public final boolean v(View view) {
        this.f3508h.getClass();
        return view instanceof b;
    }
}
