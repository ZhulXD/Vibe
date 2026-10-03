package M0;

import A1.C0009b;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k implements ViewGroup.OnHierarchyChangeListener {
    public ViewGroup.OnHierarchyChangeListener b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ChipGroup f1353c;

    public k(ChipGroup chipGroup) {
        this.f1353c = chipGroup;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewAdded(View view, View view2) {
        ChipGroup chipGroup = this.f1353c;
        if (view == chipGroup && (view2 instanceof Chip)) {
            if (view2.getId() == -1) {
                view2.setId(ViewCompat.generateViewId());
            }
            R0.a aVar = chipGroup.f3404i;
            Chip chip = (Chip) view2;
            aVar.f1858a.put(Integer.valueOf(chip.getId()), chip);
            if (chip.isChecked()) {
                aVar.a(chip);
            }
            chip.setInternalOnCheckedChangeListener(new C0009b(aVar));
        }
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.b;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewAdded(view, view2);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewRemoved(View view, View view2) {
        ChipGroup chipGroup = this.f1353c;
        if (view == chipGroup && (view2 instanceof Chip)) {
            R0.a aVar = chipGroup.f3404i;
            Chip chip = (Chip) view2;
            aVar.getClass();
            chip.setInternalOnCheckedChangeListener(null);
            aVar.f1858a.remove(Integer.valueOf(chip.getId()));
            aVar.b.remove(Integer.valueOf(chip.getId()));
        }
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.b;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewRemoved(view, view2);
        }
    }
}
