.class public Lorg/godotengine/godot/xr/ovr/OvrConfigChooser;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static final CONFIG_ATTRIBS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/godotengine/godot/xr/ovr/OvrConfigChooser;->CONFIG_ATTRIBS:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3031
        0x0
        0x3038
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-interface {p1, p2, v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    if-eqz v4, :cond_8

    .line 11
    .line 12
    aget v4, v1, v3

    .line 13
    .line 14
    if-lez v4, :cond_7

    .line 15
    .line 16
    new-array v5, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 17
    .line 18
    invoke-interface {p1, p2, v5, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    new-array v0, v0, [I

    .line 25
    .line 26
    move v1, v3

    .line 27
    :goto_0
    if-ge v1, v4, :cond_5

    .line 28
    .line 29
    aget-object v6, v5, v1

    .line 30
    .line 31
    const/16 v7, 0x3040

    .line 32
    .line 33
    invoke-interface {p1, p2, v6, v7, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 34
    .line 35
    .line 36
    aget v7, v0, v3

    .line 37
    .line 38
    const/16 v8, 0x40

    .line 39
    .line 40
    and-int/2addr v7, v8

    .line 41
    if-eq v7, v8, :cond_0

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_0
    const/16 v7, 0x3033

    .line 45
    .line 46
    invoke-interface {p1, p2, v6, v7, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 47
    .line 48
    .line 49
    aget v7, v0, v3

    .line 50
    .line 51
    const/4 v8, 0x5

    .line 52
    and-int/2addr v7, v8

    .line 53
    if-eq v7, v8, :cond_1

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_1
    move v7, v3

    .line 57
    :goto_1
    sget-object v8, Lorg/godotengine/godot/xr/ovr/OvrConfigChooser;->CONFIG_ATTRIBS:[I

    .line 58
    .line 59
    aget v9, v8, v7

    .line 60
    .line 61
    const/16 v10, 0x3038

    .line 62
    .line 63
    if-eq v9, v10, :cond_3

    .line 64
    .line 65
    invoke-interface {p1, p2, v6, v9, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 66
    .line 67
    .line 68
    aget v9, v0, v3

    .line 69
    .line 70
    add-int/lit8 v11, v7, 0x1

    .line 71
    .line 72
    aget v11, v8, v11

    .line 73
    .line 74
    if-eq v9, v11, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    add-int/lit8 v7, v7, 0x2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    :goto_2
    aget v7, v8, v7

    .line 81
    .line 82
    if-ne v7, v10, :cond_4

    .line 83
    .line 84
    return-object v6

    .line 85
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    return-object v2

    .line 89
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    const-string p2, "eglGetConfigs #2 failed."

    .line 92
    .line 93
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    const-string p2, "No configs match configSpec"

    .line 100
    .line 101
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    const-string p2, "eglGetConfigs failed."

    .line 108
    .line 109
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1
.end method
