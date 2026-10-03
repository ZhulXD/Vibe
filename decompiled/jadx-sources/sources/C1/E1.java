package C1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class E1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f422a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f423c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f424d;

    public /* synthetic */ E1() {
        this(1, 1, false, null);
    }

    public static E1 a(E1 e2, int i3, boolean z2, String str, int i4) {
        if ((i4 & 1) != 0) {
            i3 = e2.f422a;
        }
        int i5 = e2.b;
        if ((i4 & 4) != 0) {
            z2 = e2.f423c;
        }
        if ((i4 & 8) != 0) {
            str = e2.f424d;
        }
        e2.getClass();
        return new E1(i3, i5, z2, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof E1)) {
            return false;
        }
        E1 e2 = (E1) obj;
        return this.f422a == e2.f422a && this.b == e2.b && this.f423c == e2.f423c && Intrinsics.areEqual(this.f424d, e2.f424d);
    }

    public final int hashCode() {
        int iB = E.b.b(E.b.a(this.b, Integer.hashCode(this.f422a) * 31, 31), 31, this.f423c);
        String str = this.f424d;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbP = E.b.p("OnlineCatalogPagerState(page=", this.f422a, this.b, ", totalPages=", ", isLoading=");
        sbP.append(this.f423c);
        sbP.append(", errorMessage=");
        sbP.append(this.f424d);
        sbP.append(")");
        return sbP.toString();
    }

    public E1(int i3, int i4, boolean z2, String str) {
        this.f422a = i3;
        this.b = i4;
        this.f423c = z2;
        this.f424d = str;
    }
}
