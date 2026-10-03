package A1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: A1.l0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0030l0 implements InterfaceC0032m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f203a;

    public C0030l0(String requestId) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.f203a = requestId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0030l0) && Intrinsics.areEqual(this.f203a, ((C0030l0) obj).f203a);
    }

    public final int hashCode() {
        return this.f203a.hashCode();
    }

    public final String toString() {
        return E.b.m("WaitingForClose(requestId=", this.f203a, ")");
    }
}
