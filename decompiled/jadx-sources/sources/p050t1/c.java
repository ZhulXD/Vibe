package p050t1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f5328c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ c[] f5329d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f5330e;

    static {
        c cVar = new c("APP_ASSETS", 0);
        b = cVar;
        c cVar2 = new c("FILE_SCHEME", 1);
        f5328c = cVar2;
        c[] cVarArr = {cVar, cVar2};
        f5329d = cVarArr;
        f5330e = EnumEntriesKt.enumEntries(cVarArr);
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f5329d.clone();
    }
}
