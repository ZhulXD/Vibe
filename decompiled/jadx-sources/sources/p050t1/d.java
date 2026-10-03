package p050t1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f5331a;
    public final String b;

    public d(c target, String relativePath) {
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        this.f5331a = target;
        this.b = relativePath;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f5331a == dVar.f5331a && Intrinsics.areEqual(this.b, dVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f5331a.hashCode() * 31);
    }

    public final String toString() {
        return "RoutedCheatAssetRequest(target=" + this.f5331a + ", relativePath=" + this.b + ")";
    }
}
