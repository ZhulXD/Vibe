.class Lorg/tvp/kirikiri2/KR2Activity$KR2GLSurfaceView;
.super Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tvp/kirikiri2/KR2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KR2GLSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tvp/kirikiri2/KR2Activity;


# direct methods
.method public constructor <init>(Lorg/tvp/kirikiri2/KR2Activity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity$KR2GLSurfaceView;->this$0:Lorg/tvp/kirikiri2/KR2Activity;

    .line 2
    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lorg/tvp/kirikiri2/KR2Activity;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity$KR2GLSurfaceView;->this$0:Lorg/tvp/kirikiri2/KR2Activity;

    .line 4
    invoke-direct {p0, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public deleteBackward()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/tvp/kirikiri2/KR2Activity;->nativeDeleteBackward()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public insertText(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/tvp/kirikiri2/KR2Activity;->c(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/16 v0, 0x9

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    neg-float p1, p1

    .line 21
    invoke-static {p1}, Lorg/tvp/kirikiri2/KR2Activity;->d(F)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [F

    .line 6
    .line 7
    new-array v2, v0, [F

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    if-ge v4, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    aput v5, v1, v4

    .line 18
    .line 19
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    aput v5, v2, v4

    .line 24
    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 v0, 0x7

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eq p1, v0, :cond_1

    .line 35
    .line 36
    return v4

    .line 37
    :cond_1
    aget p1, v1, v3

    .line 38
    .line 39
    aget v0, v2, v3

    .line 40
    .line 41
    invoke-static {p1, v0}, Lorg/tvp/kirikiri2/KR2Activity;->b(FF)V

    .line 42
    .line 43
    .line 44
    return v4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/16 v0, 0x42

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x52

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x55

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    :pswitch_0
    const/4 p2, 0x1

    .line 25
    invoke-static {p1, p2}, Lorg/tvp/kirikiri2/KR2Activity;->nativeKeyAction(IZ)Z

    .line 26
    .line 27
    .line 28
    return p2

    .line 29
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/16 v0, 0x42

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x52

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x55

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    :pswitch_0
    const/4 p2, 0x0

    .line 25
    invoke-static {p1, p2}, Lorg/tvp/kirikiri2/KR2Activity;->nativeKeyAction(IZ)Z

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    new-array v2, v0, [F

    .line 8
    .line 9
    new-array v3, v0, [F

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    move v5, v4

    .line 13
    :goto_0
    if-ge v5, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    aput v6, v1, v5

    .line 20
    .line 21
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    aput v6, v2, v5

    .line 26
    .line 27
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    aput v6, v3, v5

    .line 32
    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    and-int/lit16 v0, v0, 0xff

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    if-eqz v0, :cond_6

    .line 44
    .line 45
    if-eq v0, v5, :cond_5

    .line 46
    .line 47
    const/4 v4, 0x2

    .line 48
    if-eq v0, v4, :cond_4

    .line 49
    .line 50
    const/4 v4, 0x3

    .line 51
    if-eq v0, v4, :cond_3

    .line 52
    .line 53
    const/4 v1, 0x5

    .line 54
    if-eq v0, v1, :cond_2

    .line 55
    .line 56
    const/4 v1, 0x6

    .line 57
    if-eq v0, v1, :cond_1

    .line 58
    .line 59
    return v5

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    shr-int/lit8 v0, v0, 0x8

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-static {v1, v2, p1}, Lorg/tvp/kirikiri2/KR2Activity;->g(IFF)V

    .line 79
    .line 80
    .line 81
    return v5

    .line 82
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    shr-int/lit8 v0, v0, 0x8

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-static {v1, v2, p1}, Lorg/tvp/kirikiri2/KR2Activity;->e(IFF)V

    .line 101
    .line 102
    .line 103
    return v5

    .line 104
    :cond_3
    invoke-static {v1, v2, v3}, Lorg/tvp/kirikiri2/KR2Activity;->f([I[F[F)V

    .line 105
    .line 106
    .line 107
    return v5

    .line 108
    :cond_4
    invoke-static {v1, v2, v3}, Lorg/tvp/kirikiri2/KR2Activity;->h([I[F[F)V

    .line 109
    .line 110
    .line 111
    return v5

    .line 112
    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    aget v0, v2, v4

    .line 117
    .line 118
    aget v1, v3, v4

    .line 119
    .line 120
    invoke-static {p1, v0, v1}, Lorg/tvp/kirikiri2/KR2Activity;->g(IFF)V

    .line 121
    .line 122
    .line 123
    return v5

    .line 124
    :cond_6
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    aget v0, v2, v4

    .line 129
    .line 130
    aget v1, v3, v4

    .line 131
    .line 132
    invoke-static {p1, v0, v1}, Lorg/tvp/kirikiri2/KR2Activity;->e(IFF)V

    .line 133
    .line 134
    .line 135
    return v5
.end method
