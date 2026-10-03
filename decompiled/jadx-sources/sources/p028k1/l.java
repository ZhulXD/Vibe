package p028k1;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements Map.Entry {
    public l b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l f4976c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public l f4977d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public l f4978e;
    public l f;
    public final Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f4979h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f4980i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4981j;

    public l(boolean z2) {
        this.g = null;
        this.f4979h = z2;
        this.f = this;
        this.f4978e = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.g;
            if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                Object obj3 = this.f4980i;
                if (obj3 == null) {
                    if (entry.getValue() == null) {
                        return true;
                    }
                } else if (obj3.equals(entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.g;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f4980i;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.g;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f4980i;
        return (obj2 != null ? obj2.hashCode() : 0) ^ iHashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj == null && !this.f4979h) {
            throw new NullPointerException("value == null");
        }
        Object obj2 = this.f4980i;
        this.f4980i = obj;
        return obj2;
    }

    public final String toString() {
        return this.g + "=" + this.f4980i;
    }

    public l(boolean z2, l lVar, Object obj, l lVar2, l lVar3) {
        this.b = lVar;
        this.g = obj;
        this.f4979h = z2;
        this.f4981j = 1;
        this.f4978e = lVar2;
        this.f = lVar3;
        lVar3.f4978e = this;
        lVar2.f = this;
    }
}
