package B1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n {
    public static final n b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final n f333c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final n f334d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final n f335e;
    public static final n f;
    public static final n g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final n f336h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final n f337i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final n f338j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ n[] f339k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f340l;

    static {
        n nVar = new n("NONE", 0);
        b = nVar;
        n nVar2 = new n("UP", 1);
        f333c = nVar2;
        n nVar3 = new n("DOWN", 2);
        f334d = nVar3;
        n nVar4 = new n("LEFT", 3);
        f335e = nVar4;
        n nVar5 = new n("RIGHT", 4);
        f = nVar5;
        n nVar6 = new n("UP_LEFT", 5);
        g = nVar6;
        n nVar7 = new n("UP_RIGHT", 6);
        f336h = nVar7;
        n nVar8 = new n("DOWN_LEFT", 7);
        f337i = nVar8;
        n nVar9 = new n("DOWN_RIGHT", 8);
        f338j = nVar9;
        n[] nVarArr = {nVar, nVar2, nVar3, nVar4, nVar5, nVar6, nVar7, nVar8, nVar9};
        f339k = nVarArr;
        f340l = EnumEntriesKt.enumEntries(nVarArr);
    }

    public static n valueOf(String str) {
        return (n) Enum.valueOf(n.class, str);
    }

    public static n[] values() {
        return (n[]) f339k.clone();
    }
}
