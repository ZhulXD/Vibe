package A1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f47a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f48c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f49d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f50e;
    public final L0 f;
    public final EnumC0025j g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f51h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f52i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f53j;

    public C(String sessionId, String sessionToken, String str, long j2, long j3, L0 state, EnumC0025j enumC0025j, String engine, String processName, int i3) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(processName, "processName");
        this.f47a = sessionId;
        this.b = sessionToken;
        this.f48c = str;
        this.f49d = j2;
        this.f50e = j3;
        this.f = state;
        this.g = enumC0025j;
        this.f51h = engine;
        this.f52i = processName;
        this.f53j = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C)) {
            return false;
        }
        C c3 = (C) obj;
        return Intrinsics.areEqual(this.f47a, c3.f47a) && Intrinsics.areEqual(this.b, c3.b) && Intrinsics.areEqual(this.f48c, c3.f48c) && this.f49d == c3.f49d && this.f50e == c3.f50e && this.f == c3.f && this.g == c3.g && Intrinsics.areEqual(this.f51h, c3.f51h) && Intrinsics.areEqual(this.f52i, c3.f52i) && this.f53j == c3.f53j;
    }

    public final int hashCode() {
        int iD = E.b.d(this.b, this.f47a.hashCode() * 31, 31);
        String str = this.f48c;
        int iHashCode = (this.f.hashCode() + E.b.c(this.f50e, E.b.c(this.f49d, (iD + (str == null ? 0 : str.hashCode())) * 31, 31), 31)) * 31;
        EnumC0025j enumC0025j = this.g;
        return Integer.hashCode(this.f53j) + E.b.d(this.f52i, E.b.d(this.f51h, (iHashCode + (enumC0025j != null ? enumC0025j.hashCode() : 0)) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("ValidatedMessage(sessionId=", this.f47a, ", sessionToken=", this.b, ", requestId=");
        sbJ.append(this.f48c);
        sbJ.append(", issuedAt=");
        sbJ.append(this.f49d);
        sbJ.append(", messageTimestamp=");
        sbJ.append(this.f50e);
        sbJ.append(", state=");
        sbJ.append(this.f);
        sbJ.append(", closeResult=");
        sbJ.append(this.g);
        sbJ.append(", engine=");
        kotlin.collections.unsigned.a.n(sbJ, this.f51h, ", processName=", this.f52i, ", pid=");
        sbJ.append(this.f53j);
        sbJ.append(")");
        return sbJ.toString();
    }
}
