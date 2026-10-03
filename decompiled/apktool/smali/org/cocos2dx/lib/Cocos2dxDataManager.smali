.class public Lorg/cocos2dx/lib/Cocos2dxDataManager;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static onSceneLoaderBegin()V
    .locals 2

    .line 1
    const-string v0, "load_scene"

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxDataManager;->setOptimise(Ljava/lang/String;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static onSceneLoaderEnd()V
    .locals 2

    .line 1
    const-string v0, "load_scene"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxDataManager;->setOptimise(Ljava/lang/String;F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static onShaderLoaderBegin()V
    .locals 2

    .line 1
    const-string v0, "shader_compile"

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxDataManager;->setOptimise(Ljava/lang/String;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static onShaderLoaderEnd()V
    .locals 2

    .line 1
    const-string v0, "shader_compile"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxDataManager;->setOptimise(Ljava/lang/String;F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static setFrameSize(II)V
    .locals 0

    .line 1
    mul-int/2addr p0, p1

    .line 2
    int-to-float p0, p0

    .line 3
    const-string p1, "buffer_size"

    .line 4
    .line 5
    invoke-static {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxDataManager;->setOptimise(Ljava/lang/String;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setOptimise(Ljava/lang/String;F)V
    .locals 0

    .line 1
    return-void
.end method

.method public static setProcessID(I)V
    .locals 1

    .line 1
    const-string v0, "render_pid"

    .line 2
    .line 3
    int-to-float p0, p0

    .line 4
    invoke-static {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxDataManager;->setOptimise(Ljava/lang/String;F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
