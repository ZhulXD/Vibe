package p064y1;

import E.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class D1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6050a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6051c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f6052d;

    public D1(int i3, int i4, int i5, long j2) {
        this.f6050a = i3;
        this.b = i4;
        this.f6051c = i5;
        this.f6052d = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof D1)) {
            return false;
        }
        D1 d3 = (D1) obj;
        return this.f6050a == d3.f6050a && this.b == d3.b && this.f6051c == d3.f6051c && this.f6052d == d3.f6052d;
    }

    public final int hashCode() {
        return Long.hashCode(this.f6052d) + b.a(this.f6051c, b.a(this.b, Integer.hashCode(this.f6050a) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbP = b.p("Report(prepared=", this.f6050a, this.b, ", upToDate=", ", failed=");
        sbP.append(this.f6051c);
        sbP.append(", millis=");
        sbP.append(this.f6052d);
        sbP.append(")");
        return sbP.toString();
    }
}
