package M0;

import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.chip.Chip;
import com.minhub.gamehub.R;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends D.b {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final /* synthetic */ Chip f1294n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Chip chip, Chip chip2) {
        super(chip2);
        this.f1294n = chip;
    }

    @Override // D.b
    public final int e(float f, float f3) {
        Rect rect = Chip.f3384y;
        Chip chip = this.f1294n;
        return (chip.d() && chip.getCloseIconTouchBounds().contains(f, f3)) ? 1 : 0;
    }

    @Override // D.b
    public final void f(ArrayList arrayList) {
        f fVar;
        arrayList.add(0);
        Rect rect = Chip.f3384y;
        Chip chip = this.f1294n;
        if (!chip.d() || (fVar = chip.f) == null || !fVar.f1313L || chip.f3387i == null) {
            return;
        }
        arrayList.add(1);
    }

    @Override // D.b
    public final boolean j(int i3, int i4, Bundle bundle) {
        boolean z2 = false;
        if (i4 == 16) {
            Chip chip = this.f1294n;
            if (i3 == 0) {
                return chip.performClick();
            }
            if (i3 == 1) {
                chip.playSoundEffect(0);
                View.OnClickListener onClickListener = chip.f3387i;
                if (onClickListener != null) {
                    onClickListener.onClick(chip);
                    z2 = true;
                }
                if (chip.f3399u) {
                    chip.f3398t.o(1, 1);
                }
            }
        }
        return z2;
    }

    @Override // D.b
    public final void k(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        Chip chip = this.f1294n;
        f fVar = chip.f;
        accessibilityNodeInfoCompat.setCheckable(fVar != null && fVar.f1319R);
        accessibilityNodeInfoCompat.setClickable(chip.isClickable());
        accessibilityNodeInfoCompat.setClassName(chip.getAccessibilityClassName());
        accessibilityNodeInfoCompat.setText(chip.getText());
    }

    @Override // D.b
    public final void l(int i3, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (i3 != 1) {
            accessibilityNodeInfoCompat.setContentDescription("");
            accessibilityNodeInfoCompat.setBoundsInParent(Chip.f3384y);
            return;
        }
        Chip chip = this.f1294n;
        CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
        if (closeIconContentDescription != null) {
            accessibilityNodeInfoCompat.setContentDescription(closeIconContentDescription);
        } else {
            CharSequence text = chip.getText();
            accessibilityNodeInfoCompat.setContentDescription(chip.getContext().getString(R.string.mtrl_chip_close_icon_content_description, TextUtils.isEmpty(text) ? "" : text).trim());
        }
        accessibilityNodeInfoCompat.setBoundsInParent(chip.getCloseIconTouchBoundsInt());
        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        accessibilityNodeInfoCompat.setEnabled(chip.isEnabled());
    }

    @Override // D.b
    public final void m(int i3, boolean z2) {
        if (i3 == 1) {
            Chip chip = this.f1294n;
            chip.f3393o = z2;
            chip.refreshDrawableState();
        }
    }
}
