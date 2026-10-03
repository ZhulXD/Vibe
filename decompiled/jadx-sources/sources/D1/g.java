package D1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g {
    public static final g b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final g f815c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final g f816d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ g[] f817e;
    public static final /* synthetic */ EnumEntries f;

    static {
        g gVar = new g("RUNNING", 0);
        b = gVar;
        g gVar2 = new g("SUCCEEDED", 1);
        f815c = gVar2;
        g gVar3 = new g("FAILED", 2);
        f816d = gVar3;
        g[] gVarArr = {gVar, gVar2, gVar3};
        f817e = gVarArr;
        f = EnumEntriesKt.enumEntries(gVarArr);
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f817e.clone();
    }
}
