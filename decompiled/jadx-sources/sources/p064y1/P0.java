package p064y1;

import E.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class P0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6115a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6116c;

    public P0(int i3, int i4, int i5) {
        this.f6115a = i3;
        this.b = i4;
        this.f6116c = i5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof P0)) {
            return false;
        }
        P0 p0 = (P0) obj;
        return this.f6115a == p0.f6115a && this.b == p0.b && this.f6116c == p0.f6116c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f6116c) + b.a(this.b, Integer.hashCode(this.f6115a) * 31, 31);
    }

    public final String toString() {
        return this.f6115a + "." + this.b + "." + this.f6116c;
    }
}
