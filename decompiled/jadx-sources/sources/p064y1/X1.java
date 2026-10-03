package p064y1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class X1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f6160a;
    public final String b;

    public X1(String rawJson, long j2) {
        Intrinsics.checkNotNullParameter(rawJson, "rawJson");
        this.f6160a = j2;
        this.b = rawJson;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof X1)) {
            return false;
        }
        X1 x2 = (X1) obj;
        return this.f6160a == x2.f6160a && Intrinsics.areEqual(this.b, x2.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Long.hashCode(this.f6160a) * 31);
    }

    public final String toString() {
        return "CacheEntry(fetchedAtMs=" + this.f6160a + ", rawJson=" + this.b + ")";
    }
}
