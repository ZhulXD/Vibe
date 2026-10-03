package N1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1447a;
    public final String b;

    public l(boolean z2, String signature) {
        Intrinsics.checkNotNullParameter(signature, "signature");
        this.f1447a = z2;
        this.b = signature;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f1447a == lVar.f1447a && Intrinsics.areEqual(this.b, lVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Boolean.hashCode(this.f1447a) * 31);
    }

    public final String toString() {
        return "OtaKillSwitch(enabled=" + this.f1447a + ", signature=" + this.b + ")";
    }
}
