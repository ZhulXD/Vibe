package A1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: A1.i0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0024i0 implements InterfaceC0032m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f195a;

    public C0024i0(String sessionId) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        this.f195a = sessionId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0024i0) && Intrinsics.areEqual(this.f195a, ((C0024i0) obj).f195a);
    }

    public final int hashCode() {
        return this.f195a.hashCode();
    }

    public final String toString() {
        return E.b.m("Launched(sessionId=", this.f195a, ")");
    }
}
