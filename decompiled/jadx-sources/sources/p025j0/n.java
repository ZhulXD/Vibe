package p025j0;

import java.util.ArrayDeque;
import p063y0.j;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n extends j {
    @Override // p063y0.j
    public final void c(Object obj, Object obj2) {
        o oVar = (o) obj;
        oVar.getClass();
        ArrayDeque arrayDeque = o.b;
        synchronized (arrayDeque) {
            arrayDeque.offer(oVar);
        }
    }
}
