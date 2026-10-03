package I1;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1173a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1174c;

    public b(String id, String version, String sha256) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(sha256, "sha256");
        this.f1173a = id;
        this.b = version;
        this.f1174c = sha256;
        if (StringsKt.isBlank(id) || id.length() > 256) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (StringsKt.isBlank(version) || version.length() > 128) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (!new Regex("[0-9a-f]{64}").matches(sha256)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.areEqual(this.f1173a, bVar.f1173a) && Intrinsics.areEqual(this.b, bVar.b) && Intrinsics.areEqual(this.f1174c, bVar.f1174c);
    }

    public final int hashCode() {
        return this.f1174c.hashCode() + E.b.d(this.b, this.f1173a.hashCode() * 31, 31);
    }

    public final String toString() {
        return kotlin.collections.unsigned.a.i(kotlin.collections.unsigned.a.j("RuntimeArtifactRef(id=", this.f1173a, ", version=", this.b, ", sha256="), this.f1174c, ")");
    }
}
