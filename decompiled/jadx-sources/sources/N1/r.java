package N1;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1468a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f1469c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Set f1470d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Set f1471e;
    public final Map f;

    public r(String str, String str2, long j2, Set revokedVersions, Set knownVersions, Map records) {
        Intrinsics.checkNotNullParameter(revokedVersions, "revokedVersions");
        Intrinsics.checkNotNullParameter(knownVersions, "knownVersions");
        Intrinsics.checkNotNullParameter(records, "records");
        this.f1468a = str;
        this.b = str2;
        this.f1469c = j2;
        this.f1470d = revokedVersions;
        this.f1471e = knownVersions;
        this.f = records;
        if (j2 < -1) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public static r a(r rVar, String str, String str2, long j2, Set set, Set knownVersions, Map map, int i3) {
        if ((i3 & 1) != 0) {
            str = rVar.f1468a;
        }
        String str3 = str;
        if ((i3 & 2) != 0) {
            str2 = rVar.b;
        }
        String str4 = str2;
        if ((i3 & 4) != 0) {
            j2 = rVar.f1469c;
        }
        long j3 = j2;
        if ((i3 & 8) != 0) {
            set = rVar.f1470d;
        }
        Set revokedVersions = set;
        Map records = (i3 & 32) != 0 ? rVar.f : map;
        Intrinsics.checkNotNullParameter(revokedVersions, "revokedVersions");
        Intrinsics.checkNotNullParameter(knownVersions, "knownVersions");
        Intrinsics.checkNotNullParameter(records, "records");
        return new r(str3, str4, j3, revokedVersions, knownVersions, records);
    }

    public final String b() {
        return this.f1468a;
    }

    public final Set c() {
        return this.f1470d;
    }

    public final r d() {
        Set setUnmodifiableSet = Collections.unmodifiableSet(new LinkedHashSet(this.f1470d));
        Intrinsics.checkNotNullExpressionValue(setUnmodifiableSet, "unmodifiableSet(...)");
        Set setUnmodifiableSet2 = Collections.unmodifiableSet(new LinkedHashSet(this.f1471e));
        Intrinsics.checkNotNullExpressionValue(setUnmodifiableSet2, "unmodifiableSet(...)");
        Map mapUnmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(this.f));
        Intrinsics.checkNotNullExpressionValue(mapUnmodifiableMap, "unmodifiableMap(...)");
        return a(this, null, null, 0L, setUnmodifiableSet, setUnmodifiableSet2, mapUnmodifiableMap, 7);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return Intrinsics.areEqual(this.f1468a, rVar.f1468a) && Intrinsics.areEqual(this.b, rVar.b) && this.f1469c == rVar.f1469c && Intrinsics.areEqual(this.f1470d, rVar.f1470d) && Intrinsics.areEqual(this.f1471e, rVar.f1471e) && Intrinsics.areEqual(this.f, rVar.f);
    }

    public final int hashCode() {
        String str = this.f1468a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        return this.f.hashCode() + ((this.f1471e.hashCode() + ((this.f1470d.hashCode() + E.b.c(this.f1469c, (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31, 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("OtaStoreState(active=", this.f1468a, ", lastKnownGood=", this.b, ", acceptedSequence=");
        sbJ.append(this.f1469c);
        sbJ.append(", revokedVersions=");
        sbJ.append(this.f1470d);
        sbJ.append(", knownVersions=");
        sbJ.append(this.f1471e);
        sbJ.append(", records=");
        sbJ.append(this.f);
        sbJ.append(")");
        return sbJ.toString();
    }

    public /* synthetic */ r() {
        this(null, null, -1L, SetsKt.emptySet(), SetsKt.emptySet(), MapsKt.emptyMap());
    }
}
