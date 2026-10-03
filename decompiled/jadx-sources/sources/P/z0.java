package P;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class z0 extends AccessibilityDelegateCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final A0 f1827a;
    public final WeakHashMap b = new WeakHashMap();

    public z0(A0 a3) {
        this.f1827a = a3;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.b.get(view);
        return accessibilityDelegateCompat != null ? accessibilityDelegateCompat.dispatchPopulateAccessibilityEvent(view, accessibilityEvent) : super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.b.get(view);
        return accessibilityDelegateCompat != null ? accessibilityDelegateCompat.getAccessibilityNodeProvider(view) : super.getAccessibilityNodeProvider(view);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.b.get(view);
        if (accessibilityDelegateCompat != null) {
            accessibilityDelegateCompat.onInitializeAccessibilityEvent(view, accessibilityEvent);
        } else {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        A0 a3 = this.f1827a;
        RecyclerView recyclerView = a3.f1525a;
        RecyclerView recyclerView2 = a3.f1525a;
        if (recyclerView.M() || recyclerView2.getLayoutManager() == null) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            return;
        }
        recyclerView2.getLayoutManager().a0(view, accessibilityNodeInfoCompat);
        AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.b.get(view);
        if (accessibilityDelegateCompat != null) {
            accessibilityDelegateCompat.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        } else {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.b.get(view);
        if (accessibilityDelegateCompat != null) {
            accessibilityDelegateCompat.onPopulateAccessibilityEvent(view, accessibilityEvent);
        } else {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.b.get(viewGroup);
        return accessibilityDelegateCompat != null ? accessibilityDelegateCompat.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent) : super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final boolean performAccessibilityAction(View view, int i3, Bundle bundle) {
        A0 a3 = this.f1827a;
        RecyclerView recyclerView = a3.f1525a;
        RecyclerView recyclerView2 = a3.f1525a;
        if (recyclerView.M() || recyclerView2.getLayoutManager() == null) {
            return super.performAccessibilityAction(view, i3, bundle);
        }
        AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.b.get(view);
        if (accessibilityDelegateCompat != null) {
            if (accessibilityDelegateCompat.performAccessibilityAction(view, i3, bundle)) {
                return true;
            }
        } else if (super.performAccessibilityAction(view, i3, bundle)) {
            return true;
        }
        o0 o0Var = recyclerView2.getLayoutManager().b.f2981d;
        return false;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void sendAccessibilityEvent(View view, int i3) {
        AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.b.get(view);
        if (accessibilityDelegateCompat != null) {
            accessibilityDelegateCompat.sendAccessibilityEvent(view, i3);
        } else {
            super.sendAccessibilityEvent(view, i3);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.b.get(view);
        if (accessibilityDelegateCompat != null) {
            accessibilityDelegateCompat.sendAccessibilityEventUnchecked(view, accessibilityEvent);
        } else {
            super.sendAccessibilityEventUnchecked(view, accessibilityEvent);
        }
    }
}
