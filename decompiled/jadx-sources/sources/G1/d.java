package G1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f995a;

    public d(String version) {
        Intrinsics.checkNotNullParameter(version, "version");
        this.f995a = version;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && Intrinsics.areEqual(this.f995a, ((d) obj).f995a);
    }

    public final int hashCode() {
        return this.f995a.hashCode();
    }

    public final String toString() {
        return E.b.m("UpToDate(version=", this.f995a, ")");
    }
}
