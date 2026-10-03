package p064y1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e2 {
    public static final e2 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e2 f6218c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final e2 f6219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final e2 f6220e;
    public static final e2 f;
    public static final e2 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final e2 f6221h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ e2[] f6222i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f6223j;

    static {
        e2 e2Var = new e2("CHOOSE_BUTTONS", 0);
        b = e2Var;
        e2 e2Var2 = new e2("ARRANGE_BUTTONS", 1);
        f6218c = e2Var2;
        e2 e2Var3 = new e2("BASIC_CHEAT", 2);
        f6219d = e2Var3;
        e2 e2Var4 = new e2("SAVE", 3);
        f6220e = e2Var4;
        e2 e2Var5 = new e2("LOAD", 4);
        f = e2Var5;
        e2 e2Var6 = new e2("SCREENSHOT", 5);
        g = e2Var6;
        e2 e2Var7 = new e2("EXIT", 6);
        f6221h = e2Var7;
        e2[] e2VarArr = {e2Var, e2Var2, e2Var3, e2Var4, e2Var5, e2Var6, e2Var7};
        f6222i = e2VarArr;
        f6223j = EnumEntriesKt.enumEntries(e2VarArr);
    }

    public static e2 valueOf(String str) {
        return (e2) Enum.valueOf(e2.class, str);
    }

    public static e2[] values() {
        return (e2[]) f6222i.clone();
    }
}
