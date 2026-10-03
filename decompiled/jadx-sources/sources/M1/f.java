package M1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f {
    public static final f b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final f f1359c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ f[] f1360d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f1361e;

    /* JADX INFO: Fake field, exist only in values array */
    f EF0;

    static {
        f fVar = new f("REQUIRED_IN_PRIVATE_DIR", 0);
        f fVar2 = new f("REQUIRED_AT_ROOT", 1);
        b = fVar2;
        f fVar3 = new f("FORBIDDEN", 2);
        f1359c = fVar3;
        f[] fVarArr = {fVar, fVar2, fVar3};
        f1360d = fVarArr;
        f1361e = EnumEntriesKt.enumEntries(fVarArr);
    }

    public static f valueOf(String str) {
        return (f) Enum.valueOf(f.class, str);
    }

    public static f[] values() {
        return (f[]) f1360d.clone();
    }
}
