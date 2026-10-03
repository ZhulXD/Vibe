package M1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j {
    public static final j b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final j f1373c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final j f1374d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final j f1375e;
    public static final j f;
    public static final j g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final j f1376h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final j f1377i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final j f1378j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ j[] f1379k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f1380l;

    static {
        j jVar = new j("NONE", 0);
        b = jVar;
        j jVar2 = new j("UNSUPPORTED_ABI", 1);
        f1373c = jVar2;
        j jVar3 = new j("MISSING_LIBRARY", 2);
        f1374d = jVar3;
        j jVar4 = new j("MISSING_PRIVATE_MP3", 3);
        f1375e = jVar4;
        j jVar5 = new j("PRIVATE_DATA_MIXED", 4);
        f = jVar5;
        j jVar6 = new j("FORBIDDEN_PRIVATE_MP3", 5);
        g = jVar6;
        j jVar7 = new j("INVALID_PATH", 6);
        f1376h = jVar7;
        j jVar8 = new j("UNKNOWN_PATH", 7);
        f1377i = jVar8;
        j jVar9 = new j("MISSING_SIGNATURE", 8);
        j jVar10 = new j("SIGNATURE_PENDING", 9);
        j jVar11 = new j("NOT_TRUSTED", 10);
        f1378j = jVar11;
        j[] jVarArr = {jVar, jVar2, jVar3, jVar4, jVar5, jVar6, jVar7, jVar8, jVar9, jVar10, jVar11, new j("LICENSE_NOT_ACCEPTED", 11), new j("AUDITED_ARTIFACT_NOT_ALLOWED", 12)};
        f1379k = jVarArr;
        f1380l = EnumEntriesKt.enumEntries(jVarArr);
    }

    public static j valueOf(String str) {
        return (j) Enum.valueOf(j.class, str);
    }

    public static j[] values() {
        return (j[]) f1379k.clone();
    }
}
