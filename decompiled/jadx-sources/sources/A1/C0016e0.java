package A1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: A1.e0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0016e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f184a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f185c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f186d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f187e;
    public final long f;
    public final EnumC0012c0 g;

    public C0016e0(String requestId, int i3, String engine, String gamePath, String processName, long j2, EnumC0012c0 enumC0012c0, int i4) {
        j2 = (i4 & 32) != 0 ? System.currentTimeMillis() : j2;
        enumC0012c0 = (i4 & 64) != 0 ? null : enumC0012c0;
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(gamePath, "gamePath");
        Intrinsics.checkNotNullParameter(processName, "processName");
        this.f184a = requestId;
        this.b = i3;
        this.f185c = engine;
        this.f186d = gamePath;
        this.f187e = processName;
        this.f = j2;
        this.g = enumC0012c0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0016e0)) {
            return false;
        }
        C0016e0 c0016e0 = (C0016e0) obj;
        return Intrinsics.areEqual(this.f184a, c0016e0.f184a) && this.b == c0016e0.b && Intrinsics.areEqual(this.f185c, c0016e0.f185c) && Intrinsics.areEqual(this.f186d, c0016e0.f186d) && Intrinsics.areEqual(this.f187e, c0016e0.f187e) && this.f == c0016e0.f && this.g == c0016e0.g;
    }

    public final int hashCode() {
        int iC = E.b.c(this.f, E.b.d(this.f187e, E.b.d(this.f186d, E.b.d(this.f185c, E.b.a(this.b, this.f184a.hashCode() * 31, 31), 31), 31), 31), 31);
        EnumC0012c0 enumC0012c0 = this.g;
        return iC + (enumC0012c0 == null ? 0 : enumC0012c0.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LaunchRequest(requestId=");
        sb.append(this.f184a);
        sb.append(", gameId=");
        sb.append(this.b);
        sb.append(", engine=");
        kotlin.collections.unsigned.a.n(sb, this.f185c, ", gamePath=", this.f186d, ", processName=");
        sb.append(this.f187e);
        sb.append(", requestedAt=");
        sb.append(this.f);
        sb.append(", source=");
        sb.append(this.g);
        sb.append(")");
        return sb.toString();
    }
}
