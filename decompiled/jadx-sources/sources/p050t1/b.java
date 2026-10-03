package p050t1;

import C1.C0096q;
import android.webkit.JavascriptInterface;
import com.minhub.gamehub.gamepad.GamepadOverlay;
import java.io.IOException;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GamepadOverlay f5326a;
    public final C0096q b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f5327c;

    public b(GamepadOverlay overlay, C0096q onMainThread) {
        Intrinsics.checkNotNullParameter(overlay, "overlay");
        Intrinsics.checkNotNullParameter(onMainThread, "onMainThread");
        this.f5326a = overlay;
        this.b = onMainThread;
        this.f5327c = MapsKt.mapOf(TuplesKt.to("speed1x", "adel_speed1x"), TuplesKt.to("speed2x", "adel_speed2x"), TuplesKt.to("speed3x", "adel_speed3x"), TuplesKt.to("speed5x", "adel_speed5x"), TuplesKt.to("noClip", "adel_noclip"), TuplesKt.to("encounterToggle", "adel_encounter"), TuplesKt.to("healParty", "adel_heal"), TuplesKt.to("recoverParty", "adel_recover"), TuplesKt.to("quickSave", "adel_save"), TuplesKt.to("quickLoad", "adel_load"), TuplesKt.to("forceVictory", "adel_victory"), TuplesKt.to("forceDefeat", "adel_defeat"), TuplesKt.to("forceEscape", "adel_escape"), TuplesKt.to("woundAllEnemies", "adel_wound"), TuplesKt.to("snapshot", "adel_snapshot"));
    }

    @JavascriptInterface
    public final void addButton(String shortcutId) throws IOException {
        Intrinsics.checkNotNullParameter(shortcutId, "shortcutId");
        String str = (String) this.f5327c.get(shortcutId);
        if (str == null) {
            return;
        }
        this.b.invoke(new a(this, str, 0));
    }

    @JavascriptInterface
    public final boolean hasButton(String shortcutId) {
        Intrinsics.checkNotNullParameter(shortcutId, "shortcutId");
        String str = (String) this.f5327c.get(shortcutId);
        if (str == null) {
            return false;
        }
        return this.f5326a.getEnabledButtonIds().contains(str);
    }

    @JavascriptInterface
    public final void removeButton(String shortcutId) throws IOException {
        Intrinsics.checkNotNullParameter(shortcutId, "shortcutId");
        String str = (String) this.f5327c.get(shortcutId);
        if (str == null) {
            return;
        }
        this.b.invoke(new a(this, str, 1));
    }
}
