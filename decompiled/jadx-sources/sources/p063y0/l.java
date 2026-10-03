package p063y0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Class f6023a;
    public Class b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Class f6024c;

    public l(Class cls, Class cls2, Class cls3) {
        this.f6023a = cls;
        this.b = cls2;
        this.f6024c = cls3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return this.f6023a.equals(lVar.f6023a) && this.b.equals(lVar.b) && n.b(this.f6024c, lVar.f6024c);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.f6023a.hashCode() * 31)) * 31;
        Class cls = this.f6024c;
        return iHashCode + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.f6023a + ", second=" + this.b + '}';
    }
}
