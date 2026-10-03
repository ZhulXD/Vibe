package p007c1;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3153a;
    public final /* synthetic */ h b;

    public g(h hVar, View view) {
        this.b = hVar;
        this.f3153a = view;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        View view2 = this.f3153a;
        if (view2.getVisibility() == 0) {
            this.b.c(view2);
        }
    }
}
