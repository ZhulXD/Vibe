package X;

import P.C0149h0;
import P.InterfaceC0151i0;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements InterfaceC0151i0 {
    @Override // P.InterfaceC0151i0
    public final void a(View view) {
        C0149h0 c0149h0 = (C0149h0) view.getLayoutParams();
        if (((ViewGroup.MarginLayoutParams) c0149h0).width != -1 || ((ViewGroup.MarginLayoutParams) c0149h0).height != -1) {
            throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
        }
    }

    @Override // P.InterfaceC0151i0
    public final void d(View view) {
    }
}
