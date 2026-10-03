package I1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i {
    public static final i b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final i f1184c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ i[] f1185d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f1186e;

    static {
        i iVar = new i("LEGACY", 0);
        b = iVar;
        i iVar2 = new i("PINNED", 1);
        f1184c = iVar2;
        i[] iVarArr = {iVar, iVar2};
        f1185d = iVarArr;
        f1186e = EnumEntriesKt.enumEntries(iVarArr);
    }

    public static i valueOf(String str) {
        return (i) Enum.valueOf(i.class, str);
    }

    public static i[] values() {
        return (i[]) f1185d.clone();
    }
}
