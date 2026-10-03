package H0;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.NavigationMenuItemView;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends AccessibilityDelegateCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1070a;
    public final /* synthetic */ Object b;

    public /* synthetic */ k(int i3, Object obj) {
        this.f1070a = i3;
        this.b = obj;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        switch (this.f1070a) {
            case 1:
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                accessibilityEvent.setChecked(((CheckableImageButton) this.b).f3475e);
                break;
            default:
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                break;
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        switch (this.f1070a) {
            case 0:
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                if (!((o) this.b).f1077h) {
                    accessibilityNodeInfoCompat.setDismissable(false);
                } else {
                    accessibilityNodeInfoCompat.addAction(1048576);
                    accessibilityNodeInfoCompat.setDismissable(true);
                }
                break;
            case 1:
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                CheckableImageButton checkableImageButton = (CheckableImageButton) this.b;
                accessibilityNodeInfoCompat.setCheckable(checkableImageButton.f);
                accessibilityNodeInfoCompat.setChecked(checkableImageButton.f3475e);
                break;
            case 2:
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCheckable(((NavigationMenuItemView) this.b).f3486y);
                break;
            default:
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                com.google.android.material.datepicker.l lVar = (com.google.android.material.datepicker.l) this.b;
                accessibilityNodeInfoCompat.setHintText(lVar.f3432m.getVisibility() == 0 ? lVar.getString(R.string.mtrl_picker_toggle_to_year_selection) : lVar.getString(R.string.mtrl_picker_toggle_to_day_selection));
                break;
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public boolean performAccessibilityAction(View view, int i3, Bundle bundle) {
        switch (this.f1070a) {
            case 0:
                if (i3 == 1048576) {
                    o oVar = (o) this.b;
                    if (oVar.f1077h) {
                        oVar.cancel();
                        return true;
                    }
                }
                return super.performAccessibilityAction(view, i3, bundle);
            default:
                return super.performAccessibilityAction(view, i3, bundle);
        }
    }
}
