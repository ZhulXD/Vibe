package p016g0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f4319a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Class f4320c;

    public e(f fVar) {
        this.f4319a = fVar;
    }

    @Override // p016g0.i
    public final void a() {
        this.f4319a.a(this);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (this.b == eVar.b && this.f4320c == eVar.f4320c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i3 = this.b * 31;
        Class cls = this.f4320c;
        return i3 + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "Key{size=" + this.b + "array=" + this.f4320c + '}';
    }
}
