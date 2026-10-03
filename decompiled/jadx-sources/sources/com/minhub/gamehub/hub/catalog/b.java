package com.minhub.gamehub.hub.catalog;

import android.webkit.ValueCallback;
import android.webkit.WebView;
import java.io.Serializable;
import java.util.concurrent.CountDownLatch;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements ValueCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3815a = 0;
    public final /* synthetic */ Ref.BooleanRef b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Ref.BooleanRef f3816c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ WebView f3817d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CfOverlayHandle f3818e;
    public final /* synthetic */ Serializable f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f3819h;

    public /* synthetic */ b(Ref.BooleanRef booleanRef, BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4 buzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4, String str, Ref.BooleanRef booleanRef2, WebView webView, Ref.BooleanRef booleanRef3, CfOverlayHandle cfOverlayHandle) {
        this.b = booleanRef;
        this.g = buzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;
        this.f3819h = str;
        this.f3816c = booleanRef2;
        this.f3817d = webView;
        this.f = booleanRef3;
        this.f3818e = cfOverlayHandle;
    }

    @Override // android.webkit.ValueCallback
    public final void onReceiveValue(Object obj) {
        switch (this.f3815a) {
            case 0:
                BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4.onPageFinished$lambda$2(this.b, (BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4) this.g, (String) this.f3819h, this.f3816c, this.f3817d, (Ref.BooleanRef) this.f, this.f3818e, (String) obj);
                break;
            default:
                RanozWebDownloaderKt$resolveRanozViaWebView$1$3.onPageFinished$lambda$2$lambda$1(this.b, this.f3816c, this.f3817d, (String[]) this.f, (WebView) this.g, this.f3818e, (CountDownLatch) this.f3819h, (String) obj);
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ b(Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, WebView webView, String[] strArr, WebView webView2, CfOverlayHandle cfOverlayHandle, CountDownLatch countDownLatch) {
        this.b = booleanRef;
        this.f3816c = booleanRef2;
        this.f3817d = webView;
        this.f = strArr;
        this.g = webView2;
        this.f3818e = cfOverlayHandle;
        this.f3819h = countDownLatch;
    }
}
