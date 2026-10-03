.class public Lorg/godotengine/godot/utils/GLUtils;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field private static final ATTRIBUTES:[I

.field private static final ATTRIBUTES_NAMES:[Ljava/lang/String;

.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GLUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 1
    const-string v32, "EGL_RENDERABLE_TYPE"

    .line 2
    .line 3
    const-string v33, "EGL_CONFORMANT"

    .line 4
    .line 5
    const-string v1, "EGL_BUFFER_SIZE"

    .line 6
    .line 7
    const-string v2, "EGL_ALPHA_SIZE"

    .line 8
    .line 9
    const-string v3, "EGL_BLUE_SIZE"

    .line 10
    .line 11
    const-string v4, "EGL_GREEN_SIZE"

    .line 12
    .line 13
    const-string v5, "EGL_RED_SIZE"

    .line 14
    .line 15
    const-string v6, "EGL_DEPTH_SIZE"

    .line 16
    .line 17
    const-string v7, "EGL_STENCIL_SIZE"

    .line 18
    .line 19
    const-string v8, "EGL_CONFIG_CAVEAT"

    .line 20
    .line 21
    const-string v9, "EGL_CONFIG_ID"

    .line 22
    .line 23
    const-string v10, "EGL_LEVEL"

    .line 24
    .line 25
    const-string v11, "EGL_MAX_PBUFFER_HEIGHT"

    .line 26
    .line 27
    const-string v12, "EGL_MAX_PBUFFER_PIXELS"

    .line 28
    .line 29
    const-string v13, "EGL_MAX_PBUFFER_WIDTH"

    .line 30
    .line 31
    const-string v14, "EGL_NATIVE_RENDERABLE"

    .line 32
    .line 33
    const-string v15, "EGL_NATIVE_VISUAL_ID"

    .line 34
    .line 35
    const-string v16, "EGL_NATIVE_VISUAL_TYPE"

    .line 36
    .line 37
    const-string v17, "EGL_PRESERVED_RESOURCES"

    .line 38
    .line 39
    const-string v18, "EGL_SAMPLES"

    .line 40
    .line 41
    const-string v19, "EGL_SAMPLE_BUFFERS"

    .line 42
    .line 43
    const-string v20, "EGL_SURFACE_TYPE"

    .line 44
    .line 45
    const-string v21, "EGL_TRANSPARENT_TYPE"

    .line 46
    .line 47
    const-string v22, "EGL_TRANSPARENT_RED_VALUE"

    .line 48
    .line 49
    const-string v23, "EGL_TRANSPARENT_GREEN_VALUE"

    .line 50
    .line 51
    const-string v24, "EGL_TRANSPARENT_BLUE_VALUE"

    .line 52
    .line 53
    const-string v25, "EGL_BIND_TO_TEXTURE_RGB"

    .line 54
    .line 55
    const-string v26, "EGL_BIND_TO_TEXTURE_RGBA"

    .line 56
    .line 57
    const-string v27, "EGL_MIN_SWAP_INTERVAL"

    .line 58
    .line 59
    const-string v28, "EGL_MAX_SWAP_INTERVAL"

    .line 60
    .line 61
    const-string v29, "EGL_LUMINANCE_SIZE"

    .line 62
    .line 63
    const-string v30, "EGL_ALPHA_MASK_SIZE"

    .line 64
    .line 65
    const-string v31, "EGL_COLOR_BUFFER_TYPE"

    .line 66
    .line 67
    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lorg/godotengine/godot/utils/GLUtils;->ATTRIBUTES_NAMES:[Ljava/lang/String;

    .line 72
    .line 73
    const/16 v0, 0x21

    .line 74
    .line 75
    new-array v0, v0, [I

    .line 76
    .line 77
    fill-array-data v0, :array_0

    .line 78
    .line 79
    .line 80
    sput-object v0, Lorg/godotengine/godot/utils/GLUtils;->ATTRIBUTES:[I

    .line 81
    .line 82
    return-void

    .line 83
    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static checkEglError(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 2

    .line 1
    :goto_0
    invoke-interface {p2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3000

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "%s: EGL error: 0x%x"

    .line 18
    .line 19
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private static printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    sget-object v3, Lorg/godotengine/godot/utils/GLUtils;->ATTRIBUTES:[I

    .line 7
    .line 8
    array-length v4, v3

    .line 9
    if-ge v2, v4, :cond_2

    .line 10
    .line 11
    aget v3, v3, v2

    .line 12
    .line 13
    sget-object v4, Lorg/godotengine/godot/utils/GLUtils;->ATTRIBUTES_NAMES:[Ljava/lang/String;

    .line 14
    .line 15
    aget-object v4, v4, v2

    .line 16
    .line 17
    invoke-interface {p0, p1, p2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    sget-object v3, Lorg/godotengine/godot/utils/GLUtils;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    aget v5, v0, v1

    .line 26
    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v5, "  %s: %d\n"

    .line 36
    .line 37
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    :goto_1
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/16 v4, 0x3000

    .line 50
    .line 51
    if-eq v3, v4, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return-void
.end method

.method public static printConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    sget-object v1, Lorg/godotengine/godot/utils/GLUtils;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "%d configurations"

    .line 13
    .line 14
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, v0, :cond_0

    .line 23
    .line 24
    sget-object v2, Lorg/godotengine/godot/utils/GLUtils;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "Configuration %d:\n"

    .line 35
    .line 36
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    aget-object v2, p2, v1

    .line 44
    .line 45
    invoke-static {p0, p1, v2}, Lorg/godotengine/godot/utils/GLUtils;->printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method
