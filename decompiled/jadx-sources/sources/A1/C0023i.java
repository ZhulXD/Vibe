package A1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: A1.i, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0023i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f194a;
    public final String b;

    public C0023i(String sessionId, String requestId) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.f194a = sessionId;
        this.b = requestId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0023i)) {
            return false;
        }
        C0023i c0023i = (C0023i) obj;
        return Intrinsics.areEqual(this.f194a, c0023i.f194a) && Intrinsics.areEqual(this.b, c0023i.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f194a.hashCode() * 31);
    }

    public final String toString() {
        return E.b.n("CloseRequestKey(sessionId=", this.f194a, ", requestId=", this.b, ")");
    }
}
