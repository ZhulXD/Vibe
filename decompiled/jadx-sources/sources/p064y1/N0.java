package p064y1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 y1.N0[], still in use, count: 1, list:
  (r0v1 y1.N0[]) from 0x002c: INVOKE (r0v1 y1.N0[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m), WRAPPED] (LINE:45)
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class N0 {
    CAP_60(60, "60"),
    /* JADX INFO: Fake field, exist only in values array */
    CAP_30(30, "30"),
    UNLIMITED(0, "0");


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C0363c0 f6105d = new C0363c0();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f6107h;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6108c;

    static {
        f6107h = EnumEntriesKt.enumEntries(new N0[]{r0, r1, r2});
    }

    public N0(int i3, String str) {
        super(str, i);
        this.b = str;
        this.f6108c = i3;
    }

    public static N0 valueOf(String str) {
        return (N0) Enum.valueOf(N0.class, str);
    }

    public static N0[] values() {
        return (N0[]) g.clone();
    }
}
