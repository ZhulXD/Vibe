package p064y1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 y1.F1[], still in use, count: 1, list:
  (r0v1 y1.F1[]) from 0x0030: INVOKE (r0v1 y1.F1[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m), WRAPPED] (LINE:49)
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
public final class F1 {
    AUTO("auto"),
    /* JADX INFO: Fake field, exist only in values array */
    CAP_1080("1080"),
    /* JADX INFO: Fake field, exist only in values array */
    CAP_720("720"),
    /* JADX INFO: Fake field, exist only in values array */
    NATIVE("native");


    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0363c0 f6065c = new C0363c0();
    public static final /* synthetic */ EnumEntries f;
    public final String b;

    static {
        f = EnumEntriesKt.enumEntries(new F1[]{r0, new F1("1080"), new F1("720"), new F1("native")});
    }

    public F1(String str) {
        super(str, i);
        this.b = str;
    }

    public static F1 valueOf(String str) {
        return (F1) Enum.valueOf(F1.class, str);
    }

    public static F1[] values() {
        return (F1[]) f6067e.clone();
    }
}
