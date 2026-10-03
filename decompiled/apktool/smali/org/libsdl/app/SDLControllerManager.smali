.class public Lorg/libsdl/app/SDLControllerManager;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDLControllerManager"

.field protected static mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

.field protected static mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;


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

.method public static handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/libsdl/app/SDLJoystickHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static hapticRun(IFI)V
    .locals 1

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lorg/libsdl/app/SDLHapticHandler;->run(IFI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static hapticStop(I)V
    .locals 1

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/libsdl/app/SDLHapticHandler;->stop(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static initialize()V
    .locals 2

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/libsdl/app/SDLJoystickHandler_API19;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/libsdl/app/SDLJoystickHandler_API19;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v1, 0x1a

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    new-instance v0, Lorg/libsdl/app/SDLHapticHandler_API26;

    .line 23
    .line 24
    invoke-direct {v0}, Lorg/libsdl/app/SDLHapticHandler_API26;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v0, Lorg/libsdl/app/SDLHapticHandler;

    .line 31
    .line 32
    invoke-direct {v0}, Lorg/libsdl/app/SDLHapticHandler;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public static isDeviceSDLJoystick(I)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    if-gez p0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    and-int/lit8 v0, p0, 0x10

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    and-int/lit16 v0, p0, 0x201

    .line 20
    .line 21
    const/16 v2, 0x201

    .line 22
    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    const/16 v0, 0x401

    .line 26
    .line 27
    and-int/2addr p0, v0

    .line 28
    if-ne p0, v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v1

    .line 32
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_3
    :goto_1
    return v1
.end method

.method public static native nativeAddHaptic(ILjava/lang/String;)I
.end method

.method public static native nativeAddJoystick(ILjava/lang/String;Ljava/lang/String;IIZIIII)I
.end method

.method public static native nativeRemoveHaptic(I)I
.end method

.method public static native nativeRemoveJoystick(I)I
.end method

.method public static native nativeSetupJNI()I
.end method

.method public static native onNativeHat(IIII)V
.end method

.method public static native onNativeJoy(IIF)V
.end method

.method public static native onNativePadDown(II)I
.end method

.method public static native onNativePadUp(II)I
.end method

.method public static pollHapticDevices()V
    .locals 1

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mHapticHandler:Lorg/libsdl/app/SDLHapticHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/libsdl/app/SDLHapticHandler;->pollHapticDevices()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static pollInputDevices()V
    .locals 1

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLControllerManager;->mJoystickHandler:Lorg/libsdl/app/SDLJoystickHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/libsdl/app/SDLJoystickHandler;->pollInputDevices()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
