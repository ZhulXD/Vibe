package p064y1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Z {
    public static final Z b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Z f6163c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ Z[] f6164d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f6165e;

    static {
        Z z2 = new Z("DIRECT_URL", 0);
        b = z2;
        Z z3 = new Z("INJECTED_HTML", 1);
        f6163c = z3;
        Z[] zArr = {z2, z3};
        f6164d = zArr;
        f6165e = EnumEntriesKt.enumEntries(zArr);
    }

    public static Z valueOf(String str) {
        return (Z) Enum.valueOf(Z.class, str);
    }

    public static Z[] values() {
        return (Z[]) f6164d.clone();
    }
}
