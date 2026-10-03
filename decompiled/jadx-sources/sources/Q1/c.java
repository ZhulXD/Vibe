package Q1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1846a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1847c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1848d;

    public c(String title, String str, String diagnostics, String debugLog) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(diagnostics, "diagnostics");
        Intrinsics.checkNotNullParameter(debugLog, "debugLog");
        this.f1846a = title;
        this.b = str;
        this.f1847c = diagnostics;
        this.f1848d = debugLog;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.areEqual(this.f1846a, cVar.f1846a) && Intrinsics.areEqual(this.b, cVar.b) && Intrinsics.areEqual(this.f1847c, cVar.f1847c) && Intrinsics.areEqual(this.f1848d, cVar.f1848d);
    }

    public final int hashCode() {
        int iHashCode = this.f1846a.hashCode() * 31;
        String str = this.b;
        return this.f1848d.hashCode() + E.b.d(this.f1847c, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31);
    }

    public final String toString() {
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("RuntimeReportSnapshot(title=", this.f1846a, ", stack=", this.b, ", diagnostics=");
        sbJ.append(this.f1847c);
        sbJ.append(", debugLog=");
        sbJ.append(this.f1848d);
        sbJ.append(")");
        return sbJ.toString();
    }
}
