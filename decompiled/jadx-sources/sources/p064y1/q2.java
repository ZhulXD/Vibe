package p064y1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class q2 {
    public static final q2 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final q2 f6331c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ q2[] f6332d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f6333e;

    static {
        q2 q2Var = new q2("RESUME_NATIVE_THREAD", 0);
        b = q2Var;
        q2 q2Var2 = new q2("NO_OP", 1);
        f6331c = q2Var2;
        q2[] q2VarArr = {q2Var, q2Var2};
        f6332d = q2VarArr;
        f6333e = EnumEntriesKt.enumEntries(q2VarArr);
    }

    public static q2 valueOf(String str) {
        return (q2) Enum.valueOf(q2.class, str);
    }

    public static q2[] values() {
        return (q2[]) f6332d.clone();
    }
}
