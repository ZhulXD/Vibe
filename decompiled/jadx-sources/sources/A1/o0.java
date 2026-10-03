package A1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f211a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f212c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f213d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f214e;
    public final int f;
    public final String g;

    public o0(String requestId, int i3, String engine, String gamePath, long j2, int i4, String processName) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(gamePath, "gamePath");
        Intrinsics.checkNotNullParameter(processName, "processName");
        this.f211a = requestId;
        this.b = i3;
        this.f212c = engine;
        this.f213d = gamePath;
        this.f214e = j2;
        this.f = i4;
        this.g = processName;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o0)) {
            return false;
        }
        o0 o0Var = (o0) obj;
        return Intrinsics.areEqual(this.f211a, o0Var.f211a) && this.b == o0Var.b && Intrinsics.areEqual(this.f212c, o0Var.f212c) && Intrinsics.areEqual(this.f213d, o0Var.f213d) && this.f214e == o0Var.f214e && this.f == o0Var.f && Intrinsics.areEqual(this.g, o0Var.g);
    }

    public final int hashCode() {
        return this.g.hashCode() + E.b.a(this.f, E.b.c(this.f214e, E.b.d(this.f213d, E.b.d(this.f212c, E.b.a(this.b, this.f211a.hashCode() * 31, 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PendingLaunchRecord(requestId=");
        sb.append(this.f211a);
        sb.append(", gameId=");
        sb.append(this.b);
        sb.append(", engine=");
        kotlin.collections.unsigned.a.n(sb, this.f212c, ", gamePath=", this.f213d, ", requestedAt=");
        sb.append(this.f214e);
        sb.append(", attemptCount=");
        sb.append(this.f);
        sb.append(", processName=");
        sb.append(this.g);
        sb.append(")");
        return sb.toString();
    }
}
