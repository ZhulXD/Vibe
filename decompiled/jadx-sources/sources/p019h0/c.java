package p019h0;

import java.util.ArrayDeque;
import p063y0.n;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayDeque f4361a;

    public c(int i3) {
        switch (i3) {
            case 1:
                char[] cArr = n.f6026a;
                this.f4361a = new ArrayDeque(0);
                break;
            default:
                this.f4361a = new ArrayDeque();
                break;
        }
    }

    public synchronized void a(p006c0.c cVar) {
        cVar.b = null;
        cVar.f3125c = null;
        this.f4361a.offer(cVar);
    }
}
