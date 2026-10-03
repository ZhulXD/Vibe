package T0;

import S.C0168a;
import S.z;
import android.content.Context;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.MenuItem;
import p024j.C;
import p024j.I;
import p024j.p;
import p024j.s;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements C {
    public G0.b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2200c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2201d;

    @Override // p024j.C
    public final boolean d(s sVar) {
        return false;
    }

    @Override // p024j.C
    public final void e(Parcelable parcelable) {
        if (parcelable instanceof g) {
            G0.b bVar = this.b;
            g gVar = (g) parcelable;
            int i3 = gVar.b;
            int size = bVar.f2176F.f.size();
            for (int i4 = 0; i4 < size; i4++) {
                MenuItem item = bVar.f2176F.getItem(i4);
                if (i3 == item.getItemId()) {
                    bVar.f2180h = i3;
                    bVar.f2181i = i4;
                    item.setChecked(true);
                    break;
                }
            }
            Context context = this.b.getContext();
            R0.i iVar = gVar.f2199c;
            SparseArray sparseArray = new SparseArray(iVar.size());
            for (int i5 = 0; i5 < iVar.size(); i5++) {
                int iKeyAt = iVar.keyAt(i5);
                D0.c cVar = (D0.c) iVar.valueAt(i5);
                sparseArray.put(iKeyAt, cVar != null ? new D0.a(context, cVar) : null);
            }
            G0.b bVar2 = this.b;
            SparseArray sparseArray2 = bVar2.f2192t;
            for (int i6 = 0; i6 < sparseArray.size(); i6++) {
                int iKeyAt2 = sparseArray.keyAt(i6);
                if (sparseArray2.indexOfKey(iKeyAt2) < 0) {
                    sparseArray2.append(iKeyAt2, (D0.a) sparseArray.get(iKeyAt2));
                }
            }
            d[] dVarArr = bVar2.g;
            if (dVarArr != null) {
                for (d dVar : dVarArr) {
                    D0.a aVar = (D0.a) sparseArray2.get(dVar.getId());
                    if (aVar != null) {
                        dVar.setBadge(aVar);
                    }
                }
            }
        }
    }

    @Override // p024j.C
    public final void g(boolean z2) {
        C0168a c0168a;
        if (this.f2200c) {
            return;
        }
        if (z2) {
            this.b.b();
            return;
        }
        G0.b bVar = this.b;
        p pVar = bVar.f2176F;
        if (pVar == null || bVar.g == null) {
            return;
        }
        int size = pVar.f.size();
        if (size != bVar.g.length) {
            bVar.b();
            return;
        }
        int i3 = bVar.f2180h;
        for (int i4 = 0; i4 < size; i4++) {
            MenuItem item = bVar.f2176F.getItem(i4);
            if (item.isChecked()) {
                bVar.f2180h = item.getItemId();
                bVar.f2181i = i4;
            }
        }
        if (i3 != bVar.f2180h && (c0168a = bVar.b) != null) {
            z.a(bVar, c0168a);
        }
        int i5 = bVar.f;
        boolean z3 = i5 != -1 ? i5 == 0 : bVar.f2176F.l().size() > 3;
        for (int i6 = 0; i6 < size; i6++) {
            bVar.f2175E.f2200c = true;
            bVar.g[i6].setLabelVisibilityMode(bVar.f);
            bVar.g[i6].setShifting(z3);
            bVar.g[i6].b((s) bVar.f2176F.getItem(i6));
            bVar.f2175E.f2200c = false;
        }
    }

    @Override // p024j.C
    public final int getId() {
        return this.f2201d;
    }

    @Override // p024j.C
    public final void h(Context context, p pVar) {
        this.b.f2176F = pVar;
    }

    @Override // p024j.C
    public final boolean i() {
        return false;
    }

    @Override // p024j.C
    public final Parcelable j() {
        g gVar = new g();
        gVar.b = this.b.getSelectedItemId();
        SparseArray<D0.a> badgeDrawables = this.b.getBadgeDrawables();
        R0.i iVar = new R0.i();
        for (int i3 = 0; i3 < badgeDrawables.size(); i3++) {
            int iKeyAt = badgeDrawables.keyAt(i3);
            D0.a aVarValueAt = badgeDrawables.valueAt(i3);
            iVar.put(iKeyAt, aVarValueAt != null ? aVarValueAt.f.f795a : null);
        }
        gVar.f2199c = iVar;
        return gVar;
    }

    @Override // p024j.C
    public final boolean k(s sVar) {
        return false;
    }

    @Override // p024j.C
    public final boolean m(I i3) {
        return false;
    }

    @Override // p024j.C
    public final void a(p pVar, boolean z2) {
    }
}
