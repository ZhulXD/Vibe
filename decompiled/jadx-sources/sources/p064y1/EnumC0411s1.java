package p064y1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: y1.s1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0411s1 {
    public static final EnumC0411s1 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final EnumC0411s1 f6347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final EnumC0411s1 f6348d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final EnumC0411s1 f6349e;
    public static final EnumC0411s1 f;
    public static final /* synthetic */ EnumC0411s1[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f6350h;

    static {
        EnumC0411s1 enumC0411s1 = new EnumC0411s1("WEBVIEW", 0);
        b = enumC0411s1;
        EnumC0411s1 enumC0411s2 = new EnumC0411s1("VXACE", 1);
        f6347c = enumC0411s2;
        EnumC0411s1 enumC0411s3 = new EnumC0411s1("KIRI", 2);
        f6348d = enumC0411s3;
        EnumC0411s1 enumC0411s4 = new EnumC0411s1("GODOT", 3);
        f6349e = enumC0411s4;
        EnumC0411s1 enumC0411s5 = new EnumC0411s1("RENPY", 4);
        f = enumC0411s5;
        EnumC0411s1[] enumC0411s1Arr = {enumC0411s1, enumC0411s2, enumC0411s3, enumC0411s4, enumC0411s5};
        g = enumC0411s1Arr;
        f6350h = EnumEntriesKt.enumEntries(enumC0411s1Arr);
    }

    public static EnumC0411s1 valueOf(String str) {
        return (EnumC0411s1) Enum.valueOf(EnumC0411s1.class, str);
    }

    public static EnumC0411s1[] values() {
        return (EnumC0411s1[]) g.clone();
    }
}
