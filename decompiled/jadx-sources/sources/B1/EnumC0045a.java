package B1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: B1.a, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0045a {
    public static final EnumC0045a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final EnumC0045a f303c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final EnumC0045a f304d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ EnumC0045a[] f305e;
    public static final /* synthetic */ EnumEntries f;

    static {
        EnumC0045a enumC0045a = new EnumC0045a("CIRCLE", 0);
        b = enumC0045a;
        EnumC0045a enumC0045a2 = new EnumC0045a("ROUNDED", 1);
        f303c = enumC0045a2;
        EnumC0045a enumC0045a3 = new EnumC0045a("RECT", 2);
        f304d = enumC0045a3;
        EnumC0045a[] enumC0045aArr = {enumC0045a, enumC0045a2, enumC0045a3};
        f305e = enumC0045aArr;
        f = EnumEntriesKt.enumEntries(enumC0045aArr);
    }

    public static EnumC0045a valueOf(String str) {
        return (EnumC0045a) Enum.valueOf(EnumC0045a.class, str);
    }

    public static EnumC0045a[] values() {
        return (EnumC0045a[]) f305e.clone();
    }
}
