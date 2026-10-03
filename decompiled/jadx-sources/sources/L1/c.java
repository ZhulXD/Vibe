package L1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f1286a;
    public final b b;

    public c(a build, b match) {
        Intrinsics.checkNotNullParameter(build, "build");
        Intrinsics.checkNotNullParameter(match, "match");
        this.f1286a = build;
        this.b = match;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.areEqual(this.f1286a, cVar.f1286a) && this.b == cVar.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f1286a.hashCode() * 31);
    }

    public final String toString() {
        return "Selection(build=" + this.f1286a + ", match=" + this.b + ")";
    }
}
