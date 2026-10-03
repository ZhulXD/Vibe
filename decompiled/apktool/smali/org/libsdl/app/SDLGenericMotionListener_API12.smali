.class Lorg/libsdl/app/SDLGenericMotionListener_API12;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# direct methods
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
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

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
    const/4 v1, 0x0

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const v0, 0x1000010

    .line 11
    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x7

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eq p1, v0, :cond_3

    .line 28
    .line 29
    const/16 v0, 0x8

    .line 30
    .line 31
    if-eq p1, v0, :cond_2

    .line 32
    .line 33
    :goto_0
    return v1

    .line 34
    :cond_2
    const/16 v0, 0xa

    .line 35
    .line 36
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/16 v3, 0x9

    .line 41
    .line 42
    invoke-virtual {p2, v3, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-static {v1, p1, v0, p2, v1}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 47
    .line 48
    .line 49
    return v2

    .line 50
    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->surfaceX(F)F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->surfaceY(F)F

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-static {v1, p1, v0, p2, v1}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 67
    .line 68
    .line 69
    return v2
.end method

.method public reclaimRelativeMouseModeIfNeeded()V
    .locals 0

    .line 1
    return-void
.end method

.method public setRelativeMouseEnabled(Z)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public supportsRelativeMouse()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
