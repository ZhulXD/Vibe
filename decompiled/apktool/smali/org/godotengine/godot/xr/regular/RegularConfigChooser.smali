.class public Lorg/godotengine/godot/xr/regular/RegularConfigChooser;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RegularConfigChooser"

.field private static s_configAttribs:[I


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->s_configAttribs:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mValue:[I

    .line 8
    .line 9
    iput p1, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mRedSize:I

    .line 10
    .line 11
    iput p2, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mGreenSize:I

    .line 12
    .line 13
    iput p3, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mBlueSize:I

    .line 14
    .line 15
    iput p4, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mAlphaSize:I

    .line 16
    .line 17
    iput p5, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mDepthSize:I

    .line 18
    .line 19
    iput p6, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mStencilSize:I

    .line 20
    .line 21
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mValue:[I

    .line 2
    .line 3
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mValue:[I

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    aget p1, p1, p2

    .line 13
    .line 14
    return p1

    .line 15
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    const/4 v0, 0x1

    .line 1
    new-array v6, v0, [I

    .line 2
    sget-object v3, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->s_configAttribs:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 p1, 0x0

    .line 3
    aget v5, v6, p1

    if-lez v5, :cond_0

    .line 4
    new-array v4, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 5
    sget-object v3, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->s_configAttribs:[I

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 6
    invoke-virtual {p0, v1, v2, v4}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9

    .line 8
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v5, p3, v1

    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 9
    invoke-direct/range {v2 .. v7}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p1

    const/16 v6, 0x3026

    .line 10
    invoke-direct/range {v2 .. v7}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p2

    .line 11
    iget v6, v2, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mDepthSize:I

    if-lt p1, v6, :cond_1

    iget p1, v2, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mStencilSize:I

    if-ge p2, p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v6, 0x3024

    const/4 v7, 0x0

    .line 12
    invoke-direct/range {v2 .. v7}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p1

    const/16 v6, 0x3023

    move-object v2, p0

    .line 13
    invoke-direct/range {v2 .. v7}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p2

    const/16 v6, 0x3022

    .line 14
    invoke-direct/range {v2 .. v7}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    const/16 v6, 0x3021

    .line 15
    invoke-direct/range {v2 .. v7}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    .line 16
    iget v7, v2, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mRedSize:I

    if-ne p1, v7, :cond_1

    iget p1, v2, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mGreenSize:I

    if-ne p2, p1, :cond_1

    iget p1, v2, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mBlueSize:I

    if-ne v8, p1, :cond_1

    iget p1, v2, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mAlphaSize:I

    if-ne v6, p1, :cond_1

    return-object v5

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object p1, v3

    move-object p2, v4

    goto :goto_0

    :cond_2
    move-object v2, p0

    const/4 p1, 0x0

    return-object p1
.end method
