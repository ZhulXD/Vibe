package p024j;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.minhub.gamehub.R;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4544a = -1;
    public final /* synthetic */ l b;

    public k(l lVar) {
        this.b = lVar;
        a();
    }

    public final void a() {
        p pVar = this.b.f4546d;
        s sVar = pVar.f4571v;
        if (sVar != null) {
            pVar.i();
            ArrayList arrayList = pVar.f4559j;
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                if (((s) arrayList.get(i3)) == sVar) {
                    this.f4544a = i3;
                    return;
                }
            }
        }
        this.f4544a = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final s getItem(int i3) {
        l lVar = this.b;
        p pVar = lVar.f4546d;
        pVar.i();
        ArrayList arrayList = pVar.f4559j;
        lVar.getClass();
        int i4 = this.f4544a;
        if (i4 >= 0 && i3 >= i4) {
            i3++;
        }
        return (s) arrayList.get(i3);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        l lVar = this.b;
        p pVar = lVar.f4546d;
        pVar.i();
        int size = pVar.f4559j.size();
        lVar.getClass();
        return this.f4544a < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i3) {
        return i3;
    }

    @Override // android.widget.Adapter
    public final View getView(int i3, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.b.f4545c.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
        }
        ((D) view).b(getItem(i3));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
