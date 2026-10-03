package C1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 C1.c0[], still in use, count: 1, list:
  (r0v1 C1.c0[]) from 0x0062: INVOKE (r0v1 C1.c0[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m), WRAPPED] (LINE:99)
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
/* JADX INFO: renamed from: C1.c0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0055c0 {
    ALL(null),
    /* JADX INFO: Fake field, exist only in values array */
    ENGLISH("English"),
    /* JADX INFO: Fake field, exist only in values array */
    VIETNAMESE("Việt Hóa"),
    /* JADX INFO: Fake field, exist only in values array */
    INDONESIAN("Indonesia"),
    /* JADX INFO: Fake field, exist only in values array */
    JAPANESE("Japanese"),
    /* JADX INFO: Fake field, exist only in values array */
    CHINESE("Chinese"),
    /* JADX INFO: Fake field, exist only in values array */
    KOREAN("Korean"),
    /* JADX INFO: Fake field, exist only in values array */
    RUSSIAN("Russian"),
    /* JADX INFO: Fake field, exist only in values array */
    PORTUGUESE("Português");


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f567e;
    public final String b;

    static {
        f567e = EnumEntriesKt.enumEntries(enumC0055c0Arr);
    }

    public EnumC0055c0(String str) {
        super(str, i);
        this.b = str;
    }

    public static EnumC0055c0 valueOf(String str) {
        return (EnumC0055c0) Enum.valueOf(EnumC0055c0.class, str);
    }

    public static EnumC0055c0[] values() {
        return (EnumC0055c0[]) f566d.clone();
    }
}
