package C1;

import A1.C0021h;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.WindowInsetsCompat;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.hub.LoginActivity;
import com.minhub.gamehub.hub.auth.AuthHttp;
import com.minhub.gamehub.hub.auth.LoginAlertDialog;
import com.minhub.gamehub.hub.auth.SessionVerifier;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import org.godotengine.godot.Godot;
import org.godotengine.godot.GodotActivity;
import org.godotengine.godot.plugin.GodotPlugin;
import org.godotengine.godot.plugin.SignalInfo;
import org.json.JSONObject;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;
import p064y1.AbstractC0361b1;
import p064y1.C0358a1;
import p064y1.C0425x0;
import p064y1.DialogInterfaceOnClickListenerC0377h;
import p064y1.DialogInterfaceOnClickListenerC0392m;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class A1 implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f390c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f391d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f392e;

    public /* synthetic */ A1(Context context, Object obj, String str, int i3) {
        this.b = i3;
        this.f390c = context;
        this.f392e = obj;
        this.f391d = str;
    }

    /* JADX WARN: Code duplicated, block: B:125:0x033a  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.lang.Runnable
    public final void run() {
        Object objM9constructorimpl;
        Object objM9constructorimpl2;
        Object objM9constructorimpl3;
        Object objM9constructorimpl4;
        boolean zBooleanValue;
        Object objM9constructorimpl5;
        Object objM9constructorimpl6;
        String strOptString;
        String strOptString2;
        Object objM9constructorimpl7;
        boolean z2 = false;
        int i3 = 1;
        switch (this.b) {
            case 0:
                LoginActivity loginActivity = (LoginActivity) this.f390c;
                String str = (String) this.f391d;
                String str2 = (String) this.f392e;
                int i4 = LoginActivity.f3793l;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    AuthHttp authHttp = AuthHttp.INSTANCE;
                    Pair pair = TuplesKt.to("username", str);
                    Pair pair2 = TuplesKt.to("password", str2);
                    String strRemovePrefix = StringsKt__StringsKt.removePrefix(str, (CharSequence) "game");
                    if (strRemovePrefix.length() == 0) {
                        strRemovePrefix = "3";
                    }
                    objM9constructorimpl = Result.m9constructorimpl(authHttp.postForm("https://auth.h-game18.xyz/account/login", MapsKt.mapOf(pair, pair2, TuplesKt.to("type", strRemovePrefix)), 10000, 10000));
                    break;
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                loginActivity.runOnUiThread(new A1((Context) loginActivity, objM9constructorimpl, str2, i3));
                return;
            case 1:
                LoginActivity loginActivity2 = (LoginActivity) this.f390c;
                Object obj = this.f392e;
                String str3 = (String) this.f391d;
                int i5 = LoginActivity.f3793l;
                if (loginActivity2.isFinishing() || loginActivity2.isDestroyed()) {
                    return;
                }
                DialogInterfaceC0245g dialogInterfaceC0245g = loginActivity2.f;
                if (dialogInterfaceC0245g != null) {
                    dialogInterfaceC0245g.dismiss();
                }
                loginActivity2.f = null;
                Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(obj);
                if (thM12exceptionOrNullimpl != null) {
                    loginActivity2.r(true);
                    Log.e("LoginActivity", "Verify error (transport)", thM12exceptionOrNullimpl);
                    LoginAlertDialog loginAlertDialog = LoginAlertDialog.INSTANCE;
                    String message = thM12exceptionOrNullimpl.getMessage();
                    if (message == null) {
                        message = thM12exceptionOrNullimpl.getClass().getSimpleName();
                    }
                    Intrinsics.checkNotNull(message);
                    loginAlertDialog.showConnectionError(loginActivity2, message);
                    return;
                }
                AuthHttp.Result result = (AuthHttp.Result) obj;
                if (result.isSuccess()) {
                    String body = result.getBody();
                    if (Intrinsics.areEqual(StringsKt.trim((CharSequence) body).toString(), "Login successful")) {
                        zBooleanValue = true;
                    } else {
                        try {
                            objM9constructorimpl4 = Result.m9constructorimpl(Boolean.valueOf(new JSONObject(body).optBoolean("success", false)));
                        } catch (Throwable th2) {
                            Result.Companion companion3 = Result.INSTANCE;
                            objM9constructorimpl4 = Result.m9constructorimpl(ResultKt.createFailure(th2));
                        }
                        Boolean bool = Boolean.FALSE;
                        if (Result.m15isFailureimpl(objM9constructorimpl4)) {
                            objM9constructorimpl4 = bool;
                        }
                        zBooleanValue = ((Boolean) objM9constructorimpl4).booleanValue();
                    }
                    if (zBooleanValue) {
                        try {
                            JSONObject jSONObjectOptJSONObject = new JSONObject(result.getBody()).optJSONObject("data");
                            if (jSONObjectOptJSONObject == null || (strOptString2 = jSONObjectOptJSONObject.optString("displayName", "MinHub Player")) == null) {
                                strOptString2 = "MinHub Player";
                            } else {
                                if (StringsKt.isBlank(strOptString2)) {
                                    strOptString2 = null;
                                }
                                if (strOptString2 == null) {
                                    strOptString2 = "MinHub Player";
                                }
                            }
                            objM9constructorimpl5 = Result.m9constructorimpl(strOptString2);
                            break;
                        } catch (Throwable th3) {
                            Result.Companion companion4 = Result.INSTANCE;
                            objM9constructorimpl5 = Result.m9constructorimpl(ResultKt.createFailure(th3));
                        }
                        String str4 = (String) (Result.m15isFailureimpl(objM9constructorimpl5) ? "MinHub Player" : objM9constructorimpl5);
                        try {
                            JSONObject jSONObjectOptJSONObject2 = new JSONObject(result.getBody()).optJSONObject("data");
                            if (jSONObjectOptJSONObject2 == null || (strOptString = jSONObjectOptJSONObject2.optString("sessionToken", "")) == null || StringsKt.isBlank(strOptString)) {
                                strOptString = null;
                            }
                            objM9constructorimpl6 = Result.m9constructorimpl(strOptString);
                            break;
                        } catch (Throwable th4) {
                            Result.Companion companion5 = Result.INSTANCE;
                            objM9constructorimpl6 = Result.m9constructorimpl(ResultKt.createFailure(th4));
                        }
                        if (Result.m15isFailureimpl(objM9constructorimpl6)) {
                            objM9constructorimpl6 = null;
                        }
                        Context applicationContext = loginActivity2.getApplicationContext();
                        Set set = S1.d.f2060a;
                        Intrinsics.checkNotNull(applicationContext);
                        S1.d.y(applicationContext, true);
                        S1.d.A(applicationContext, false);
                        S1.d.D(applicationContext, str4);
                        S1.d.z(applicationContext, 3);
                        S1.d.B(applicationContext, null);
                        S1.d.x(applicationContext, System.currentTimeMillis());
                        S1.d.C(applicationContext, (String) objM9constructorimpl6);
                        loginActivity2.r(true);
                        LoginAlertDialog loginAlertDialog2 = LoginAlertDialog.INSTANCE;
                        LoginAlertDialog.Kind kind = LoginAlertDialog.Kind.SUCCESS;
                        String string = loginActivity2.getString(R.string.login_success_title);
                        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                        String string2 = loginActivity2.getString(R.string.login_success_msg);
                        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                        LoginAlertDialog.show$default(loginAlertDialog2, loginActivity2, kind, string, string2, null, null, null, false, new B1(loginActivity2, 2), 112, null);
                        return;
                    }
                    break;
                }
                if (result.isSuccess()) {
                    loginActivity2.r(true);
                    String body2 = result.getBody();
                    try {
                        objM9constructorimpl3 = Result.m9constructorimpl(new JSONObject(body2).optString("message"));
                        break;
                    } catch (Throwable th5) {
                        Result.Companion companion6 = Result.INSTANCE;
                        objM9constructorimpl3 = Result.m9constructorimpl(ResultKt.createFailure(th5));
                    }
                    CharSequence charSequence = (CharSequence) (Result.m15isFailureimpl(objM9constructorimpl3) ? "" : objM9constructorimpl3);
                    boolean zIsBlank = StringsKt.isBlank(charSequence);
                    CharSequence string3 = charSequence;
                    if (zIsBlank) {
                        string3 = StringsKt.trim((CharSequence) body2).toString();
                    }
                    String string4 = loginActivity2.getString(R.string.login_account_failed, (String) string3);
                    Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                    loginActivity2.s(string4, true);
                    return;
                }
                loginActivity2.r(true);
                Log.e("LoginActivity", "Verify error [HTTP " + result.getCode() + "] body=" + result.getBody());
                try {
                    String strOptString3 = new JSONObject(result.getBody()).optString("message", "");
                    Intrinsics.checkNotNullExpressionValue(strOptString3, "optString(...)");
                    objM9constructorimpl2 = Result.m9constructorimpl(StringsKt.trim((CharSequence) strOptString3).toString());
                    break;
                } catch (Throwable th6) {
                    Result.Companion companion7 = Result.INSTANCE;
                    objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th6));
                }
                String string5 = (String) (Result.m15isFailureimpl(objM9constructorimpl2) ? "" : objM9constructorimpl2);
                if (result.getCode() == 401) {
                    string5 = loginActivity2.getString(R.string.login_pw_wrong, str3);
                } else if (StringsKt.isBlank(string5)) {
                    string5 = !StringsKt.isBlank(result.getBody()) ? StringsKt.trim((CharSequence) result.getBody()).toString() : E.b.i(result.getCode(), "HTTP ");
                }
                Intrinsics.checkNotNull(string5);
                loginActivity2.s(string5, result.getCode() == 401);
                return;
            case 2:
                i2 i2Var = (i2) this.f390c;
                V1 v2 = (V1) this.f391d;
                CharSequence charSequence2 = (CharSequence) this.f392e;
                i2Var.invoke();
                v2.c(charSequence2);
                LinearLayout linearLayout = v2.b;
                linearLayout.setAlpha(0.0f);
                linearLayout.setTranslationX(48.0f * v2.f517h);
                linearLayout.animate().setStartDelay(0L).alpha(1.0f).translationX(0.0f).setDuration(300L).setInterpolator(new DecelerateInterpolator(2.0f)).withEndAction(new Q1(v2, 1)).start();
                return;
            case 3:
                Handler handler = (Handler) this.f390c;
                Function1 function1 = (Function1) this.f391d;
                Function1 function2 = (Function1) this.f392e;
                try {
                    HttpURLConnection httpURLConnectionC = S1.j.c("https://h-game18.xyz/minhub-update.json");
                    httpURLConnectionC.setConnectTimeout(10000);
                    httpURLConnectionC.setReadTimeout(15000);
                    httpURLConnectionC.setRequestMethod("GET");
                    httpURLConnectionC.setUseCaches(false);
                    try {
                        int responseCode = httpURLConnectionC.getResponseCode();
                        if (200 > responseCode || responseCode >= 300) {
                            throw new IllegalStateException("HTTP " + httpURLConnectionC.getResponseCode());
                        }
                        InputStream inputStream = httpURLConnectionC.getInputStream();
                        Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192);
                        try {
                            String text = TextStreamsKt.readText(bufferedReader);
                            CloseableKt.closeFinally(bufferedReader, null);
                            handler.post(new RunnableC0078k(9, function1, new JSONObject(text)));
                            httpURLConnectionC.disconnect();
                            return;
                        } catch (Throwable th7) {
                            try {
                                throw th7;
                            } catch (Throwable th8) {
                                CloseableKt.closeFinally(bufferedReader, th7);
                                throw th8;
                            }
                        }
                    } catch (Throwable th9) {
                        httpURLConnectionC.disconnect();
                        throw th9;
                    }
                } catch (Exception e2) {
                    handler.post(new RunnableC0078k(10, function2, e2));
                    return;
                }
            case 4:
                com.bumptech.glide.d.o((Context) this.f390c, (R1.a) this.f392e, (String) this.f391d);
                return;
            case 5:
                C0021h c0021h = (C0021h) this.f390c;
                com.bumptech.glide.c cVar = (com.bumptech.glide.c) this.f391d;
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.f392e;
                try {
                    androidx.emoji2.text.r rVarH = p000a.a.h(c0021h.f192c);
                    if (rVarH == null) {
                        throw new RuntimeException("EmojiCompat font provider not available on this device.");
                    }
                    androidx.emoji2.text.q qVar = (androidx.emoji2.text.q) ((androidx.emoji2.text.i) rVarH.b);
                    synchronized (qVar.f2891e) {
                        qVar.g = threadPoolExecutor;
                        break;
                    }
                    ((androidx.emoji2.text.i) rVarH.b).a(new androidx.emoji2.text.k(cVar, threadPoolExecutor));
                    return;
                } catch (Throwable th10) {
                    cVar.B(th10);
                    threadPoolExecutor.shutdown();
                    return;
                }
            case 6:
                SessionVerifier.verifyInBackground$lambda$2((String) this.f391d, (Context) this.f390c, (Function0) this.f392e);
                return;
            case 7:
                GodotPlugin.lambda$emitSignal$0((String) this.f391d, (SignalInfo) this.f390c, (Object[]) this.f392e);
                return;
            case 8:
                Godot.enableEdgeToEdge$lambda$11$lambda$10((Godot) this.f390c, (WindowInsetsCompat) this.f391d, (View) this.f392e);
                return;
            case 9:
                GodotActivity.triggerRebirth$lambda$2((GodotActivity) this.f390c, (Bundle) this.f391d, (Intent) this.f392e);
                return;
            case 10:
                WebView webView = (WebView) this.f390c;
                u1.a aVar = (u1.a) this.f391d;
                Game game = (Game) this.f392e;
                p023i1.l lVar = u1.b.f5424a;
                webView.evaluateJavascript("(function(){\n  try {\n    var k = window.TYRANO && window.TYRANO.kag;\n    if (!k || !k.stat) return null;\n    var seen = [];\n    return JSON.stringify({ f: k.stat.f || {}, sf: (k.variable && k.variable.sf) || {} }, function(key, v) {\n      if (v && typeof v === 'object') { if (seen.indexOf(v) >= 0) return undefined; seen.push(v); }\n      return v;\n    });\n  } catch (e) { return null; }\n})();", new com.minhub.gamehub.hub.catalog.c(aVar, game, webView, i3));
                return;
            case MotionEventCompat.AXIS_Z /* 11 */:
                GameActivity gameActivity = (GameActivity) this.f390c;
                Q1.d dVar = (Q1.d) this.f391d;
                G1.i iVar = (G1.i) this.f392e;
                if (gameActivity.y(dVar)) {
                    int iOrdinal = iVar.ordinal();
                    if (iOrdinal != 0 && iOrdinal != 1) {
                        dVar.c();
                        Toast.makeText(gameActivity, R.string.ota_download_failed, 1).show();
                        return;
                    }
                    O0.b bVar = new O0.b(gameActivity, 0);
                    C0240b c0240b = (C0240b) bVar.f4145c;
                    bVar.j(R.string.ota_downloaded_title);
                    c0240b.f = c0240b.f4096a.getText(R.string.ota_downloaded_message);
                    c0240b.f4105m = false;
                    bVar.h(R.string.ota_restart, new DialogInterfaceOnClickListenerC0392m(gameActivity, dVar, z2 ? 1 : 0));
                    bVar.f(R.string.ota_restart_later, new DialogInterfaceOnClickListenerC0377h(dVar, 1));
                    bVar.e();
                    return;
                }
                return;
            case 12:
                GameActivity gameActivity2 = (GameActivity) this.f390c;
                String str5 = (String) this.f391d;
                WebView webView2 = (WebView) this.f392e;
                int i6 = gameActivity2.f3686J;
                if (i6 >= gameActivity2.K) {
                    Log.w("MinHub-Launch", "Boot watchdog: giving up after " + i6 + " reload(s) (reason=" + str5 + ")");
                    return;
                }
                int i7 = i6 + 1;
                gameActivity2.f3686J = i7;
                Log.w("MinHub-Launch", "Boot watchdog: auto-reload #" + i7 + " (reason=" + str5 + ")");
                webView2.reload();
                return;
            default:
                C0425x0 c0425x0 = (C0425x0) this.f390c;
                C0358a1 c0358a1 = (C0358a1) this.f391d;
                Map map = (Map) this.f392e;
                try {
                    Result.Companion companion8 = Result.INSTANCE;
                    int iA = AbstractC0361b1.a(c0358a1, map);
                    if (iA > 0) {
                        AbstractC0361b1.k(c0358a1);
                    }
                    objM9constructorimpl7 = Result.m9constructorimpl(Integer.valueOf(iA));
                    break;
                } catch (Throwable th11) {
                    Result.Companion companion9 = Result.INSTANCE;
                    objM9constructorimpl7 = Result.m9constructorimpl(ResultKt.createFailure(th11));
                }
                c0425x0.f6399a.runOnUiThread(new RunnableC0078k(20, c0425x0, new A1.G0(5, objM9constructorimpl7, c0425x0)));
                return;
        }
    }

    public /* synthetic */ A1(Object obj, Object obj2, Object obj3, int i3) {
        this.b = i3;
        this.f390c = obj;
        this.f391d = obj2;
        this.f392e = obj3;
    }

    public /* synthetic */ A1(String str, Object obj, Object obj2, int i3) {
        this.b = i3;
        this.f391d = str;
        this.f390c = obj;
        this.f392e = obj2;
    }
}
