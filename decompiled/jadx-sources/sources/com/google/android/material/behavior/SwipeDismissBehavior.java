package com.google.android.material.behavior;

import D.e;
import E0.b;
import E0.c;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import z.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public e f3295a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3296c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3297d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f3298e = 0.0f;
    public float f = 0.5f;
    public final b g = new b(this);

    @Override // z.a
    public boolean j(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean zI = this.b;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zI = coordinatorLayout.i(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.b = zI;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.b = false;
        }
        if (zI) {
            if (this.f3295a == null) {
                this.f3295a = new e(coordinatorLayout.getContext(), coordinatorLayout, this.g);
            }
            if (!this.f3296c && this.f3295a.p(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // z.a
    public final boolean k(CoordinatorLayout coordinatorLayout, View view, int i3) {
        if (ViewCompat.getImportantForAccessibility(view) == 0) {
            ViewCompat.setImportantForAccessibility(view, 1);
            ViewCompat.removeAccessibilityAction(view, 1048576);
            if (v(view)) {
                ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new c(this));
            }
        }
        return false;
    }

    @Override // z.a
    public final boolean u(View view, MotionEvent motionEvent) {
        if (this.f3295a == null) {
            return false;
        }
        if (this.f3296c && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.f3295a.j(motionEvent);
        return true;
    }

    public boolean v(View view) {
        return true;
    }
}
