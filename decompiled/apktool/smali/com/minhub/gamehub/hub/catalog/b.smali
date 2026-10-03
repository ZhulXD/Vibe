.class public final synthetic Lcom/minhub/gamehub/hub/catalog/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic d:Landroid/webkit/WebView;

.field public final synthetic e:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

.field public final synthetic f:Ljava/io/Serializable;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/webkit/WebView;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/minhub/gamehub/hub/catalog/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/b;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/minhub/gamehub/hub/catalog/b;->g:Ljava/lang/Object;

    iput-object p3, p0, Lcom/minhub/gamehub/hub/catalog/b;->h:Ljava/lang/Object;

    iput-object p4, p0, Lcom/minhub/gamehub/hub/catalog/b;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/minhub/gamehub/hub/catalog/b;->d:Landroid/webkit/WebView;

    iput-object p6, p0, Lcom/minhub/gamehub/hub/catalog/b;->f:Ljava/io/Serializable;

    iput-object p7, p0, Lcom/minhub/gamehub/hub/catalog/b;->e:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/webkit/WebView;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/minhub/gamehub/hub/catalog/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/b;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/minhub/gamehub/hub/catalog/b;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/minhub/gamehub/hub/catalog/b;->d:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/minhub/gamehub/hub/catalog/b;->f:Ljava/io/Serializable;

    iput-object p5, p0, Lcom/minhub/gamehub/hub/catalog/b;->g:Ljava/lang/Object;

    iput-object p6, p0, Lcom/minhub/gamehub/hub/catalog/b;->e:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    iput-object p7, p0, Lcom/minhub/gamehub/hub/catalog/b;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/b;->f:Ljava/io/Serializable;

    .line 7
    .line 8
    move-object v4, v0

    .line 9
    check-cast v4, [Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/b;->g:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v5, v0

    .line 14
    check-cast v5, Landroid/webkit/WebView;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/b;->h:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v7, v0

    .line 19
    check-cast v7, Ljava/util/concurrent/CountDownLatch;

    .line 20
    .line 21
    move-object v8, p1

    .line 22
    check-cast v8, Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/b;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/minhub/gamehub/hub/catalog/b;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/minhub/gamehub/hub/catalog/b;->d:Landroid/webkit/WebView;

    .line 29
    .line 30
    iget-object v6, p0, Lcom/minhub/gamehub/hub/catalog/b;->e:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 31
    .line 32
    invoke-static/range {v1 .. v8}, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->a(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/webkit/WebView;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/b;->g:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v2, v0

    .line 39
    check-cast v2, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/b;->h:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v3, v0

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/b;->f:Ljava/io/Serializable;

    .line 47
    .line 48
    move-object v6, v0

    .line 49
    check-cast v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 50
    .line 51
    iget-object v7, p0, Lcom/minhub/gamehub/hub/catalog/b;->e:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 52
    .line 53
    move-object v8, p1

    .line 54
    check-cast v8, Ljava/lang/String;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/b;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/minhub/gamehub/hub/catalog/b;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 59
    .line 60
    iget-object v5, p0, Lcom/minhub/gamehub/hub/catalog/b;->d:Landroid/webkit/WebView;

    .line 61
    .line 62
    invoke-static/range {v1 .. v8}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;->a(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt$resolveBuzzHeavierViaWebView$1$4;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/webkit/WebView;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
