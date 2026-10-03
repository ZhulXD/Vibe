package G1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v18 G1.p[], still in use, count: 1, list:
  (r0v18 G1.p[]) from 0x00fa: INVOKE (r0v18 G1.p[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m), WRAPPED] (LINE:251)
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
public final class p {
    TOUCH_INPUT_COMPAT("touch_input_compat"),
    NODE_NW_COMPAT("node_nw_compat"),
    FONT_FALLBACK("font_fallback"),
    AUDIO_UNLOCK("audio_unlock"),
    MV_FORCE_WEB_STORAGE("mv_force_web_storage"),
    MV_MISSING_ASSET_SKIP("mv_missing_asset_skip"),
    MV_MOBILE_STRETCH("mv_mobile_stretch"),
    /* JADX INFO: Fake field, exist only in values array */
    MV_LARGE_IMAGE_RESCALE("mv_large_image_rescale"),
    MV_SPINE_COMPAT("mv_spine_compat"),
    /* JADX INFO: Fake field, exist only in values array */
    MZ_LARGE_IMAGE_RESCALE("mz_large_image_rescale"),
    MZ_SPINE_COMPAT("mz_spine_compat"),
    MZ_AUDIO_UNLOCK("mz_audio_unlock"),
    MZ_EFFECT_MANAGER_GUARD("mz_effect_manager_guard"),
    MZ_MISSING_ASSET_SKIP("mz_missing_asset_skip"),
    MZ_MOBILE_STRETCH("mz_mobile_stretch"),
    TYRANO_LARGE_IMAGE_RESCALE("tyrano_large_image_rescale"),
    MV_MZ_AUTO_WRAP("mv_mz_auto_wrap"),
    MV_MZ_CACHE_MANAGER("mv_mz_cache_manager");


    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f1035t;
    public final String b;

    static {
        f1035t = EnumEntriesKt.enumEntries(pVarArr);
    }

    public p(String str) {
        super(str, i);
        this.b = str;
    }

    public static p valueOf(String str) {
        return (p) Enum.valueOf(p.class, str);
    }

    public static p[] values() {
        return (p[]) f1034s.clone();
    }
}
