package A1;

import C1.I1;
import C1.ViewOnClickListenerC0113w;
import C1.ViewOnClickListenerC0122z;
import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameStorage;
import com.minhub.gamehub.data.PluginParamOption;
import com.minhub.gamehub.gamepad.GamepadOverlay;
import com.minhub.gamehub.hub.GameDetailActivity;
import java.util.List;
import java.util.Locale;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;
import p064y1.C0425x0;
import p064y1.DialogInterfaceOnDismissListenerC0393m0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class G0 implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f62c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f63d;

    public /* synthetic */ G0(int i3, Object obj, Object obj2) {
        this.b = i3;
        this.f62c = obj;
        this.f63d = obj2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:63:0x01fd  */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        long j2;
        String string;
        int i3 = 3;
        switch (this.b) {
            case 0:
                K0 k2 = (K0) this.f62c;
                Function1 function1 = (Function1) this.f63d;
                H0 h2 = K0.f76q;
                h2.set(Boolean.TRUE);
                try {
                    C0008a0 c0008a0M = k2.m();
                    if (k2.f82i) {
                        long j3 = c0008a0M.b;
                        if (j3 > 9223372036853775806L) {
                            throw new E0();
                        }
                        j2 = j3 + 1000000;
                    } else {
                        j2 = c0008a0M.b;
                    }
                    if (j2 >= 9223372036854775806L) {
                        throw new E0();
                    }
                    C0008a0 c0008a0A = C0008a0.a((C0008a0) function1.invoke(c0008a0M), 1 + j2, null, null, null, 60);
                    k2.s(c0008a0A);
                    k2.u(c0008a0A);
                    k2.f82i = false;
                    Z z2 = c0008a0A.f165c;
                    C0008a0 c0008a0A2 = C0008a0.a(c0008a0A, 0L, null, null, (z2 != null ? z2.f : null) == L0.g ? w0.f268c : w0.b, 31);
                    h2.remove();
                    return c0008a0A2;
                } catch (Throwable th) {
                    K0.f76q.remove();
                    throw th;
                }
            case 1:
                GamepadOverlay gamepadOverlay = (GamepadOverlay) this.f62c;
                String str = (String) this.f63d;
                WebView webView = gamepadOverlay.f3737c;
                if (webView != null) {
                    webView.evaluateJavascript("window.__mhAdelAct && window.__mhAdelAct('" + str + "')", null);
                }
                return Unit.INSTANCE;
            case 2:
                GameDetailActivity gameDetailActivity = (GameDetailActivity) this.f62c;
                Game game = (Game) this.f63d;
                int i4 = GameDetailActivity.f3762w;
                if (S1.d.m(gameDetailActivity)) {
                    View viewInflate = gameDetailActivity.getLayoutInflater().inflate(R.layout.dialog_game_translation, (ViewGroup) null, false);
                    int i5 = R.id.btn_dialog_cancel;
                    Button button = (Button) viewInflate.findViewById(R.id.btn_dialog_cancel);
                    if (button != null) {
                        i5 = R.id.btn_dialog_start;
                        Button button2 = (Button) viewInflate.findViewById(R.id.btn_dialog_start);
                        if (button2 != null) {
                            i5 = R.id.tv_dialog_color;
                            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_dialog_color);
                            if (textView != null) {
                                i5 = R.id.tv_dialog_font;
                                TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_dialog_font);
                                if (textView2 != null) {
                                    i5 = R.id.tv_dialog_source;
                                    TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_dialog_source);
                                    if (textView3 != null) {
                                        i5 = R.id.tv_dialog_subtitle;
                                        if (((TextView) viewInflate.findViewById(R.id.tv_dialog_subtitle)) != null) {
                                            i5 = R.id.tv_dialog_target;
                                            TextView textView4 = (TextView) viewInflate.findViewById(R.id.tv_dialog_target);
                                            if (textView4 != null) {
                                                i5 = R.id.tv_dialog_title;
                                                if (((TextView) viewInflate.findViewById(R.id.tv_dialog_title)) != null) {
                                                    LinearLayout linearLayout = (LinearLayout) viewInflate;
                                                    Intrinsics.checkNotNullExpressionValue(new p043r.b(), "inflate(...)");
                                                    textView3.setText(gameDetailActivity.o(S1.d.k(gameDetailActivity)));
                                                    textView4.setText(gameDetailActivity.o(S1.d.l(gameDetailActivity)));
                                                    String upperCase = S1.d.h(gameDetailActivity).toUpperCase(Locale.ROOT);
                                                    Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                                                    switch (upperCase) {
                                                        case "#00BFFF":
                                                            string = gameDetailActivity.getString(R.string.format_color_installed, gameDetailActivity.getString(R.string.color_blue));
                                                            break;
                                                        case "#00FF00":
                                                            string = gameDetailActivity.getString(R.string.format_color_installed, gameDetailActivity.getString(R.string.color_green));
                                                            break;
                                                        case "#EF4444":
                                                            string = gameDetailActivity.getString(R.string.format_color_installed, gameDetailActivity.getString(R.string.color_red));
                                                            break;
                                                        case "#FFA500":
                                                            string = gameDetailActivity.getString(R.string.format_color_installed, gameDetailActivity.getString(R.string.color_orange));
                                                            break;
                                                        case "#FFFF00":
                                                            string = gameDetailActivity.getString(R.string.format_color_installed, gameDetailActivity.getString(R.string.color_yellow));
                                                            break;
                                                        case "#FFFFFF":
                                                            string = gameDetailActivity.getString(R.string.format_color_installed, gameDetailActivity.getString(R.string.color_white));
                                                            break;
                                                        default:
                                                            string = gameDetailActivity.getString(R.string.label_custom);
                                                            break;
                                                    }
                                                    textView.setText(string);
                                                    textView2.setText(gameDetailActivity.getString(R.string.format_font_installed, S1.d.i(gameDetailActivity)));
                                                    O0.b bVar = new O0.b(gameDetailActivity, 0);
                                                    ((C0240b) bVar.f4145c).f4112t = linearLayout;
                                                    DialogInterfaceC0245g dialogInterfaceC0245gC = bVar.c();
                                                    Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
                                                    Window window = dialogInterfaceC0245gC.getWindow();
                                                    if (window != null) {
                                                        window.setBackgroundDrawableResource(android.R.color.transparent);
                                                    }
                                                    button.setOnClickListener(new ViewOnClickListenerC0122z(dialogInterfaceC0245gC, 1));
                                                    button2.setOnClickListener(new ViewOnClickListenerC0113w(dialogInterfaceC0245gC, gameDetailActivity, game, i3));
                                                    dialogInterfaceC0245gC.show();
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i5)));
                }
                gameDetailActivity.r(game);
                return Unit.INSTANCE;
            case 3:
                List list = (List) this.f62c;
                return ((PluginParamOption) list.get(RangesKt.coerceIn(((Spinner) this.f63d).getSelectedItemPosition(), 0, list.size() - 1))).getValue();
            case 4:
                return GameStorage.reload$lambda$9$lambda$5((List) this.f62c, (GameStorage) this.f63d);
            default:
                Object obj = this.f62c;
                C0425x0 c0425x0 = (C0425x0) this.f63d;
                Function0 function0 = c0425x0.f6400c;
                Activity activity = c0425x0.f6399a;
                Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(obj);
                if (thM12exceptionOrNullimpl == null) {
                    int iIntValue = ((Number) obj).intValue();
                    if (iIntValue == 0) {
                        Toast.makeText(activity, R.string.godot_cheat_nothing, 0).show();
                        function0.invoke();
                    } else {
                        O0.b bVar2 = new O0.b(activity, 0);
                        C0240b c0240b = (C0240b) bVar2.f4145c;
                        c0240b.f4098d = activity.getString(R.string.godot_cheat_saved_title, Integer.valueOf(iIntValue));
                        c0240b.f = c0240b.f4096a.getText(R.string.godot_cheat_restart_msg);
                        bVar2.h(R.string.godot_cheat_exit_now, new I1(5, c0425x0));
                        bVar2.f(R.string.godot_cheat_later, null);
                        c0240b.f4107o = new DialogInterfaceOnDismissListenerC0393m0(c0425x0, 3);
                        bVar2.e();
                    }
                } else {
                    String message = thM12exceptionOrNullimpl.getMessage();
                    if (message == null) {
                        message = thM12exceptionOrNullimpl.getClass().getSimpleName();
                    }
                    Toast.makeText(activity, activity.getString(R.string.godot_cheat_failed, message), 1).show();
                    function0.invoke();
                }
                return Unit.INSTANCE;
        }
    }
}
