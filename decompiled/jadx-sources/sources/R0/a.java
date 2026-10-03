package R0;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.chip.ChipGroup;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f1858a = new HashMap();
    public final HashSet b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public M0.g f1859c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1860d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1861e;

    public final boolean a(h hVar) {
        int id = hVar.getId();
        Integer numValueOf = Integer.valueOf(id);
        HashSet hashSet = this.b;
        if (hashSet.contains(numValueOf)) {
            return false;
        }
        h hVar2 = (h) this.f1858a.get(Integer.valueOf(c()));
        if (hVar2 != null) {
            e(hVar2, false);
        }
        boolean zAdd = hashSet.add(Integer.valueOf(id));
        if (!hVar.isChecked()) {
            hVar.setChecked(true);
        }
        return zAdd;
    }

    public final ArrayList b(ViewGroup viewGroup) {
        HashSet hashSet = new HashSet(this.b);
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
            View childAt = viewGroup.getChildAt(i3);
            if ((childAt instanceof h) && hashSet.contains(Integer.valueOf(childAt.getId()))) {
                arrayList.add(Integer.valueOf(childAt.getId()));
            }
        }
        return arrayList;
    }

    public final int c() {
        if (!this.f1860d) {
            return -1;
        }
        HashSet hashSet = this.b;
        if (hashSet.isEmpty()) {
            return -1;
        }
        return ((Integer) hashSet.iterator().next()).intValue();
    }

    public final void d() {
        M0.g gVar = this.f1859c;
        if (gVar != null) {
            new HashSet(this.b);
            ChipGroup chipGroup = gVar.f1352a;
            M0.j jVar = chipGroup.f3403h;
            if (jVar != null) {
                chipGroup.f3404i.b(chipGroup);
                ChipGroup chipGroup2 = ((M0.g) jVar).f1352a;
                if (chipGroup2.f3404i.f1860d) {
                    chipGroup2.getCheckedChipId();
                    throw null;
                }
            }
        }
    }

    public final boolean e(h hVar, boolean z2) {
        int id = hVar.getId();
        Integer numValueOf = Integer.valueOf(id);
        HashSet hashSet = this.b;
        if (!hashSet.contains(numValueOf)) {
            return false;
        }
        if (z2 && hashSet.size() == 1 && hashSet.contains(Integer.valueOf(id))) {
            hVar.setChecked(true);
            return false;
        }
        boolean zRemove = hashSet.remove(Integer.valueOf(id));
        if (hVar.isChecked()) {
            hVar.setChecked(false);
        }
        return zRemove;
    }
}
