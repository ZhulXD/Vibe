package androidx.core.widget;

import android.widget.ListView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class ListViewCompat {
    private ListViewCompat() {
    }

    @Deprecated
    public static boolean canScrollList(ListView listView, int i3) {
        return listView.canScrollList(i3);
    }

    @Deprecated
    public static void scrollListBy(ListView listView, int i3) {
        listView.scrollListBy(i3);
    }
}
