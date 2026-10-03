package com.minhub.gamehub.hub.catalog;

import android.util.Log;
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
@Metadata(d1 = {"\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"com/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4", "Landroid/webkit/WebViewClient;", "loadCount", "", "onPageFinished", "", "view", "Landroid/webkit/WebView;", "url", "", "onReceivedError", "request", "Landroid/webkit/WebResourceRequest;", "error", "Landroid/webkit/WebResourceError;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4 extends WebViewClient {
    final /* synthetic */ Ref.BooleanRef $clickedDownload;
    final /* synthetic */ CountDownLatch $latch;
    final /* synthetic */ CfOverlayHandle $overlay;
    final /* synthetic */ Ref.BooleanRef $overlayShown;
    final /* synthetic */ BuzzHeavierWebResult[] $resultHolder;
    final /* synthetic */ Ref.BooleanRef $settled;
    final /* synthetic */ WebView $webView;
    private int loadCount;

    public BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4(Ref.BooleanRef booleanRef, BuzzHeavierWebResult[] buzzHeavierWebResultArr, WebView webView, CfOverlayHandle cfOverlayHandle, CountDownLatch countDownLatch, Ref.BooleanRef booleanRef2, Ref.BooleanRef booleanRef3) {
        this.$settled = booleanRef;
        this.$resultHolder = buzzHeavierWebResultArr;
        this.$webView = webView;
        this.$overlay = cfOverlayHandle;
        this.$latch = countDownLatch;
        this.$overlayShown = booleanRef2;
        this.$clickedDownload = booleanRef3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPageFinished$lambda$2(Ref.BooleanRef booleanRef, BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4 buzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4, String str, Ref.BooleanRef booleanRef2, WebView webView, Ref.BooleanRef booleanRef3, CfOverlayHandle cfOverlayHandle, String str2) {
        if (booleanRef.element) {
            return;
        }
        int i3 = 0;
        String strTrim = str2 != null ? StringsKt.trim(str2, Typography.quote) : null;
        if (strTrim == null) {
            strTrim = "";
        }
        Log.i("MinHub-DL", "BuzzHeavier WebView[" + buzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4.loadCount + "] title='" + strTrim + "' url=" + str);
        if (StringsKt__StringsKt.contains(strTrim, (CharSequence) "Just a moment", true) || StringsKt__StringsKt.contains(strTrim, (CharSequence) "Checking your browser", true) || StringsKt__StringsKt.contains(strTrim, (CharSequence) "Verifying", true)) {
            if (booleanRef2.element) {
                return;
            }
            webView.evaluateJavascript("document.querySelector('[id^=\"cf-chl-widget\"]') !== null || document.querySelector('.cf-turnstile') !== null || document.querySelector('[class*=\"ctp-checkbox\"]') !== null", new c(booleanRef2, booleanRef, cfOverlayHandle, i3));
        } else {
            if (booleanRef3.element) {
                return;
            }
            booleanRef3.element = true;
            webView.evaluateJavascript("(function() {\n    if (window.__bhPoll) return 'already';\n    window.__bhPoll = true;\n    var tries = 0;\n    function bad(s){ s=(s||'').toLowerCase(); return s.indexOf('notfound')>=0||s.indexOf('recovery')>=0||s.indexOf('error')>=0; }\n    function findBtn(){\n        var sels=['a[aria-label=\"Download button\" i]','[hx-get*=\"download\" i]','[hx-get*=\"/dl/\" i]','a[href*=\"/download\"]','a[download]'];\n        for(var i=0;i<sels.length;i++){\n            var els=document.querySelectorAll(sels[i]);\n            for(var j=0;j<els.length;j++){\n                var key=els[j].getAttribute('hx-get')||els[j].getAttribute('href')||'';\n                if(!bad(key)) return els[j];\n            }\n        }\n        return null;\n    }\n    var t=setInterval(function(){\n        tries++;\n        var el=findBtn();\n        if(el){\n            clearInterval(t);\n            var key=el.getAttribute('hx-get')||el.href||'?';\n            console.log('[BH] clicking download: '+key);\n            el.click();\n        } else if(tries%4===0){\n            var all=document.querySelectorAll('[hx-get]'),vals=[];\n            for(var k=0;k<all.length&&k<8;k++) vals.push(all[k].getAttribute('hx-get'));\n            console.log('[BH] no download btn (try '+tries+') hx-get=['+vals.join(',')+'] title='+document.title);\n        }\n        if(tries>24){ clearInterval(t); console.log('[BH] gave up polling for download button'); }\n    },500);\n    return 'polling';\n})()", new d(i3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPageFinished$lambda$2$lambda$0(Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, CfOverlayHandle cfOverlayHandle, String str) {
        if (booleanRef.element || booleanRef2.element) {
            return;
        }
        if (Intrinsics.areEqual(str != null ? StringsKt.trim((CharSequence) str).toString() : null, "true")) {
            booleanRef.element = true;
            cfOverlayHandle.getShow().invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPageFinished$lambda$2$lambda$1(String str) {
        Log.i("MinHub-DL", "BuzzHeavier poll start: " + (str != null ? StringsKt.trim(str, Typography.quote) : null));
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView view, String url) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        Ref.BooleanRef booleanRef = this.$settled;
        if (booleanRef.element) {
            return;
        }
        int i3 = this.loadCount + 1;
        this.loadCount = i3;
        if (i3 > 20) {
            BuzzHeavierWebDownloaderKt.resolveBuzzHeavierViaWebView$lambda$2$finish(booleanRef, this.$resultHolder, this.$webView, this.$overlay, this.$latch, null);
        } else {
            view.evaluateJavascript("document.title", new b(booleanRef, this, url, this.$overlayShown, view, this.$clickedDownload, this.$overlay));
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
        if (!request.isForMainFrame() || this.$settled.element) {
            return;
        }
        Log.w("MinHub-DL", "BuzzHeavier WebView error on " + request.getUrl() + ": " + ((Object) error.getDescription()));
        BuzzHeavierWebDownloaderKt.resolveBuzzHeavierViaWebView$lambda$2$finish(this.$settled, this.$resultHolder, this.$webView, this.$overlay, this.$latch, null);
    }
}
