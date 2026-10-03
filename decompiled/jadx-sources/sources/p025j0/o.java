package p025j0;

import java.util.ArrayDeque;
import p063y0.n;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o {
    public static final ArrayDeque b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f4636a;

    static {
        char[] cArr = n.f6026a;
        b = new ArrayDeque(0);
    }

    public static o a(Object obj) {
        o oVar;
        ArrayDeque arrayDeque = b;
        synchronized (arrayDeque) {
            oVar = (o) arrayDeque.poll();
        }
        if (oVar == null) {
            oVar = new o();
        }
        oVar.f4636a = obj;
        return oVar;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof o) && this.f4636a.equals(((o) obj).f4636a);
    }

    public final int hashCode() {
        return this.f4636a.hashCode();
    }
}
