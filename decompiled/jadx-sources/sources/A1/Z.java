package A1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f152a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f153c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f154d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f155e;
    public final L0 f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f156h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f157i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f158j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f159k;

    public Z(String sessionId, int i3, String engine, String processName, int i4, L0 state, String sessionTokenCiphertext, String sessionTokenIv, String requestId, long j2, long j3) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(processName, "processName");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(sessionTokenCiphertext, "sessionTokenCiphertext");
        Intrinsics.checkNotNullParameter(sessionTokenIv, "sessionTokenIv");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.f152a = sessionId;
        this.b = i3;
        this.f153c = engine;
        this.f154d = processName;
        this.f155e = i4;
        this.f = state;
        this.g = sessionTokenCiphertext;
        this.f156h = sessionTokenIv;
        this.f157i = requestId;
        this.f158j = j2;
        this.f159k = j3;
    }

    public static Z a(Z z2, int i3, L0 state, long j2, int i4) {
        String sessionId = z2.f152a;
        int i5 = z2.b;
        String engine = z2.f153c;
        String processName = z2.f154d;
        int i6 = (i4 & 16) != 0 ? z2.f155e : i3;
        String sessionTokenCiphertext = z2.g;
        String sessionTokenIv = z2.f156h;
        String requestId = z2.f157i;
        long j3 = z2.f158j;
        long j4 = (i4 & 1024) != 0 ? z2.f159k : j2;
        z2.getClass();
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(processName, "processName");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(sessionTokenCiphertext, "sessionTokenCiphertext");
        Intrinsics.checkNotNullParameter(sessionTokenIv, "sessionTokenIv");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        return new Z(sessionId, i5, engine, processName, i6, state, sessionTokenCiphertext, sessionTokenIv, requestId, j3, j4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Z)) {
            return false;
        }
        Z z2 = (Z) obj;
        return Intrinsics.areEqual(this.f152a, z2.f152a) && this.b == z2.b && Intrinsics.areEqual(this.f153c, z2.f153c) && Intrinsics.areEqual(this.f154d, z2.f154d) && this.f155e == z2.f155e && this.f == z2.f && Intrinsics.areEqual(this.g, z2.g) && Intrinsics.areEqual(this.f156h, z2.f156h) && Intrinsics.areEqual(this.f157i, z2.f157i) && this.f158j == z2.f158j && this.f159k == z2.f159k;
    }

    public final int hashCode() {
        return Long.hashCode(this.f159k) + E.b.c(this.f158j, E.b.d(this.f157i, E.b.d(this.f156h, E.b.d(this.g, (this.f.hashCode() + E.b.a(this.f155e, E.b.d(this.f154d, E.b.d(this.f153c, E.b.a(this.b, this.f152a.hashCode() * 31, 31), 31), 31), 31)) * 31, 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GameSessionRecord(sessionId=");
        sb.append(this.f152a);
        sb.append(", gameId=");
        sb.append(this.b);
        sb.append(", engine=");
        kotlin.collections.unsigned.a.n(sb, this.f153c, ", processName=", this.f154d, ", pid=");
        sb.append(this.f155e);
        sb.append(", state=");
        sb.append(this.f);
        sb.append(", sessionTokenCiphertext=");
        kotlin.collections.unsigned.a.n(sb, this.g, ", sessionTokenIv=", this.f156h, ", requestId=");
        sb.append(this.f157i);
        sb.append(", startedAt=");
        sb.append(this.f158j);
        sb.append(", lastHeartbeatAt=");
        sb.append(this.f159k);
        sb.append(")");
        return sb.toString();
    }
}
