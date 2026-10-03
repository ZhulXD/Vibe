package p064y1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C1 {
    public static final C1 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C1 f6043c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C1 f6044d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final C1 f6045e;
    public static final /* synthetic */ C1[] f;
    public static final /* synthetic */ EnumEntries g;

    static {
        C1 c3 = new C1("PREPARED", 0);
        b = c3;
        C1 c4 = new C1("UP_TO_DATE", 1);
        f6043c = c4;
        C1 c5 = new C1("NOT_NEEDED", 2);
        f6044d = c5;
        C1 c6 = new C1("FAILED", 3);
        f6045e = c6;
        C1[] c1Arr = {c3, c4, c5, c6};
        f = c1Arr;
        g = EnumEntriesKt.enumEntries(c1Arr);
    }

    public static C1 valueOf(String str) {
        return (C1) Enum.valueOf(C1.class, str);
    }

    public static C1[] values() {
        return (C1[]) f.clone();
    }
}
