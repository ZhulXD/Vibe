package com.minhub.gamehub.hub.catalog;

import android.util.Log;
import android.webkit.ValueCallback;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.Typography;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, d2 = {"com/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3", "Landroid/webkit/WebViewClient;", "onPageFinished", "", "view", "Landroid/webkit/WebView;", "url", "", "onReceivedError", "request", "Landroid/webkit/WebResourceRequest;", "error", "Landroid/webkit/WebResourceError;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class RanozWebDownloaderKt$resolveRanozViaWebView$1$3 extends WebViewClient {
    final /* synthetic */ Ref.BooleanRef $clicked;
    final /* synthetic */ CountDownLatch $latch;
    final /* synthetic */ Ref.IntRef $loadCount;
    final /* synthetic */ CfOverlayHandle $overlay;
    final /* synthetic */ String[] $resultHolder;
    final /* synthetic */ Ref.BooleanRef $settled;
    final /* synthetic */ WebView $webView;

    public RanozWebDownloaderKt$resolveRanozViaWebView$1$3(Ref.BooleanRef booleanRef, Ref.IntRef intRef, String[] strArr, WebView webView, CfOverlayHandle cfOverlayHandle, CountDownLatch countDownLatch, Ref.BooleanRef booleanRef2) {
        this.$settled = booleanRef;
        this.$loadCount = intRef;
        this.$resultHolder = strArr;
        this.$webView = webView;
        this.$overlay = cfOverlayHandle;
        this.$latch = countDownLatch;
        this.$clicked = booleanRef2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPageFinished$lambda$2(Ref.BooleanRef booleanRef, Ref.IntRef intRef, WebView webView, Ref.BooleanRef booleanRef2, String[] strArr, WebView webView2, CfOverlayHandle cfOverlayHandle, CountDownLatch countDownLatch, String str) {
        if (booleanRef.element) {
            return;
        }
        String strTrim = str != null ? StringsKt.trim(str, Typography.quote) : null;
        if (strTrim == null) {
            strTrim = "";
        }
        Log.i("MinHub-DL", "Ranoz title[" + intRef.element + "]='" + strTrim + "'");
        if (StringsKt__StringsKt.contains(strTrim, (CharSequence) "Just a moment", true) || StringsKt__StringsKt.contains(strTrim, (CharSequence) "Checking your browser", true) || StringsKt__StringsKt.contains(strTrim, (CharSequence) "Verifying", true)) {
            return;
        }
        webView.evaluateJavascript("(function() {\n    var sels = [\n        'a[aria-label=\"Download button\"]',\n        'a[href*=\"/d/\"]',\n        'a[download]',\n        'a[href*=\"download\"]',\n        'a[href*=\"cdn\"]'\n    ];\n    for (var i = 0; i < sels.length; i++) {\n        var el = document.querySelector(sels[i]);\n        if (el && el.href) return el.href;\n    }\n    return '';\n})()", new b(booleanRef, booleanRef2, webView, strArr, webView2, cfOverlayHandle, countDownLatch));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPageFinished$lambda$2$lambda$1(Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, WebView webView, String[] strArr, WebView webView2, CfOverlayHandle cfOverlayHandle, CountDownLatch countDownLatch, String str) {
        if (booleanRef.element) {
            return;
        }
        int i3 = 1;
        String strTrim = str != null ? StringsKt.trim(str, Typography.quote) : null;
        if (strTrim == null) {
            strTrim = "";
        }
        String str2 = strTrim;
        Log.i("MinHub-DL", "Ranoz resolved href='" + str2 + "'");
        if (StringsKt.N(str2, "https://")) {
            RanozWebDownloaderKt.resolveRanozViaWebView$lambda$2$finish(booleanRef, strArr, webView2, cfOverlayHandle, countDownLatch, str2);
        } else {
            if (booleanRef2.element) {
                return;
            }
            booleanRef2.element = true;
            webView.evaluateJavascript("(function() {\n    var el = document.querySelector('a[aria-label=\"Download button\"]')\n        || document.querySelector('a[download]')\n        || document.querySelector('button[class*=\"download\" i]')\n        || document.querySelector('a[href*=\"download\"]');\n    if (el) { el.click(); return 'clicked'; }\n    return 'no-button | ' + (document.body ? document.body.innerHTML.substring(0, 400) : '');\n})()", new d(i3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPageFinished$lambda$2$lambda$1$lambda$0(String str) {
        String strTrim;
        Log.i("MinHub-DL", "Ranoz click=" + ((str == null || (strTrim = StringsKt.trim(str, Typography.quote)) == null) ? null : StringsKt.take(strTrim, 400)));
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(final WebView view, String url) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        if (this.$settled.element) {
            return;
        }
        Ref.IntRef intRef = this.$loadCount;
        int i3 = intRef.element + 1;
        intRef.element = i3;
        Log.i("MinHub-DL", "Ranoz onPageFinished[" + i3 + "] url=" + url);
        final Ref.IntRef intRef2 = this.$loadCount;
        if (intRef2.element > 15) {
            RanozWebDownloaderKt.resolveRanozViaWebView$lambda$2$finish(this.$settled, this.$resultHolder, this.$webView, this.$overlay, this.$latch, null);
            return;
        }
        final Ref.BooleanRef booleanRef = this.$settled;
        final Ref.BooleanRef booleanRef2 = this.$clicked;
        final String[] strArr = this.$resultHolder;
        final WebView webView = this.$webView;
        final CfOverlayHandle cfOverlayHandle = this.$overlay;
        final CountDownLatch countDownLatch = this.$latch;
        view.evaluateJavascript("document.title", new ValueCallback() { // from class: com.minhub.gamehub.hub.catalog.i
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                RanozWebDownloaderKt$resolveRanozViaWebView$1$3.onPageFinished$lambda$2(booleanRef, intRef2, view, booleanRef2, strArr, webView, cfOverlayHandle, countDownLatch, (String) obj);
            }
        });
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
        if (!request.isForMainFrame() || this.$settled.element) {
            return;
        }
        Log.w("MinHub-DL", "Ranoz WebView main-frame error on " + request.getUrl() + ": " + ((Object) error.getDescription()));
        RanozWebDownloaderKt.resolveRanozViaWebView$lambda$2$finish(this.$settled, this.$resultHolder, this.$webView, this.$overlay, this.$latch, null);
    }
}
