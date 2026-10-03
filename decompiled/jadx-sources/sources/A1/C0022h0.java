package A1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: A1.h0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0022h0 implements InterfaceC0032m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f193a;
    public final EnumC0014d0 b;

    public C0022h0(String requestId, EnumC0014d0 reason) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.f193a = requestId;
        this.b = reason;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0022h0)) {
            return false;
        }
        C0022h0 c0022h0 = (C0022h0) obj;
        return Intrinsics.areEqual(this.f193a, c0022h0.f193a) && this.b == c0022h0.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f193a.hashCode() * 31);
    }

    public final String toString() {
        return "Failed(requestId=" + this.f193a + ", reason=" + this.b + ")";
    }
}
