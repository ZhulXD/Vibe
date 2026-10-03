package com.minhub.gamehub.hub.catalog;

import android.webkit.ValueCallback;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements ValueCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3823a;

    public /* synthetic */ d(int i3) {
        this.f3823a = i3;
    }

    @Override // android.webkit.ValueCallback
    public final void onReceiveValue(Object obj) {
        String str = (String) obj;
        switch (this.f3823a) {
            case 0:
                BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4.onPageFinished$lambda$2$lambda$1(str);
                break;
            default:
                RanozWebDownloaderKt$resolveRanozViaWebView$1$3.onPageFinished$lambda$2$lambda$1$lambda$0(str);
                break;
        }
    }
}
