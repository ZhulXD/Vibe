package A1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class K {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Z f68a;
    public final String b;

    public K(Z record, String token) {
        Intrinsics.checkNotNullParameter(record, "record");
        Intrinsics.checkNotNullParameter(token, "token");
        this.f68a = record;
        this.b = token;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof K)) {
            return false;
        }
        K k2 = (K) obj;
        return Intrinsics.areEqual(this.f68a, k2.f68a) && Intrinsics.areEqual(this.b, k2.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f68a.hashCode() * 31);
    }

    public final String toString() {
        return "CloseContext(record=" + this.f68a + ", token=" + this.b + ")";
    }
}
