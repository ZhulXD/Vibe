package A1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class L0 {
    public static final L0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final L0 f86c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final L0 f87d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final L0 f88e;
    public static final L0 f;
    public static final L0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ L0[] f89h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f90i;

    static {
        L0 l2 = new L0("STARTING", 0);
        b = l2;
        L0 l3 = new L0("RUNNING", 1);
        f86c = l3;
        L0 l4 = new L0("STOPPING", 2);
        f87d = l4;
        L0 l5 = new L0("FORCE_STOPPING", 3);
        f88e = l5;
        L0 l6 = new L0("STOPPED", 4);
        f = l6;
        L0 l7 = new L0("UNKNOWN", 5);
        g = l7;
        L0[] l0Arr = {l2, l3, l4, l5, l6, l7};
        f89h = l0Arr;
        f90i = EnumEntriesKt.enumEntries(l0Arr);
    }

    public static L0 valueOf(String str) {
        return (L0) Enum.valueOf(L0.class, str);
    }

    public static L0[] values() {
        return (L0[]) f89h.clone();
    }
}
