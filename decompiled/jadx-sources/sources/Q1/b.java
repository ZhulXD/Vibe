package Q1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f1843c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f1844d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f1845e;
    public static final /* synthetic */ b[] f;
    public static final /* synthetic */ EnumEntries g;

    static {
        b bVar = new b("ABSENT", 0);
        b = bVar;
        b bVar2 = new b("ATTEMPTED", 1);
        f1843c = bVar2;
        b bVar3 = new b("SUBMITTED", 2);
        f1844d = bVar3;
        b bVar4 = new b("ERROR", 3);
        f1845e = bVar4;
        b[] bVarArr = {bVar, bVar2, bVar3, bVar4};
        f = bVarArr;
        g = EnumEntriesKt.enumEntries(bVarArr);
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f.clone();
    }
}
