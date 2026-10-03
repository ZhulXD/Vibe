.class public Lorg/libsdl/app/SDLSurface;
.super Landroid/view/SurfaceView;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field protected mDisplay:Landroid/view/Display;

.field protected mHeight:F

.field public mIsSurfaceReady:Z

.field protected mSensorManager:Landroid/hardware/SensorManager;

.field protected mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "window"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/WindowManager;

    .line 34
    .line 35
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    .line 40
    .line 41
    const-string v0, "sensor"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/hardware/SensorManager;

    .line 48
    .line 49
    iput-object p1, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 50
    .line 51
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 56
    .line 57
    .line 58
    const/high16 p1, 0x3f800000    # 1.0f

    .line 59
    .line 60
    iput p1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 61
    .line 62
    iput p1, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public bufferPerViewX()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget v2, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 10
    .line 11
    cmpl-float v3, v2, v1

    .line 12
    .line 13
    if-lez v3, :cond_0

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    div-float/2addr v2, v0

    .line 17
    return v2

    .line 18
    :cond_0
    return v1
.end method

.method public bufferPerViewY()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget v2, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 10
    .line 11
    cmpl-float v3, v2, v1

    .line 12
    .line 13
    if-lez v3, :cond_0

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    div-float/2addr v2, v0

    .line 17
    return v2

    .line 18
    :cond_0
    return v1
.end method

