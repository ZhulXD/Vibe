.class public final synthetic Lcom/minhub/gamehub/hub/catalog/g;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic d:Landroid/util/DisplayMetrics;

.field public final synthetic e:I

.field public final synthetic f:Landroid/view/WindowManager;

.field public final synthetic g:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/util/DisplayMetrics;ILandroid/view/WindowManager;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/g;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/minhub/gamehub/hub/catalog/g;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/minhub/gamehub/hub/catalog/g;->d:Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    iput p4, p0, Lcom/minhub/gamehub/hub/catalog/g;->e:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/minhub/gamehub/hub/catalog/g;->f:Landroid/view/WindowManager;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/minhub/gamehub/hub/catalog/g;->g:Landroid/webkit/WebView;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v4, p0, Lcom/minhub/gamehub/hub/catalog/g;->f:Landroid/view/WindowManager;

    .line 2
    .line 3
    iget-object v5, p0, Lcom/minhub/gamehub/hub/catalog/g;->g:Landroid/webkit/WebView;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/g;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/g;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/minhub/gamehub/hub/catalog/g;->d:Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    iget v3, p0, Lcom/minhub/gamehub/hub/catalog/g;->e:I

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;->d(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/util/DisplayMetrics;ILandroid/view/WindowManager;Landroid/webkit/WebView;)Lkotlin/Unit;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
