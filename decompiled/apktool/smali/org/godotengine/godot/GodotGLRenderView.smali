.class Lorg/godotengine/godot/GodotGLRenderView;
.super Lorg/godotengine/godot/gl/GLSurfaceView;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lorg/godotengine/godot/GodotRenderView;


# instance fields
.field private final customPointerIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final godot:Lorg/godotengine/godot/Godot;

.field private final godotRenderer:Lorg/godotengine/godot/gl/GodotRenderer;

.field private final inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;


# direct methods
.method public constructor <init>(Lorg/godotengine/godot/Godot;Lorg/godotengine/godot/input/GodotInputHandler;Lorg/godotengine/godot/xr/XRMode;ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/godotengine/godot/Godot;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->customPointerIcons:Landroid/util/SparseArray;

    .line 14
    .line 15
    iput-object p1, p0, Lorg/godotengine/godot/GodotGLRenderView;->godot:Lorg/godotengine/godot/Godot;

    .line 16
    .line 17
    iput-object p2, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 18
    .line 19
    new-instance p1, Lorg/godotengine/godot/gl/GodotRenderer;

    .line 20
    .line 21
    invoke-direct {p1}, Lorg/godotengine/godot/gl/GodotRenderer;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lorg/godotengine/godot/GodotGLRenderView;->godotRenderer:Lorg/godotengine/godot/gl/GodotRenderer;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/16 p2, 0x3e8

    .line 31
    .line 32
    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p3, p5, p4}, Lorg/godotengine/godot/GodotGLRenderView;->init(Lorg/godotengine/godot/xr/XRMode;ZZ)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private init(Lorg/godotengine/godot/xr/XRMode;ZZ)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/godotengine/godot/gl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lorg/godotengine/godot/GodotGLRenderView$1;->$SwitchMap$org$godotengine$godot$xr$XRMode:[I

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    aget p1, v1, p1

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, -0x3

    .line 25
    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance p1, Lorg/godotengine/godot/xr/regular/RegularContextFactory;

    .line 29
    .line 30
    invoke-direct {p1, p3}, Lorg/godotengine/godot/xr/regular/RegularContextFactory;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/gl/GLSurfaceView;->setEGLContextFactory(Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lorg/godotengine/godot/xr/regular/RegularFallbackConfigChooser;

    .line 37
    .line 38
    new-instance v1, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;

    .line 39
    .line 40
    const/16 v6, 0x10

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    const/16 v2, 0x8

    .line 44
    .line 45
    const/16 v3, 0x8

    .line 46
    .line 47
    const/16 v4, 0x8

    .line 48
    .line 49
    const/16 v5, 0x8

    .line 50
    .line 51
    invoke-direct/range {v1 .. v7}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;-><init>(IIIIII)V

    .line 52
    .line 53
    .line 54
    const/16 p1, 0x8

    .line 55
    .line 56
    const/16 v5, 0x18

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    move-object v7, v1

    .line 60
    move v1, p1

    .line 61
    invoke-direct/range {v0 .. v7}, Lorg/godotengine/godot/xr/regular/RegularFallbackConfigChooser;-><init>(IIIIIILorg/godotengine/godot/xr/regular/RegularConfigChooser;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lorg/godotengine/godot/gl/GLSurfaceView;->setEGLConfigChooser(Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    new-instance p1, Lorg/godotengine/godot/xr/ovr/OvrConfigChooser;

    .line 69
    .line 70
    invoke-direct {p1}, Lorg/godotengine/godot/xr/ovr/OvrConfigChooser;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/gl/GLSurfaceView;->setEGLConfigChooser(Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Lorg/godotengine/godot/xr/ovr/OvrContextFactory;

    .line 77
    .line 78
    invoke-direct {p1}, Lorg/godotengine/godot/xr/ovr/OvrContextFactory;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/gl/GLSurfaceView;->setEGLContextFactory(Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lorg/godotengine/godot/xr/ovr/OvrWindowSurfaceFactory;

    .line 85
    .line 86
    invoke-direct {p1}, Lorg/godotengine/godot/xr/ovr/OvrWindowSurfaceFactory;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/gl/GLSurfaceView;->setEGLWindowSurfaceFactory(Lorg/godotengine/godot/gl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public static synthetic j(Lorg/godotengine/godot/GodotGLRenderView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/GodotGLRenderView;->lambda$onActivityPaused$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lorg/godotengine/godot/GodotGLRenderView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/GodotGLRenderView;->lambda$onActivityResumed$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onActivityPaused$0()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->focusout()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->godotRenderer:Lorg/godotengine/godot/gl/GodotRenderer;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GodotRenderer;->onActivityPaused()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private synthetic lambda$onActivityResumed$1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->godotRenderer:Lorg/godotengine/godot/gl/GodotRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GodotRenderer;->onActivityResumed()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->focusin()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public blockingExitRenderer(J)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/godotengine/godot/gl/GLSurfaceView;->requestRenderThreadExitAndWait(J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public canCapturePointer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->godot:Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->isXrRuntime()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/godotengine/godot/input/GodotInputHandler;->canCapturePointer()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public configurePointerIcon(ILjava/lang/String;FF)V
    .locals 1
    .annotation build Lc/a;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->godot:Lorg/godotengine/godot/Godot;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getDirectoryAccessHandler()Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->filesystemFileExists(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->godot:Lorg/godotengine/godot/Godot;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getDirectoryAccessHandler()Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsFileExists(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p2, 0x0

    .line 54
    :goto_0
    invoke-static {p2, p3, p4}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iget-object p3, p0, Lorg/godotengine/godot/GodotGLRenderView;->customPointerIcons:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catch_0
    iget-object p2, p0, Lorg/godotengine/godot/GodotGLRenderView;->customPointerIcons:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getView()Landroid/view/SurfaceView;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onActivityPaused()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/godotengine/godot/l;-><init>(Lorg/godotengine/godot/GodotGLRenderView;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/godotengine/godot/gl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onActivityResumed()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/l;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/godotengine/godot/l;-><init>(Lorg/godotengine/godot/GodotGLRenderView;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/godotengine/godot/gl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onActivityStarted()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/godotengine/godot/gl/GLSurfaceView;->resumeGLThread()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onActivityStopped()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/godotengine/godot/gl/GLSurfaceView;->pauseGLThread()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public onPointerCaptureChange(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onPointerCaptureChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onPointerCaptureChange(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPointerIcon()Landroid/view/PointerIcon;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public queueOnRenderThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/gl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public releasePointerCapture()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->releasePointerCapture()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->onPointerCaptureChange(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public requestPointerCapture()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotGLRenderView;->canCapturePointer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Landroid/view/SurfaceView;->requestPointerCapture()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->onPointerCaptureChange(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setPointerIcon(I)V
    .locals 1
    .annotation build Lc/a;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->customPointerIcons:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/PointerIcon;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public startRenderer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->godotRenderer:Lorg/godotengine/godot/gl/GodotRenderer;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/godotengine/godot/gl/GLSurfaceView;->setRenderer(Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
