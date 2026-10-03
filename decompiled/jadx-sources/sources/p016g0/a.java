package p016g0;

import java.util.ArrayDeque;
import p025j0.B;
import p025j0.C0274c;
import p025j0.q;
import p025j0.r;
import p025j0.y;
import p063y0.n;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a implements r {
    public final Object b;

    public a() {
        char[] cArr = n.f6026a;
        this.b = new ArrayDeque(20);
    }

    public void a(i iVar) {
        ArrayDeque arrayDeque = (ArrayDeque) this.b;
        if (arrayDeque.size() < 20) {
            arrayDeque.offer(iVar);
        }
    }

    @Override // p025j0.r
    public q l(y yVar) {
        return new C0274c(2, (B) this.b);
    }

    public a(B b) {
        this.b = b;
    }
}
