.class Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;
.super Lorg/godotengine/godot/gl/GLSurfaceView$BaseConfigChooser;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/gl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Lorg/godotengine/godot/gl/GLSurfaceView;


# direct methods
.method public constructor <init>(Lorg/godotengine/godot/gl/GLSurfaceView;IIIIII)V
    .locals 13

    .line 1
    iput-object p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->this$0:Lorg/godotengine/godot/gl/GLSurfaceView;

    .line 2
    .line 3
    const/16 v10, 0x3026

    .line 4
    .line 5
    const/16 v12, 0x3038

    .line 6
    .line 7
    const/16 v0, 0x3024

    .line 8
    .line 9
    const/16 v2, 0x3023

    .line 10
    .line 11
    const/16 v4, 0x3022

    .line 12
    .line 13
    const/16 v6, 0x3021

    .line 14
    .line 15
    const/16 v8, 0x3025

    .line 16
    .line 17
    move v1, p2

    .line 18
    move/from16 v3, p3

    .line 19
    .line 20
    move/from16 v5, p4

    .line 21
    .line 22
    move/from16 v7, p5

    .line 23
    .line 24
    move/from16 v9, p6

    .line 25
    .line 26
    move/from16 v11, p7

    .line 27
    .line 28
    filled-new-array/range {v0 .. v12}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/gl/GLSurfaceView$BaseConfigChooser;-><init>(Lorg/godotengine/godot/gl/GLSurfaceView;[I)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    new-array p1, p1, [I

    .line 37
    .line 38
    iput-object p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    .line 39
    .line 40
    iput p2, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    .line 41
    .line 42
    iput v3, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    .line 43
    .line 44
    iput v5, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    .line 45
    .line 46
    iput v7, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    .line 47
    .line 48
    iput v9, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    .line 49
    .line 50
    iput v11, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    .line 51
    .line 52
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

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
    iget-object p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

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
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    .line 5
    aget-object v5, p3, v1

    .line 6
    .line 7
    const/16 v6, 0x3025

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    move-object v2, p0

    .line 11
    move-object v3, p1

    .line 12
    move-object v4, p2

    .line 13
    invoke-direct/range {v2 .. v7}, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/16 v6, 0x3026

    .line 18
    .line 19
    invoke-direct/range {v2 .. v7}, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iget v6, v2, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    .line 24
    .line 25
    if-lt p1, v6, :cond_0

    .line 26
    .line 27
    iget p1, v2, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    .line 28
    .line 29
    if-lt p2, p1, :cond_0

    .line 30
    .line 31
    const/16 v6, 0x3024

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    invoke-direct/range {v2 .. v7}, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/16 v6, 0x3023

    .line 39
    .line 40
    move-object v2, p0

    .line 41
    invoke-direct/range {v2 .. v7}, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    const/16 v6, 0x3022

    .line 46
    .line 47
    invoke-direct/range {v2 .. v7}, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const/16 v6, 0x3021

    .line 52
    .line 53
    invoke-direct/range {v2 .. v7}, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    iget v7, v2, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    .line 58
    .line 59
    if-ne p1, v7, :cond_0

    .line 60
    .line 61
    iget p1, v2, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    .line 62
    .line 63
    if-ne p2, p1, :cond_0

    .line 64
    .line 65
    iget p1, v2, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    .line 66
    .line 67
    if-ne v8, p1, :cond_0

    .line 68
    .line 69
    iget p1, v2, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    .line 70
    .line 71
    if-ne v6, p1, :cond_0

    .line 72
    .line 73
    return-object v5

    .line 74
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    move-object p1, v3

    .line 77
    move-object p2, v4

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    move-object v2, p0

    .line 80
    const/4 p1, 0x0

    .line 81
    return-object p1
.end method
