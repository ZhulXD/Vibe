package N1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1425a;
    public final long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f1426c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1427d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f1428e;

    public f(String version, long j2, long j3, String sha256, String fileName) {
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(sha256, "sha256");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        this.f1425a = version;
        this.b = j2;
        this.f1426c = j3;
        this.f1427d = sha256;
        this.f1428e = fileName;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return Intrinsics.areEqual(this.f1425a, fVar.f1425a) && this.b == fVar.b && this.f1426c == fVar.f1426c && Intrinsics.areEqual(this.f1427d, fVar.f1427d) && Intrinsics.areEqual(this.f1428e, fVar.f1428e);
    }

    public final int hashCode() {
        return this.f1428e.hashCode() + E.b.d(this.f1427d, E.b.c(this.f1426c, E.b.c(this.b, this.f1425a.hashCode() * 31, 31), 31), 31);
    }

    public final String toString() {
        return "OtaArtifactRecord(version=" + this.f1425a + ", sequence=" + this.b + ", size=" + this.f1426c + ", sha256=" + this.f1427d + ", fileName=" + this.f1428e + ")";
    }
}
