package A1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f207a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f208c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f209d;

    public n0(String sessionId, String sessionToken, String engine, String processName) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(processName, "processName");
        this.f207a = sessionId;
        this.b = sessionToken;
        this.f208c = engine;
        this.f209d = processName;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n0)) {
            return false;
        }
        n0 n0Var = (n0) obj;
        return Intrinsics.areEqual(this.f207a, n0Var.f207a) && Intrinsics.areEqual(this.b, n0Var.b) && Intrinsics.areEqual(this.f208c, n0Var.f208c) && Intrinsics.areEqual(this.f209d, n0Var.f209d);
    }

    public final int hashCode() {
        return this.f209d.hashCode() + E.b.d(this.f208c, E.b.d(this.b, this.f207a.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("LaunchTicket(sessionId=", this.f207a, ", sessionToken=", this.b, ", engine=");
        sbJ.append(this.f208c);
        sbJ.append(", processName=");
        sbJ.append(this.f209d);
        sbJ.append(")");
        return sbJ.toString();
    }
}
