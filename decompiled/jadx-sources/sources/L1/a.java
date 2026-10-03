package L1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1277a;
    public final e b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1278c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1279d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f1280e;
    public final String f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f1281h;

    public a(String engineKey, e version, String url, int i3, String archiveSha256, String installedTreeSha256, String artifactIdentity, String str) {
        Intrinsics.checkNotNullParameter(engineKey, "engineKey");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(archiveSha256, "archiveSha256");
        Intrinsics.checkNotNullParameter(installedTreeSha256, "installedTreeSha256");
        Intrinsics.checkNotNullParameter(artifactIdentity, "artifactIdentity");
        this.f1277a = engineKey;
        this.b = version;
        this.f1278c = url;
        this.f1279d = i3;
        this.f1280e = archiveSha256;
        this.f = installedTreeSha256;
        this.g = artifactIdentity;
        this.f1281h = str;
    }

    public final String a() {
        String str = this.f1281h;
        if (str != null) {
            return str;
        }
        return this.f1277a + "-" + this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.areEqual(this.f1277a, aVar.f1277a) && Intrinsics.areEqual(this.b, aVar.b) && Intrinsics.areEqual(this.f1278c, aVar.f1278c) && this.f1279d == aVar.f1279d && Intrinsics.areEqual(this.f1280e, aVar.f1280e) && Intrinsics.areEqual(this.f, aVar.f) && Intrinsics.areEqual(this.g, aVar.g) && Intrinsics.areEqual(this.f1281h, aVar.f1281h);
    }

    public final int hashCode() {
        int iD = E.b.d(this.g, E.b.d(this.f, E.b.d(this.f1280e, E.b.a(this.f1279d, E.b.d(this.f1278c, (this.b.b.hashCode() + (this.f1277a.hashCode() * 31)) * 31, 31), 31), 31), 31), 31);
        String str = this.f1281h;
        return iD + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EngineRuntimeBuild(engineKey=");
        sb.append(this.f1277a);
        sb.append(", version=");
        sb.append(this.b);
        sb.append(", url=");
        sb.append(this.f1278c);
        sb.append(", artifactVersion=");
        sb.append(this.f1279d);
        sb.append(", archiveSha256=");
        kotlin.collections.unsigned.a.n(sb, this.f1280e, ", installedTreeSha256=", this.f, ", artifactIdentity=");
        sb.append(this.g);
        sb.append(", legacyInstallKey=");
        sb.append(this.f1281h);
        sb.append(")");
        return sb.toString();
    }

    public /* synthetic */ a(String str, e eVar, String str2, int i3, String str3, String str4, String str5, String str6, int i4) {
        this(str, eVar, str2, (i4 & 8) != 0 ? 1 : i3, (i4 & 16) != 0 ? "" : str3, (i4 & 32) != 0 ? "" : str4, (i4 & 64) != 0 ? "" : str5, (i4 & 128) != 0 ? null : str6);
    }
}
