package C1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Q {
    public static final Q b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Q f488c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Q f489d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ Q[] f490e;
    public static final /* synthetic */ EnumEntries f;

    static {
        Q q2 = new Q("CATALOG", 0);
        b = q2;
        Q q3 = new Q("IMPORTING", 1);
        f488c = q3;
        Q q4 = new Q("SUCCESS", 2);
        f489d = q4;
        Q[] qArr = {q2, q3, q4};
        f490e = qArr;
        f = EnumEntriesKt.enumEntries(qArr);
    }

    public static Q valueOf(String str) {
        return (Q) Enum.valueOf(Q.class, str);
    }

    public static Q[] values() {
        return (Q[]) f490e.clone();
    }
}
