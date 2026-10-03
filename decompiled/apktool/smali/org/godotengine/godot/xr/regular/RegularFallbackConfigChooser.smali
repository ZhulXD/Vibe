.class public Lorg/godotengine/godot/xr/regular/RegularFallbackConfigChooser;
.super Lorg/godotengine/godot/xr/regular/RegularConfigChooser;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegularFallbackConfigChooser"


# instance fields
.field private fallback:Lorg/godotengine/godot/xr/regular/RegularConfigChooser;


# direct methods
.method public constructor <init>(IIIIIILorg/godotengine/godot/xr/regular/RegularConfigChooser;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;-><init>(IIIIII)V

    .line 2
    .line 3
    .line 4
    move-object p1, p0

    .line 5
    iput-object p7, p1, Lorg/godotengine/godot/xr/regular/RegularFallbackConfigChooser;->fallback:Lorg/godotengine/godot/xr/regular/RegularConfigChooser;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lorg/godotengine/godot/xr/regular/RegularFallbackConfigChooser;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "Trying ConfigChooser fallback"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/godotengine/godot/xr/regular/RegularFallbackConfigChooser;->fallback:Lorg/godotengine/godot/xr/regular/RegularConfigChooser;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    return-object v0
.end method
