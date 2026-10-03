package C1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class K1 {
    public static final K1 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final K1 f459c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final K1 f460d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ K1[] f461e;
    public static final /* synthetic */ EnumEntries f;

    static {
        K1 k2 = new K1("INFO", 0);
        b = k2;
        K1 k3 = new K1("DOWNLOAD", 1);
        f459c = k3;
        K1 k4 = new K1("IMAGE", 2);
        f460d = k4;
        K1[] k1Arr = {k2, k3, k4};
        f461e = k1Arr;
        f = EnumEntriesKt.enumEntries(k1Arr);
    }

    public static K1 valueOf(String str) {
        return (K1) Enum.valueOf(K1.class, str);
    }

    public static K1[] values() {
        return (K1[]) f461e.clone();
    }
}
