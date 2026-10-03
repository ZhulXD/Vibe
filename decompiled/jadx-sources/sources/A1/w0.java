package A1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class w0 {
    public static final w0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final w0 f268c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ w0[] f269d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f270e;

    static {
        w0 w0Var = new w0("NORMAL", 0);
        b = w0Var;
        w0 w0Var2 = new w0("ACTIVE_SESSION_UNKNOWN", 1);
        f268c = w0Var2;
        w0[] w0VarArr = {w0Var, w0Var2};
        f269d = w0VarArr;
        f270e = EnumEntriesKt.enumEntries(w0VarArr);
    }

    public static w0 valueOf(String str) {
        return (w0) Enum.valueOf(w0.class, str);
    }

    public static w0[] values() {
        return (w0[]) f269d.clone();
    }
}
