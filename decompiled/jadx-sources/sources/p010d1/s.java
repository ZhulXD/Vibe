package p010d1;

import android.view.View;
import android.widget.AdapterView;
import k.I0;
import k.P;
import k.T;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class s implements AdapterView.OnItemClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3960c;

    public /* synthetic */ s(int i3, Object obj) {
        this.b = i3;
        this.f3960c = obj;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i3, long j2) {
        Object item;
        switch (this.b) {
            case 0:
                u uVar = (u) this.f3960c;
                I0 i4 = uVar.f;
                if (i3 < 0) {
                    item = !i4.f4683A.isShowing() ? null : i4.f4685d.getSelectedItem();
                } else {
                    item = uVar.getAdapter().getItem(i3);
                }
                u.a(uVar, item);
                AdapterView.OnItemClickListener onItemClickListener = uVar.getOnItemClickListener();
                if (onItemClickListener != null) {
                    if (view == null || i3 < 0) {
                        view = !i4.f4683A.isShowing() ? null : i4.f4685d.getSelectedView();
                        i3 = !i4.f4683A.isShowing() ? -1 : i4.f4685d.getSelectedItemPosition();
                        j2 = !i4.f4683A.isShowing() ? Long.MIN_VALUE : i4.f4685d.getSelectedItemId();
                    }
                    onItemClickListener.onItemClick(i4.f4685d, view, i3, j2);
                }
                i4.dismiss();
                break;
            default:
                P p2 = (P) this.f3960c;
                T t2 = p2.f4727H;
                t2.setSelection(i3);
                if (t2.getOnItemClickListener() != null) {
                    t2.performItemClick(view, i3, p2.f4724E.getItemId(i3));
                }
                p2.dismiss();
                break;
        }
    }
}
