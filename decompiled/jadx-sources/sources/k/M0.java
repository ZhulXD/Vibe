package k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class M0 extends C0320v0 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f4715n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f4716o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public J0 f4717p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public p024j.s f4718q;

    public M0(Context context, boolean z2) {
        super(context, z2);
        if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
            this.f4715n = 21;
            this.f4716o = 22;
        } else {
            this.f4715n = 22;
            this.f4716o = 21;
        }
    }

    @Override // k.C0320v0, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        p024j.m mVar;
        int headersCount;
        int iPointToPosition;
        int i3;
        if (this.f4717p != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                headersCount = headerViewListAdapter.getHeadersCount();
                mVar = (p024j.m) headerViewListAdapter.getWrappedAdapter();
            } else {
                mVar = (p024j.m) adapter;
                headersCount = 0;
            }
            p024j.s sVarB = (motionEvent.getAction() == 10 || (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i3 = iPointToPosition - headersCount) < 0 || i3 >= mVar.getCount()) ? null : mVar.getItem(i3);
            p024j.s sVar = this.f4718q;
            if (sVar != sVarB) {
                p024j.p pVar = mVar.f4548a;
                if (sVar != null) {
                    this.f4717p.d(pVar, sVar);
                }
                this.f4718q = sVarB;
                if (sVarB != null) {
                    this.f4717p.k(pVar, sVarB);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i3, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i3 == this.f4715n) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i3 != this.f4716o) {
            return super.onKeyDown(i3, keyEvent);
        }
        setSelection(-1);
        ListAdapter adapter = getAdapter();
        (adapter instanceof HeaderViewListAdapter ? (p024j.m) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (p024j.m) adapter).f4548a.c(false);
        return true;
    }

    public void setHoverListener(J0 j2) {
        this.f4717p = j2;
    }

    @Override // k.C0320v0, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}
