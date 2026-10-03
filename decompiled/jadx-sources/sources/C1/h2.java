package C1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h2 {
    public static final h2 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h2 f610c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final h2 f611d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ h2[] f612e;
    public static final /* synthetic */ EnumEntries f;

    static {
        h2 h2Var = new h2("DIRECTORY", 0);
        b = h2Var;
        h2 h2Var2 = new h2("DOCUMENT", 1);
        f610c = h2Var2;
        h2 h2Var3 = new h2("APP_PRIVATE", 2);
        f611d = h2Var3;
        h2[] h2VarArr = {h2Var, h2Var2, h2Var3};
        f612e = h2VarArr;
        f = EnumEntriesKt.enumEntries(h2VarArr);
    }

    public static h2 valueOf(String str) {
        return (h2) Enum.valueOf(h2.class, str);
    }

    public static h2[] values() {
        return (h2[]) f612e.clone();
    }
}
