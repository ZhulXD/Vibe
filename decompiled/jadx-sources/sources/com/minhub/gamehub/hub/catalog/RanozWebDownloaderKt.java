package com.minhub.gamehub.hub.catalog;

import C1.RunnableC0087n;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0000¨\u0006\u0005"}, d2 = {"resolveRanozViaWebView", "", "context", "Landroid/content/Context;", "pageUrl", "app_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class RanozWebDownloaderKt {
    public static final String resolveRanozViaWebView(Context context, String pageUrl) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pageUrl, "pageUrl");
        CountDownLatch countDownLatch = new CountDownLatch(1);
        String[] strArr = new String[1];
        new Handler(Looper.getMainLooper()).post(new RunnableC0087n(3, context, pageUrl, strArr, countDownLatch));
        if (!countDownLatch.await(90L, TimeUnit.SECONDS)) {
            Log.w("MinHub-DL", "Ranoz WebView timed out after 90s");
        }
        return strArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void resolveRanozViaWebView$lambda$2(Context context, String str, String[] strArr, CountDownLatch countDownLatch) {
        CookieManager.getInstance().setAcceptCookie(true);
        WebView webView = new WebView(context.getApplicationContext());
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setUserAgentString("Mozilla/5.0 (Linux; Android 13; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36");
        CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true);
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
        Ref.IntRef intRef = new Ref.IntRef();
        CfOverlayHandle cfOverlayHandleAttach = CfWebViewRenderHost.INSTANCE.attach(context, webView);
        webView.setDownloadListener(new a(booleanRef, strArr, webView, cfOverlayHandleAttach, countDownLatch, 1));
        webView.setWebViewClient(new RanozWebDownloaderKt$resolveRanozViaWebView$1$3(booleanRef, intRef, strArr, webView, cfOverlayHandleAttach, countDownLatch, booleanRef2));
        Log.i("MinHub-DL", "Ranoz WebView loading: " + str);
        webView.loadUrl(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void resolveRanozViaWebView$lambda$2$finish(Ref.BooleanRef booleanRef, String[] strArr, WebView webView, CfOverlayHandle cfOverlayHandle, CountDownLatch countDownLatch, String str) {
        if (booleanRef.element) {
            return;
        }
        booleanRef.element = true;
        strArr[0] = str;
        webView.stopLoading();
        cfOverlayHandle.getDetach().invoke();
        webView.destroy();
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void resolveRanozViaWebView$lambda$2$lambda$1(Ref.BooleanRef booleanRef, String[] strArr, WebView webView, CfOverlayHandle cfOverlayHandle, CountDownLatch countDownLatch, String str, String str2, String str3, String str4, long j2) {
        if (booleanRef.element) {
            return;
        }
        Log.i("MinHub-DL", "Ranoz DownloadListener intercepted: url=" + str + " mime=" + str4);
        resolveRanozViaWebView$lambda$2$finish(booleanRef, strArr, webView, cfOverlayHandle, countDownLatch, str);
    }
}