.method public enableSensor(IZ)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, p0, p1, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p2, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2, p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public getNativeSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public handlePause()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public handleResume()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v0}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x7

    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/16 v1, 0xb

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/16 v4, 0xc

    .line 22
    .line 23
    if-eq v0, v4, :cond_0

    .line 24
    .line 25
    return v3

    .line 26
    :cond_0
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    move v0, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v2

    .line 31
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, Lorg/libsdl/app/SDLActivity;->surfaceX(F)F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v3}, Lorg/libsdl/app/SDLActivity;->surfaceY(F)F

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p1, v0, v1, v3, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :cond_2
    const/16 v1, 0xa

    .line 56
    .line 57
    invoke-virtual {p1, v1, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/16 v4, 0x9

    .line 62
    .line 63
    invoke-virtual {p1, v4, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-static {v3, v0, v1, p1, v3}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 68
    .line 69
    .line 70
    return v2

    .line 71
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v1}, Lorg/libsdl/app/SDLActivity;->surfaceX(F)F

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-static {p1}, Lorg/libsdl/app/SDLActivity;->surfaceY(F)F

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-static {v3, v0, v1, p1, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 88
    .line 89
    .line 90
    return v2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, p3, v0}, Lorg/libsdl/app/SDLActivity;->handleKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputConnection;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    const/4 v4, 0x3

    .line 23
    if-eq v0, v4, :cond_0

    .line 24
    .line 25
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 26
    .line 27
    aget v3, v0, v3

    .line 28
    .line 29
    aget v0, v0, v1

    .line 30
    .line 31
    move v1, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 34
    .line 35
    aget v1, v0, v1

    .line 36
    .line 37
    aget v0, v0, v3

    .line 38
    .line 39
    neg-float v0, v0

    .line 40
    move v3, v1

    .line 41
    move v1, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 44
    .line 45
    aget v3, v0, v3

    .line 46
    .line 47
    neg-float v3, v3

    .line 48
    aget v0, v0, v1

    .line 49
    .line 50
    neg-float v0, v0

    .line 51
    const/4 v1, 0x4

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 54
    .line 55
    aget v4, v0, v1

    .line 56
    .line 57
    neg-float v4, v4

    .line 58
    aget v0, v0, v3

    .line 59
    .line 60
    move v3, v4

    .line 61
    :goto_0
    sget v4, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    .line 62
    .line 63
    if-eq v1, v4, :cond_3

    .line 64
    .line 65
    sput v1, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    .line 66
    .line 67
    invoke-static {v1}, Lorg/libsdl/app/SDLActivity;->onNativeOrientationChanged(I)V

    .line 68
    .line 69
    .line 70
    :cond_3
    neg-float v1, v3

    .line 71
    const v3, 0x411ce80a

    .line 72
    .line 73
    .line 74
    div-float/2addr v1, v3

    .line 75
    div-float/2addr v0, v3

    .line 76
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 77
    .line 78
    aget p1, p1, v2

    .line 79
    .line 80
    div-float/2addr p1, v3

    .line 81
    invoke-static {v1, v0, p1}, Lorg/libsdl/app/SDLActivity;->onNativeAccel(FFF)V

    .line 82
    .line 83
    .line 84
    :cond_4
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    add-int/lit8 p1, p1, -0x1

    .line 16
    .line 17
    :cond_0
    move v1, p1

    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/16 v2, 0x2002

    .line 23
    .line 24
    const/4 v10, 0x1

    .line 25
    if-eq p1, v2, :cond_a

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/16 v2, 0x3002

    .line 32
    .line 33
    if-ne p1, v2, :cond_1

    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    const/high16 v11, 0x3f800000    # 1.0f

    .line 39
    .line 40
    const/4 v2, -0x1

    .line 41
    if-eqz v3, :cond_7

    .line 42
    .line 43
    if-eq v3, v10, :cond_7

    .line 44
    .line 45
    const/4 v4, 0x2

    .line 46
    if-eq v3, v4, :cond_5

    .line 47
    .line 48
    const/4 v4, 0x3

    .line 49
    if-eq v3, v4, :cond_3

    .line 50
    .line 51
    const/4 p1, 0x5

    .line 52
    if-eq v3, p1, :cond_2

    .line 53
    .line 54
    const/4 p1, 0x6

    .line 55
    if-eq v3, p1, :cond_2

    .line 56
    .line 57
    goto/16 :goto_7

    .line 58
    .line 59
    :cond_2
    move p1, v2

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    :goto_0
    if-ge p1, v0, :cond_d

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->viewWidth()F

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    div-float v7, v2, v3

    .line 76
    .line 77
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->viewHeight()F

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    div-float v8, v2, v3

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPressure(I)F

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    cmpl-float v3, v2, v11

    .line 92
    .line 93
    if-lez v3, :cond_4

    .line 94
    .line 95
    move v9, v11

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    move v9, v2

    .line 98
    :goto_1
    const/4 v6, 0x1

    .line 99
    move v4, v1

    .line 100
    invoke-static/range {v4 .. v9}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 p1, p1, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    :goto_2
    if-ge p1, v0, :cond_d

    .line 107
    .line 108
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->viewWidth()F

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    div-float/2addr v4, v5

    .line 121
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->viewHeight()F

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    div-float/2addr v5, v6

    .line 130
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPressure(I)F

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    cmpl-float v7, v6, v11

    .line 135
    .line 136
    if-lez v7, :cond_6

    .line 137
    .line 138
    move v6, v11

    .line 139
    :cond_6
    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    .line 140
    .line 141
    .line 142
    add-int/lit8 p1, p1, 0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_7
    :goto_3
    if-ne p1, v2, :cond_8

    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    :cond_8
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->viewWidth()F

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    div-float v4, v0, v4

    .line 164
    .line 165
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->viewHeight()F

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    div-float v5, v0, v5

    .line 174
    .line 175
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPressure(I)F

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    cmpl-float p2, p1, v11

    .line 180
    .line 181
    if-lez p2, :cond_9

    .line 182
    .line 183
    move v6, v11

    .line 184
    goto :goto_4

    .line 185
    :cond_9
    move v6, p1

    .line 186
    :goto_4
    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    .line 187
    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_a
    :goto_5
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    const-string v0, "getButtonState"

    .line 195
    .line 196
    const/4 v1, 0x0

    .line 197
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    if-eqz p1, :cond_b

    .line 206
    .line 207
    check-cast p1, Ljava/lang/Integer;

    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 210
    .line 211
    .line 212
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_6

    .line 214
    :catch_0
    :cond_b
    move p1, v10

    .line 215
    :goto_6
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v0, p2}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->getEventX(Landroid/view/MotionEvent;)F

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    invoke-virtual {v0, p2}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->getEventY(Landroid/view/MotionEvent;)F

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    invoke-virtual {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->inRelativeMode()Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-nez v2, :cond_c

    .line 232
    .line 233
    invoke-static {v1}, Lorg/libsdl/app/SDLActivity;->surfaceX(F)F

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->surfaceY(F)F

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    :cond_c
    invoke-virtual {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->inRelativeMode()Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    invoke-static {p1, v3, v1, p2, v0}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 246
    .line 247
    .line 248
    :cond_d
    :goto_7
    return v10
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6

    .line 1
    const-string p1, "SDL"

    .line 2
    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v0, "surfaceChanged() "

    .line 6
    .line 7
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, "x"

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    int-to-float p1, p3

    .line 34
    iput p1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 35
    .line 36
    int-to-float p2, p4

    .line 37
    iput p2, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 38
    .line 39
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 47
    .line 48
    .line 49
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    :try_start_1
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move v1, p3

    .line 55
    :catch_1
    move v0, p4

    .line 56
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-lez v2, :cond_2

    .line 65
    .line 66
    if-lez v3, :cond_2

    .line 67
    .line 68
    if-ne p3, v2, :cond_1

    .line 69
    .line 70
    if-eq p4, v3, :cond_2

    .line 71
    .line 72
    :cond_1
    int-to-float v1, v1

    .line 73
    mul-float/2addr v1, p1

    .line 74
    int-to-float p1, v2

    .line 75
    div-float/2addr v1, p1

    .line 76
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    int-to-float p1, v0

    .line 81
    mul-float/2addr p1, p2

    .line 82
    int-to-float p2, v3

    .line 83
    div-float/2addr p1, p2

    .line 84
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    :cond_2
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    monitor-enter p1

    .line 93
    :try_start_2
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 98
    .line 99
    .line 100
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    const-string p1, "SDL"

    .line 102
    .line 103
    const-string p2, "Window size: "

    .line 104
    .line 105
    const-string v4, "x"

    .line 106
    .line 107
    const-string v5, ", view "

    .line 108
    .line 109
    invoke-static {p2, p3, p4, v4, v5}, LE/b;->p(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v2, "x"

    .line 117
    .line 118
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v2, ", device size reported: "

    .line 125
    .line 126
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v2, "x"

    .line 133
    .line 134
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    invoke-static {p3, p4, v1, v0, p1}, Lorg/libsdl/app/SDLActivity;->nativeSetScreenResolution(IIIIF)V

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeResize()V

    .line 157
    .line 158
    .line 159
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    const/4 p2, 0x1

    .line 166
    const/4 v0, 0x0

    .line 167
    if-eq p1, p2, :cond_5

    .line 168
    .line 169
    const/4 v1, 0x7

    .line 170
    if-ne p1, v1, :cond_3

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_3
    if-eqz p1, :cond_4

    .line 174
    .line 175
    const/4 v1, 0x6

    .line 176
    if-ne p1, v1, :cond_6

    .line 177
    .line 178
    :cond_4
    iget v1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 179
    .line 180
    iget v2, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 181
    .line 182
    cmpg-float v1, v1, v2

    .line 183
    .line 184
    if-gez v1, :cond_6

    .line 185
    .line 186
    :goto_1
    move v1, p2

    .line 187
    goto :goto_3

    .line 188
    :cond_5
    :goto_2
    iget v1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 189
    .line 190
    iget v2, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 191
    .line 192
    cmpl-float v1, v1, v2

    .line 193
    .line 194
    if-lez v1, :cond_6

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_6
    move v1, v0

    .line 198
    :goto_3
    if-eqz v1, :cond_7

    .line 199
    .line 200
    iget v2, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 201
    .line 202
    iget v3, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 203
    .line 204
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    float-to-double v2, v2

    .line 209
    iget v4, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 210
    .line 211
    iget v5, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 212
    .line 213
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    float-to-double v4, v4

    .line 218
    div-double/2addr v4, v2

    .line 219
    const-wide v2, 0x3ff3333333333333L    # 1.2

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    cmpg-double v2, v4, v2

    .line 225
    .line 226
    if-gez v2, :cond_7

    .line 227
    .line 228
    const-string v1, "SDL"

    .line 229
    .line 230
    const-string v2, "Don\'t skip on such aspect-ratio. Could be a square resolution."

    .line 231
    .line 232
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move v1, v0

    .line 236
    :cond_7
    if-eqz v1, :cond_8

    .line 237
    .line 238
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    .line 239
    .line 240
    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_8

    .line 245
    .line 246
    const-string v1, "SDL"

    .line 247
    .line 248
    const-string v2, "Don\'t skip in Multi-Window"

    .line 249
    .line 250
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move v1, v0

    .line 254
    :cond_8
    if-eqz v1, :cond_9

    .line 255
    .line 256
    const-string p2, "SDL"

    .line 257
    .line 258
    const-string v1, "Skip surface: orientation mismatch "

    .line 259
    .line 260
    const-string v2, "x"

    .line 261
    .line 262
    const-string v3, " requestedOrientation="

    .line 263
    .line 264
    invoke-static {v1, p3, p4, v2, v3}, LE/b;->p(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    move-result-object p3

    .line 268
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    iput-boolean v0, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    .line 279
    .line 280
    return-void

    .line 281
    :cond_9
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceChanged()V

    .line 282
    .line 283
    .line 284
    iput-boolean p2, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    .line 285
    .line 286
    sget-object p1, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 287
    .line 288
    sput-object p1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 289
    .line 290
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :catchall_0
    move-exception p2

    .line 295
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    throw p2
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    const-string p1, "SDL"

    .line 2
    .line 3
    const-string v0, "surfaceCreated()"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceCreated()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    const-string p1, "SDL"

    .line 2
    .line 3
    const-string v0, "surfaceDestroyed()"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object p1, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 9
    .line 10
    sput-object p1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 11
    .line 12
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    .line 17
    .line 18
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceDestroyed()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public viewHeight()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    return v0

    .line 9
    :cond_0
    iget v0, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 10
    .line 11
    return v0
.end method

.method public viewWidth()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    return v0

    .line 9
    :cond_0
    iget v0, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 10
    .line 11
    return v0
.end method
