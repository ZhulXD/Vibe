package A1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: A1.j, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0025j {
    public static final EnumC0025j b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final EnumC0025j f196c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final EnumC0025j f197d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final EnumC0025j f198e;
    public static final /* synthetic */ EnumC0025j[] f;
    public static final /* synthetic */ EnumEntries g;

    static {
        EnumC0025j enumC0025j = new EnumC0025j("ACCEPTED", 0);
        b = enumC0025j;
        EnumC0025j enumC0025j2 = new EnumC0025j("ALREADY_STOPPED", 1);
        f196c = enumC0025j2;
        EnumC0025j enumC0025j3 = new EnumC0025j("ALREADY_STOPPING", 2);
        f197d = enumC0025j3;
        EnumC0025j enumC0025j4 = new EnumC0025j("REJECTED_STALE", 3);
        EnumC0025j enumC0025j5 = new EnumC0025j("FAILED", 4);
        f198e = enumC0025j5;
        EnumC0025j[] enumC0025jArr = {enumC0025j, enumC0025j2, enumC0025j3, enumC0025j4, enumC0025j5};
        f = enumC0025jArr;
        g = EnumEntriesKt.enumEntries(enumC0025jArr);
    }

    public static EnumC0025j valueOf(String str) {
        return (EnumC0025j) Enum.valueOf(EnumC0025j.class, str);
    }

    public static EnumC0025j[] values() {
        return (EnumC0025j[]) f.clone();
    }
}
