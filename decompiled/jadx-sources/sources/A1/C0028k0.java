package A1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: A1.k0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0028k0 implements InterfaceC0032m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f201a;

    public C0028k0(String requestId) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.f201a = requestId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0028k0) && Intrinsics.areEqual(this.f201a, ((C0028k0) obj).f201a);
    }

    public final int hashCode() {
        return this.f201a.hashCode();
    }

    public final String toString() {
        return E.b.m("Superseded(requestId=", this.f201a, ")");
    }
}
