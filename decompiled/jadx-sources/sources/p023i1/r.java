package p023i1;

import p028k1.m;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class r extends o {
    public final m b = new m(false);

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof r) && ((r) obj).b.equals(this.b);
        }
        return true;
    }

    public final void g(String str, o oVar) {
        if (oVar == null) {
            oVar = q.b;
        }
        this.b.put(str, oVar);
    }

    public final void h(String str, Boolean bool) {
        g(str, new s(bool));
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final void i(String str, Number number) {
        g(str, new s(number));
    }

    public final void j(String str, String str2) {
        g(str, str2 == null ? q.b : new s(str2));
    }

    public final o k(String str) {
        return (o) this.b.get(str);
    }
}
