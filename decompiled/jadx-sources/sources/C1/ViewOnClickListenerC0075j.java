package C1;

import E1.C0125a;
import E1.C0131g;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.View;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResultLauncher;
import androidx.core.view.MotionEventCompat;
import androidx.lifecycle.LifecycleOwnerKt;
import com.google.android.material.chip.Chip;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.editor.EditModeOverlay;
import com.minhub.gamehub.game.GodotGameActivity;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.AppLockActivity;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.HubActivity;
import com.minhub.gamehub.hub.KiriKiriInstallActivity;
import com.minhub.gamehub.hub.LoginActivity;
import com.minhub.gamehub.hub.OnlineGameDetailActivity;
import com.minhub.gamehub.hub.SetupAppLockActivity;
import com.minhub.gamehub.hub.auth.LoginAlertDialog;
import com.minhub.gamehub.hub.catalog.CatalogDownloadQueue;
import com.minhub.gamehub.hub.catalog.DownloadLink;
import com.minhub.gamehub.hub.catalog.OnlineCatalogItem;
import com.minhub.gamehub.hub.catalog.RemotePluginCatalogItem;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.Typography;
import org.godotengine.godot.utils.DialogUtils;
import org.renpy.android.PythonSDLActivity;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;
import p064y1.C0368e;
import p064y1.C0415u;

