.class public final Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt;->resolveBuzzHeavierViaWebView(Landroid/content/Context;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "com/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4",
        "Landroid/webkit/WebViewClient;",
        "loadCount",
        "",
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
.field final synthetic $clickedDownload:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $overlay:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

.field final synthetic $overlayShown:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $resultHolder:[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;

.field final synthetic $settled:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $webView:Landroid/webkit/WebView;

.field private loadCount:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$settled:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$resultHolder:[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$webView:Landroid/webkit/WebView;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$overlay:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$latch:Ljava/util/concurrent/CountDownLatch;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$overlayShown:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$clickedDownload:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 14
    .line 15
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/webkit/WebView;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->onPageFinished$lambda$2(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/webkit/WebView;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->onPageFinished$lambda$2$lambda$1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->onPageFinished$lambda$2$lambda$0(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onPageFinished$lambda$2(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/webkit/WebView;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz p7, :cond_1

    .line 9
    .line 10
    new-array v2, v1, [C

    .line 11
    .line 12
    const/16 v3, 0x22

    .line 13
    .line 14
    aput-char v3, v2, v0

    .line 15
    .line 16
    invoke-static {p7, v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

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
    iget p1, p1, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->loadCount:I

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "BuzzHeavier WebView["

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, "] title=\'"

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, "\' url="

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "MinHub-DL"

    .line 59
    .line 60
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    const-string p1, "Just a moment"

    .line 64
    .line 65
    invoke-static {p7, p1}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    const-string p1, "Checking your browser"

    .line 72
    .line 73
    invoke-static {p7, p1}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_4

    .line 78
    .line 79
    const-string p1, "Verifying"

    .line 80
    .line 81
    invoke-static {p7, p1}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    iget-boolean p0, p5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 89
    .line 90
    if-nez p0, :cond_5

    .line 91
    .line 92
    iput-boolean v1, p5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 93
    .line 94
    new-instance p0, Lcom/minhub/gamehub/hub/catalog/d;

    .line 95
    .line 96
    invoke-direct {p0, v0}, Lcom/minhub/gamehub/hub/catalog/d;-><init>(I)V

    .line 97
    .line 98
    .line 99
    const-string p1, "(function() {\n    if (window.__bhPoll) return \'already\';\n    window.__bhPoll = true;\n    var tries = 0;\n    function bad(s){ s=(s||\'\').toLowerCase(); return s.indexOf(\'notfound\')>=0||s.indexOf(\'recovery\')>=0||s.indexOf(\'error\')>=0; }\n    function findBtn(){\n        var sels=[\'a[aria-label=\"Download button\" i]\',\'[hx-get*=\"download\" i]\',\'[hx-get*=\"/dl/\" i]\',\'a[href*=\"/download\"]\',\'a[download]\'];\n        for(var i=0;i<sels.length;i++){\n            var els=document.querySelectorAll(sels[i]);\n            for(var j=0;j<els.length;j++){\n                var key=els[j].getAttribute(\'hx-get\')||els[j].getAttribute(\'href\')||\'\';\n                if(!bad(key)) return els[j];\n            }\n        }\n        return null;\n    }\n    var t=setInterval(function(){\n        tries++;\n        var el=findBtn();\n        if(el){\n            clearInterval(t);\n            var key=el.getAttribute(\'hx-get\')||el.href||\'?\';\n            console.log(\'[BH] clicking download: \'+key);\n            el.click();\n        } else if(tries%4===0){\n            var all=document.querySelectorAll(\'[hx-get]\'),vals=[];\n            for(var k=0;k<all.length&&k<8;k++) vals.push(all[k].getAttribute(\'hx-get\'));\n            console.log(\'[BH] no download btn (try \'+tries+\') hx-get=[\'+vals.join(\',\')+\'] title=\'+document.title);\n        }\n        if(tries>24){ clearInterval(t); console.log(\'[BH] gave up polling for download button\'); }\n    },500);\n    return \'polling\';\n})()"

    .line 100
    .line 101
    invoke-virtual {p4, p1, p0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_4
    :goto_1
    iget-boolean p1, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 106
    .line 107
    if-nez p1, :cond_5

    .line 108
    .line 109
    new-instance p1, Lcom/minhub/gamehub/hub/catalog/c;

    .line 110
    .line 111
    invoke-direct {p1, p3, p0, p6, v0}, Lcom/minhub/gamehub/hub/catalog/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 112
    .line 113
    .line 114
    const-string p0, "document.querySelector(\'[id^=\"cf-chl-widget\"]\') !== null || document.querySelector(\'.cf-turnstile\') !== null || document.querySelector(\'[class*=\"ctp-checkbox\"]\') !== null"

    .line 115
    .line 116
    invoke-virtual {p4, p0, p1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    :goto_2
    return-void
.end method

.method private static final onPageFinished$lambda$2$lambda$0(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    invoke-static {p3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    const-string p3, "true"

    .line 22
    .line 23
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;->getShow()Lkotlin/jvm/functions/Function0;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method private static final onPageFinished$lambda$2$lambda$1(Ljava/lang/String;)V
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
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "BuzzHeavier poll start: "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "MinHub-DL"

    .line 32
    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 9

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
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$settled:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    .line 13
    iget-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->loadCount:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    iput v0, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->loadCount:I

    .line 23
    .line 24
    const/16 v2, 0x14

    .line 25
    .line 26
    if-le v0, v2, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$resultHolder:[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$webView:Landroid/webkit/WebView;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$overlay:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 33
    .line 34
    iget-object v5, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$latch:Ljava/util/concurrent/CountDownLatch;

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    invoke-static/range {v1 .. v6}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt;->access$resolveBuzzHeavierViaWebView$lambda$2$finish(Lkotlin/jvm/internal/Ref$BooleanRef;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object v5, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$overlayShown:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 42
    .line 43
    iget-object v7, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$clickedDownload:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 44
    .line 45
    iget-object v8, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$overlay:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 46
    .line 47
    move-object v2, v1

    .line 48
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/b;

    .line 49
    .line 50
    move-object v3, p0

    .line 51
    move-object v6, p1

    .line 52
    move-object v4, p2

    .line 53
    invoke-direct/range {v1 .. v8}, Lcom/minhub/gamehub/hub/catalog/b;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/webkit/WebView;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;)V

    .line 54
    .line 55
    .line 56
    const-string p1, "document.title"

    .line 57
    .line 58
    invoke-virtual {v6, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 59
    .line 60
    .line 61
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
    iget-object p1, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$settled:Lkotlin/jvm/internal/Ref$BooleanRef;

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
    const-string v0, "BuzzHeavier WebView error on "

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
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$settled:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$resultHolder:[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$webView:Landroid/webkit/WebView;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$overlay:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->$latch:Ljava/util/concurrent/CountDownLatch;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-static/range {v0 .. v5}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt;->access$resolveBuzzHeavierViaWebView$lambda$2$finish(Lkotlin/jvm/internal/Ref$BooleanRef;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method
