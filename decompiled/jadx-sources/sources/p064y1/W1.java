package p064y1;

import E.b;
import com.minhub.gamehub.game.VxAceGameActivity;
import com.minhub.gamehub.hub.catalog.RemotePluginCatalogRepository;
import java.io.File;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import p023i1.l;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class W1 implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VxAceGameActivity f6154c;

    public /* synthetic */ W1(VxAceGameActivity vxAceGameActivity, int i3) {
        this.b = i3;
        this.f6154c = vxAceGameActivity;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        X1 x2;
        switch (this.b) {
            case 0:
                VxAceGameActivity vxAceGameActivity = this.f6154c;
                try {
                    File file = new File(vxAceGameActivity.getFilesDir(), "vxace_autofix_cache.json");
                    x2 = file.exists() ? (X1) new l().c(FilesKt__FileReadWriteKt.readText$default(file, null, 1, null), X1.class) : null;
                    break;
                } catch (Exception unused) {
                }
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (x2 == null || jCurrentTimeMillis - x2.f6160a >= 86400000) {
                        X1 x3 = new X1(new RemotePluginCatalogRepository(null, null, 3, null).fetchRaw("vxace"), jCurrentTimeMillis);
                        try {
                            File file2 = new File(vxAceGameActivity.getFilesDir(), "vxace_autofix_cache.json");
                            String strG = new l().g(x3);
                            Intrinsics.checkNotNullExpressionValue(strG, "toJson(...)");
                            FilesKt__FileReadWriteKt.writeText$default(file2, strG, null, 2, null);
                        } catch (Exception e2) {
                            b.x("writeCache failed: ", e2.getMessage(), "VxAceAutoFixCache");
                            return;
                        }
                    }
                } catch (Exception e3) {
                    b.x("refreshAsync failed: ", e3.getMessage(), "VxAceAutoFixCache");
                    return;
                }
                break;
            case 1:
                this.f6154c.queueRuntimeScript$app_release("begin\n  if defined?(Game_Player) && !Game_Player.method_defined?(:__mh8_orig)\n    class Game_Player\n      alias __mh8_orig move_by_input\n      def move_by_input\n        return if !movable? || $game_map.interpreter.running?\n        case Input.dir8\n        when 7 then move_diagonal(4, 8)\n        when 9 then move_diagonal(6, 8)\n        when 1 then move_diagonal(4, 2)\n        when 3 then move_diagonal(6, 2)\n        else        __mh8_orig\n        end\n      end\n    end\n  end\nrescue\nend");
                break;
            default:
                this.f6154c.updateStoredSaveCount$app_release();
                break;
        }
    }
}
