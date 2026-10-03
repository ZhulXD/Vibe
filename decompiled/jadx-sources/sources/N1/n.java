package N1;

import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1450a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1451c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1452d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f1453e;
    public final long f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f1454h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f1455i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f1456j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f1457k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final o f1458l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final l f1459m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f1460n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f1461o;

    public n(String url, String version, String sha256, String signature, long j2, long j3, long j4, long j5, long j6, long j7, String str, o oVar, l lVar, String str2, int i3) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(sha256, "sha256");
        Intrinsics.checkNotNullParameter(signature, "signature");
        this.f1450a = url;
        this.b = version;
        this.f1451c = sha256;
        this.f1452d = signature;
        this.f1453e = j2;
        this.f = j3;
        this.g = j4;
        this.f1454h = j5;
        this.f1455i = j6;
        this.f1456j = j7;
        this.f1457k = str;
        this.f1458l = oVar;
        this.f1459m = lVar;
        this.f1460n = str2;
        this.f1461o = i3;
    }

    public final u a(p policy, long j2) {
        u uVar;
        Intrinsics.checkNotNullParameter(policy, "policy");
        ArrayList arrayList = new ArrayList();
        String str = policy.b;
        String value = this.f1450a;
        Intrinsics.checkNotNullParameter(value, "value");
        if (StringsKt.isBlank(value)) {
            t error = t.b;
            Intrinsics.checkNotNullParameter(error, "error");
            uVar = new u(CollectionsKt.listOf(error));
        } else {
            try {
                URI uri = new URI(value);
                try {
                    if (!uri.isAbsolute() || !StringsKt.equals(uri.getScheme(), "https", true)) {
                        t error2 = t.f1474d;
                        Intrinsics.checkNotNullParameter(error2, "error");
                        uVar = new u(CollectionsKt.listOf(error2));
                    } else if (uri.getUserInfo() == null) {
                        if (uri.getRawFragment() == null) {
                            if (uri.getHost() != null && StringsKt.equals(uri.getHost(), policy.f1464a, true) && (uri.getPort() == -1 || uri.getPort() == 443)) {
                                String rawPath = uri.getRawPath();
                                if (rawPath != null) {
                                    int i3 = 0;
                                    while (true) {
                                        if (i3 >= rawPath.length()) {
                                            String path = uri.getPath();
                                            Intrinsics.checkNotNull(path);
                                            int i4 = 0;
                                            while (true) {
                                                if (i4 >= path.length()) {
                                                    List listSplit$default = StringsKt__StringsKt.split$default(path, new char[]{'/'}, false, 0, 6, (Object) null);
                                                    if (listSplit$default == null || !listSplit$default.isEmpty()) {
                                                        Iterator it = listSplit$default.iterator();
                                                        while (true) {
                                                            if (it.hasNext()) {
                                                                String str2 = (String) it.next();
                                                                if (Intrinsics.areEqual(str2, ".") || Intrinsics.areEqual(str2, "..")) {
                                                                    t error3 = t.f1476h;
                                                                    Intrinsics.checkNotNullParameter(error3, "error");
                                                                    uVar = new u(CollectionsKt.listOf(error3));
                                                                    break;
                                                                }
                                                            }
                                                        }
                                                    }
                                                    String strO = CollectionsKt.o(listSplit$default, "/", null, null, null, 62);
                                                    if (!StringsKt.s(str, '/')) {
                                                        str = str + "/";
                                                    }
                                                    if (!StringsKt.N(strO, str)) {
                                                        t error4 = t.f1476h;
                                                        Intrinsics.checkNotNullParameter(error4, "error");
                                                        uVar = new u(CollectionsKt.listOf(error4));
                                                        break;
                                                    }
                                                    uVar = new u(CollectionsKt.emptyList());
                                                    break;
                                                }
                                                char cCharAt = path.charAt(i4);
                                                if (!Character.isISOControl(cCharAt) && cCharAt != '\\') {
                                                    i4++;
                                                }
                                                t error5 = t.f1476h;
                                                Intrinsics.checkNotNullParameter(error5, "error");
                                                uVar = new u(CollectionsKt.listOf(error5));
                                                break;
                                            }
                                        }
                                        char cCharAt2 = rawPath.charAt(i3);
                                        if (!Character.isISOControl(cCharAt2) && cCharAt2 != '\\') {
                                            i3++;
                                        }
                                        t error6 = t.f1476h;
                                        Intrinsics.checkNotNullParameter(error6, "error");
                                        uVar = new u(CollectionsKt.listOf(error6));
                                        break;
                                    }
                                }
                                t error7 = t.f1476h;
                                Intrinsics.checkNotNullParameter(error7, "error");
                                uVar = new u(CollectionsKt.listOf(error7));
                            } else {
                                t error8 = t.g;
                                Intrinsics.checkNotNullParameter(error8, "error");
                                uVar = new u(CollectionsKt.listOf(error8));
                            }
                        } else {
                            t error9 = t.f;
                            Intrinsics.checkNotNullParameter(error9, "error");
                            uVar = new u(CollectionsKt.listOf(error9));
                        }
                    } else {
                        t error10 = t.f1475e;
                        Intrinsics.checkNotNullParameter(error10, "error");
                        uVar = new u(CollectionsKt.listOf(error10));
                    }
                } catch (Exception unused) {
                    t error11 = t.f1473c;
                    Intrinsics.checkNotNullParameter(error11, "error");
                    uVar = new u(CollectionsKt.listOf(error11));
                }
            } catch (Exception unused2) {
                t error12 = t.f1473c;
                Intrinsics.checkNotNullParameter(error12, "error");
                uVar = new u(CollectionsKt.listOf(error12));
            }
        }
        CollectionsKt__MutableCollectionsKt.addAll(arrayList, uVar.f1492a);
        String str3 = this.b;
        boolean zIsBlank = StringsKt.isBlank(str3);
        String str4 = this.f1451c;
        if (zIsBlank || StringsKt.isBlank(this.f1452d) || StringsKt.isBlank(str4)) {
            arrayList.add(t.f1477i);
        }
        if (!new Regex("[0-9a-f]{64}").matches(str4)) {
            arrayList.add(t.f1478j);
        }
        if (str3.length() > 128 || !new Regex(E.b.j(127, "[A-Za-z0-9][A-Za-z0-9.+-]{0,", "}")).matches(str3)) {
            arrayList.add(t.f1483o);
        }
        long j3 = this.f1453e;
        if (j3 < 0 || j3 > Long.MAX_VALUE) {
            arrayList.add(t.f1484p);
        }
        long j4 = this.f;
        long j5 = this.g;
        if (j4 < 0 || j5 < 0 || j4 > 4102444800000L || j5 > 4102444800000L) {
            arrayList.add(t.f1485q);
        }
        if (j5 <= j4) {
            arrayList.add(t.f1486r);
        }
        if (j5 - j4 > 7776000000L) {
            arrayList.add(t.f1486r);
        }
        if (j2 < 0 || j2 > 4102444800000L) {
            arrayList.add(t.f1485q);
        }
        if (j2 < j4) {
            arrayList.add(t.f1488t);
        }
        if (j2 >= j5) {
            arrayList.add(t.f1487s);
        }
        long j6 = this.f1454h;
        long j7 = this.f1456j;
        long j8 = this.f1455i;
        if (j6 < 0 || j8 < 0 || j7 < 0) {
            arrayList.add(t.f1479k);
        }
        if (j6 > 262144) {
            arrayList.add(t.f1480l);
        }
        if (j8 > 33554432) {
            arrayList.add(t.f1481m);
        }
        if (j7 > 33554432) {
            arrayList.add(t.f1482n);
        }
        l lVar = this.f1459m;
        if (lVar != null && StringsKt.isBlank(lVar.b)) {
            arrayList.add(t.f1489u);
        }
        Regex regex = new Regex(E.b.j(127, "[A-Za-z0-9][A-Za-z0-9.+-]{0,", "}"));
        String str5 = this.f1457k;
        if (str5 != null && !regex.matches(str5)) {
            arrayList.add(t.f1483o);
        }
        o oVar = this.f1458l;
        if (oVar != null && (!regex.matches(oVar.f1462a) || StringsKt.isBlank(oVar.b))) {
            arrayList.add(t.f1489u);
        }
        return new u(CollectionsKt.distinct(arrayList));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return Intrinsics.areEqual(this.f1450a, nVar.f1450a) && Intrinsics.areEqual(this.b, nVar.b) && Intrinsics.areEqual(this.f1451c, nVar.f1451c) && Intrinsics.areEqual(this.f1452d, nVar.f1452d) && this.f1453e == nVar.f1453e && this.f == nVar.f && this.g == nVar.g && this.f1454h == nVar.f1454h && this.f1455i == nVar.f1455i && this.f1456j == nVar.f1456j && Intrinsics.areEqual(this.f1457k, nVar.f1457k) && Intrinsics.areEqual(this.f1458l, nVar.f1458l) && Intrinsics.areEqual(this.f1459m, nVar.f1459m) && Intrinsics.areEqual(this.f1460n, nVar.f1460n) && this.f1461o == nVar.f1461o;
    }

    public final int hashCode() {
        int iC = E.b.c(this.f1456j, E.b.c(this.f1455i, E.b.c(this.f1454h, E.b.c(this.g, E.b.c(this.f, E.b.c(this.f1453e, E.b.d(this.f1452d, E.b.d(this.f1451c, E.b.d(this.b, this.f1450a.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31);
        String str = this.f1457k;
        int iHashCode = (iC + (str == null ? 0 : str.hashCode())) * 31;
        o oVar = this.f1458l;
        int iHashCode2 = (iHashCode + (oVar == null ? 0 : oVar.hashCode())) * 31;
        l lVar = this.f1459m;
        int iHashCode3 = (iHashCode2 + (lVar == null ? 0 : lVar.hashCode())) * 31;
        String str2 = this.f1460n;
        return Integer.hashCode(this.f1461o) + ((iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("OtaManifestV2(url=", this.f1450a, ", version=", this.b, ", sha256=");
        kotlin.collections.unsigned.a.n(sbJ, this.f1451c, ", signature=", this.f1452d, ", sequence=");
        sbJ.append(this.f1453e);
        sbJ.append(", issuedAt=");
        sbJ.append(this.f);
        sbJ.append(", expiresAt=");
        sbJ.append(this.g);
        sbJ.append(", manifestBytes=");
        sbJ.append(this.f1454h);
        sbJ.append(", bundleBytes=");
        sbJ.append(this.f1455i);
        sbJ.append(", plaintextBytes=");
        sbJ.append(this.f1456j);
        sbJ.append(", revokeVersion=");
        sbJ.append(this.f1457k);
        sbJ.append(", revocation=");
        sbJ.append(this.f1458l);
        sbJ.append(", killSwitch=");
        sbJ.append(this.f1459m);
        sbJ.append(", rollbackMarker=");
        sbJ.append(this.f1460n);
        sbJ.append(", minAppVersion=");
        sbJ.append(this.f1461o);
        sbJ.append(")");
        return sbJ.toString();
    }
}
