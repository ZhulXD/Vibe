package O1;

import K1.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.godotengine.godot.service.GodotService;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f1512a;
    public static final List b;

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    static {
        String str;
        c cVar = c.MV;
        g gVar = g.b;
        b bVarA = a("shared-translation-overlay-mv", cVar, gVar, 100, "SharedPatchBlocksTranslation.kt", "translationOverlayBlock", true, null);
        c cVar2 = c.MZ;
        b bVarA2 = a("shared-translation-overlay-mz", cVar2, gVar, 100, "SharedPatchBlocksTranslation.kt", "translationOverlayBlock", true, null);
        b bVarA3 = a("shared-touch-input-mv", cVar, gVar, 90, "SharedGameFixes.kt", "touch input compatibility", true, "touch_input_compat");
        b bVarA4 = a("shared-touch-input-mz", cVar2, gVar, 90, "SharedGameFixes.kt", "touch input compatibility", true, "touch_input_compat");
        b bVarA5 = a("shared-node-nw-mv", cVar, gVar, 89, "SharedGameFixes.kt", "Node/NW compatibility", true, "node_nw_compat");
        b bVarA6 = a("shared-node-nw-mz", cVar2, gVar, 89, "SharedGameFixes.kt", "Node/NW compatibility", true, "node_nw_compat");
        b bVarA7 = a("shared-font-fallback-mv", cVar, gVar, 88, "SharedGameFixes.kt", "font fallback", true, "font_fallback");
        b bVarA8 = a("shared-font-fallback-mz", cVar2, gVar, 88, "SharedGameFixes.kt", "font fallback", true, "font_fallback");
        b bVarA9 = a("shared-audio-unlock-mv", cVar, gVar, 87, "SharedGameFixes.kt", "audio unlock", true, "audio_unlock");
        b bVarA10 = a("shared-audio-unlock-mz", cVar2, gVar, 87, "SharedGameFixes.kt", "audio unlock", true, "audio_unlock");
        b bVarA11 = a("shared-auto-wrap-mv", cVar, gVar, 86, "SharedGameFixes.kt", "auto-wrap", false, "mv_mz_auto_wrap");
        b bVarA12 = a("shared-auto-wrap-mz", cVar2, gVar, 86, "SharedGameFixes.kt", "auto-wrap", false, "mv_mz_auto_wrap");
        b bVarA13 = a("shared-cache-manager-mv", cVar, gVar, 85, "SharedGameFixes.kt", "cache manager", false, "mv_mz_cache_manager");
        b bVarA14 = a("shared-cache-manager-mz", cVar2, gVar, 85, "SharedGameFixes.kt", "cache manager", false, "mv_mz_cache_manager");
        b bVarA15 = a("shared-video-texture-mv", cVar, gVar, 80, "SharedPatchBlocksCompat.kt", "video texture compatibility", true, null);
        b bVarA16 = a("shared-video-texture-mz", cVar2, gVar, 80, "SharedPatchBlocksCompat.kt", "video texture compatibility", true, null);
        b bVarA17 = a("shared-case-mapping-mv", cVar, gVar, 79, "SharedPatchBlocksCompat.kt", "case mapping", true, null);
        b bVarA18 = a("shared-case-mapping-mz", cVar2, gVar, 79, "SharedPatchBlocksCompat.kt", "case mapping", true, null);
        b bVarA19 = a("shared-pathfinder-mv", cVar, gVar, 78, "SharedGameFixes.kt", "extended pathfinder", true, null);
        b bVarA20 = a("shared-pathfinder-mz", cVar2, gVar, 78, "SharedGameFixes.kt", "extended pathfinder", true, null);
        b bVarA21 = a("shared-pixel-rounding-mv", cVar, gVar, 77, "SharedGameFixes.kt", "pixel rounding", true, null);
        b bVarA22 = a("shared-pixel-rounding-mz", cVar2, gVar, 77, "SharedGameFixes.kt", "pixel rounding", true, null);
        b bVarA23 = a("shared-global-info-cache-mv", cVar, gVar, 76, "SharedGameFixes.kt", "global save-info cache", true, null);
        b bVarA24 = a("shared-global-info-cache-mz", cVar2, gVar, 76, "SharedGameFixes.kt", "global save-info cache", true, null);
        b bVarA25 = a("shared-text-align-mv", cVar, gVar, 75, "SharedGameFixes.kt", "text-align guard", true, null);
        b bVarA26 = a("shared-text-align-mz", cVar2, gVar, 75, "SharedGameFixes.kt", "text-align guard", true, null);
        b bVarA27 = a("shared-apng-guard-mv", cVar, gVar, 74, "SharedGameFixes.kt", "APNG scene guard", true, null);
        b bVarA28 = a("shared-apng-guard-mz", cVar2, gVar, 74, "SharedGameFixes.kt", "APNG scene guard", true, null);
        g gVar2 = g.f1236c;
        b bVarA29 = a("mv-process-versions", cVar, gVar2, 100, "MvPatchBlocks.kt", "process versions", true, null);
        b bVarA30 = a("mv-audio-extension", cVar, gVar2, 99, "MvPatchBlocks.kt", "audio extension", true, null);
        b bVarA31 = a("mv-core-stability", cVar, gVar2, 98, "MvPatchBlocks.kt", "core stability", true, null);
        b bVarA32 = a("mv-quick-rotate-hue", cVar, gVar2, 97, "MvPatchBlocks.kt", "rotate hue", true, null);
        b bVarA33 = a("mv-simultaneous-request", cVar, gVar2, 96, "MvPatchBlocks.kt", "request queue", true, null);
        b bVarA34 = a("mv-audio-cache", cVar, gVar2, 95, "MvPatchBlocks.kt", "audio cache", true, null);
        g gVar3 = g.f1237d;
        b bVarA35 = a("mv-plugin-compat", cVar, gVar3, 90, "MvPatchBlocks.kt", "plugin compatibility", true, null);
        b bVarA36 = a("mv-targeted-plugin-fix", cVar, gVar3, 89, "MvPatchBlocks.kt", "targeted plugin fixes", true, null);
        b bVarA37 = a("mv-picture-point-color", cVar, gVar3, 88, "MvPatchBlocks.kt", "PicturePointColor", true, null);
        b bVarA38 = a("mv-container-filter-webgl1", cVar, gVar2, 87, "MvPatchBlocks.kt", "WebGL1 filter fallback", true, null);
        g gVar4 = g.f1238e;
        List<b> listUnmodifiableList = Collections.unmodifiableList(new ArrayList(CollectionsKt.listOf((Object[]) new b[]{bVarA, bVarA2, bVarA3, bVarA4, bVarA5, bVarA6, bVarA7, bVarA8, bVarA9, bVarA10, bVarA11, bVarA12, bVarA13, bVarA14, bVarA15, bVarA16, bVarA17, bVarA18, bVarA19, bVarA20, bVarA21, bVarA22, bVarA23, bVarA24, bVarA25, bVarA26, bVarA27, bVarA28, bVarA29, bVarA30, bVarA31, bVarA32, bVarA33, bVarA34, bVarA35, bVarA36, bVarA37, bVarA38, a("mv-stuck-interpreter-diagnostic", cVar, gVar4, 70, "MvPatchBlocks.kt", "diagnostic", true, null), a("mv-coroutine-diagnostic", cVar, gVar4, 69, "MvPatchBlocks.kt", "diagnostic", true, null), a("mv-scene-watchdog", cVar, gVar2, 86, "MvPatchBlocks.kt", "scene watchdog", true, null), a("mv-error-capture", cVar, gVar4, 68, "MvPatchBlocks.kt", "error diagnostics", true, null), a("mv-live2d-core-guard", cVar, gVar3, 85, "MvPatchBlocks.kt", "Live2D guard", true, null), a("mv-missing-asset-skip", cVar, gVar2, 84, "MvPatchBlocks.kt", "missing asset fallback", true, "mv_missing_asset_skip"), a("mv-mobile-stretch", cVar, gVar2, 83, "MvPatchBlocks.kt", "mobile stretch", true, "mv_mobile_stretch"), a("mv-spine-compat", cVar, gVar3, 81, "MvPatchBlocks.kt", "Spine compatibility", false, "mv_spine_compat"), a("mv-force-web-storage", cVar, gVar2, 80, "MvPatchBlocks.kt", "native save bridge", true, "mv_force_web_storage"), a("mv-font-size", cVar, gVar4, 60, "MvPatchBlocks.kt", "font size", true, null), a("mv-eight-direction", cVar, gVar4, 59, "MvPatchBlocks.kt", "8-direction movement", true, null), a("mz-storage-interceptor", cVar2, gVar2, 100, "MzPatchBlocks.kt", "native save bridge", true, null), a("mz-response-status", cVar2, gVar2, 99, "MzPatchBlocks.kt", "response status", true, null), a("mz-pixi-apng-compat", cVar2, gVar3, 98, "MzPatchBlocks.kt", "PIXI APNG", true, null), a("mz-error-capture", cVar2, gVar4, 70, "MzPatchBlocks.kt", "error diagnostics", true, null), a("mz-window-layer-webgl1", cVar2, gVar2, 97, "MzPatchBlocks.kt", "WindowLayer fallback", true, null), a("mz-spriteset-filter-webgl1", cVar2, gVar2, 96, "MzPatchBlocks.kt", "spriteset filter fallback", true, null), a("mz-cgmz-filter-guard", cVar2, gVar3, 95, "MzPatchBlocks.kt", "CGMZ guard", true, null), a("mz-map-filter-guard", cVar2, gVar3, 94, "MzPatchBlocks.kt", "map filter guard", true, null), a("mz-kc-mirrors-guard", cVar2, gVar3, 93, "MzPatchBlocks.kt", "KC Mirrors guard", true, null), a("mz-recollection-guard", cVar2, gVar3, 92, "MzPatchBlocks.kt", "recollection guard", true, null), a("mz-window-tone-guard", cVar2, gVar2, 91, "MzPatchBlocks.kt", "window tone guard", true, null), a("mz-graphics-stretch-guard", cVar2, gVar2, 90, "MzPatchBlocks.kt", "graphics stretch guard", true, null), a("mz-xhr-case-normalization", cVar2, gVar2, 89, "MzPatchBlocks.kt", "XHR case normalization", true, null), a("mz-game-active", cVar2, gVar2, 88, "MzPatchBlocks.kt", "game active", true, null), a("mz-audio-unlock", cVar2, gVar2, 87, "MzPatchBlocks.kt", "audio unlock", false, "mz_audio_unlock"), a("mz-effect-manager-guard", cVar2, gVar3, 86, "MzPatchBlocks.kt", "effect guard", true, "mz_effect_manager_guard"), a("mz-missing-asset-skip", cVar2, gVar2, 85, "MzPatchBlocks.kt", "missing asset fallback", true, "mz_missing_asset_skip"), a("mz-mobile-stretch", cVar2, gVar2, 84, "MzPatchBlocks.kt", "mobile stretch", true, "mz_mobile_stretch"), a("mz-spine-compat", cVar2, gVar3, 82, "MzPatchBlocks.kt", "Spine compatibility", false, "mz_spine_compat"), a("mz-font-size", cVar2, gVar4, 60, "MzPatchBlocks.kt", "font size", true, null), a("mz-scene-title-guard", cVar2, gVar4, 79, "MzPatchBlocks.kt", "scene title guard", true, null), a("mz-dotmove-diagonal-guard", cVar2, gVar3, 78, "MzPatchBlocks.kt", "DotMove guard", true, null), a("mz-screen-capture-guard", cVar2, gVar3, 77, "MzPatchBlocks.kt", "screen capture guard", true, null), a("mz-live2d-guard", cVar2, gVar3, 76, "MzPatchBlocks.kt", "Live2D guard", true, null), a("mz-touch-diagnostic", cVar2, gVar4, 69, "MzPatchBlocks.kt", "diagnostic", true, null), a("mz-eight-direction", cVar2, gVar4, 59, "MzPatchBlocks.kt", "8-direction movement", true, null)})));
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        f1512a = listUnmodifiableList;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listUnmodifiableList, 10));
        for (b bVar : listUnmodifiableList) {
            String str2 = bVar.f1513a;
            String str3 = bVar.f1513a;
            if (Intrinsics.areEqual(str2, "shared-translation-overlay-mv") || Intrinsics.areEqual(str2, "shared-translation-overlay-mz")) {
                str = "SharedPatchBlocksTranslation.kt";
            } else if (StringsKt.N(str2, "shared-video") || StringsKt.N(str2, "shared-case")) {
                str = "SharedPatchBlocksCompat.kt";
            } else if (StringsKt.N(str2, "mv-")) {
                str = "MvPatchBlocks.kt";
            } else {
                str = StringsKt.N(str2, "mz-") ? "MzPatchBlocks.kt" : "SharedGameFixes.kt";
            }
            int i3 = 65;
            switch (str3.hashCode()) {
                case -2131215266:
                    if (!str3.equals("shared-font-fallback-mv")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 100;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -2131215262:
                    if (!str3.equals("shared-font-fallback-mz")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 100;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -2091542378:
                    if (!str3.equals("mz-live2d-guard")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 217;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -2078766994:
                    if (!str3.equals("shared-apng-guard-mv")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 134;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -2078766990:
                    if (!str3.equals("shared-apng-guard-mz")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 134;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -2028199368:
                    if (!str3.equals("mv-plugin-compat")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 34;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -1858929303:
                    if (!str3.equals("mz-effect-manager-guard")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 154;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -1800463607:
                    if (!str3.equals("mz-recollection-guard")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 86;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -1762055017:
                    if (!str3.equals("mz-kc-mirrors-guard")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 81;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -1646556934:
                    if (!str3.equals("mz-mobile-stretch")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 178;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -1607721413:
                    if (!str3.equals("mz-graphics-stretch-guard")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 97;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -1592647970:
                    if (!str3.equals("mz-response-status")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 20;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -1555936757:
                    if (!str3.equals("mz-xhr-case-normalization")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 102;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -1548802137:
                    if (!str3.equals("mv-missing-asset-skip")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 98;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -1422560064:
                    if (!str3.equals("mz-dotmove-diagonal-guard")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 200;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -1287479885:
                    if (!str3.equals("mz-storage-interceptor")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 14;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -1232970637:
                    if (!str3.equals("mv-picture-point-color")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 36;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -1138524063:
                    if (!str3.equals("mz-error-capture")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 46;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -1131172575:
                    if (!str3.equals("mz-game-active")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 124;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -1012909616:
                    if (!str3.equals("mv-spine-compat")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 109;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -852695996:
                    if (!str3.equals("mz-pixi-apng-compat")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 39;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -841377699:
                    if (!str3.equals("shared-case-mapping-mv")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = GodotService.MSG_ENGINE_STATUS_UPDATE;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -841377695:
                    if (!str3.equals("shared-case-mapping-mz")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = GodotService.MSG_ENGINE_STATUS_UPDATE;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -838874465:
                    if (!str3.equals("mz-font-size")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 189;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -824828150:
                    if (!str3.equals("shared-node-nw-mv")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 43;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -824828146:
                    if (!str3.equals("shared-node-nw-mz")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 43;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -696145507:
                    if (!str3.equals("mz-spriteset-filter-webgl1")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -618972320:
                    if (!str3.equals("mv-coroutine-diagnostic")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -578105687:
                    if (!str3.equals("shared-text-align-mv")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 133;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -578105683:
                    if (!str3.equals("shared-text-align-mz")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 133;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -558169270:
                    if (!str3.equals("shared-translation-overlay-mv")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 5;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -558169266:
                    if (!str3.equals("shared-translation-overlay-mz")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 5;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -546730319:
                    if (!str3.equals("mz-window-layer-webgl1")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 54;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -517733693:
                    if (!str3.equals("shared-pathfinder-mv")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 130;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -517733689:
                    if (!str3.equals("shared-pathfinder-mz")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 130;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case -459083875:
                    if (!str3.equals("mv-eight-direction")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 126;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -448027747:
                    if (!str3.equals("mv-container-filter-webgl1")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 47;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case -399899140:
                    if (!str3.equals("mv-force-web-storage")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 113;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 5055253:
                    if (!str3.equals("mz-touch-diagnostic")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 219;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 88183911:
                    if (!str3.equals("mz-window-tone-guard")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 91;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 121699490:
                    if (!str3.equals("mv-live2d-core-guard")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 95;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 267124175:
                    if (!str3.equals("mv-stuck-interpreter-diagnostic")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 55;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 381200097:
                    if (!str3.equals("mv-simultaneous-request")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 32;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 395579774:
                    if (!str3.equals("mv-mobile-stretch")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 102;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 585819220:
                    if (!str3.equals("mv-targeted-plugin-fix")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 35;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 659187617:
                    if (!str3.equals("mz-eight-direction")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 222;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 734021947:
                    if (!str3.equals("mz-audio-unlock")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 132;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 818597427:
                    if (!str3.equals("shared-audio-unlock-mv")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 116;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 818597431:
                    if (!str3.equals("shared-audio-unlock-mz")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 116;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 887338796:
                    if (!str3.equals("mz-cgmz-filter-guard")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 71;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 979908546:
                    if (!str3.equals("shared-touch-input-mv")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 20;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 979908550:
                    if (!str3.equals("shared-touch-input-mz")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 20;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 1002476115:
                    if (!str3.equals("shared-pixel-rounding-mv")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 131;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 1002476119:
                    if (!str3.equals("shared-pixel-rounding-mz")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 131;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 1017372938:
                    if (!str3.equals("mv-quick-rotate-hue")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 31;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 1110868259:
                    if (!str3.equals("mz-missing-asset-skip")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 174;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 1259823180:
                    if (!str3.equals("mz-spine-compat")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 185;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 1318817959:
                    if (!str3.equals("mv-audio-cache")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 33;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 1363170140:
                    if (!str3.equals("shared-cache-manager-mv")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 124;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 1363170144:
                    if (!str3.equals("shared-cache-manager-mz")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 124;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 1421203293:
                    if (!str3.equals("mv-error-capture")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 84;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 1421829269:
                    if (!str3.equals("shared-video-texture-mv")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 5;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 1421829273:
                    if (!str3.equals("shared-video-texture-mz")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 5;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 1438104017:
                    if (!str3.equals("shared-global-info-cache-mv")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 132;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 1438104021:
                    if (!str3.equals("shared-global-info-cache-mz")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 132;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 1585334749:
                    if (!str3.equals("mz-screen-capture-guard")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 211;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 1647130527:
                    if (!str3.equals("mv-core-stability")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 30;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 1699289810:
                    if (!str3.equals("mv-scene-watchdog")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 77;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 1892790358:
                    if (!str3.equals("shared-auto-wrap-mv")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 120;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 1892790362:
                    if (!str3.equals("shared-auto-wrap-mz")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 120;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                case 2053963675:
                    if (!str3.equals("mv-font-size")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 121;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 2055440143:
                    if (!str3.equals("mz-scene-title-guard")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 192;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 2083054308:
                    if (!str3.equals("mv-audio-extension")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 22;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 2089324509:
                    if (!str3.equals("mv-process-versions")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 15;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                case 2144928001:
                    if (!str3.equals("mz-map-filter-guard")) {
                        throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
                    }
                    i3 = 76;
                    arrayList.add(new d(str, i3, bVar.b, str3));
                    break;
                    break;
                default:
                    throw new IllegalStateException("unmapped catalog id: ".concat(str3).toString());
            }
        }
        List listUnmodifiableList2 = Collections.unmodifiableList(new ArrayList(arrayList));
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList2, "unmodifiableList(...)");
        b = listUnmodifiableList2;
    }

    public static b a(String str, c cVar, g gVar, int i3, String str2, String str3, boolean z2, String str4) {
        return new b(str, cVar, gVar, i3, CollectionsKt.emptyList(), str2, str3, z2, str4);
    }

    public static b b(String id) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator it = f1512a.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (Intrinsics.areEqual(((b) next).f1513a, id)) {
                return (b) next;
            }
        }
        next = null;
        return (b) next;
    }
}
