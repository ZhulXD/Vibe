package D;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends AccessibilityNodeProviderCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f723a;

    public a(b bVar) {
        this.f723a = bVar;
    }

    @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
    public final AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i3) {
        return AccessibilityNodeInfoCompat.obtain(this.f723a.i(i3));
    }

    @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
    public final AccessibilityNodeInfoCompat findFocus(int i3) {
        b bVar = this.f723a;
        int i4 = i3 == 2 ? bVar.f731h : bVar.f732i;
        if (i4 == Integer.MIN_VALUE) {
            return null;
        }
        return createAccessibilityNodeInfo(i4);
    }

    @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
    public final boolean performAction(int i3, int i4, Bundle bundle) {
        int i5;
        b bVar = this.f723a;
        View view = bVar.f;
        if (i3 == -1) {
            return ViewCompat.performAccessibilityAction(view, i4, bundle);
        }
        if (i4 == 1) {
            return bVar.n(i3);
        }
        if (i4 == 2) {
            return bVar.a(i3);
        }
        if (i4 != 64) {
            if (i4 != 128) {
                return bVar.j(i3, i4, bundle);
            }
            if (bVar.f731h != i3) {
                return false;
            }
            bVar.f731h = Integer.MIN_VALUE;
            view.invalidate();
            bVar.o(i3, 65536);
            return true;
        }
        AccessibilityManager accessibilityManager = bVar.f730e;
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled() || (i5 = bVar.f731h) == i3) {
            return false;
        }
        if (i5 != Integer.MIN_VALUE) {
            bVar.f731h = Integer.MIN_VALUE;
            view.invalidate();
            bVar.o(i5, 65536);
        }
        bVar.f731h = i3;
        view.invalidate();
        bVar.o(i3, 32768);
        return true;
    }
}
