package com.minhub.gamehub.hub.catalog;

import C1.RunnableC0087n;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.ConsoleMessage;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000¨\u0006\u0006"}, d2 = {"resolveBuzzHeavierViaWebView", "Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;", "context", "Landroid/content/Context;", "pageUrl", "", "app_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class BuzzHeavierWebDownloaderKt {
    public static final BuzzHeavierWebResult resolveBuzzHeavierViaWebView(Context context, String pageUrl) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pageUrl, "pageUrl");
        CountDownLatch countDownLatch = new CountDownLatch(1);
        BuzzHeavierWebResult[] buzzHeavierWebResultArr = new BuzzHeavierWebResult[1];
        new Handler(Looper.getMainLooper()).post(new RunnableC0087n(2, context, pageUrl, buzzHeavierWebResultArr, countDownLatch));
        if (!countDownLatch.await(90L, TimeUnit.SECONDS)) {
            Log.w("MinHub-DL", "BuzzHeavier WebView timed out after 90s");
        }
        return buzzHeavierWebResultArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void resolveBuzzHeavierViaWebView$lambda$2(Context context, String str, BuzzHeavierWebResult[] buzzHeavierWebResultArr, CountDownLatch countDownLatch) {
        CookieManager.getInstance().setAcceptCookie(true);
        WebView webView = new WebView(context.getApplicationContext());
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setUserAgentString("Mozilla/5.0 (Linux; Android 13; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36");
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setDatabaseEnabled(true);
        CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true);
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
        Ref.BooleanRef booleanRef3 = new Ref.BooleanRef();
        CfOverlayHandle cfOverlayHandleAttach = CfWebViewRenderHost.INSTANCE.attach(context, webView);
        webView.setDownloadListener(new a(booleanRef, buzzHeavierWebResultArr, webView, cfOverlayHandleAttach, countDownLatch, 0));
        webView.setWebChromeClient(new WebChromeClient() { // from class: com.minhub.gamehub.hub.catalog.BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$3
            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage m2) {
                Intrinsics.checkNotNullParameter(m2, "m");
                String strMessage = m2.message();
                Intrinsics.checkNotNullExpressionValue(strMessage, "message(...)");
                if (!StringsKt.N(strMessage, "[BH]")) {
                    return true;
                }
                Log.i("MinHub-DL", "BuzzHeavier JS: " + m2.message());
                return true;
            }
        });
        webView.setWebViewClient(new BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4(booleanRef, buzzHeavierWebResultArr, webView, cfOverlayHandleAttach, countDownLatch, booleanRef3, booleanRef2));
        Log.i("MinHub-DL", "BuzzHeavier WebView loading: " + str);
        webView.loadUrl(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void resolveBuzzHeavierViaWebView$lambda$2$finish(Ref.BooleanRef booleanRef, BuzzHeavierWebResult[] buzzHeavierWebResultArr, WebView webView, CfOverlayHandle cfOverlayHandle, CountDownLatch countDownLatch, BuzzHeavierWebResult buzzHeavierWebResult) {
        if (booleanRef.element) {
            return;
        }
        booleanRef.element = true;
        buzzHeavierWebResultArr[0] = buzzHeavierWebResult;
        webView.stopLoading();
        cfOverlayHandle.getDetach().invoke();
        webView.destroy();
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void resolveBuzzHeavierViaWebView$lambda$2$lambda$1(Ref.BooleanRef booleanRef, BuzzHeavierWebResult[] buzzHeavierWebResultArr, WebView webView, CfOverlayHandle cfOverlayHandle, CountDownLatch countDownLatch, String str, String str2, String str3, String str4, long j2) {
        if (booleanRef.element) {
            return;
        }
        CookieManager.getInstance().flush();
        String cookie = CookieManager.getInstance().getCookie(str);
        if (cookie == null) {
            cookie = "";
        }
        int length = cookie.length();
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("BuzzHeavier WebView DL intercepted: url=", str, " mime=", str4, " cookieLen=");
        sbJ.append(length);
        Log.i("MinHub-DL", sbJ.toString());
        Intrinsics.checkNotNull(str);
        resolveBuzzHeavierViaWebView$lambda$2$finish(booleanRef, buzzHeavierWebResultArr, webView, cfOverlayHandle, countDownLatch, new BuzzHeavierWebResult(str, cookie));
    }
}
