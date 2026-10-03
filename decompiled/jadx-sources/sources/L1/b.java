package L1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f1282c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f1283d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f1284e;
    public static final b f;
    public static final /* synthetic */ b[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f1285h;

    static {
        b bVar = new b("EXACT", 0);
        b = bVar;
        b bVar2 = new b("NEWER_THAN_GAME", 1);
        f1282c = bVar2;
        b bVar3 = new b("OLDER_THAN_GAME", 2);
        f1283d = bVar3;
        b bVar4 = new b("UNKNOWN", 3);
        f1284e = bVar4;
        b bVar5 = new b("KEEPS_SAVES_LOADABLE", 4);
        f = bVar5;
        b[] bVarArr = {bVar, bVar2, bVar3, bVar4, bVar5};
        g = bVarArr;
        f1285h = EnumEntriesKt.enumEntries(bVarArr);
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) g.clone();
    }
}
