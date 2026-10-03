package R1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f1943a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1944c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1945d;

    public a(long j2, String versionName, String downloadUrl, String changelog) {
        Intrinsics.checkNotNullParameter(versionName, "versionName");
        Intrinsics.checkNotNullParameter(downloadUrl, "downloadUrl");
        Intrinsics.checkNotNullParameter(changelog, "changelog");
        this.f1943a = j2;
        this.b = versionName;
        this.f1944c = downloadUrl;
        this.f1945d = changelog;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f1943a == aVar.f1943a && Intrinsics.areEqual(this.b, aVar.b) && Intrinsics.areEqual(this.f1944c, aVar.f1944c) && Intrinsics.areEqual(this.f1945d, aVar.f1945d);
    }

    public final int hashCode() {
        return this.f1945d.hashCode() + E.b.d(this.f1944c, E.b.d(this.b, Long.hashCode(this.f1943a) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UpdateInfo(versionCode=");
        sb.append(this.f1943a);
        sb.append(", versionName=");
        sb.append(this.b);
        kotlin.collections.unsigned.a.n(sb, ", downloadUrl=", this.f1944c, ", changelog=", this.f1945d);
        sb.append(")");
        return sb.toString();
    }
}
