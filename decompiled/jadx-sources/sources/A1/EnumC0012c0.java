package A1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: A1.c0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0012c0 {
    public static final EnumC0012c0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final EnumC0012c0 f174c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final EnumC0012c0 f175d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ EnumC0012c0[] f176e;
    public static final /* synthetic */ EnumEntries f;

    static {
        EnumC0012c0 enumC0012c0 = new EnumC0012c0("DETAIL", 0);
        b = enumC0012c0;
        EnumC0012c0 enumC0012c1 = new EnumC0012c0("FAVORITE", 1);
        EnumC0012c0 enumC0012c2 = new EnumC0012c0("RECENT", 2);
        EnumC0012c0 enumC0012c3 = new EnumC0012c0("DEEP_LINK", 3);
        EnumC0012c0 enumC0012c4 = new EnumC0012c0("NOTIFICATION", 4);
        EnumC0012c0 enumC0012c5 = new EnumC0012c0("SPLASH", 5);
        f174c = enumC0012c5;
        EnumC0012c0 enumC0012c6 = new EnumC0012c0("NATIVE_REDISPATCH", 6);
        f175d = enumC0012c6;
        EnumC0012c0[] enumC0012c0Arr = {enumC0012c0, enumC0012c1, enumC0012c2, enumC0012c3, enumC0012c4, enumC0012c5, enumC0012c6, new EnumC0012c0("WEB_REDISPATCH", 7), new EnumC0012c0("SETTINGS", 8), new EnumC0012c0("DOWNLOAD", 9), new EnumC0012c0("BROWSER", 10)};
        f176e = enumC0012c0Arr;
        f = EnumEntriesKt.enumEntries(enumC0012c0Arr);
    }

    public static EnumC0012c0 valueOf(String str) {
        return (EnumC0012c0) Enum.valueOf(EnumC0012c0.class, str);
    }

    public static EnumC0012c0[] values() {
        return (EnumC0012c0[]) f176e.clone();
    }
}
