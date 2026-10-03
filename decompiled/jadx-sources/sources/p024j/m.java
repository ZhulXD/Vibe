package p024j;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f4548a;
    public int b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4549c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f4550d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LayoutInflater f4551e;
    public final int f;

    public m(p pVar, LayoutInflater layoutInflater, boolean z2, int i3) {
        this.f4550d = z2;
        this.f4551e = layoutInflater;
        this.f4548a = pVar;
        this.f = i3;
        a();
    }

    public final void a() {
        p pVar = this.f4548a;
        s sVar = pVar.f4571v;
        if (sVar != null) {
            pVar.i();
            ArrayList arrayList = pVar.f4559j;
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                if (((s) arrayList.get(i3)) == sVar) {
                    this.b = i3;
                    return;
                }
            }
        }
        this.b = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final s getItem(int i3) {
        ArrayList arrayListL;
        boolean z2 = this.f4550d;
        p pVar = this.f4548a;
        if (z2) {
            pVar.i();
            arrayListL = pVar.f4559j;
        } else {
            arrayListL = pVar.l();
        }
        int i4 = this.b;
        if (i4 >= 0 && i3 >= i4) {
            i3++;
        }
        return (s) arrayListL.get(i3);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList arrayListL;
        boolean z2 = this.f4550d;
        p pVar = this.f4548a;
        if (z2) {
            pVar.i();
            arrayListL = pVar.f4559j;
        } else {
            arrayListL = pVar.l();
        }
        return this.b < 0 ? arrayListL.size() : arrayListL.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i3) {
        return i3;
    }

    @Override // android.widget.Adapter
    public final View getView(int i3, View view, ViewGroup viewGroup) {
        boolean z2 = false;
        if (view == null) {
            view = this.f4551e.inflate(this.f, viewGroup, false);
        }
        int i4 = getItem(i3).b;
        int i5 = i3 - 1;
        int i6 = i5 >= 0 ? getItem(i5).b : i4;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f4548a.m() && i4 != i6) {
            z2 = true;
        }
        listMenuItemView.setGroupDividerEnabled(z2);
        D d3 = (D) view;
        if (this.f4549c) {
            listMenuItemView.setForceShowIcon(true);
        }
        d3.b(getItem(i3));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
