package p064y1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class V1 {
    public static final V1 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final V1 f6149c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ V1[] f6150d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f6151e;

    static {
        V1 v2 = new V1("CENTER_INSIDE", 0);
        b = v2;
        V1 v3 = new V1("FIT_XY", 1);
        f6149c = v3;
        V1[] v1Arr = {v2, v3};
        f6150d = v1Arr;
        f6151e = EnumEntriesKt.enumEntries(v1Arr);
    }

    public static V1 valueOf(String str) {
        return (V1) Enum.valueOf(V1.class, str);
    }

    public static V1[] values() {
        return (V1[]) f6150d.clone();
    }
}
