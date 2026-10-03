package p066z1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l {
    public static final l b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final l f6454c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final l f6455d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ l[] f6456e;
    public static final /* synthetic */ EnumEntries f;

    static {
        l lVar = new l("UTF16_PLAIN", 0);
        b = lVar;
        l lVar2 = new l("UTF16_XOR", 1);
        f6454c = lVar2;
        l lVar3 = new l("RAW_8BIT", 2);
        f6455d = lVar3;
        l[] lVarArr = {lVar, lVar2, lVar3};
        f6456e = lVarArr;
        f = EnumEntriesKt.enumEntries(lVarArr);
    }

    public static l valueOf(String str) {
        return (l) Enum.valueOf(l.class, str);
    }

    public static l[] values() {
        return (l[]) f6456e.clone();
    }
}
