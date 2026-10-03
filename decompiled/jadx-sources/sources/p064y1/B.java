package p064y1;

import C1.DialogInterfaceOnDismissListenerC0116x;
import O0.b;
import Q1.d;
import android.R;
import android.content.DialogInterface;
import android.webkit.WebView;
import android.widget.EditText;
import com.minhub.gamehub.game.GameActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;
import p011e.C0240b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class B implements Function3 {
    public final /* synthetic */ GameActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f6034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ WebView f6035d;

    public /* synthetic */ B(GameActivity gameActivity, d dVar, WebView webView) {
        this.b = gameActivity;
        this.f6034c = dVar;
        this.f6035d = webView;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        final int iIntValue = ((Integer) obj).intValue();
        final String title = (String) obj2;
        final String defaultValue = (String) obj3;
        int i3 = GameActivity.f3676L;
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        final GameActivity gameActivity = this.b;
        final d dVar = this.f6034c;
        final WebView webView = this.f6035d;
        gameActivity.runOnUiThread(new Runnable() { // from class: y1.D
            @Override // java.lang.Runnable
            public final void run() {
                int i4 = GameActivity.f3676L;
                final GameActivity gameActivity2 = gameActivity;
                final d dVar2 = dVar;
                if (!gameActivity2.y(dVar2) || gameActivity2.f3692l) {
                    return;
                }
                gameActivity2.f3692l = true;
                final EditText editText = new EditText(gameActivity2);
                editText.setText(defaultValue);
                editText.setSelection(editText.getText().length());
                b bVar = new b(gameActivity2, 0);
                C0240b c0240b = (C0240b) bVar.f4145c;
                String str = title;
                if (StringsKt.isBlank(str)) {
                    str = "Input";
                }
                c0240b.f4098d = str;
                c0240b.f4112t = editText;
                final WebView webView2 = webView;
                final int i5 = iIntValue;
                bVar.h(R.string.ok, new DialogInterface.OnClickListener() { // from class: y1.E
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i6) {
                        int i7 = GameActivity.f3676L;
                        if (gameActivity2.y(dVar2)) {
                            webView2.evaluateJavascript("if(window.$gameVariables) $gameVariables.setValue(" + i5 + "," + JSONObject.quote(editText.getText().toString()) + ")", null);
                        }
                    }
                });
                bVar.f(R.string.cancel, null);
                c0240b.f4107o = new DialogInterfaceOnDismissListenerC0116x(2, gameActivity2);
                bVar.e();
            }
        });
        return Unit.INSTANCE;
    }
}
