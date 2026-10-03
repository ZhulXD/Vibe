package I1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f1170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f1171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f1172e;
    public static final /* synthetic */ a[] f;
    public static final /* synthetic */ EnumEntries g;

    static {
        a aVar = new a("CREATED", 0);
        b = aVar;
        a aVar2 = new a("LEGACY", 1);
        f1170c = aVar2;
        a aVar3 = new a("PINNED", 2);
        f1171d = aVar3;
        a aVar4 = new a("UNREADABLE", 3);
        f1172e = aVar4;
        a[] aVarArr = {aVar, aVar2, aVar3, aVar4};
        f = aVarArr;
        g = EnumEntriesKt.enumEntries(aVarArr);
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f.clone();
    }
}
