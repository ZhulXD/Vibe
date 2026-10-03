package p023i1;

import E.b;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n extends o implements Iterable {
    public final ArrayList b = new ArrayList();

    @Override // p023i1.o
    public final BigDecimal a() {
        return h().a();
    }

    @Override // p023i1.o
    public final boolean b() {
        return h().b();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof n) && ((n) obj).b.equals(this.b);
        }
        return true;
    }

    @Override // p023i1.o
    public final String f() {
        return h().f();
    }

    public final void g(o oVar) {
        if (oVar == null) {
            oVar = q.b;
        }
        this.b.add(oVar);
    }

    public final o h() {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        if (size == 1) {
            return (o) arrayList.get(0);
        }
        throw new IllegalStateException(b.i(size, "Array must have size 1, but has size "));
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.b.iterator();
    }
}
