package N1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j {
    public static final j b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final j f1438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final j f1439d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final j f1440e;
    public static final j f;
    public static final j g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ j[] f1441h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f1442i;

    static {
        j jVar = new j("ACCEPTED", 0);
        b = jVar;
        j jVar2 = new j("CORRUPT", 1);
        j jVar3 = new j("MISMATCH", 2);
        f1438c = jVar3;
        j jVar4 = new j("REPLAY", 3);
        f1439d = jVar4;
        j jVar5 = new j("REVOKED", 4);
        f1440e = jVar5;
        j jVar6 = new j("INVALID", 5);
        f = jVar6;
        j jVar7 = new j("ROLLBACK_UNAUTHORIZED", 6);
        g = jVar7;
        j[] jVarArr = {jVar, jVar2, jVar3, jVar4, jVar5, jVar6, jVar7};
        f1441h = jVarArr;
        f1442i = EnumEntriesKt.enumEntries(jVarArr);
    }

    public static j valueOf(String str) {
        return (j) Enum.valueOf(j.class, str);
    }

    public static j[] values() {
        return (j[]) f1441h.clone();
    }
}
