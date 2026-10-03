package D1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f804d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ a[] f805e;
    public static final /* synthetic */ EnumEntries f;

    static {
        a aVar = new a("ACTIVE", 0);
        b = aVar;
        a aVar2 = new a("INVALIDATED", 1);
        f803c = aVar2;
        a aVar3 = new a("PUBLISHING", 2);
        f804d = aVar3;
        a[] aVarArr = {aVar, aVar2, aVar3};
        f805e = aVarArr;
        f = EnumEntriesKt.enumEntries(aVarArr);
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f805e.clone();
    }
}
