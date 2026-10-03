package p011e;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: renamed from: e.a, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0239a implements AdapterView.OnItemClickListener {
    public final /* synthetic */ C0243e b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0240b f4095c;

    public C0239a(C0240b c0240b, C0243e c0243e) {
        this.f4095c = c0240b;
        this.b = c0243e;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i3, long j2) {
        C0240b c0240b = this.f4095c;
        DialogInterface.OnClickListener onClickListener = c0240b.f4111s;
        C0243e c0243e = this.b;
        onClickListener.onClick(c0243e.b, i3);
        if (c0240b.f4113u) {
            return;
        }
        c0243e.b.dismiss();
    }
}
