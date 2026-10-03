package A1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: A1.b0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0010b0 {
    public static final EnumC0010b0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final EnumC0010b0 f169c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final EnumC0010b0 f170d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final EnumC0010b0 f171e;
    public static final EnumC0010b0 f;
    public static final /* synthetic */ EnumC0010b0[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f172h;

    static {
        EnumC0010b0 enumC0010b0 = new EnumC0010b0("PERSISTED", 0);
        b = enumC0010b0;
        EnumC0010b0 enumC0010b1 = new EnumC0010b0("IN_MEMORY", 1);
        f169c = enumC0010b1;
        EnumC0010b0 enumC0010b2 = new EnumC0010b0("THROTTLED", 2);
        f170d = enumC0010b2;
        EnumC0010b0 enumC0010b3 = new EnumC0010b0("REJECTED_IDENTITY", 3);
        f171e = enumC0010b3;
        EnumC0010b0 enumC0010b4 = new EnumC0010b0("TOKEN_UNAVAILABLE", 4);
        f = enumC0010b4;
        EnumC0010b0[] enumC0010b0Arr = {enumC0010b0, enumC0010b1, enumC0010b2, enumC0010b3, enumC0010b4};
        g = enumC0010b0Arr;
        f172h = EnumEntriesKt.enumEntries(enumC0010b0Arr);
    }

    public static EnumC0010b0 valueOf(String str) {
        return (EnumC0010b0) Enum.valueOf(EnumC0010b0.class, str);
    }

    public static EnumC0010b0[] values() {
        return (EnumC0010b0[]) g.clone();
    }
}