/* JADX INFO: renamed from: C1.j, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0075j implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f622c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f623d;

    public /* synthetic */ ViewOnClickListenerC0075j(int i3, Object obj, Object obj2) {
        this.b = i3;
        this.f622c = obj;
        this.f623d = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0, types: [kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [android.widget.TextView] */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.b;
        int i4 = 2;
        final int i5 = 1;
        ?? r15 = 0;
        OnlineCatalogItem onlineCatalogItem = null;
        final int i6 = 0;
        Object obj = this.f623d;
        Object obj2 = this.f622c;
        switch (i3) {
            case 0:
                int i7 = AddGameActivity.f3740y;
                ((AddGameActivity) obj2).n(new Z(null, null, null, 15));
                ((H0.o) obj).dismiss();
                break;
            case 1:
                ((C0050a1) ((C0076j0) obj2).f).invoke((Game) obj);
                break;
            case 2:
                GameDetailActivity gameDetailActivity = (GameDetailActivity) obj2;
                String str = (String) obj;
                int i8 = GameDetailActivity.f3762w;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Object systemService = gameDetailActivity.getSystemService("clipboard");
                    Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
                    ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText("MinHub Ren'Py error", str));
                    Toast.makeText(gameDetailActivity, R.string.renpy_boot_failed_copied, 0).show();
                    Result.m9constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m9constructorimpl(ResultKt.createFailure(th));
                    return;
                }
                break;
            case 3:
                C0059d1 c0059d1 = (C0059d1) obj2;
                Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.google.android.material.chip.Chip");
                ((Chip) view).setChecked(true);
                c0059d1.f576e = (String) obj;
                List list = (List) ((Z0) c0059d1.f574c.getValue()).b.getValue();
                if (list != null) {
                    c0059d1.b(list, true);
                }
                break;
            case 4:
                HubActivity hubActivity = (HubActivity) obj2;
                String str2 = (String) obj;
                int i9 = HubActivity.f3779j;
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    Object systemService2 = hubActivity.getSystemService("clipboard");
                    Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.content.ClipboardManager");
                    ((ClipboardManager) systemService2).setPrimaryClip(ClipData.newPlainText("MinHub Ren'Py error", str2));
                    Toast.makeText(hubActivity, R.string.renpy_boot_failed_copied, 0).show();
                    Result.m9constructorimpl(Unit.INSTANCE);
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    Result.m9constructorimpl(ResultKt.createFailure(th2));
                    return;
                }
                break;
            case 5:
                D1.j jVar = (D1.j) obj2;
                KiriKiriInstallActivity kiriKiriInstallActivity = (KiriKiriInstallActivity) obj;
                int i10 = KiriKiriInstallActivity.f3784o;
                if (jVar.b.b()) {
                    jVar.f830i.set(true);
                }
                TextView textView = kiriKiriInstallActivity.f3789k;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("action");
                } else {
                    r15 = textView;
                }
                r15.setEnabled(false);
                break;
            case 6:
                ((A1.r) ((C0076j0) obj2).f).invoke((D1.l) obj);
                break;
            case 7:
                int i11 = LoginActivity.f3793l;
                ((LoginActivity) obj2).r(true);
                ((DialogInterfaceC0245g) obj).dismiss();
                break;
            case 8:
                ((C0069h) ((C0076j0) obj2).f625e).invoke((OnlineCatalogItem) obj);
                break;
            case 9:
                OnlineGameDetailActivity onlineGameDetailActivity = (OnlineGameDetailActivity) obj2;
                int i12 = OnlineGameDetailActivity.f3801i;
                onlineGameDetailActivity.startActivity(new Intent(onlineGameDetailActivity, (Class<?>) HubActivity.class).addFlags(603979776));
                onlineGameDetailActivity.startActivity(new Intent(onlineGameDetailActivity, (Class<?>) GameDetailActivity.class).putExtra("game_id", ((Game) obj).getId()));
                onlineGameDetailActivity.finish();
                break;
            case 10:
                Button button = (Button) obj2;
                OnlineGameDetailActivity onlineGameDetailActivity2 = (OnlineGameDetailActivity) obj;
                int i13 = OnlineGameDetailActivity.f3801i;
                button.setEnabled(false);
                button.setText(onlineGameDetailActivity2.getString(R.string.stream_game_adding));
                V1.A.c(LifecycleOwnerKt.getLifecycleScope(onlineGameDetailActivity2), null, new C0074i1(onlineGameDetailActivity2, button, (Continuation) r15, i4), 3);
                break;
            case MotionEventCompat.AXIS_Z /* 11 */:
                OnlineGameDetailActivity onlineGameDetailActivity3 = (OnlineGameDetailActivity) obj2;
                int i14 = OnlineGameDetailActivity.f3801i;
                onlineGameDetailActivity3.startActivity(new Intent(onlineGameDetailActivity3, (Class<?>) HubActivity.class).addFlags(603979776));
                onlineGameDetailActivity3.startActivity(new Intent(onlineGameDetailActivity3, (Class<?>) GameDetailActivity.class).putExtra("game_id", ((Integer) obj).intValue()));
                onlineGameDetailActivity3.finish();
                break;
            case 12:
                OnlineGameDetailActivity onlineGameDetailActivity4 = (OnlineGameDetailActivity) obj2;
                String str3 = (String) obj;
                int i15 = OnlineGameDetailActivity.f3801i;
                try {
                    Result.Companion companion5 = Result.INSTANCE;
                    onlineGameDetailActivity4.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str3)));
                    Result.m9constructorimpl(Unit.INSTANCE);
                } catch (Throwable th3) {
                    Result.Companion companion6 = Result.INSTANCE;
                    Result.m9constructorimpl(ResultKt.createFailure(th3));
                    return;
                }
                break;
            case 13:
                OnlineGameDetailActivity onlineGameDetailActivity5 = (OnlineGameDetailActivity) obj2;
                DownloadLink downloadLink = (DownloadLink) obj;
                int i16 = OnlineGameDetailActivity.f3801i;
                String url = downloadLink.getUrl();
                if (!(StringsKt__StringsKt.contains(url, (CharSequence) "buzzheavier.com", true) || StringsKt__StringsKt.contains(url, (CharSequence) "bzzhr.to", true) || StringsKt__StringsKt.contains(url, (CharSequence) "ranoz.gg", true)) || Settings.canDrawOverlays(onlineGameDetailActivity5)) {
                    CatalogDownloadQueue catalogDownloadQueue = onlineGameDetailActivity5.f3803h;
                    if (catalogDownloadQueue == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("downloadQueue");
                        catalogDownloadQueue = null;
                    }
                    OnlineCatalogItem onlineCatalogItem2 = onlineGameDetailActivity5.f;
                    if (onlineCatalogItem2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("item");
                    } else {
                        onlineCatalogItem = onlineCatalogItem2;
                    }
                    catalogDownloadQueue.enqueue(onlineCatalogItem, downloadLink.getUrl());
                    Toast.makeText(onlineGameDetailActivity5, onlineGameDetailActivity5.getString(R.string.download_queue_started), 0).show();
                    onlineGameDetailActivity5.m();
                } else {
                    O0.b bVar = new O0.b(onlineGameDetailActivity5, 0);
                    String string = onlineGameDetailActivity5.getString(R.string.cf_overlay_title);
                    C0240b c0240b = (C0240b) bVar.f4145c;
                    c0240b.f4098d = string;
                    c0240b.f = onlineGameDetailActivity5.getString(R.string.cf_overlay_message);
                    bVar.i(onlineGameDetailActivity5.getString(R.string.cf_overlay_grant), new I1(i6, onlineGameDetailActivity5));
                    bVar.g(onlineGameDetailActivity5.getString(R.string.cf_overlay_use_other), null);
                    bVar.e();
                }
                break;
            case MotionEventCompat.AXIS_RZ /* 14 */:
                Function0 function0 = (Function0) obj;
                if (!((V1) obj2).f) {
                    view.performHapticFeedback(3);
                    function0.invoke();
                    break;
                }
                break;
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                ((A1.r) ((C0076j0) obj2).f625e).invoke((RemotePluginCatalogItem) obj);
                break;
            case 16:
                d2 d2Var = (d2) obj;
                S1.d.a((Context) obj2);
                d2Var.startActivity(new Intent(d2Var.requireContext(), (Class<?>) LoginActivity.class));
                d2Var.requireActivity().finish();
                break;
            case 17:
                C0131g c0131g = (C0131g) obj2;
                String str4 = ((B1.A) obj).f299a;
                CollectionsKt__MutableCollectionsKt.removeAll((List) c0131g.f889d, (Function1) new C0125a(str4, i6));
                if (Intrinsics.areEqual(c0131g.f890e, str4)) {
                    c0131g.f890e = null;
                }
                c0131g.c();
                c0131g.f();
                c0131g.i();
                break;
            case MotionEventCompat.AXIS_RTRIGGER /* 18 */:
                C0131g c0131g2 = (C0131g) obj2;
                Context context = (Context) obj;
                B1.z zVar = c0131g2.f888c;
                if (zVar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mappingManager");
                    zVar = null;
                }
                zVar.getClass();
                zVar.h(B1.z.a());
                c0131g2.f890e = null;
                c0131g2.e();
                c0131g2.f();
                c0131g2.i();
                Toast.makeText(context, c0131g2.getString(R.string.toast_mapping_reset), 0).show();
                break;
            case 19:
                Context ctx = (Context) obj2;
                E1.n nVar = (E1.n) obj;
                if (S1.d.b(ctx).length() <= 0) {
                    ActivityResultLauncher activityResultLauncher = nVar.f902e;
                    int i17 = SetupAppLockActivity.f3805j;
                    activityResultLauncher.launch(com.bumptech.glide.c.j(ctx));
                } else {
                    nVar.f900c = "change_pin";
                    ActivityResultLauncher activityResultLauncher2 = nVar.f901d;
                    int i18 = AppLockActivity.f3759i;
                    Intrinsics.checkNotNullParameter(ctx, "ctx");
                    activityResultLauncher2.launch(new Intent(ctx, (Class<?>) AppLockActivity.class));
                }
                break;
            case MotionEventCompat.AXIS_RUDDER /* 20 */:
                final Context ctx2 = (Context) obj2;
                final E1.I i19 = (E1.I) obj;
                Toast.makeText(ctx2, i19.getString(R.string.toast_checking_update), 0).show();
                Function1 onResult = new Function1() { // from class: E1.G
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        switch (i6) {
                            case 0:
                                R1.a aVar = (R1.a) obj3;
                                I i20 = i19;
                                if (i20.isAdded()) {
                                    if (aVar != null) {
                                        Context contextRequireContext = i20.requireContext();
                                        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                                        p000a.a.M(contextRequireContext, aVar);
                                    } else {
                                        Toast.makeText(ctx2, i20.getString(R.string.toast_up_to_date), 0).show();
                                    }
                                }
                                break;
                            default:
                                String it = (String) obj3;
                                Intrinsics.checkNotNullParameter(it, "it");
                                I i21 = i19;
                                if (i21.isAdded()) {
                                    Toast.makeText(ctx2, i21.getString(R.string.toast_update_check_failed), 0).show();
                                }
                                break;
                        }
                        return Unit.INSTANCE;
                    }
                };
                Function1 onError = new Function1() { // from class: E1.G
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        switch (i5) {
                            case 0:
                                R1.a aVar = (R1.a) obj3;
                                I i20 = i19;
                                if (i20.isAdded()) {
                                    if (aVar != null) {
                                        Context contextRequireContext = i20.requireContext();
                                        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                                        p000a.a.M(contextRequireContext, aVar);
                                    } else {
                                        Toast.makeText(ctx2, i20.getString(R.string.toast_up_to_date), 0).show();
                                    }
                                }
                                break;
                            default:
                                String it = (String) obj3;
                                Intrinsics.checkNotNullParameter(it, "it");
                                I i21 = i19;
                                if (i21.isAdded()) {
                                    Toast.makeText(ctx2, i21.getString(R.string.toast_update_check_failed), 0).show();
                                }
                                break;
                        }
                        return Unit.INSTANCE;
                    }
                };
                Intrinsics.checkNotNullParameter(ctx2, "ctx");
                Intrinsics.checkNotNullParameter(onResult, "onResult");
                Intrinsics.checkNotNullParameter(onError, "onError");
                Thread thread = new Thread(new A1(new Handler(Looper.getMainLooper()), new A1.r(ctx2, onResult, onError, 7), onError, 3));
                thread.setDaemon(true);
                thread.setName("update-check");
                thread.start();
                break;
            case 21:
                LoginAlertDialog.showConnectionError$lambda$5((Activity) obj2, (String) obj, view);
                break;
            case 22:
                DialogUtils.Companion.showSnackbar$lambda$9$lambda$7((Function0) obj2, (PopupWindow) obj, view);
                break;
            case 23:
                ((PythonSDLActivity) obj2).lambda$bindMenuOverlay$6((Button) obj, view);
                break;
            case 24:
                ((PythonSDLActivity) obj2).lambda$showExitDialog$13((AlertDialog) obj, view);
                break;
            case 25:
                int i20 = EditModeOverlay.f3668l;
                ((EditModeOverlay) obj2).e(((p061x1.a) obj).f5994a);
                break;
            case 26:
                final N1.w wVar = (N1.w) obj2;
                final C0368e c0368e = (C0368e) obj;
                PopupWindow popupWindow = (PopupWindow) wVar.f1495d;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                }
                wVar.f1495d = null;
                WebView webView = (WebView) ((C0415u) wVar.f1494c).invoke();
                if (webView != null) {
                    String script = c0368e.f6216d;
                    Intrinsics.checkNotNullParameter(script, "script");
                    webView.evaluateJavascript(StringsKt.trimIndent("\n            (function() {\n                try {\n                    " + script + "\n                    return 'OK';\n                } catch(e) {\n                    return 'ERROR:' + (e && e.message ? e.message : String(e));\n                }\n            })();\n        "), new ValueCallback() { // from class: y1.d
                        @Override // android.webkit.ValueCallback
                        public final void onReceiveValue(Object obj3) {
                            Context context2 = (Context) wVar.f1493a;
                            String str5 = (String) obj3;
                            String strTrim = str5 != null ? StringsKt.trim(str5, Typography.quote) : null;
                            if (strTrim == null) {
                                strTrim = "";
                            }
                            if (StringsKt.N(strTrim, "ERROR")) {
                                Toast.makeText(context2, "Basic cheat failed", 0).show();
                            } else {
                                Toast.makeText(context2, c0368e.f6215c, 0).show();
                            }
                        }
                    });
                } else {
                    Toast.makeText((Context) wVar.f1493a, "Basic cheat unavailable", 0).show();
                }
                break;
            case 27:
                EditText editText = (EditText) obj2;
                editText.setText((String) obj);
                editText.setSelection(editText.getText().length());
                break;
            case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                GodotGameActivity godotGameActivity = (GodotGameActivity) obj2;
                String str5 = (String) obj;
                EditModeOverlay editModeOverlay = godotGameActivity.f3716m;
                if (editModeOverlay != null) {
                    editModeOverlay.g(new C0125a(str5, i4));
                }
                godotGameActivity.r();
                break;
            default:
                I1.j jVar2 = (I1.j) obj2;
                ((p064y1.F0) jVar2.f1189d).invoke(((B1.u) obj).f352a);
                jVar2.c();
                break;
        }
    }
}
