package G1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i {
    public static final i b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final i f1001c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final i f1002d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final i f1003e;
    public static final /* synthetic */ i[] f;
    public static final /* synthetic */ EnumEntries g;

    static {
        i iVar = new i("UPDATED", 0);
        b = iVar;
        i iVar2 = new i("UP_TO_DATE", 1);
        f1001c = iVar2;
        i iVar3 = new i("APP_TOO_OLD", 2);
        f1002d = iVar3;
        i iVar4 = new i("FAILED", 3);
        f1003e = iVar4;
        i[] iVarArr = {iVar, iVar2, iVar3, iVar4};
        f = iVarArr;
        g = EnumEntriesKt.enumEntries(iVarArr);
    }

    public static i valueOf(String str) {
        return (i) Enum.valueOf(i.class, str);
    }

    public static i[] values() {
        return (i[]) f.clone();
    }
}
