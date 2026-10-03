package P;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class A0 extends AccessibilityDelegateCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RecyclerView f1525a;
    public final z0 b;

    public A0(RecyclerView recyclerView) {
        this.f1525a = recyclerView;
        z0 z0Var = this.b;
        if (z0Var != null) {
            this.b = z0Var;
        } else {
            this.b = new z0(this);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || this.f1525a.M()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().X(accessibilityEvent);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        RecyclerView recyclerView = this.f1525a;
        if (recyclerView.M() || recyclerView.getLayoutManager() == null) {
            return;
        }
        AbstractC0147g0 layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.b;
        layoutManager.Y(recyclerView2.f2981d, recyclerView2.f2990i0, accessibilityNodeInfoCompat);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final boolean performAccessibilityAction(View view, int i3, Bundle bundle) {
        if (super.performAccessibilityAction(view, i3, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.f1525a;
        if (recyclerView.M() || recyclerView.getLayoutManager() == null) {
            return false;
        }
        AbstractC0147g0 layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.b;
        return layoutManager.l0(recyclerView2.f2981d, recyclerView2.f2990i0, i3, bundle);
    }
}
