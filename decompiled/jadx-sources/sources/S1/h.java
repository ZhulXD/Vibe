package S1;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f2063a;
    public final long b;

    public h(List addresses, long j2) {
        Intrinsics.checkNotNullParameter(addresses, "addresses");
        this.f2063a = addresses;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return Intrinsics.areEqual(this.f2063a, hVar.f2063a) && this.b == hVar.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (this.f2063a.hashCode() * 31);
    }

    public final String toString() {
        return "Route(addresses=" + this.f2063a + ", expiresAt=" + this.b + ")";
    }
}
