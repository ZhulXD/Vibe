package androidx.viewpager2.adapter;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CopyOnWriteArrayList f3046a;

    public static void a(List list) {
        Iterator it = list.iterator();
        if (it.hasNext()) {
            throw E.b.g(it);
        }
    }
}
