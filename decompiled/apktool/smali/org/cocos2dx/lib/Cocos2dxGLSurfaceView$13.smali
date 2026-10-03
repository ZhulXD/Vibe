.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$13;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field final synthetic val$pKeyCode:I


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$13;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 2
    .line 3
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$13;->val$pKeyCode:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$13;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->b(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$13;->val$pKeyCode:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleKeyDown(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
