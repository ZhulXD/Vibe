package A1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class x0 {
    public static final x0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final x0 f274c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ x0[] f275d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f276e;

    /* JADX INFO: Fake field, exist only in values array */
    x0 EF0;

    static {
        x0 x0Var = new x0("STATUS_CHANGED", 0);
        x0 x0Var2 = new x0("HEARTBEAT", 1);
        x0 x0Var3 = new x0("LAUNCH", 2);
        b = x0Var3;
        x0 x0Var4 = new x0("CLOSE", 3);
        x0 x0Var5 = new x0("RECOVERY", 4);
        f274c = x0Var5;
        x0[] x0VarArr = {x0Var, x0Var2, x0Var3, x0Var4, x0Var5};
        f275d = x0VarArr;
        f276e = EnumEntriesKt.enumEntries(x0VarArr);
    }

    public static x0 valueOf(String str) {
        return (x0) Enum.valueOf(x0.class, str);
    }

    public static x0[] values() {
        return (x0[]) f275d.clone();
    }
}
