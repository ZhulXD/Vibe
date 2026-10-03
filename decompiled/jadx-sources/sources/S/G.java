package S;

import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class G {
    public static int a(ViewGroup viewGroup, int i3) {
        return viewGroup.getChildDrawingOrder(i3);
    }

    public static void b(ViewGroup viewGroup, boolean z2) {
        viewGroup.suppressLayout(z2);
    }
}
