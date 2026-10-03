package p064y1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f2 {
    public static final /* synthetic */ f2[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f6226c;

    /* JADX INFO: Fake field, exist only in values array */
    f2 EF5;

    static {
        f2[] f2VarArr = {new f2("OPEN_MENU", 0)};
        b = f2VarArr;
        f6226c = EnumEntriesKt.enumEntries(f2VarArr);
    }

    public static f2 valueOf(String str) {
        return (f2) Enum.valueOf(f2.class, str);
    }

    public static f2[] values() {
        return (f2[]) b.clone();
    }
}
