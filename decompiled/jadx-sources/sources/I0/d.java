package I0;

import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends AccessibilityDelegateCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialButtonToggleGroup f1165a;

    public d(MaterialButtonToggleGroup materialButtonToggleGroup) {
        this.f1165a = materialButtonToggleGroup;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        int i3;
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        int i4 = MaterialButtonToggleGroup.f3365l;
        if (view instanceof MaterialButton) {
            int i5 = 0;
            int i6 = 0;
            while (true) {
                MaterialButtonToggleGroup materialButtonToggleGroup = this.f1165a;
                if (i5 >= materialButtonToggleGroup.getChildCount()) {
                    break;
                }
                if (materialButtonToggleGroup.getChildAt(i5) == view) {
                    i3 = i6;
                } else {
                    if ((materialButtonToggleGroup.getChildAt(i5) instanceof MaterialButton) && materialButtonToggleGroup.c(i5)) {
                        i6++;
                    }
                    i5++;
                }
            }
            i3 = -1;
        } else {
            i3 = -1;
        }
        accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, i3, 1, false, ((MaterialButton) view).f3362p));
    }
}
