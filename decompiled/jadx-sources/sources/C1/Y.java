package C1;

import com.minhub.gamehub.data.GameEngine;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 C1.Y[], still in use, count: 1, list:
  (r0v1 C1.Y[]) from 0x0078: INVOKE (r0v1 C1.Y[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m), WRAPPED] (LINE:121)
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
public final class Y {
    ALL(null),
    /* JADX INFO: Fake field, exist only in values array */
    MV(GameEngine.MV),
    /* JADX INFO: Fake field, exist only in values array */
    MZ(GameEngine.MZ),
    /* JADX INFO: Fake field, exist only in values array */
    TYRANO(GameEngine.TYRANO),
    /* JADX INFO: Fake field, exist only in values array */
    VXACE(GameEngine.VXACE),
    /* JADX INFO: Fake field, exist only in values array */
    RENPY8(GameEngine.RENPY8),
    /* JADX INFO: Fake field, exist only in values array */
    RENPY7(GameEngine.RENPY7),
    /* JADX INFO: Fake field, exist only in values array */
    HTML(GameEngine.HTML),
    /* JADX INFO: Fake field, exist only in values array */
    KIRI(GameEngine.KIRI),
    /* JADX INFO: Fake field, exist only in values array */
    GODOT(GameEngine.GODOT),
    /* JADX INFO: Fake field, exist only in values array */
    BROWSE(GameEngine.BROWSE);


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f533e;
    public final GameEngine b;

    static {
        f533e = EnumEntriesKt.enumEntries(yArr);
    }

    public Y(GameEngine gameEngine) {
        super(str, i);
        this.b = gameEngine;
    }

    public static Y valueOf(String str) {
        return (Y) Enum.valueOf(Y.class, str);
    }

    public static Y[] values() {
        return (Y[]) f532d.clone();
    }
}
