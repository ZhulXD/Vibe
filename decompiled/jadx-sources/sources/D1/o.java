package D1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o {
    public static final o b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o f841c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final o f842d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final o f843e;
    public static final o f;
    public static final o g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final o f844h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final o f845i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final o f846j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final o f847k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final o f848l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ o[] f849m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f850n;

    static {
        o oVar = new o("KIRI", 0);
        b = oVar;
        o oVar2 = new o("HTML", 1);
        f841c = oVar2;
        o oVar3 = new o("MZ", 2);
        f842d = oVar3;
        o oVar4 = new o("MV", 3);
        f843e = oVar4;
        o oVar5 = new o("TYRANO", 4);
        f = oVar5;
        o oVar6 = new o("RENPY", 5);
        g = oVar6;
        o oVar7 = new o("GODOT", 6);
        f844h = oVar7;
        o oVar8 = new o("VXACE", 7);
        f845i = oVar8;
        o oVar9 = new o("KIRI_PACKED", 8);
        f846j = oVar9;
        o oVar10 = new o("VXACE_PACKED", 9);
        f847k = oVar10;
        o oVar11 = new o("NONE", 10);
        f848l = oVar11;
        o[] oVarArr = {oVar, oVar2, oVar3, oVar4, oVar5, oVar6, oVar7, oVar8, oVar9, oVar10, oVar11};
        f849m = oVarArr;
        f850n = EnumEntriesKt.enumEntries(oVarArr);
    }

    public static o valueOf(String str) {
        return (o) Enum.valueOf(o.class, str);
    }

    public static o[] values() {
        return (o[]) f849m.clone();
    }
}
