package N1;

import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1443a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f1444c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Set f1445d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Set f1446e;

    public k(String str, String str2, long j2, Set revokedVersions, Set knownVersions) {
        Intrinsics.checkNotNullParameter(revokedVersions, "revokedVersions");
        Intrinsics.checkNotNullParameter(knownVersions, "knownVersions");
        this.f1443a = str;
        this.b = str2;
        this.f1444c = j2;
        Set setUnmodifiableSet = Collections.unmodifiableSet(new LinkedHashSet(revokedVersions));
        Intrinsics.checkNotNullExpressionValue(setUnmodifiableSet, "unmodifiableSet(...)");
        this.f1445d = setUnmodifiableSet;
        Set setUnmodifiableSet2 = Collections.unmodifiableSet(new LinkedHashSet(knownVersions));
        Intrinsics.checkNotNullExpressionValue(setUnmodifiableSet2, "unmodifiableSet(...)");
        this.f1446e = setUnmodifiableSet2;
    }

    public static k a(k kVar, String str, String str2, long j2, Set set, Set set2, int i3) {
        if ((i3 & 1) != 0) {
            str = kVar.f1443a;
        }
        String str3 = str;
        if ((i3 & 2) != 0) {
            str2 = kVar.b;
        }
        String str4 = str2;
        if ((i3 & 4) != 0) {
            j2 = kVar.f1444c;
        }
        long j3 = j2;
        if ((i3 & 8) != 0) {
            set = kVar.f1445d;
        }
        Set revokedVersions = set;
        if ((i3 & 16) != 0) {
            set2 = kVar.f1446e;
        }
        Set knownVersions = set2;
        Intrinsics.checkNotNullParameter(revokedVersions, "revokedVersions");
        Intrinsics.checkNotNullParameter(knownVersions, "knownVersions");
        return new k(str3, str4, j3, revokedVersions, knownVersions);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return Intrinsics.areEqual(this.f1443a, kVar.f1443a) && Intrinsics.areEqual(this.b, kVar.b) && this.f1444c == kVar.f1444c && Intrinsics.areEqual(this.f1445d, kVar.f1445d) && Intrinsics.areEqual(this.f1446e, kVar.f1446e);
    }

    public final int hashCode() {
        String str = this.f1443a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        return this.f1446e.hashCode() + ((this.f1445d.hashCode() + E.b.c(this.f1444c, (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31, 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("OtaCacheState(activeVersion=", this.f1443a, ", lastKnownGoodVersion=", this.b, ", acceptedSequence=");
        sbJ.append(this.f1444c);
        sbJ.append(", revokedVersions=");
        sbJ.append(this.f1445d);
        sbJ.append(", knownVersions=");
        sbJ.append(this.f1446e);
        sbJ.append(")");
        return sbJ.toString();
    }
}
