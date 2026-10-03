package N1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class z {
    public static final z b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final z f1501c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final z f1502d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final z f1503e;
    public static final z f;
    public static final z g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ z[] f1504h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f1505i;

    static {
        z zVar = new z("VERIFIED", 0);
        b = zVar;
        z zVar2 = new z("INVALID_SIGNATURE", 1);
        f1501c = zVar2;
        z zVar3 = new z("MALFORMED_KEY", 2);
        f1502d = zVar3;
        z zVar4 = new z("MALFORMED_SIGNATURE", 3);
        f1503e = zVar4;
        z zVar5 = new z("MALFORMED_MANIFEST", 4);
        f = zVar5;
        z zVar6 = new z("UNAVAILABLE", 5);
        g = zVar6;
        z[] zVarArr = {zVar, zVar2, zVar3, zVar4, zVar5, zVar6};
        f1504h = zVarArr;
        f1505i = EnumEntriesKt.enumEntries(zVarArr);
    }

    public static z valueOf(String str) {
        return (z) Enum.valueOf(z.class, str);
    }

    public static z[] values() {
        return (z[]) f1504h.clone();
    }
}
