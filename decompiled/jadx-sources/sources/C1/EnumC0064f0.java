package C1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: C1.f0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0064f0 {
    public static final EnumC0064f0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ EnumC0064f0[] f585c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f586d;

    static {
        EnumC0064f0 enumC0064f0 = new EnumC0064f0("NEWEST", 0);
        b = enumC0064f0;
        EnumC0064f0[] enumC0064f0Arr = {enumC0064f0, new EnumC0064f0("OLDEST", 1), new EnumC0064f0("TITLE_ASC", 2), new EnumC0064f0("TITLE_DESC", 3)};
        f585c = enumC0064f0Arr;
        f586d = EnumEntriesKt.enumEntries(enumC0064f0Arr);
    }

    public static EnumC0064f0 valueOf(String str) {
        return (EnumC0064f0) Enum.valueOf(EnumC0064f0.class, str);
    }

    public static EnumC0064f0[] values() {
        return (EnumC0064f0[]) f585c.clone();
    }
}
