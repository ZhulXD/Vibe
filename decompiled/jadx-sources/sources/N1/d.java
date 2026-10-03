package N1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d {
    public static final d b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d f1420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d f1421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ d[] f1422e;
    public static final /* synthetic */ EnumEntries f;

    static {
        d dVar = new d("READ", 0);
        b = dVar;
        d dVar2 = new d("WRITE", 1);
        f1420c = dVar2;
        d dVar3 = new d("READ_WRITE", 2);
        f1421d = dVar3;
        d[] dVarArr = {dVar, dVar2, dVar3};
        f1422e = dVarArr;
        f = EnumEntriesKt.enumEntries(dVarArr);
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) f1422e.clone();
    }
}
