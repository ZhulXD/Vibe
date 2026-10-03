.class Lorg/libsdl/app/SDLGenericMotionListener_API26;
.super Lorg/libsdl/app/SDLGenericMotionListener_API24;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field private mRelativeModeEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/libsdl/app/SDLGenericMotionListener_API24;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public inRelativeMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x2002

    .line 6
    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    const/4 v4, 0x7

    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eq p1, v0, :cond_4

    .line 17
    .line 18
    const/16 v0, 0x3002

    .line 19
    .line 20
    if-eq p1, v0, :cond_4

    .line 21
    .line 22
    const v0, 0x20004

    .line 23
    .line 24
    .line 25
    if-eq p1, v0, :cond_1

    .line 26
    .line 27
    const v0, 0x1000010

    .line 28
    .line 29
    .line 30
    if-eq p1, v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eq p1, v4, :cond_3

    .line 43
    .line 44
    if-eq p1, v3, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p2, v2, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p2, v1, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-static {v6, p1, v0, p2, v6}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 56
    .line 57
    .line 58
    return v5

    .line 59
    :cond_3
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    invoke-static {v6, p1, v0, p2, v5}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 68
    .line 69
    .line 70
    return v5

    .line 71
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eq p1, v4, :cond_6

    .line 76
    .line 77
    if-eq p1, v3, :cond_5

    .line 78
    .line 79
    :goto_0
    return v6

    .line 80
    :cond_5
    invoke-virtual {p2, v2, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {p2, v1, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-static {v6, p1, v0, p2, v6}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 89
    .line 90
    .line 91
    return v5

    .line 92
    :cond_6
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->surfaceX(F)F

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->surfaceY(F)F

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-static {v6, p1, v0, p2, v6}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 109
    .line 110
    .line 111
    return v5
.end method

.method public reclaimRelativeMouseModeIfNeeded()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lm0/o;->q(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setRelativeMouseEnabled(Z)Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1b

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lm0/o;->q(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lm0/o;->u(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :goto_1
    iput-boolean p1, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    return p1
.end method

.method public supportsRelativeMouse()Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1b

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method
