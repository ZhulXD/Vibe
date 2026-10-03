package k;

import android.database.DataSetObserver;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class F0 extends DataSetObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ I0 f4679a;

    public F0(I0 i3) {
        this.f4679a = i3;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        I0 i3 = this.f4679a;
        if (i3.f4683A.isShowing()) {
            i3.c();
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        this.f4679a.dismiss();
    }
}
