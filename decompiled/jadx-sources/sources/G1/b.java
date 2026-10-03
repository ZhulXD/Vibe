package G1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f993a;
    public final boolean b;

    public b(String version, boolean z2) {
        Intrinsics.checkNotNullParameter(version, "version");
        this.f993a = version;
        this.b = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.areEqual(this.f993a, bVar.f993a) && this.b == bVar.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.f993a.hashCode() * 31);
    }

    public final String toString() {
        return "Available(version=" + this.f993a + ", declined=" + this.b + ")";
    }
}
