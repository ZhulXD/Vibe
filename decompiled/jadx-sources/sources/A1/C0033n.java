package A1;

import C1.C0059d1;
import C1.Z0;
import C1.d2;
import android.app.Activity;
import android.app.AlertDialog;
import android.text.Editable;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;
import androidx.core.view.MotionEventCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModelProvider;
import com.minhub.gamehub.R;
import com.minhub.gamehub.game.VxAceGameActivity;
import com.minhub.gamehub.hub.KiriKiriInstallActivity;
import com.minhub.gamehub.hub.catalog.DownloadForegroundService;
import java.lang.ref.WeakReference;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.AbstractLongTimeSource;
import org.godotengine.godot.nativeapi.GodotNativeBridge;
import org.godotengine.godot.service.GodotService;
import org.godotengine.godot.utils.DialogUtils;
import org.godotengine.godot.vulkan.VkSurfaceView;
import p064y1.C0385j1;

/* JADX INFO: renamed from: A1.n, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0033n implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f206c;

    public /* synthetic */ C0033n(int i3, Object obj) {
        this.b = i3;
        this.f206c = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i3 = this.b;
        boolean z2 = false;
        Object obj = this.f206c;
        switch (i3) {
            case 0:
                Activity activity = (Activity) ((WeakReference) obj).get();
                if (activity == null) {
                    return null;
                }
                if (!activity.isFinishing() && !activity.isDestroyed()) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            case 1:
                return ((K0) obj).m();
            case 2:
                return ((Spinner) obj).getSelectedItemPosition() == 0 ? "true" : "false";
            case 3:
                Editable text = ((EditText) obj).getText();
                String string = text != null ? text.toString() : null;
                return string == null ? "" : string;
            case 4:
                FragmentActivity fragmentActivityRequireActivity = ((C0059d1) obj).requireActivity();
                Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
                return (Z0) new ViewModelProvider(fragmentActivityRequireActivity).get(Z0.class);
            case 5:
                int i4 = KiriKiriInstallActivity.f3784o;
                return Boolean.valueOf(((D1.j) obj).f830i.get());
            case 6:
                FragmentActivity fragmentActivityRequireActivity2 = ((d2) obj).requireActivity();
                Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity2, "requireActivity(...)");
                return (Z0) new ViewModelProvider(fragmentActivityRequireActivity2).get(Z0.class);
            case 7:
                return ((J1.a) obj).f1216a.getSharedPreferences("tyrano_save", 0);
            case 8:
                return ((N1.i) obj).g();
            case 9:
                return DownloadForegroundService.notifManager_delegate$lambda$0((DownloadForegroundService) obj);
            case 10:
                return GodotNativeBridge.vibratorService_delegate$lambda$0((GodotNativeBridge) obj);
            case MotionEventCompat.AXIS_Z /* 11 */:
                return VkSurfaceView.vkThread_delegate$lambda$0((VkSurfaceView) obj);
            case 12:
                return Long.valueOf(((AbstractLongTimeSource) obj).read());
            case 13:
                return GodotService.godot_delegate$lambda$0((GodotService) obj);
            case MotionEventCompat.AXIS_RZ /* 14 */:
                return DialogUtils.Companion.showDialog$lambda$4$lambda$3((AlertDialog) obj);
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                ((WebView) obj).evaluateJavascript("(function() {\n    var VER = '13';\n    var PANEL_ID = '__mh_tc_v' + VER + '__';\n    var staleIds = ['__mh_tyrano_cheat__','__mh_tyrano_cheat_v5__'];\n    staleIds.forEach(function(sid) { var e = document.getElementById(sid); if (e) e.remove(); });\n    document.querySelectorAll('[id^=\"__mh_tc_v\"]').forEach(function(e) { if (e.id !== PANEL_ID) e.remove(); });\n    var existing = document.getElementById(PANEL_ID);\n    if (existing) { existing.remove(); return; }\n    document.querySelectorAll('script[src=\"https://appassets.androidplatform.net/cheat/tyrano-cheat.js\"]').forEach(function(s){ s.remove(); });\n    var s = document.createElement('script');\n    s.src = 'https://appassets.androidplatform.net/cheat/tyrano-cheat.js';\n    document.head.appendChild(s);\n})();", null);
                return Unit.INSTANCE;
            case 16:
                return ((C0385j1) obj).b.getEnabledButtonIds();
            default:
                VxAceGameActivity vxAceGameActivity = (VxAceGameActivity) obj;
                Toast.makeText(vxAceGameActivity, vxAceGameActivity.getString(R.string.toast_layout_saved), 0).show();
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ C0033n(u1.a aVar, WebView webView) {
        this.b = 15;
        this.f206c = webView;
    }
}
