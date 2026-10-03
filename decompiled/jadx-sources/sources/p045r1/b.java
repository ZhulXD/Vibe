package p045r1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f5297c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f5298d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f5299e;
    public static final b f;
    public static final b g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ b[] f5300h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f5301i;

    static {
        b bVar = new b("RPG_MAKER_MV", 0);
        b = bVar;
        b bVar2 = new b("RPG_MAKER_MZ", 1);
        f5297c = bVar2;
        b bVar3 = new b("TYRANO", 2);
        f5298d = bVar3;
        b bVar4 = new b("VXACE", 3);
        f5299e = bVar4;
        b bVar5 = new b("VITE_REACT", 4);
        f = bVar5;
        b bVar6 = new b("UNSUPPORTED", 5);
        g = bVar6;
        b[] bVarArr = {bVar, bVar2, bVar3, bVar4, bVar5, bVar6};
        f5300h = bVarArr;
        f5301i = EnumEntriesKt.enumEntries(bVarArr);
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f5300h.clone();
    }
}
