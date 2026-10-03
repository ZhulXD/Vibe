package N1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class t {
    public static final t b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final t f1473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final t f1474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final t f1475e;
    public static final t f;
    public static final t g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final t f1476h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final t f1477i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final t f1478j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final t f1479k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final t f1480l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final t f1481m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final t f1482n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final t f1483o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final t f1484p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final t f1485q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final t f1486r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final t f1487s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final t f1488t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final t f1489u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final /* synthetic */ t[] f1490v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f1491w;

    static {
        t tVar = new t("BLANK_URL", 0);
        b = tVar;
        t tVar2 = new t("MALFORMED_URL", 1);
        f1473c = tVar2;
        t tVar3 = new t("NON_HTTPS_URL", 2);
        f1474d = tVar3;
        t tVar4 = new t("URL_USERINFO", 3);
        f1475e = tVar4;
        t tVar5 = new t("URL_FRAGMENT", 4);
        f = tVar5;
        t tVar6 = new t("URL_HOST", 5);
        g = tVar6;
        t tVar7 = new t("URL_PATH", 6);
        f1476h = tVar7;
        t tVar8 = new t("BLANK_FIELD", 7);
        f1477i = tVar8;
        t tVar9 = new t("INVALID_SHA256", 8);
        f1478j = tVar9;
        t tVar10 = new t("INVALID_SIZE", 9);
        f1479k = tVar10;
        t tVar11 = new t("MANIFEST_TOO_LARGE", 10);
        f1480l = tVar11;
        t tVar12 = new t("BUNDLE_TOO_LARGE", 11);
        f1481m = tVar12;
        t tVar13 = new t("PLAINTEXT_TOO_LARGE", 12);
        f1482n = tVar13;
        t tVar14 = new t("INVALID_VERSION", 13);
        f1483o = tVar14;
        t tVar15 = new t("INVALID_SEQUENCE", 14);
        f1484p = tVar15;
        t tVar16 = new t("INVALID_TIMESTAMP", 15);
        f1485q = tVar16;
        t tVar17 = new t("INVALID_WINDOW", 16);
        f1486r = tVar17;
        t tVar18 = new t("STALE", 17);
        t tVar19 = new t("EXPIRED", 18);
        f1487s = tVar19;
        t tVar20 = new t("FUTURE_TIMESTAMP", 19);
        f1488t = tVar20;
        t tVar21 = new t("INVALID_SIGNATURE", 20);
        f1489u = tVar21;
        t[] tVarArr = {tVar, tVar2, tVar3, tVar4, tVar5, tVar6, tVar7, tVar8, tVar9, tVar10, tVar11, tVar12, tVar13, tVar14, tVar15, tVar16, tVar17, tVar18, tVar19, tVar20, tVar21};
        f1490v = tVarArr;
        f1491w = EnumEntriesKt.enumEntries(tVarArr);
    }

    public static t valueOf(String str) {
        return (t) Enum.valueOf(t.class, str);
    }

    public static t[] values() {
        return (t[]) f1490v.clone();
    }
}
