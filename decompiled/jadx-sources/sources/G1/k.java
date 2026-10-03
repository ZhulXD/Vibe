package G1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l f1005a;
    public final String b;

    public /* synthetic */ k(l lVar) {
        this(lVar, "");
    }

    public final String a() {
        return this.b;
    }

    public final l b() {
        return this.f1005a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f1005a == kVar.f1005a && Intrinsics.areEqual(this.b, kVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f1005a.hashCode() * 31);
    }

    public final String toString() {
        return "RuntimePatchV2Result(status=" + this.f1005a + ", diagnostic=" + this.b + ")";
    }

    public k(l status, String diagnostic) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(diagnostic, "diagnostic");
        this.f1005a = status;
        this.b = diagnostic;
    }
}
