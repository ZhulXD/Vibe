package com.minhub.gamehub.hub.catalog;

import A1.C0033n;
import A1.C0036q;
import A1.H;
import C1.DialogInterfaceOnDismissListenerC0116x;
import C1.I1;
import C1.RunnableC0087n;
import android.app.Activity;
import android.os.Handler;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.game.GameActivity;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Regex;
import org.json.JSONArray;
import p011e.C0240b;
import p023i1.l;
import p023i1.o;
import p023i1.r;
import p023i1.s;
import p064y1.C0402p0;
import p064y1.C0415u;
import p064y1.C0425x0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements ValueCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3820a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3821c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3822d;

    public /* synthetic */ c(Object obj, Object obj2, Object obj3, int i3) {
        this.f3820a = i3;
        this.b = obj;
        this.f3821c = obj2;
        this.f3822d = obj3;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x0116  */
    /* JADX WARN: Code duplicated, block: B:58:0x011a  */
    /* JADX WARN: Code duplicated, block: B:70:0x00fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.webkit.ValueCallback
    public final void onReceiveValue(Object obj) {
        Object objM9constructorimpl;
        r rVar;
        Object objM9constructorimpl2;
        List list;
        Object objM9constructorimpl3;
        int i3 = this.f3820a;
        Object obj2 = this.f3822d;
        Object obj3 = this.f3821c;
        Object obj4 = this.b;
        switch (i3) {
            case 0:
                BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4.onPageFinished$lambda$2$lambda$0((Ref.BooleanRef) obj4, (Ref.BooleanRef) obj3, (CfOverlayHandle) obj2, (String) obj);
                break;
            case 1:
                u1.a aVar = (u1.a) obj4;
                C0415u c0415u = aVar.b;
                Game game = (Game) obj3;
                WebView webView = (WebView) obj2;
                String str = (String) obj;
                Activity activity = aVar.f5423a;
                if (!activity.isFinishing() && !activity.isDestroyed()) {
                    l lVar = u1.b.f5424a;
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        if (str != null && !Intrinsics.areEqual(str, "null")) {
                            o oVarE = p000a.a.E(str);
                            if ((oVarE instanceof s) && (oVarE.e().b instanceof String)) {
                                o oVarE2 = p000a.a.E(oVarE.f());
                                if (!(oVarE2 instanceof r)) {
                                    oVarE2 = null;
                                }
                                objM9constructorimpl = Result.m9constructorimpl(oVarE2 != null ? oVarE2.d() : null);
                                if (Result.m15isFailureimpl(objM9constructorimpl)) {
                                    objM9constructorimpl = null;
                                }
                                rVar = (r) objM9constructorimpl;
                            }
                            if (rVar != null) {
                                try {
                                    objM9constructorimpl2 = Result.m9constructorimpl(u1.b.a(rVar));
                                } catch (Throwable th) {
                                    Result.Companion companion2 = Result.INSTANCE;
                                    objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th));
                                }
                                if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                                    objM9constructorimpl2 = null;
                                }
                                list = (List) objM9constructorimpl2;
                            } else {
                                list = null;
                            }
                            if (rVar != null || list == null) {
                                Toast.makeText(activity, R.string.tyrano_cheat_not_ready, 0).show();
                                c0415u.invoke();
                            } else if (!list.isEmpty()) {
                                C0425x0 c0425x0 = new C0425x0(activity, null, null, c0415u, new C0036q(18));
                                String string = activity.getString(R.string.godot_cheat_title, game.getTitle());
                                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                                String string2 = activity.getString(R.string.tyrano_cheat_more_tools);
                                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                                c0425x0.d(string, list, TuplesKt.to(string2, new C0033n(aVar, webView)), new H(7, webView, aVar));
                            } else {
                                O0.b bVar = new O0.b(activity, 0);
                                C0240b c0240b = (C0240b) bVar.f4145c;
                                c0240b.f = c0240b.f4096a.getText(R.string.tyrano_cheat_no_vars);
                                bVar.h(android.R.string.ok, null);
                                I1 i4 = new I1(aVar, webView);
                                c0240b.f4103k = c0240b.f4096a.getText(R.string.tyrano_cheat_more_tools);
                                c0240b.f4104l = i4;
                                c0240b.f4107o = new DialogInterfaceOnDismissListenerC0116x(1, aVar);
                                bVar.e();
                            }
                        }
                        rVar = null;
                    } catch (Throwable th2) {
                        Result.Companion companion3 = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th2));
                    }
                    if (rVar != null) {
                        objM9constructorimpl2 = Result.m9constructorimpl(u1.b.a(rVar));
                        if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                            objM9constructorimpl2 = null;
                        }
                        list = (List) objM9constructorimpl2;
                    } else {
                        list = null;
                    }
                    if (rVar != null) {
                    }
                    Toast.makeText(activity, R.string.tyrano_cheat_not_ready, 0).show();
                    c0415u.invoke();
                    break;
                }
                break;
            default:
                final GameActivity gameActivity = (GameActivity) obj4;
                final C0402p0 c0402p0 = (C0402p0) obj3;
                final Handler handler = (Handler) obj2;
                String str2 = (String) obj;
                int i5 = GameActivity.f3676L;
                try {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM9constructorimpl3 = Result.m9constructorimpl(new JSONArray("[" + str2 + "]").getString(0));
                } catch (Throwable th3) {
                    Result.Companion companion5 = Result.INSTANCE;
                    objM9constructorimpl3 = Result.m9constructorimpl(ResultKt.createFailure(th3));
                }
                if (Result.m15isFailureimpl(objM9constructorimpl3)) {
                    objM9constructorimpl3 = "";
                }
                String str3 = (String) objM9constructorimpl3;
                Regex regex = new Regex("^[A-Za-z0-9_.-]{1,100}$");
                Intrinsics.checkNotNull(str3);
                if (!regex.matches(str3)) {
                    c0402p0.invoke(null);
                } else {
                    final String strG = kotlin.collections.unsigned.a.g(str3, "_minhub_bug_save");
                    gameActivity.getSharedPreferences("tyrano_save", 0).edit().remove(strG).apply();
                    gameActivity.u().f5707q0.evaluateJavascript("(function(){try{var k=tyrano.plugin.kag;k.menu.snapSave('Bug report',function(){$.setStorage(k.config.projectID+'_minhub_bug_save',k.menu.snap,k.config.configSave)},'false');return true}catch(e){return false}})()", new ValueCallback() { // from class: y1.I
                        @Override // android.webkit.ValueCallback
                        public final void onReceiveValue(Object obj5) {
                            int i6 = GameActivity.f3676L;
                            boolean zAreEqual = Intrinsics.areEqual((String) obj5, "true");
                            C0402p0 c0402p1 = c0402p0;
                            if (!zAreEqual) {
                                c0402p1.invoke(null);
                                return;
                            }
                            GameActivity gameActivity2 = gameActivity;
                            String str4 = strG;
                            Handler handler2 = handler;
                            handler2.postDelayed(new RunnableC0087n(7, gameActivity2, str4, c0402p1, handler2), 300L);
                        }
                    });
                }
                break;
        }
    }
}
