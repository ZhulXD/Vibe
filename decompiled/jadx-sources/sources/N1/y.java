package N1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z f1500a;
    public final String b;

    public y(z status, String diagnostic) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(diagnostic, "diagnostic");
        this.f1500a = status;
        this.b = diagnostic;
    }

    public final z a() {
        return this.f1500a;
    }

    public final boolean b() {
        return this.f1500a == z.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return this.f1500a == yVar.f1500a && Intrinsics.areEqual(this.b, yVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f1500a.hashCode() * 31);
    }

    public final String toString() {
        return "VerificationResult(status=" + this.f1500a + ", diagnostic=" + this.b + ")";
    }
}
