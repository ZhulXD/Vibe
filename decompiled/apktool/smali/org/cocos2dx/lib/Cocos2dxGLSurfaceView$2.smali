.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueAccelerometer(FFFJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$timestamp:J

.field final synthetic val$x:F

.field final synthetic val$y:F

.field final synthetic val$z:F


# direct methods
.method public constructor <init>(FFFJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$x:F

    .line 2
    .line 3
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$y:F

    .line 4
    .line 5
    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$z:F

    .line 6
    .line 7
    iput-wide p4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$timestamp:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$x:F

    .line 2
    .line 3
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$y:F

    .line 4
    .line 5
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$z:F

    .line 6
    .line 7
    iget-wide v3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->val$timestamp:J

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->onSensorChanged(FFFJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
