.class public Lorg/godotengine/godot/xr/regular/RegularContextFactory;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;


# static fields
.field private static EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final TAG:Ljava/lang/String; = "RegularContextFactory"

.field private static final _EGL_CONTEXT_FLAGS_KHR:I = 0x30fc

.field private static final _EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR:I = 0x1


# instance fields
.field private final mUseDebugOpengl:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/godotengine/godot/xr/regular/RegularContextFactory;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lorg/godotengine/godot/xr/regular/RegularContextFactory;->mUseDebugOpengl:Z

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 6

    .line 1
    sget-object v0, Lorg/godotengine/godot/xr/regular/RegularContextFactory;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "creating OpenGL ES 3.0 context :"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v1, "Before eglCreateContext"

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lorg/godotengine/godot/utils/GLUtils;->checkEglError(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 11
    .line 12
    .line 13
    sget v1, Lorg/godotengine/godot/xr/regular/RegularContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    const/16 v3, 0x30fc

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    const/16 v5, 0x3038

    .line 20
    .line 21
    filled-new-array {v1, v2, v3, v4, v5}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    filled-new-array {v1, v2, v5}, [I

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-boolean v2, p0, Lorg/godotengine/godot/xr/regular/RegularContextFactory;->mUseDebugOpengl:Z

    .line 30
    .line 31
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-interface {p1, p2, p3, v4, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    if-ne v2, v4, :cond_2

    .line 42
    .line 43
    :cond_0
    const-string v2, "creating \'OpenGL Debug\' context failed"

    .line 44
    .line 45
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, p2, p3, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {p1, p2, p3, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :cond_2
    :goto_0
    const-string p2, "After eglCreateContext"

    .line 58
    .line 59
    invoke-static {v0, p2, p1}, Lorg/godotengine/godot/utils/GLUtils;->checkEglError(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 60
    .line 61
    .line 62
    return-object v2
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method
