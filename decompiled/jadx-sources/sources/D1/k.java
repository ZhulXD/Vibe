package D1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k {
    public static final k b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k f832c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final k f833d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ k[] f834e;
    public static final /* synthetic */ EnumEntries f;

    static {
        k kVar = new k("HIGH", 0);
        b = kVar;
        k kVar2 = new k("MEDIUM", 1);
        f832c = kVar2;
        k kVar3 = new k("LOW", 2);
        f833d = kVar3;
        k[] kVarArr = {kVar, kVar2, kVar3};
        f834e = kVarArr;
        f = EnumEntriesKt.enumEntries(kVarArr);
    }

    public static k valueOf(String str) {
        return (k) Enum.valueOf(k.class, str);
    }

    public static k[] values() {
        return (k[]) f834e.clone();
    }
}
