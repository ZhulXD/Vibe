package C1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: C1.k0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0079k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f629a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f632e;
    public final String f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Long f633h;

    public /* synthetic */ C0079k0() {
        this(null, null, null, null, null, null, null, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0079k0)) {
            return false;
        }
        C0079k0 c0079k0 = (C0079k0) obj;
        return Intrinsics.areEqual(this.f629a, c0079k0.f629a) && Intrinsics.areEqual(this.b, c0079k0.b) && Intrinsics.areEqual(this.f630c, c0079k0.f630c) && Intrinsics.areEqual(this.f631d, c0079k0.f631d) && Intrinsics.areEqual(this.f632e, c0079k0.f632e) && Intrinsics.areEqual(this.f, c0079k0.f) && Intrinsics.areEqual(this.g, c0079k0.g) && Intrinsics.areEqual(this.f633h, c0079k0.f633h);
    }

    public final int hashCode() {
        String str = this.f629a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f630c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f631d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f632e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.g;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Long l2 = this.f633h;
        return iHashCode7 + (l2 != null ? l2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("GameConfig(name=", this.f629a, ", iconPath=", this.b, ", bgPath=");
        kotlin.collections.unsigned.a.n(sbJ, this.f630c, ", engineLabel=", this.f631d, ", version=");
        kotlin.collections.unsigned.a.n(sbJ, this.f632e, ", runtimeRoot=", this.f, ", saveDir=");
        sbJ.append(this.g);
        sbJ.append(", postId=");
        sbJ.append(this.f633h);
        sbJ.append(")");
        return sbJ.toString();
    }

    public C0079k0(String str, String str2, String str3, String str4, String str5, String str6, String str7, Long l2) {
        this.f629a = str;
        this.b = str2;
        this.f630c = str3;
        this.f631d = str4;
        this.f632e = str5;
        this.f = str6;
        this.g = str7;
        this.f633h = l2;
    }
}
