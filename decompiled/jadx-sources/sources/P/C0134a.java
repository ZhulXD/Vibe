package P;

/* JADX INFO: renamed from: P.a, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0134a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1645a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1646c;

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C0134a)) {
                return false;
            }
            C0134a c0134a = (C0134a) obj;
            int i3 = this.f1645a;
            if (i3 != c0134a.f1645a) {
                return false;
            }
            if (i3 != 8 || Math.abs(this.f1646c - this.b) != 1 || this.f1646c != c0134a.b || this.b != c0134a.f1646c) {
                return this.f1646c == c0134a.f1646c && this.b == c0134a.b;
            }
        }
        return true;
    }

    public final int hashCode() {
        return (((this.f1645a * 31) + this.b) * 31) + this.f1646c;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i3 = this.f1645a;
        if (i3 == 1) {
            str = "add";
        } else if (i3 == 2) {
            str = "rm";
        } else if (i3 != 4) {
            str = i3 != 8 ? "??" : "mv";
        } else {
            str = "up";
        }
        sb.append(str);
        sb.append(",s:");
        sb.append(this.b);
        sb.append("c:");
        sb.append(this.f1646c);
        sb.append(",p:null]");
        return sb.toString();
    }
}
