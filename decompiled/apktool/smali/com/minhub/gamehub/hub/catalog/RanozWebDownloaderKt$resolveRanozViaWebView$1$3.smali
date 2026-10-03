.class public final Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt;->resolveRanozViaWebView(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3",
        "Landroid/webkit/WebViewClient;",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "onReceivedError",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "error",
        "Landroid/webkit/WebResourceError;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $clicked:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $loadCount:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $overlay:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

.field final synthetic $resultHolder:[Ljava/lang/String;

.field final synthetic $settled:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$settled:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$loadCount:Lkotlin/jvm/internal/Ref$IntRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$resultHolder:[Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$webView:Landroid/webkit/WebView;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$overlay:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$latch:Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$clicked:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 14
    .line 15
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/webkit/WebView;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->onPageFinished$lambda$2$lambda$1(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/webkit/WebView;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->onPageFinished$lambda$2$lambda$1$lambda$0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Landroid/webkit/WebView;Lkotlin/jvm/internal/Ref$BooleanRef;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->onPageFinished$lambda$2(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Landroid/webkit/WebView;Lkotlin/jvm/internal/Ref$BooleanRef;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onPageFinished$lambda$2(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Landroid/webkit/WebView;Lkotlin/jvm/internal/Ref$BooleanRef;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 8

    .line 1
    move-object/from16 v0, p8

    .line 2
    .line 3
    iget-boolean v1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [C

    .line 12
    .line 13
    const/16 v2, 0x22

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput-char v2, v1, v3

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-nez v0, :cond_2

    .line 25
    .line 26
    const-string v0, ""

    .line 27
    .line 28
    :cond_2
    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Ranoz title["

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, "]=\'"

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, "\'"

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v1, "MinHub-DL"

    .line 58
    .line 59
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    const-string p1, "Just a moment"

    .line 63
    .line 64
    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    const-string p1, "Checking your browser"

    .line 71
    .line 72
    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_4

    .line 77
    .line 78
    const-string p1, "Verifying"

    .line 79
    .line 80
    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/b;

    .line 88
    .line 89
    move-object v1, p0

    .line 90
    move-object v3, p2

    .line 91
    move-object v2, p3

    .line 92
    move-object v4, p4

    .line 93
    move-object v5, p5

    .line 94
    move-object v6, p6

    .line 95
    move-object v7, p7

    .line 96
    invoke-direct/range {v0 .. v7}, Lcom/minhub/gamehub/hub/catalog/b;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/webkit/WebView;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;)V

    .line 97
    .line 98
    .line 99
    const-string p0, "(function() {\n    var sels = [\n        \'a[aria-label=\"Download button\"]\',\n        \'a[href*=\"/d/\"]\',\n        \'a[download]\',\n        \'a[href*=\"download\"]\',\n        \'a[href*=\"cdn\"]\'\n    ];\n    for (var i = 0; i < sels.length; i++) {\n        var el = document.querySelector(sels[i]);\n        if (el && el.href) return el.href;\n    }\n    return \'\';\n})()"

    .line 100
    .line 101
    invoke-virtual {p2, p0, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_1
    return-void
.end method

.method private static final onPageFinished$lambda$2$lambda$1(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/webkit/WebView;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-eqz p7, :cond_1

    .line 8
    .line 9
    new-array v1, v0, [C

    .line 10
    .line 11
    const/16 v2, 0x22

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput-char v2, v1, v3

    .line 15
    .line 16
    invoke-static {p7, v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p7

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p7, 0x0

    .line 22
    :goto_0
    if-nez p7, :cond_2

    .line 23
    .line 24
    const-string p7, ""

    .line 25
    .line 26
    :cond_2
    move-object v6, p7

    .line 27
    new-instance p7, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "Ranoz resolved href=\'"

    .line 30
    .line 31
    invoke-direct {p7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "\'"

    .line 38
    .line 39
    invoke-virtual {p7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p7

    .line 46
    const-string v1, "MinHub-DL"

    .line 47
    .line 48
    invoke-static {v1, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const-string p7, "https://"

    .line 52
    .line 53
    invoke-static {v6, p7}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p7

    .line 57
    if-eqz p7, :cond_3

    .line 58
    .line 59
    move-object v1, p0

    .line 60
    move-object v2, p3

    .line 61
    move-object v3, p4

    .line 62
    move-object v4, p5

    .line 63
    move-object v5, p6

    .line 64
    invoke-static/range {v1 .. v6}, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt;->access$resolveRanozViaWebView$lambda$2$finish(Lkotlin/jvm/internal/Ref$BooleanRef;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 69
    .line 70
    if-nez p0, :cond_4

    .line 71
    .line 72
    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 73
    .line 74
    new-instance p0, Lcom/minhub/gamehub/hub/catalog/d;

    .line 75
    .line 76
    invoke-direct {p0, v0}, Lcom/minhub/gamehub/hub/catalog/d;-><init>(I)V

    .line 77
    .line 78
    .line 79
    const-string p1, "(function() {\n    var el = document.querySelector(\'a[aria-label=\"Download button\"]\')\n        || document.querySelector(\'a[download]\')\n        || document.querySelector(\'button[class*=\"download\" i]\')\n        || document.querySelector(\'a[href*=\"download\"]\');\n    if (el) { el.click(); return \'clicked\'; }\n    return \'no-button | \' + (document.body ? document.body.innerHTML.substring(0, 400) : \'\');\n})()"

    .line 80
    .line 81
    invoke-virtual {p2, p1, p0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    return-void
.end method

.method private static final onPageFinished$lambda$2$lambda$1$lambda$0(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [C

    .line 5
    .line 6
    const/16 v1, 0x22

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-char v1, v0, v2

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x190

    .line 18
    .line 19
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "Ranoz click="

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v0, "MinHub-DL"

    .line 40
    .line 41
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$settled:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    .line 13
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$loadCount:Lkotlin/jvm/internal/Ref$IntRef;

    .line 19
    .line 20
    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Ranoz onPageFinished["

    .line 29
    .line 30
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "] url="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v0, "MinHub-DL"

    .line 49
    .line 50
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$loadCount:Lkotlin/jvm/internal/Ref$IntRef;

    .line 54
    .line 55
    iget p2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 56
    .line 57
    const/16 v0, 0xf

    .line 58
    .line 59
    if-le p2, v0, :cond_1

    .line 60
    .line 61
    iget-object v4, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$settled:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 62
    .line 63
    iget-object v5, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$resultHolder:[Ljava/lang/String;

    .line 64
    .line 65
    iget-object v6, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$webView:Landroid/webkit/WebView;

    .line 66
    .line 67
    iget-object v7, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$overlay:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 68
    .line 69
    iget-object v8, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$latch:Ljava/util/concurrent/CountDownLatch;

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    invoke-static/range {v4 .. v9}, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt;->access$resolveRanozViaWebView$lambda$2$finish(Lkotlin/jvm/internal/Ref$BooleanRef;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$settled:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 77
    .line 78
    iget-object v5, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$clicked:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 79
    .line 80
    iget-object v6, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$resultHolder:[Ljava/lang/String;

    .line 81
    .line 82
    iget-object v7, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$webView:Landroid/webkit/WebView;

    .line 83
    .line 84
    iget-object v8, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$overlay:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 85
    .line 86
    iget-object v9, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$latch:Ljava/util/concurrent/CountDownLatch;

    .line 87
    .line 88
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/i;

    .line 89
    .line 90
    move-object v4, p1

    .line 91
    invoke-direct/range {v1 .. v9}, Lcom/minhub/gamehub/hub/catalog/i;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Landroid/webkit/WebView;Lkotlin/jvm/internal/Ref$BooleanRef;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;)V

    .line 92
    .line 93
    .line 94
    const-string p1, "document.title"

    .line 95
    .line 96
    invoke-virtual {v4, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 6

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "request"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "error"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$settled:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 24
    .line 25
    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    new-instance p3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "Ranoz WebView main-frame error on "

    .line 40
    .line 41
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, ": "

    .line 48
    .line 49
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string p2, "MinHub-DL"

    .line 60
    .line 61
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$settled:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$resultHolder:[Ljava/lang/String;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$webView:Landroid/webkit/WebView;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$overlay:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->$latch:Ljava/util/concurrent/CountDownLatch;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-static/range {v0 .. v5}, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt;->access$resolveRanozViaWebView$lambda$2$finish(Lkotlin/jvm/internal/Ref$BooleanRef;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method
