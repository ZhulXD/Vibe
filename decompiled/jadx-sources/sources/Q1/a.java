package Q1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f1836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f1837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f1838e;
    public static final a f;
    public static final a g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f1839h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f1840i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ a[] f1841j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f1842k;

    static {
        a aVar = new a("PENDING", 0);
        b = aVar;
        a aVar2 = new a("SKIPPED_SDK", 1);
        f1836c = aVar2;
        a aVar3 = new a("SKIPPED_NONLOCAL", 2);
        f1837d = aVar3;
        a aVar4 = new a("LEGACY_CREATED", 3);
        f1838e = aVar4;
        a aVar5 = new a("LEGACY", 4);
        f = aVar5;
        a aVar6 = new a("PINNED", 5);
        g = aVar6;
        a aVar7 = new a("UNREADABLE", 6);
        f1839h = aVar7;
        a aVar8 = new a("IO_ERROR", 7);
        f1840i = aVar8;
        a[] aVarArr = {aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8};
        f1841j = aVarArr;
        f1842k = EnumEntriesKt.enumEntries(aVarArr);
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f1841j.clone();
    }
}
