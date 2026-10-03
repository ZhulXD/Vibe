package G1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o {
    public static final o b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o f1017c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final o f1018d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final o f1019e;
    public static final /* synthetic */ o[] f;
    public static final /* synthetic */ EnumEntries g;

    static {
        o oVar = new o("GENERAL", 0);
        b = oVar;
        o oVar2 = new o("RPG_MAKER_MV", 1);
        f1017c = oVar2;
        o oVar3 = new o("RPG_MAKER_MZ", 2);
        f1018d = oVar3;
        o oVar4 = new o("TYRANO", 3);
        f1019e = oVar4;
        o[] oVarArr = {oVar, oVar2, oVar3, oVar4};
        f = oVarArr;
        g = EnumEntriesKt.enumEntries(oVarArr);
    }

    public static o valueOf(String str) {
        return (o) Enum.valueOf(o.class, str);
    }

    public static o[] values() {
        return (o[]) f.clone();
    }
}
