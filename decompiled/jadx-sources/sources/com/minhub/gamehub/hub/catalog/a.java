package com.minhub.gamehub.hub.catalog;

import android.webkit.DownloadListener;
import android.webkit.WebView;
import java.util.concurrent.CountDownLatch;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements DownloadListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3811a;
    public final /* synthetic */ Ref.BooleanRef b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WebView f3812c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ CfOverlayHandle f3813d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CountDownLatch f3814e;
    public final /* synthetic */ Object[] f;

    public /* synthetic */ a(Ref.BooleanRef booleanRef, Object[] objArr, WebView webView, CfOverlayHandle cfOverlayHandle, CountDownLatch countDownLatch, int i3) {
        this.f3811a = i3;
        this.b = booleanRef;
        this.f = objArr;
        this.f3812c = webView;
        this.f3813d = cfOverlayHandle;
        this.f3814e = countDownLatch;
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
        switch (this.f3811a) {
            case 0:
                BuzzHeavierWebDownloaderKt.resolveBuzzHeavierViaWebView$lambda$2$lambda$1(this.b, (BuzzHeavierWebResult[]) this.f, this.f3812c, this.f3813d, this.f3814e, str, str2, str3, str4, j2);
                break;
            default:
                RanozWebDownloaderKt.resolveRanozViaWebView$lambda$2$lambda$1(this.b, (String[]) this.f, this.f3812c, this.f3813d, this.f3814e, str, str2, str3, str4, j2);
                break;
        }
    }
}
