package C1;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.widget.EditText;
import com.minhub.gamehub.game.GodotGameActivity;
import com.minhub.gamehub.hub.OnlineGameDetailActivity;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.godotengine.godot.utils.DialogUtils;
import p064y1.C0425x0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class I1 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f445c;

    public /* synthetic */ I1(int i3, Object obj) {
        this.b = i3;
        this.f445c = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        Object objM9constructorimpl;
        int i4 = this.b;
        Object obj = this.f445c;
        switch (i4) {
            case 0:
                OnlineGameDetailActivity onlineGameDetailActivity = (OnlineGameDetailActivity) obj;
                int i5 = OnlineGameDetailActivity.f3801i;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    onlineGameDetailActivity.startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + onlineGameDetailActivity.getPackageName())));
                    objM9constructorimpl = Result.m9constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m12exceptionOrNullimpl(objM9constructorimpl) != null) {
                    try {
                        onlineGameDetailActivity.startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION"));
                        Result.m9constructorimpl(Unit.INSTANCE);
                    } catch (Throwable th2) {
                        Result.Companion companion3 = Result.INSTANCE;
                        Result.m9constructorimpl(ResultKt.createFailure(th2));
                        return;
                    }
                }
                break;
            case 1:
                DialogUtils.Companion.showInputDialog$lambda$6$lambda$5((EditText) obj, dialogInterface, i3);
                break;
            case 2:
                F.b bVar = (F.b) obj;
                p047s1.a aVar = (p047s1.a) ((List) bVar.f945e).get(i3);
                WebView webView = (WebView) bVar.f944d;
                aVar.getClass();
                webView.evaluateJavascript("(function() {\n    return 'localStorage:' + localStorage.length;\n})();", new p047s1.b(bVar, aVar));
                break;
            case 3:
                ((WebView) obj).evaluateJavascript("(function() {\n    var VER = '13';\n    var PANEL_ID = '__mh_tc_v' + VER + '__';\n    var staleIds = ['__mh_tyrano_cheat__','__mh_tyrano_cheat_v5__'];\n    staleIds.forEach(function(sid) { var e = document.getElementById(sid); if (e) e.remove(); });\n    document.querySelectorAll('[id^=\"__mh_tc_v\"]').forEach(function(e) { if (e.id !== PANEL_ID) e.remove(); });\n    var existing = document.getElementById(PANEL_ID);\n    if (existing) { existing.remove(); return; }\n    document.querySelectorAll('script[src=\"https://appassets.androidplatform.net/cheat/tyrano-cheat.js\"]').forEach(function(s){ s.remove(); });\n    var s = document.createElement('script');\n    s.src = 'https://appassets.androidplatform.net/cheat/tyrano-cheat.js';\n    document.head.appendChild(s);\n})();", null);
                break;
            case 4:
                ((Function0) obj).invoke();
                break;
            case 5:
                ((C0425x0) obj).f6401d.invoke();
                break;
            default:
                int i6 = GodotGameActivity.f3707q;
                ((GodotGameActivity) obj).finish();
                break;
        }
    }

    public /* synthetic */ I1(u1.a aVar, WebView webView) {
        this.b = 3;
        this.f445c = webView;
    }
}
