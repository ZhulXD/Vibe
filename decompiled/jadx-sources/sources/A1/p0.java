package A1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class p0 {
    public static final p0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final p0 f216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final p0 f217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ p0[] f218e;
    public static final /* synthetic */ EnumEntries f;

    static {
        p0 p0Var = new p0("ALIVE", 0);
        b = p0Var;
        p0 p0Var2 = new p0("DEAD", 1);
        f216c = p0Var2;
        p0 p0Var3 = new p0("UNVERIFIABLE", 2);
        f217d = p0Var3;
        p0[] p0VarArr = {p0Var, p0Var2, p0Var3};
        f218e = p0VarArr;
        f = EnumEntriesKt.enumEntries(p0VarArr);
    }

    public static p0 valueOf(String str) {
        return (p0) Enum.valueOf(p0.class, str);
    }

    public static p0[] values() {
        return (p0[]) f218e.clone();
    }
}
