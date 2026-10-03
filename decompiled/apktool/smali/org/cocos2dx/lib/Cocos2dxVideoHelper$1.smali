.class Lorg/cocos2dx/lib/Cocos2dxVideoHelper$1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVideoEvent(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 10
    .line 11
    invoke-direct {v1, v2, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
