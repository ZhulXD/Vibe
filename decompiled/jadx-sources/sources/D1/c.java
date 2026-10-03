package D1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f807c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ c[] f808d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f809e;

    static {
        c cVar = new c("NAVIGATE_AND_FINISH", 0);
        b = cVar;
        c cVar2 = new c("FINISH_ONLY", 1);
        f807c = cVar2;
        c[] cVarArr = {cVar, cVar2};
        f808d = cVarArr;
        f809e = EnumEntriesKt.enumEntries(cVarArr);
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f808d.clone();
    }
}
