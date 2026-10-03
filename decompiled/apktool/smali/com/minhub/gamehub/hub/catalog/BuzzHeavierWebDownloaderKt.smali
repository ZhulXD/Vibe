.class public final Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "resolveBuzzHeavierViaWebView",
        "Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;",
        "context",
        "Landroid/content/Context;",
        "pageUrl",
        "",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic a(Lkotlin/jvm/internal/Ref$BooleanRef;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt;->resolveBuzzHeavierViaWebView$lambda$2$lambda$1(Lkotlin/jvm/internal/Ref$BooleanRef;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$resolveBuzzHeavierViaWebView$lambda$2$finish(Lkotlin/jvm/internal/Ref$BooleanRef;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt;->resolveBuzzHeavierViaWebView$lambda$2$finish(Lkotlin/jvm/internal/Ref$BooleanRef;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Ljava/lang/String;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt;->resolveBuzzHeavierViaWebView$lambda$2(Landroid/content/Context;Ljava/lang/String;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Ljava/util/concurrent/CountDownLatch;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final resolveBuzzHeavierViaWebView(Landroid/content/Context;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageUrl"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-array v5, v0, [Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;

    .line 18
    .line 19
    new-instance v0, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, LC1/n;

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    move-object v3, p0

    .line 32
    move-object v4, p1

    .line 33
    invoke-direct/range {v1 .. v6}, LC1/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    const-wide/16 p0, 0x5a

    .line 40
    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    .line 43
    invoke-virtual {v6, p0, p1, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_0

    .line 48
    .line 49
    const-string p0, "MinHub-DL"

    .line 50
    .line 51
    const-string p1, "BuzzHeavier WebView timed out after 90s"

    .line 52
    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    const/4 p0, 0x0

    .line 57
    aget-object p0, v5, p0

    .line 58
    .line 59
    return-object p0
.end method

.method private static final resolveBuzzHeavierViaWebView$lambda$2(Landroid/content/Context;Ljava/lang/String;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Ljava/util/concurrent/CountDownLatch;)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 7
    .line 8
    .line 9
    new-instance v5, Landroid/webkit/WebView;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {v5, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 26
    .line 27
    .line 28
    const-string v2, "Mozilla/5.0 (Linux; Android 13; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v5, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 45
    .line 46
    .line 47
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 48
    .line 49
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 53
    .line 54
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 58
    .line 59
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 60
    .line 61
    .line 62
    sget-object v1, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;

    .line 63
    .line 64
    invoke-virtual {v1, p0, v5}, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;->attach(Landroid/content/Context;Landroid/webkit/WebView;)Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    new-instance v2, Lcom/minhub/gamehub/hub/catalog/a;

    .line 69
    .line 70
    const/4 v8, 0x0

    .line 71
    move-object v4, p2

    .line 72
    move-object v7, p3

    .line 73
    invoke-direct/range {v2 .. v8}, Lcom/minhub/gamehub/hub/catalog/a;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;[Ljava/lang/Object;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 77
    .line 78
    .line 79
    new-instance p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$3;

    .line 80
    .line 81
    invoke-direct {p0}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$3;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, p0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 85
    .line 86
    .line 87
    new-instance v2, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;

    .line 88
    .line 89
    move-object v8, v0

    .line 90
    invoke-direct/range {v2 .. v9}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 94
    .line 95
    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p2, "BuzzHeavier WebView loading: "

    .line 99
    .line 100
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const-string p2, "MinHub-DL"

    .line 111
    .line 112
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method private static final resolveBuzzHeavierViaWebView$lambda$2$finish(Lkotlin/jvm/internal/Ref$BooleanRef;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    aput-object p5, p1, p0

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/webkit/WebView;->stopLoading()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;->getDetach()Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/webkit/WebView;->destroy()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private static final resolveBuzzHeavierViaWebView$lambda$2$lambda$1(Lkotlin/jvm/internal/Ref$BooleanRef;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-boolean p6, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 7
    .line 8
    .line 9
    move-result-object p6

    .line 10
    invoke-virtual {p6}, Landroid/webkit/CookieManager;->flush()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 14
    .line 15
    .line 16
    move-result-object p6

    .line 17
    invoke-virtual {p6, p5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p6

    .line 21
    if-nez p6, :cond_1

    .line 22
    .line 23
    const-string p6, ""

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result p7

    .line 29
    const-string p9, " mime="

    .line 30
    .line 31
    const-string p10, " cookieLen="

    .line 32
    .line 33
    const-string v0, "BuzzHeavier WebView DL intercepted: url="

    .line 34
    .line 35
    invoke-static {v0, p5, p9, p8, p10}, Lkotlin/collections/unsigned/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object p8

    .line 39
    invoke-virtual {p8, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p7

    .line 46
    const-string p8, "MinHub-DL"

    .line 47
    .line 48
    invoke-static {p8, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-object p7, p5

    .line 52
    new-instance p5, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;

    .line 53
    .line 54
    invoke-static {p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p5, p7, p6}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static/range {p0 .. p5}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt;->resolveBuzzHeavierViaWebView$lambda$2$finish(Lkotlin/jvm/internal/Ref$BooleanRef;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
