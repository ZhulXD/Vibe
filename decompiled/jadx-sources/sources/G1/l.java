package G1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l {
    public static final l b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final l f1006c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final l f1007d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final l f1008e;
    public static final l f;
    public static final l g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final l f1009h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ l[] f1010i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f1011j;

    static {
        l lVar = new l("UPDATED", 0);
        b = lVar;
        l lVar2 = new l("UP_TO_DATE", 1);
        f1006c = lVar2;
        l lVar3 = new l("APP_TOO_OLD", 2);
        f1007d = lVar3;
        l lVar4 = new l("SIGNATURE_PENDING", 3);
        f1008e = lVar4;
        l lVar5 = new l("NOT_CONFIGURED", 4);
        f = lVar5;
        l lVar6 = new l("REJECTED", 5);
        g = lVar6;
        l lVar7 = new l("FAILED", 6);
        f1009h = lVar7;
        l[] lVarArr = {lVar, lVar2, lVar3, lVar4, lVar5, lVar6, lVar7};
        f1010i = lVarArr;
        f1011j = EnumEntriesKt.enumEntries(lVarArr);
    }

    public static l valueOf(String str) {
        return (l) Enum.valueOf(l.class, str);
    }

    public static l[] values() {
        return (l[]) f1010i.clone();
    }
}
