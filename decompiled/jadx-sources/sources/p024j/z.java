package p024j;

import android.widget.PopupWindow;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class z implements PopupWindow.OnDismissListener {
    public final /* synthetic */ A b;

    public z(A a3) {
        this.b = a3;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.b.c();
    }
}
