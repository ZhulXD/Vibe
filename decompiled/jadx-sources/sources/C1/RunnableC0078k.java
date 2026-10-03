package C1;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.MotionEventCompat;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.Violation;
import androidx.lifecycle.DispatchQueue;
import androidx.recyclerview.widget.RecyclerView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.editor.EditModeOverlay;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.KiriKiriInstallActivity;
import com.minhub.gamehub.hub.LoginActivity;
import com.minhub.gamehub.hub.OnlineDownloadsActivity;
import com.minhub.gamehub.hub.auth.AuthHttp;
import com.minhub.gamehub.hub.auth.LoginAlertDialog;
import com.minhub.gamehub.hub.auth.MinHubAuthBridge;
import com.minhub.gamehub.hub.auth.MinHubPatreonSession;
import com.minhub.gamehub.hub.catalog.OnlineCatalogPage;
import com.minhub.gamehub.hub.catalog.UnsupportedGameImportException;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.godotengine.godot.Godot;
import org.godotengine.godot.GodotHost;
import org.json.JSONObject;
import p011e.DialogInterfaceC0245g;
import p064y1.C0425x0;

/* JADX INFO: renamed from: C1.k, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0078k implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f627c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f628d;

    public /* synthetic */ RunnableC0078k(int i3, Object obj, Object obj2) {
        this.b = i3;
        this.f627c = obj;
        this.f628d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3;
        LoginActivity loginActivity;
        List<String> groupValues;
        String str;
        int i4 = this.b;
        int i5 = 2;
        int i6 = 0;
        I1.j jVar = null;
        strReplace$default = null;
        strReplace$default = null;
        strReplace$default = null;
        String strReplace$default = null;
        Object obj = this.f628d;
        Object obj2 = this.f627c;
        switch (i4) {
            case 0:
                AddGameActivity addGameActivity = (AddGameActivity) obj2;
                OnlineCatalogPage onlineCatalogPage = (OnlineCatalogPage) obj;
                int i7 = AddGameActivity.f3740y;
                boolean zIsFinishing = addGameActivity.isFinishing();
                boolean zIsDestroyed = addGameActivity.isDestroyed();
                if (zIsFinishing || zIsDestroyed) {
                    return;
                }
                addGameActivity.y(onlineCatalogPage);
                return;
            case 1:
                AddGameActivity addGameActivity2 = (AddGameActivity) obj2;
                addGameActivity2.B(Q.b);
                Toast.makeText(addGameActivity2, O.d(addGameActivity2, (UnsupportedGameImportException) obj), 1).show();
                return;
            case 2:
                KiriKiriInstallActivity kiriKiriInstallActivity = (KiriKiriInstallActivity) obj2;
                D1.h hVar = (D1.h) obj;
                int i8 = KiriKiriInstallActivity.f3784o;
                if (kiriKiriInstallActivity.isFinishing() || kiriKiriInstallActivity.isDestroyed()) {
                    return;
                }
                ProgressBar progressBar = kiriKiriInstallActivity.f3786h;
                if (progressBar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_PROGRESS);
                    progressBar = null;
                }
                int i9 = hVar.f819c;
                String str2 = hVar.f820d;
                progressBar.setProgress(i9);
                TextView textView = kiriKiriInstallActivity.f3787i;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("percent");
                    textView = null;
                }
                textView.setText(kiriKiriInstallActivity.getString(R.string.kiri_install_percent, Integer.valueOf(hVar.f819c)));
                if (str2.length() > 0) {
                    TextView textView2 = kiriKiriInstallActivity.f3788j;
                    if (textView2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_STATUS);
                        textView2 = null;
                    }
                    textView2.setText(str2);
                }
                for (Object obj3 : hVar.b) {
                    int i10 = i6 + 1;
                    if (i6 < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    D1.i iVar = (D1.i) obj3;
                    List list = kiriKiriInstallActivity.f;
                    if (list == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("icons");
                        list = null;
                    }
                    ImageView imageView = (ImageView) list.get(i6);
                    int iOrdinal = iVar.ordinal();
                    if (iOrdinal == 0) {
                        i3 = R.drawable.ic_step_pending;
                    } else if (iOrdinal == 1) {
                        i3 = R.drawable.ic_step_running;
                    } else if (iOrdinal == 2) {
                        i3 = R.drawable.ic_step_done;
                    } else {
                        if (iOrdinal != 3) {
                            throw new NoWhenBranchMatchedException();
                        }
                        i3 = R.drawable.ic_step_failed;
                    }
                    imageView.setImageResource(i3);
                    List list2 = kiriKiriInstallActivity.g;
                    if (list2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("stepRows");
                        list2 = null;
                    }
                    ((View) list2.get(i6)).setBackgroundResource(iVar == D1.i.f822c ? R.drawable.bg_kiri_step_row_active : R.drawable.bg_kiri_step_row);
                    i6 = i10;
                }
                D1.g gVar = hVar.f818a;
                if (gVar == kiriKiriInstallActivity.f3792n) {
                    return;
                }
                kiriKiriInstallActivity.f3792n = gVar;
                int iOrdinal2 = gVar.ordinal();
                if (iOrdinal2 != 0) {
                    if (iOrdinal2 != 1) {
                        if (iOrdinal2 != 2) {
                            throw new NoWhenBranchMatchedException();
                        }
                        kiriKiriInstallActivity.q(R.string.kiri_install_close, new C0103s1(kiriKiriInstallActivity, 1));
                        return;
                    } else {
                        Integer num = hVar.f821e;
                        if (num != null) {
                            kiriKiriInstallActivity.q(R.string.kiri_install_ok, new p064y1.C0(kiriKiriInstallActivity, num.intValue(), i5));
                            return;
                        }
                        return;
                    }
                }
                return;
            case 3:
                LoginActivity loginActivity2 = (LoginActivity) obj2;
                int i11 = LoginActivity.f3793l;
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
                    Log.e("LoginActivity", "Redeem error", thM12exceptionOrNullimpl);
                    LoginAlertDialog loginAlertDialog = LoginAlertDialog.INSTANCE;
                    String message = thM12exceptionOrNullimpl.getMessage();
                    if (message == null) {
                        message = thM12exceptionOrNullimpl.getClass().getSimpleName();
                    }
                    Intrinsics.checkNotNull(message);
                    loginAlertDialog.showConnectionError(loginActivity2, message);
                    loginActivity2.r(true);
                    return;
                }
                AuthHttp.Result result = (AuthHttp.Result) obj;
                if (!result.isSuccess()) {
                    Log.e("LoginActivity", "Redeem error HTTP " + result.getCode() + ": " + result.getBody());
                    loginActivity2.t(StringsKt.isBlank(result.getBody()) ? E.b.j(result.getCode(), "Patreon authentication failed (HTTP ", ")") : "Patreon authentication failed (HTTP " + result.getCode() + ")\n" + result.getBody());
                    loginActivity2.r(true);
                    return;
                }
                try {
                    MinHubPatreonSession redeemResponse = MinHubAuthBridge.INSTANCE.parseRedeemResponse(result.getBody());
                    loginActivity = loginActivity2;
                    try {
                        loginActivity.q(redeemResponse.getName(), redeemResponse.getPatreonUserId(), redeemResponse.getLoginType(), Integer.valueOf(redeemResponse.getPledgeCents()), redeemResponse.getSessionToken());
                        return;
                    } catch (Exception e2) {
                        e = e2;
                        Log.e("LoginActivity", "Redeem parsing error", e);
                        loginActivity.t("Error processing Patreon account: " + e.getMessage());
                        loginActivity.r(true);
                        return;
                    }
                } catch (Exception e3) {
                    e = e3;
                    loginActivity = loginActivity2;
                }
                break;
            case 4:
                OnlineDownloadsActivity onlineDownloadsActivity = (OnlineDownloadsActivity) obj2;
                List jobs = (List) obj;
                G1 g3 = onlineDownloadsActivity.f;
                if (g3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    g3 = null;
                }
                g3.getClass();
                Intrinsics.checkNotNullParameter(jobs, "list");
                g3.f434d = jobs;
                g3.c();
                Intrinsics.checkNotNullParameter(jobs, "jobs");
                boolean zIsEmpty = jobs.isEmpty();
                I1.j jVar2 = onlineDownloadsActivity.f3800e;
                if (jVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                    jVar2 = null;
                }
                ((RecyclerView) jVar2.f1190e).setVisibility(!zIsEmpty ? 0 : 8);
                I1.j jVar3 = onlineDownloadsActivity.f3800e;
                if (jVar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                } else {
                    jVar = jVar3;
                }
                ((TextView) jVar.f).setVisibility(zIsEmpty ? 0 : 8);
                return;
            case 5:
                V1 v2 = (V1) obj2;
                v2.f513a.setText((CharSequence) obj);
                TextView textView3 = v2.f513a;
                textView3.setTranslationY(10.0f * v2.f517h);
                textView3.animate().setStartDelay(0L).alpha(1.0f).translationY(0.0f).setDuration(240L).setInterpolator(new DecelerateInterpolator()).start();
                return;
            case 6:
                try {
                    ((J1.a) obj2).f1216a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse((String) obj)));
                    return;
                } catch (Exception unused) {
                    return;
                }
            case 7:
                FragmentStrictMode.handlePolicyViolation$lambda$0((FragmentStrictMode.Policy) obj2, (Violation) obj);
                return;
            case 8:
                FragmentStrictMode.handlePolicyViolation$lambda$1((String) obj2, (Violation) obj);
                return;
            case 9:
                ((Function1) obj2).invoke((JSONObject) obj);
                return;
            case 10:
                Function1 function1 = (Function1) obj2;
                String message2 = ((Exception) obj).getMessage();
                if (message2 == null) {
                    message2 = "Network error";
                }
                function1.invoke(message2);
                return;
            case MotionEventCompat.AXIS_Z /* 11 */:
                R1.a aVar = (R1.a) obj2;
                Context context = (Context) obj;
                try {
                    URLConnection uRLConnectionOpenConnection = new URL(aVar.f1944c).openConnection();
                    Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                    HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                    httpURLConnection.setConnectTimeout(15000);
                    httpURLConnection.setReadTimeout(15000);
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setInstanceFollowRedirects(true);
                    httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36");
                    InputStream inputStream = httpURLConnection.getInputStream();
                    Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192);
                    try {
                        String text = TextStreamsKt.readText(bufferedReader);
                        CloseableKt.closeFinally(bufferedReader, null);
                        httpURLConnection.disconnect();
                        MatchResult matchResultFind$default = Regex.find$default(new Regex("href=\"(https://download[^\"]+)\"[^>]*id=\"downloadButton\"", (Set<? extends RegexOption>) SetsKt.setOf((Object[]) new RegexOption[]{RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL})), text, 0, 2, null);
                        if (matchResultFind$default != null && (groupValues = matchResultFind$default.getGroupValues()) != null && (str = (String) CollectionsKt.getOrNull(groupValues, 1)) != null) {
                            strReplace$default = StringsKt__StringsJVMKt.replace$default(str, "&amp;", "&", false, 4, (Object) null);
                        }
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(bufferedReader, th);
                            throw th2;
                        }
                    }
                } catch (Exception e4) {
                    E.b.x("MediaFire resolve failed: ", e4.getMessage(), "MinHub-Update");
                }
                if (strReplace$default != null) {
                    Log.i("MinHub-Update", "MediaFire resolved: ".concat(strReplace$default));
                } else {
                    Log.w("MinHub-Update", "MediaFire resolve failed, using raw URL");
                    strReplace$default = aVar.f1944c;
                }
                new Handler(Looper.getMainLooper()).post(new A1(context, (Object) aVar, strReplace$default, 4));
                return;
            case 12:
                ((ResourcesCompat.FontCallback) obj2).lambda$callbackSuccessAsync$0((Typeface) obj);
                return;
            case 13:
                DispatchQueue.dispatchAndEnqueue$lambda$2$lambda$1((DispatchQueue) obj2, (Runnable) obj);
                return;
            case MotionEventCompat.AXIS_RZ /* 14 */:
                p011e.n nVar = (p011e.n) obj2;
                Runnable runnable = (Runnable) obj;
                nVar.getClass();
                try {
                    runnable.run();
                    return;
                } finally {
                    nVar.a();
                }
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                ((Godot) obj2).onDestroy((GodotHost) obj);
                return;
            case 16:
                Godot.onRequestPermissionsResult$lambda$19((String[]) obj2, (int[]) obj);
                return;
            case 17:
                Godot.setClipboard$lambda$26((Godot) obj2, (String) obj);
                return;
            case MotionEventCompat.AXIS_RTRIGGER /* 18 */:
                WebView webView = (WebView) obj2;
                p045r1.b runtime = (p045r1.b) obj;
                Intrinsics.checkNotNullParameter(runtime, "runtime");
                if (runtime != p045r1.b.b && runtime != p045r1.b.f5297c) {
                    throw new IllegalStateException(("Unsupported RPG Maker runtime: " + runtime).toString());
                }
                webView.evaluateJavascript("(function() {\n    var SC_MAP = {\n        speed1x:'adel_speed1x',speed2x:'adel_speed2x',speed3x:'adel_speed3x',\n        speed5x:'adel_speed5x',noClip:'adel_noclip',encounterToggle:'adel_encounter',\n        healParty:'adel_heal',recoverParty:'adel_recover',quickSave:'adel_save',\n        quickLoad:'adel_load',forceVictory:'adel_victory',forceDefeat:'adel_defeat',\n        forceEscape:'adel_escape',woundAllEnemies:'adel_wound',snapshot:'adel_snapshot'\n    };\n    function setupShortcutUI(host) {\n        if (!host.shadowRoot || host.__mhScObs) return;\n        var SR = host.shadowRoot;\n        function injectRow(row) {\n            var scEl = row.querySelector('[data-shortcut-id]');\n            if (!scEl) return;\n            var sid = scEl.dataset.shortcutId;\n            if (!SC_MAP[sid]) return;\n            var assignBtn = row.querySelector('button[data-action=\"shortcut-start-record\"]');\n            if (!assignBtn) return;\n            var opsDiv = assignBtn.parentElement;\n            if (opsDiv.dataset.mhSc) return;\n            opsDiv.dataset.mhSc = '1';\n            var bridge = window.MHAdelBridge;\n            var isAdded = bridge && bridge.hasButton(sid);\n            var addBtn = document.createElement('button');\n            addBtn.className = 'btn';\n            addBtn.style.cssText = 'font-size:10px;padding:2px 7px;white-space:nowrap;flex-shrink:0;' +\n                (isAdded ? 'background:#166534;border-color:#166534;color:#fff;'\n                         : 'background:#0d9488;border-color:#0d9488;color:#fff;');\n            addBtn.textContent = isAdded ? '✓' : '+Add';\n            addBtn.addEventListener('click', function(e) {\n                e.stopPropagation();\n                if (!window.MHAdelBridge) return;\n                if (window.MHAdelBridge.hasButton(sid)) {\n                    window.MHAdelBridge.removeButton(sid);\n                    addBtn.textContent = '+Add';\n                    addBtn.style.background = '#0d9488';\n                    addBtn.style.borderColor = '#0d9488';\n                } else {\n                    window.MHAdelBridge.addButton(sid);\n                    addBtn.textContent = '✓';\n                    addBtn.style.background = '#166534';\n                    addBtn.style.borderColor = '#166534';\n                }\n            });\n            opsDiv.insertBefore(addBtn, opsDiv.firstChild);\n            /* Widen the last column to fit 3 buttons */\n            var parts = (row.style.gridTemplateColumns || '').trim().split(/\\s+/);\n            if (parts.length >= 4) { parts[3] = '195px'; row.style.gridTemplateColumns = parts.join(' '); }\n            var clearBtn = opsDiv.querySelector('[data-action=\"shortcut-clear\"]');\n            if (clearBtn && !clearBtn.dataset.mhBound) {\n                clearBtn.dataset.mhBound = '1';\n                clearBtn.addEventListener('click', function() {\n                    if (window.MHAdelBridge) window.MHAdelBridge.removeButton(sid);\n                });\n            }\n        }\n        function scan() {\n            SR.querySelectorAll('.table-row').forEach(function(row) { injectRow(row); });\n        }\n        var obs = new MutationObserver(scan);\n        obs.observe(SR, { childList: true, subtree: true });\n        host.__mhScObs = obs;\n        scan();\n    }\n    function patchHost() {\n        var host = document.getElementById('adel9st-control-center-host');\n        if (!host || host.__mhPatched) return;\n        host.__mhPatched = true;\n        var orig = host.style.setProperty.bind(host.style);\n        host.style.setProperty = function(name, value, priority) {\n            if (name === '--adel-font-scale') return orig(name, '0.62', priority);\n            if (name === '--adel-shell-width')\n                return orig(name, (window.innerWidth - 16) + 'px', priority);\n            if (name === '--adel-shell-height')\n                return orig(name, (window.innerHeight - 16) + 'px', priority);\n            return orig(name, value, priority);\n        };\n        setupShortcutUI(host);\n        if (host.shadowRoot && !host.shadowRoot.getElementById('__mh_fix__')) {\n            var s = document.createElement('style');\n            s.id = '__mh_fix__';\n            s.textContent = [\n                /* freeze opacity */ '.panel{opacity:1!important}*{transition:opacity 0s!important;animation-duration:0s!important}',\n                /* restore grids broken by cramped class */\n                '.panel-shell.cramped .signals{grid-template-columns:repeat(3,minmax(86px,1fr))!important}',\n                '.panel-shell.cramped .metrics{grid-template-columns:repeat(4,minmax(0,1fr))!important}',\n                '.panel-shell.cramped .cols,.panel-shell.cramped .dashboard-grid{grid-template-columns:1.1fr .9fr!important}',\n                '.panel-shell.cramped .lower-grid{grid-template-columns:1.2fr .8fr!important}',\n                '.panel-shell.cramped .actions{grid-template-columns:repeat(3,minmax(0,1fr))!important}',\n                '.panel-shell.cramped .actions.two{grid-template-columns:repeat(2,minmax(0,1fr))!important}',\n                '.panel-shell.cramped .actions.four{grid-template-columns:repeat(4,minmax(0,1fr))!important}',\n                '.panel-shell.cramped .loadouts{grid-template-columns:repeat(2,minmax(0,1fr))!important}',\n                '.panel-shell.cramped .field-grid{grid-template-columns:90px 1fr!important}',\n                '.panel-shell.cramped .button-strip{justify-content:flex-end!important;width:auto!important}',\n                /* restore grids broken by @media(max-width:780px) */\n                '@media(max-width:780px){',\n                '.panel-shell .signals{grid-template-columns:repeat(3,minmax(86px,1fr))!important}',\n                '.panel-shell .metrics{grid-template-columns:repeat(4,minmax(0,1fr))!important}',\n                '.panel-shell .cols,.panel-shell .dashboard-grid{grid-template-columns:1.1fr .9fr!important}',\n                '.panel-shell .lower-grid{grid-template-columns:1.2fr .8fr!important}',\n                '.panel-shell .actions{grid-template-columns:repeat(3,minmax(0,1fr))!important}',\n                '.panel-shell .actions.two{grid-template-columns:repeat(2,minmax(0,1fr))!important}',\n                '.panel-shell .actions.four{grid-template-columns:repeat(4,minmax(0,1fr))!important}',\n                '.panel-shell .loadouts{grid-template-columns:repeat(2,minmax(0,1fr))!important}',\n                '.panel-shell .field-grid{grid-template-columns:90px 1fr!important}',\n                '.panel-shell .button-strip{justify-content:flex-end!important;width:auto!important}',\n                '}'\n            ].join('');\n            host.shadowRoot.appendChild(s);\n        }\n    }\n    function setupAct(cc) {\n        window.__mhAdelAct = function(act) {\n            try {\n                var s = cc.state;\n                var dk = function(k, c, a) {\n                    var o = {key: k, bubbles: true, cancelable: true, ctrlKey: c, altKey: a};\n                    document.dispatchEvent(new KeyboardEvent('keydown', o));\n                    document.dispatchEvent(new KeyboardEvent('keyup', o));\n                };\n                if (act === 'speed1') cc.command('speed 1');\n                else if (act === 'speed2') cc.command('speed 2');\n                else if (act === 'speed3') cc.command('speed 3');\n                else if (act === 'speed5') cc.command('speed 5');\n                else if (act === 'heal') cc.command('heal');\n                else if (act === 'save') cc.command('save');\n                else if (act === 'load') cc.command('load');\n                else if (act === 'snapshot') cc.command('snapshot');\n                else if (act === 'noclip') cc.command(s.noClip ? 'noclip off' : 'noclip on');\n                else if (act === 'encounter') cc.command(s.encounterDisabled ? 'encounter on' : 'encounter off');\n                else if (act === 'victory') dk('v', false, true);\n                else if (act === 'defeat') dk('d', false, true);\n                else if (act === 'escape') dk('x', false, true);\n                else if (act === 'wound') dk('F1', false, false);\n                else if (act === 'recover') dk('F2', false, false);\n            } catch(e) {}\n        };\n    }\n    var cc = window.__ADEL9ST_CONTROL_CENTER__;\n    if (cc) {\n        patchHost();\n        setupAct(cc);\n        var willShow = !cc.state.visible;\n        willShow ? cc.show() : cc.hide();\n        return willShow ? 'SHOWN' : 'HIDDEN';\n    }\n    var s = document.createElement('script');\n    s.src = 'https://appassets.androidplatform.net/cheat/adel-control-center.js';\n    s.onload = function() {\n        setTimeout(function() {\n            var c = window.__ADEL9ST_CONTROL_CENTER__;\n            if (!c) return;\n            c.state.uiSizeMode = 'max';\n            patchHost();\n            setupAct(c);\n            c.show();\n        }, 300);\n    };\n    document.head.appendChild(s);\n    return 'INJECTING';\n})();", null);
                return;
            case 19:
                int i12 = EditModeOverlay.f3668l;
                ((EditModeOverlay) obj2).d((List) obj);
                return;
            default:
                C0425x0 c0425x0 = (C0425x0) obj2;
                Function0 function0 = (Function0) obj;
                if (c0425x0.f6399a.isFinishing() || c0425x0.f6399a.isDestroyed()) {
                    return;
                }
                function0.invoke();
                return;
        }
    }
}
