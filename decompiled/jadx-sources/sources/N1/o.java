package N1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1462a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1463c;

    public o(String version, String signature, String reason) {
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.f1462a = version;
        this.b = signature;
        this.f1463c = reason;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return Intrinsics.areEqual(this.f1462a, oVar.f1462a) && Intrinsics.areEqual(this.b, oVar.b) && Intrinsics.areEqual(this.f1463c, oVar.f1463c);
    }

    public final int hashCode() {
        return this.f1463c.hashCode() + E.b.d(this.b, this.f1462a.hashCode() * 31, 31);
    }

    public final String toString() {
        return kotlin.collections.unsigned.a.i(kotlin.collections.unsigned.a.j("OtaRevocation(version=", this.f1462a, ", signature=", this.b, ", reason="), this.f1463c, ")");
    }
}
