package k;

import android.widget.AbsListView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class G0 implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ I0 f4680a;

    public G0(I0 i3) {
        this.f4680a = i3;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i3) {
        I0 i4 = this.f4680a;
        E0 e2 = i4.f4698s;
        D d3 = i4.f4683A;
        if (i3 != 1 || d3.getInputMethodMode() == 2 || d3.getContentView() == null) {
            return;
        }
        i4.f4702w.removeCallbacks(e2);
        e2.run();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i3, int i4, int i5) {
    }
}
