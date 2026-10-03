package G1;

import com.minhub.gamehub.R;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f1036a;
    public static final LinkedHashMap b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final LinkedHashMap f1037c;

    static {
        p pVar = p.TOUCH_INPUT_COMPAT;
        o oVar = o.b;
        n nVar = new n(pVar, oVar, R.string.util_touch_input_compat_title, R.string.util_touch_input_compat_desc, true);
        n nVar2 = new n(p.NODE_NW_COMPAT, oVar, R.string.util_node_nw_compat_title, R.string.util_node_nw_compat_desc, true);
        n nVar3 = new n(p.FONT_FALLBACK, oVar, R.string.util_font_fallback_title, R.string.util_font_fallback_desc, true);
        n nVar4 = new n(p.AUDIO_UNLOCK, oVar, R.string.util_audio_unlock_title, R.string.util_audio_unlock_desc, true);
        n nVar5 = new n(p.MV_MZ_AUTO_WRAP, oVar, R.string.util_auto_wrap_title, R.string.util_auto_wrap_desc, false);
        n nVar6 = new n(p.MV_MZ_CACHE_MANAGER, oVar, R.string.util_cache_manager_title, R.string.util_cache_manager_desc, false);
        p pVar2 = p.MV_FORCE_WEB_STORAGE;
        o oVar2 = o.f1017c;
        n nVar7 = new n(pVar2, oVar2, R.string.util_mv_force_web_storage_title, R.string.util_mv_force_web_storage_desc, true);
        n nVar8 = new n(p.MV_MISSING_ASSET_SKIP, oVar2, R.string.util_mv_missing_asset_skip_title, R.string.util_mv_missing_asset_skip_desc, true);
        n nVar9 = new n(p.MV_MOBILE_STRETCH, oVar2, R.string.util_mv_mobile_stretch_title, R.string.util_mv_mobile_stretch_desc, true);
        n nVar10 = new n(p.MV_SPINE_COMPAT, oVar2, R.string.util_mv_spine_compat_title, R.string.util_mv_spine_compat_desc, false);
        p pVar3 = p.MZ_SPINE_COMPAT;
        o oVar3 = o.f1018d;
        List listListOf = CollectionsKt.listOf((Object[]) new n[]{nVar, nVar2, nVar3, nVar4, nVar5, nVar6, nVar7, nVar8, nVar9, nVar10, new n(pVar3, oVar3, R.string.util_mz_spine_compat_title, R.string.util_mz_spine_compat_desc, false), new n(p.MZ_AUDIO_UNLOCK, oVar3, R.string.util_mz_audio_unlock_title, R.string.util_mz_audio_unlock_desc, false), new n(p.MZ_EFFECT_MANAGER_GUARD, oVar3, R.string.util_mz_effect_manager_guard_title, R.string.util_mz_effect_manager_guard_desc, true), new n(p.MZ_MISSING_ASSET_SKIP, oVar3, R.string.util_mz_missing_asset_skip_title, R.string.util_mz_missing_asset_skip_desc, true), new n(p.MZ_MOBILE_STRETCH, oVar3, R.string.util_mz_mobile_stretch_title, R.string.util_mz_mobile_stretch_desc, true), new n(p.TYRANO_LARGE_IMAGE_RESCALE, o.f1019e, R.string.util_tyrano_large_image_rescale_title, R.string.util_tyrano_large_image_rescale_desc, false)});
        f1036a = listListOf;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOf, 10)), 16));
        for (Object obj : listListOf) {
            linkedHashMap.put(((n) obj).f1013a, obj);
        }
        b = linkedHashMap;
        f1037c = MapsKt.linkedMapOf(TuplesKt.to(o.b, Integer.valueOf(R.string.settings_utilities_group_general)), TuplesKt.to(o.f1017c, Integer.valueOf(R.string.settings_utilities_group_mv)), TuplesKt.to(o.f1018d, Integer.valueOf(R.string.settings_utilities_group_mz)), TuplesKt.to(o.f1019e, Integer.valueOf(R.string.settings_utilities_group_tyrano)));
    }

    public static s a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (n nVar : f1036a) {
            Pair pair = TuplesKt.to(nVar.f1013a, Boolean.valueOf(nVar.f1016e));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return new s(linkedHashMap);
    }

    public static s b(LinkedHashMap flags) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (n nVar : f1036a) {
            p pVar = nVar.f1013a;
            Boolean bool = (Boolean) flags.get(pVar.b);
            linkedHashMap.put(pVar, Boolean.valueOf(bool != null ? bool.booleanValue() : nVar.f1016e));
        }
        return new s(linkedHashMap);
    }
}
