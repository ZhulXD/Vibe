.class Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->loadData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$baseURL:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$index:I

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;->val$index:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;->val$baseURL:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;->val$data:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;->val$mimeType:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;->val$encoding:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->c()Landroid/util/SparseArray;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;->val$index:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lorg/cocos2dx/lib/Cocos2dxWebView;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;->val$baseURL:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;->val$data:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;->val$mimeType:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;->val$encoding:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
