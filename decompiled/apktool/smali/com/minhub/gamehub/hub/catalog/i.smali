.class public final synthetic Lcom/minhub/gamehub/hub/catalog/i;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic c:Landroid/webkit/WebView;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic e:[Ljava/lang/String;

.field public final synthetic f:Landroid/webkit/WebView;

.field public final synthetic g:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

.field public final synthetic h:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Landroid/webkit/WebView;Lkotlin/jvm/internal/Ref$BooleanRef;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/i;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/minhub/gamehub/hub/catalog/i;->b:Lkotlin/jvm/internal/Ref$IntRef;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/minhub/gamehub/hub/catalog/i;->c:Landroid/webkit/WebView;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/minhub/gamehub/hub/catalog/i;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/minhub/gamehub/hub/catalog/i;->e:[Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/minhub/gamehub/hub/catalog/i;->f:Landroid/webkit/WebView;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/minhub/gamehub/hub/catalog/i;->g:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/minhub/gamehub/hub/catalog/i;->h:Ljava/util/concurrent/CountDownLatch;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v7, p0, Lcom/minhub/gamehub/hub/catalog/i;->h:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    move-object v8, p1

    .line 4
    check-cast v8, Ljava/lang/String;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/i;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/i;->b:Lkotlin/jvm/internal/Ref$IntRef;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/minhub/gamehub/hub/catalog/i;->c:Landroid/webkit/WebView;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/minhub/gamehub/hub/catalog/i;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/minhub/gamehub/hub/catalog/i;->e:[Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, p0, Lcom/minhub/gamehub/hub/catalog/i;->f:Landroid/webkit/WebView;

    .line 17
    .line 18
    iget-object v6, p0, Lcom/minhub/gamehub/hub/catalog/i;->g:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 19
    .line 20
    invoke-static/range {v0 .. v8}, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt$resolveRanozViaWebView$1$3;->c(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Landroid/webkit/WebView;Lkotlin/jvm/internal/Ref$BooleanRef;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
