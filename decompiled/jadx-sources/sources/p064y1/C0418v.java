package p064y1;

import A1.H;
import android.webkit.WebView;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Save;
import com.minhub.gamehub.game.GameActivity;
import f2.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import p047s1.b;

/* JADX INFO: renamed from: y1.v, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0418v implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GameActivity f6374c;

    public /* synthetic */ C0418v(GameActivity gameActivity, int i3) {
        this.b = i3;
        this.f6374c = gameActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i3 = this.b;
        GameActivity gameActivity = this.f6374c;
        switch (i3) {
            case 0:
                Save save = (Save) obj;
                int i4 = GameActivity.f3676L;
                Intrinsics.checkNotNullParameter(save, "save");
                if (gameActivity.f3693m != null) {
                    WebView wv = gameActivity.u().f5707q0;
                    Intrinsics.checkNotNullExpressionValue(wv, "webView");
                    int slotNumber = save.getSlotNumber();
                    H callback = new H(8, gameActivity, save);
                    Intrinsics.checkNotNullParameter(wv, "wv");
                    Intrinsics.checkNotNullParameter(callback, "callback");
                    wv.evaluateJavascript(StringsKt.trimIndent("\n            (function(){\n              try {\n                if (typeof DataManager === 'undefined' || !DataManager.loadGame) return false;\n                var slot = " + slotNumber + ";\n                if (typeof DataManager.isThisGameFile === 'function' && !DataManager.isThisGameFile(slot)) {\n                  return false;\n                }\n                var r = DataManager.loadGame(slot);\n                var done = function(){\n                  try {\n                    if ($gamePlayer && typeof $gamePlayer.requestMapReload === 'function') {\n                      $gamePlayer.requestMapReload();\n                    }\n                    SceneManager.goto(Scene_Map);\n                  } catch(e) {}\n                };\n                if (r && typeof r.then === 'function') { r.then(done); return true; }\n                if (r) { done(); return true; }\n                return false;\n              } catch(e) { return false; }\n            })();\n        "), new b(2, callback));
                }
                break;
            case 1:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int i5 = GameActivity.f3676L;
                gameActivity.runOnUiThread(new a(zBooleanValue, gameActivity, 3));
                break;
            case 2:
                String it = (String) obj;
                int i6 = GameActivity.f3676L;
                Intrinsics.checkNotNullParameter(it, "it");
                Toast.makeText(gameActivity, gameActivity.getString(R.string.cheat_engine_unsupported), 0).show();
                break;
            default:
                String it2 = (String) obj;
                int i7 = GameActivity.f3676L;
                Intrinsics.checkNotNullParameter(it2, "it");
                Toast.makeText(gameActivity, gameActivity.getString(R.string.cheat_engine_unsupported), 0).show();
                break;
        }
        return Unit.INSTANCE;
    }
}
