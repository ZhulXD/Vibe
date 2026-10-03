package A1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: A1.c, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0011c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f173a;

    public C0011c(String sessionId) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        this.f173a = sessionId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0011c) && Intrinsics.areEqual(this.f173a, ((C0011c) obj).f173a);
    }

    public final int hashCode() {
        return Integer.hashCode(0) + (this.f173a.hashCode() * 31);
    }

    public final String toString() {
        return E.b.m("ActivityLaunchAcknowledgement(sessionId=", this.f173a, ", pid=0)");
    }
}
