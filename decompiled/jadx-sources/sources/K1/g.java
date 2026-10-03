package K1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g {
    public static final g b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final g f1236c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final g f1237d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final g f1238e;
    public static final /* synthetic */ g[] f;
    public static final /* synthetic */ EnumEntries g;

    static {
        g gVar = new g("common", 0);
        b = gVar;
        g gVar2 = new g("engine", 1);
        f1236c = gVar2;
        g gVar3 = new g("plugin", 2);
        f1237d = gVar3;
        g gVar4 = new g("game", 3);
        f1238e = gVar4;
        g[] gVarArr = {gVar, gVar2, gVar3, gVar4, new g("emergency", 4)};
        f = gVarArr;
        g = EnumEntriesKt.enumEntries(gVarArr);
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f.clone();
    }
}
