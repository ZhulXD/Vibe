package k;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class B0 implements AdapterView.OnItemSelectedListener {
    public final /* synthetic */ I0 b;

    public B0(I0 i3) {
        this.b = i3;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i3, long j2) {
        C0320v0 c0320v0;
        if (i3 == -1 || (c0320v0 = this.b.f4685d) == null) {
            return;
        }
        c0320v0.setListSelectionHidden(false);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
