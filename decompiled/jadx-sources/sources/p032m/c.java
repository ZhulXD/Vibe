package p032m;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Map.Entry {
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f5101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c f5102d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c f5103e;

    public c(Object obj, Object obj2) {
        this.b = obj;
        this.f5101c = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.b.equals(cVar.b) && this.f5101c.equals(cVar.f5101c);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f5101c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.b.hashCode() ^ this.f5101c.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public final String toString() {
        return this.b + "=" + this.f5101c;
    }
}
