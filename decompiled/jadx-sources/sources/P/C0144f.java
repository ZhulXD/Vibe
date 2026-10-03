package P;

import A1.C0009b;
import C1.C0076j0;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: P.f, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0144f {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ExecutorC0142e f1663h = new ExecutorC0142e(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0009b f1664a;
    public final C0009b b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List f1667e;
    public int g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CopyOnWriteArrayList f1666d = new CopyOnWriteArrayList();
    public List f = Collections.EMPTY_LIST;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExecutorC0142e f1665c = f1663h;

    public C0144f(C0009b c0009b, C0009b c0009b2) {
        this.f1664a = c0009b;
        this.b = c0009b2;
    }

    public final void a() {
        Iterator it = this.f1666d.iterator();
        while (it.hasNext()) {
            C0076j0 c0076j0 = ((N) it.next()).f1633a;
        }
    }
}
