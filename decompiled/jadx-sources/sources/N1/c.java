package N1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1416a;
    public final long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f1417c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f1418d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f1419e;

    public c(String version, long j2, long j3, long j4, String sha256) {
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(sha256, "sha256");
        this.f1416a = version;
        this.b = j2;
        this.f1417c = j3;
        this.f1418d = j4;
        this.f1419e = sha256;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.areEqual(this.f1416a, cVar.f1416a) && this.b == cVar.b && this.f1417c == cVar.f1417c && this.f1418d == cVar.f1418d && Intrinsics.areEqual(this.f1419e, cVar.f1419e);
    }

    public final int hashCode() {
        return Boolean.hashCode(true) + E.b.d(this.f1419e, E.b.c(this.f1418d, E.b.c(this.f1417c, E.b.c(this.b, this.f1416a.hashCode() * 31, 31), 31), 31), 31);
    }

    public final String toString() {
        return "OtaArtifactCandidate(version=" + this.f1416a + ", sequence=" + this.b + ", encryptedBytes=" + this.f1417c + ", plaintextBytes=" + this.f1418d + ", sha256=" + this.f1419e + ", decryptable=true)";
    }
}
