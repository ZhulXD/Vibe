package p024j;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class y implements G, C, AdapterView.OnItemClickListener {
    public Rect b;

    public static int o(ListAdapter listAdapter, Context context, int i3) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i4 = 0;
        int i5 = 0;
        FrameLayout frameLayout = null;
        View view = null;
        for (int i6 = 0; i6 < count; i6++) {
            int itemViewType = listAdapter.getItemViewType(i6);
            if (itemViewType != i5) {
                view = null;
                i5 = itemViewType;
            }
            if (frameLayout == null) {
                frameLayout = new FrameLayout(context);
            }
            view = listAdapter.getView(i6, view, frameLayout);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i3) {
                return i3;
            }
            if (measuredWidth > i4) {
                i4 = measuredWidth;
            }
        }
        return i4;
    }

    @Override // p024j.C
    public final boolean d(s sVar) {
        return false;
    }

    @Override // p024j.C
    public final int getId() {
        return 0;
    }

    @Override // p024j.C
    public final boolean k(s sVar) {
        return false;
    }

    public abstract void n(p pVar);

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i3, long j2) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        (listAdapter instanceof HeaderViewListAdapter ? (m) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (m) listAdapter).f4548a.q((MenuItem) listAdapter.getItem(i3), this, !(this instanceof ViewOnKeyListenerC0271j) ? 0 : 4);
    }

    public abstract void p(View view);

    public abstract void q(boolean z2);

    public abstract void r(int i3);

    public abstract void s(int i3);

    public abstract void t(PopupWindow.OnDismissListener onDismissListener);

    public abstract void u(boolean z2);

    public abstract void v(int i3);

    @Override // p024j.C
    public final void h(Context context, p pVar) {
    }
}
