package p064y1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: y1.l1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0391l1 {
    public static final EnumC0391l1 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ EnumC0391l1[] f6278c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f6279d;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0391l1 EF0;

    static {
        EnumC0391l1 enumC0391l1 = new EnumC0391l1("BASIC_CHEAT", 0);
        EnumC0391l1 enumC0391l2 = new EnumC0391l1("ADVANCED_CHEAT", 1);
        b = enumC0391l2;
        EnumC0391l1[] enumC0391l1Arr = {enumC0391l1, enumC0391l2};
        f6278c = enumC0391l1Arr;
        f6279d = EnumEntriesKt.enumEntries(enumC0391l1Arr);
    }

    public static EnumC0391l1 valueOf(String str) {
        return (EnumC0391l1) Enum.valueOf(EnumC0391l1.class, str);
    }

    public static EnumC0391l1[] values() {
        return (EnumC0391l1[]) f6278c.clone();
    }
}
