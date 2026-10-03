.class public Lorg/godotengine/godot/input/GodotInputHandler;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final JOYPAD_IGNORE_LIST:[Ljava/lang/String;

.field private static final ROTARY_INPUT_HORIZONTAL_AXIS:I = 0x0

.field private static final ROTARY_INPUT_VERTICAL_AXIS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GodotInputHandler"


# instance fields
.field private cachedRotation:I

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private final godot:Lorg/godotengine/godot/Godot;

.field private final godotGestureHandler:Lorg/godotengine/godot/input/GodotGestureHandler;

.field private hasHardwareKeyboardConfig:Z

.field private lastSeenToolType:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mHardwareKeyboardIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private final mJoystickIds:Landroid/util/SparseIntArray;

.field private final mJoysticksDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/godotengine/godot/input/Joystick;",
            ">;"
        }
    .end annotation
.end field

.field private overrideVolumeButtons:Z

.field private rotaryInputAxis:I

.field private final scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "uinput-vfs"

    .line 2
    .line 3
    const-string v5, "uinput-atrus"

    .line 4
    .line 5
    const-string v0, "uinput-fpc"

    .line 6
    .line 7
    const-string v1, "uinput-goodix"

    .line 8
    .line 9
    const-string v2, "uinput-synaptics"

    .line 10
    .line 11
    const-string v3, "uinput-elan"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lorg/godotengine/godot/input/GodotInputHandler;->JOYPAD_IGNORE_LIST:[Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/godotengine/godot/Godot;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoysticksDevices:Landroid/util/SparseArray;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mHardwareKeyboardIds:Ljava/util/HashSet;

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->lastSeenToolType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->rotaryInputAxis:I

    .line 36
    .line 37
    const/4 v2, -0x1

    .line 38
    iput v2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->cachedRotation:I

    .line 39
    .line 40
    iput-boolean v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->overrideVolumeButtons:Z

    .line 41
    .line 42
    iput-boolean v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->hasHardwareKeyboardConfig:Z

    .line 43
    .line 44
    iput-object p2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godot:Lorg/godotengine/godot/Godot;

    .line 45
    .line 46
    const-string p2, "input"

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Landroid/hardware/input/InputManager;

    .line 53
    .line 54
    iput-object p2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mInputManager:Landroid/hardware/input/InputManager;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-virtual {p2, p0, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 58
    .line 59
    .line 60
    const-string p2, "window"

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Landroid/view/WindowManager;

    .line 67
    .line 68
    iput-object p2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->windowManager:Landroid/view/WindowManager;

    .line 69
    .line 70
    new-instance p2, Lorg/godotengine/godot/input/GodotGestureHandler;

    .line 71
    .line 72
    invoke-direct {p2, p0}, Lorg/godotengine/godot/input/GodotGestureHandler;-><init>(Lorg/godotengine/godot/input/GodotInputHandler;)V

    .line 73
    .line 74
    .line 75
    iput-object p2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godotGestureHandler:Lorg/godotengine/godot/input/GodotGestureHandler;

    .line 76
    .line 77
    new-instance v2, Landroid/view/GestureDetector;

    .line 78
    .line 79
    invoke-direct {v2, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->gestureDetector:Landroid/view/GestureDetector;

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 85
    .line 86
    .line 87
    new-instance v2, Landroid/view/ScaleGestureDetector;

    .line 88
    .line 89
    invoke-direct {v2, p1, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 90
    .line 91
    .line 92
    iput-object v2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget p2, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 106
    .line 107
    if-eq p2, v0, :cond_0

    .line 108
    .line 109
    iget p1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 110
    .line 111
    if-ne p1, v0, :cond_0

    .line 112
    .line 113
    move v1, v0

    .line 114
    :cond_0
    iput-boolean v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->hasHardwareKeyboardConfig:Z

    .line 115
    .line 116
    return-void
.end method

.method private assignJoystickIdNumber(I)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ltz v1, :cond_0

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    .line 17
    .line 18
    return v0
.end method

.method private dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/input/GodotInputHandler;->shouldDispatchInputToRenderThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godot:Lorg/godotengine/godot/Godot;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/Godot;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Lorg/godotengine/godot/input/InputEventRunnable;->run()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static getEventTiltX(Landroid/view/MotionEvent;)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getOrientation()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x19

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    float-to-double v1, p0

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    double-to-float p0, v1

    .line 17
    float-to-double v0, v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    neg-double v0, v0

    .line 23
    double-to-float v0, v0

    .line 24
    mul-float/2addr v0, p0

    .line 25
    return v0
.end method

.method public static getEventTiltY(Landroid/view/MotionEvent;)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getOrientation()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x19

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    float-to-double v1, p0

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    double-to-float p0, v1

    .line 17
    float-to-double v0, v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    double-to-float v0, v0

    .line 23
    mul-float/2addr v0, p0

    .line 24
    return v0
.end method

.method public static getEventToolType(Landroid/view/MotionEvent;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    return v1
.end method

.method public static getGodotButton(I)I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/16 v1, 0x52

    .line 5
    .line 6
    if-eq p0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x82

    .line 9
    .line 10
    const/16 v2, 0xf

    .line 11
    .line 12
    if-eq p0, v1, :cond_0

    .line 13
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    packed-switch p0, :pswitch_data_1

    .line 18
    .line 19
    .line 20
    add-int/lit16 p0, p0, -0xa8

    .line 21
    .line 22
    return p0

    .line 23
    :pswitch_0
    const/4 p0, 0x5

    .line 24
    return p0

    .line 25
    :pswitch_1
    const/16 p0, 0x8

    .line 26
    .line 27
    return p0

    .line 28
    :pswitch_2
    const/4 p0, 0x7

    .line 29
    return p0

    .line 30
    :pswitch_3
    const/16 p0, 0x10

    .line 31
    .line 32
    return p0

    .line 33
    :pswitch_4
    return v2

    .line 34
    :pswitch_5
    const/16 p0, 0xa

    .line 35
    .line 36
    return p0

    .line 37
    :pswitch_6
    const/16 p0, 0x9

    .line 38
    .line 39
    return p0

    .line 40
    :pswitch_7
    const/16 p0, 0x12

    .line 41
    .line 42
    return p0

    .line 43
    :pswitch_8
    const/4 p0, 0x3

    .line 44
    return p0

    .line 45
    :pswitch_9
    const/4 p0, 0x2

    .line 46
    return p0

    .line 47
    :pswitch_a
    const/16 p0, 0x11

    .line 48
    .line 49
    return p0

    .line 50
    :pswitch_b
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :pswitch_c
    const/4 p0, 0x0

    .line 53
    return p0

    .line 54
    :pswitch_d
    const/16 p0, 0xe

    .line 55
    .line 56
    return p0

    .line 57
    :pswitch_e
    const/16 p0, 0xd

    .line 58
    .line 59
    return p0

    .line 60
    :pswitch_f
    const/16 p0, 0xc

    .line 61
    .line 62
    return p0

    .line 63
    :pswitch_10
    const/16 p0, 0xb

    .line 64
    .line 65
    return p0

    .line 66
    :cond_0
    return v2

    .line 67
    :cond_1
    :pswitch_11
    const/4 p0, 0x6

    .line 68
    return p0

    .line 69
    :cond_2
    :pswitch_12
    return v0

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_11
        :pswitch_12
        :pswitch_0
    .end packed-switch
.end method

.method private handleJoystickAxisEvent(IIF)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/input/InputEventRunnable;->setJoystickAxisEvent(IIF)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private handleJoystickButtonEvent(IIZ)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/input/InputEventRunnable;->setJoystickButtonEvent(IIZ)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private handleJoystickConnectionChangedEvent(IZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/input/InputEventRunnable;->setJoystickConnectionChangedEvent(IZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private handleJoystickHatEvent(III)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/input/InputEventRunnable;->setJoystickHatEvent(III)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private isKeyEventGameDevice(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x301

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const v0, 0x1000010

    .line 8
    .line 9
    .line 10
    and-int v2, p1, v0

    .line 11
    .line 12
    if-eq v2, v0, :cond_2

    .line 13
    .line 14
    and-int/lit16 v0, p1, 0x201

    .line 15
    .line 16
    const/16 v2, 0x201

    .line 17
    .line 18
    if-eq v0, v2, :cond_2

    .line 19
    .line 20
    const/16 v0, 0x401

    .line 21
    .line 22
    and-int/2addr p1, v0

    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v1

    .line 27
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 28
    return p1
.end method

.method public static isMouseEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventToolType(Landroid/view/MotionEvent;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, v2, :cond_6

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v3, :cond_5

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    if-eq v0, v3, :cond_5

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    if-eq v0, v3, :cond_5

    .line 21
    .line 22
    and-int/lit16 v0, p0, 0x2002

    .line 23
    .line 24
    const/16 v3, 0x2002

    .line 25
    .line 26
    if-eq v0, v3, :cond_1

    .line 27
    .line 28
    and-int/lit16 v0, p0, 0x5002

    .line 29
    .line 30
    const/16 v3, 0x4002

    .line 31
    .line 32
    if-ne v0, v3, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    move v0, v2

    .line 38
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    .line 40
    const/16 v4, 0x1a

    .line 41
    .line 42
    if-lt v3, v4, :cond_4

    .line 43
    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    const v0, 0x20004

    .line 47
    .line 48
    .line 49
    and-int/2addr p0, v0

    .line 50
    if-ne p0, v0, :cond_2

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    return v1

    .line 54
    :cond_3
    :goto_2
    return v2

    .line 55
    :cond_4
    return v0

    .line 56
    :cond_5
    return v2

    .line 57
    :cond_6
    return v1
.end method

.method private shouldDispatchInputToRenderThread()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->shouldDispatchInputToRenderThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private updateCachedRotation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->windowManager:Landroid/view/WindowManager;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->cachedRotation:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public canCapturePointer()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->lastSeenToolType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->lastSeenToolType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 22
    return v0
.end method

.method public disableScrollDeadzone(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godotGestureHandler:Lorg/godotengine/godot/input/GodotGestureHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->setScrollDeadzoneDisabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enableHapticFeedback(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godotGestureHandler:Lorg/godotengine/godot/input/GodotGestureHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->setHapticFeedbackEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enableLongPress(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->gestureDetector:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enablePanningAndScalingGestures(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godotGestureHandler:Lorg/godotengine/godot/input/GodotGestureHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->setPanningAndScalingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public handleKeyEvent(IIIZZ)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    move v1, p1

    .line 9
    move v2, p2

    .line 10
    move v3, p3

    .line 11
    move v4, p4

    .line 12
    move v5, p5

    .line 13
    invoke-virtual/range {v0 .. v5}, Lorg/godotengine/godot/input/InputEventRunnable;->setKeyEvent(IIIZZ)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public handleMagnifyEvent(FFF)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/input/InputEventRunnable;->setMagnifyEvent(FFF)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;IZ)Z

    move-result p1

    return p1
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;IZ)Z
    .locals 1

    .line 3
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->isMouseEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;IZ)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/godotengine/godot/input/GodotInputHandler;->handleTouchEvent(Landroid/view/MotionEvent;IZ)Z

    move-result p1

    return p1
.end method

.method public handleMouseEvent(IIFFFFZZFFF)Z
    .locals 13

    .line 17
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v12, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v12, :cond_1

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    move p2, v12

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    if-eq p1, v12, :cond_4

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_4

    packed-switch p1, :pswitch_data_0

    return v1

    :cond_4
    :pswitch_0
    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 18
    invoke-virtual/range {v0 .. v11}, Lorg/godotengine/godot/input/InputEventRunnable;->setMouseEvent(IIFFFFZZFFF)V

    .line 19
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    return v12

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handleMouseEvent(IZ)Z
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v8, p2

    .line 16
    invoke-virtual/range {v0 .. v11}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(IIFFFFZZFFF)Z

    move-result p1

    return p1
.end method

.method public handleMouseEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1
.end method

.method public handleMouseEvent(Landroid/view/MotionEvent;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;IZ)Z

    move-result p1

    return p1
.end method

.method public handleMouseEvent(Landroid/view/MotionEvent;IIZ)Z
    .locals 12

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v9

    const/high16 v0, 0x400000

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    const/16 v1, 0x1a

    if-eqz v0, :cond_1

    .line 8
    iget v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->rotaryInputAxis:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    :goto_0
    move v5, v0

    move v6, v2

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    move v6, v0

    move v5, v2

    goto :goto_1

    :cond_1
    const/16 v0, 0x9

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/16 v0, 0xa

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_0

    .line 13
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    const v0, 0x20004

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    :goto_2
    move v8, v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 15
    :goto_3
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventTiltX(Landroid/view/MotionEvent;)F

    move-result v10

    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventTiltY(Landroid/view/MotionEvent;)F

    move-result v11

    move-object v0, p0

    move v1, p2

    move v2, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v11}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(IIFFFFZZFFF)Z

    move-result p1

    return p1
.end method

.method public handleMouseEvent(Landroid/view/MotionEvent;IZ)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;IIZ)Z

    move-result p1

    return p1
.end method

.method public handlePanEvent(FFFF)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/godotengine/godot/input/InputEventRunnable;->setPanEvent(FFFF)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->handleTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->handleTouchEvent(Landroid/view/MotionEvent;IZ)Z

    move-result p1

    return p1
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;IZ)Z
    .locals 4

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    const/4 v3, 0x5

    if-eq p2, v3, :cond_2

    const/4 v3, 0x6

    if-eq p2, v3, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/input/InputEventRunnable;->setTouchEvent(Landroid/view/MotionEvent;IZ)V

    .line 6
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    return v1
.end method

.method public hasHardwareKeyboard()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->hasHardwareKeyboardConfig:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mHardwareKeyboardIds:Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public initInputDevices()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget v3, v0, v2

    .line 12
    .line 13
    iget-object v4, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mInputManager:Landroid/hardware/input/InputManager;

    .line 14
    .line 15
    invoke-virtual {v4, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v3}, Lorg/godotengine/godot/input/GodotInputHandler;->onInputDeviceAdded(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/input/GodotInputHandler;->updateCachedRotation()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget p1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 10
    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-boolean p1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->hasHardwareKeyboardConfig:Z

    .line 16
    .line 17
    if-eq p1, v1, :cond_1

    .line 18
    .line 19
    iput-boolean v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->hasHardwareKeyboardConfig:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/godotengine/godot/input/GodotInputHandler;->hasHardwareKeyboard()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p1}, Lorg/godotengine/godot/GodotLib;->hardwareKeyboardConnected(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->lastSeenToolType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventToolType(Landroid/view/MotionEvent;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 8
    .line 9
    .line 10
    const v0, 0x1000010

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_7

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x2

    .line 25
    if-ne v0, v2, :cond_7

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-ltz v2, :cond_6

    .line 39
    .line 40
    iget-object v2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iget-object v4, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoysticksDevices:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lorg/godotengine/godot/input/Joystick;

    .line 53
    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    return v1

    .line 57
    :cond_0
    :goto_0
    iget-object v4, v0, Lorg/godotengine/godot/input/Joystick;->axes:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-ge v3, v4, :cond_3

    .line 64
    .line 65
    iget-object v4, v0, Lorg/godotengine/godot/input/Joystick;->axes:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    iget-object v6, v0, Lorg/godotengine/godot/input/Joystick;->axesValues:Landroid/util/SparseArray;

    .line 82
    .line 83
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-ltz v6, :cond_1

    .line 88
    .line 89
    iget-object v6, v0, Lorg/godotengine/godot/input/Joystick;->axesValues:Landroid/util/SparseArray;

    .line 90
    .line 91
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Ljava/lang/Float;

    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    cmpl-float v6, v6, v5

    .line 102
    .line 103
    if-eqz v6, :cond_2

    .line 104
    .line 105
    :cond_1
    iget-object v6, v0, Lorg/godotengine/godot/input/Joystick;->axesValues:Landroid/util/SparseArray;

    .line 106
    .line 107
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, v2, v3, v5}, Lorg/godotengine/godot/input/GodotInputHandler;->handleJoystickAxisEvent(IIF)V

    .line 115
    .line 116
    .line 117
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    iget-boolean v3, v0, Lorg/godotengine/godot/input/Joystick;->hasAxisHat:Z

    .line 121
    .line 122
    if-eqz v3, :cond_5

    .line 123
    .line 124
    const/16 v3, 0xf

    .line 125
    .line 126
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    const/16 v4, 0x10

    .line 135
    .line 136
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iget v4, v0, Lorg/godotengine/godot/input/Joystick;->hatX:I

    .line 145
    .line 146
    if-ne v4, v3, :cond_4

    .line 147
    .line 148
    iget v4, v0, Lorg/godotengine/godot/input/Joystick;->hatY:I

    .line 149
    .line 150
    if-eq v4, p1, :cond_5

    .line 151
    .line 152
    :cond_4
    iput v3, v0, Lorg/godotengine/godot/input/Joystick;->hatX:I

    .line 153
    .line 154
    iput p1, v0, Lorg/godotengine/godot/input/Joystick;->hatY:I

    .line 155
    .line 156
    invoke-direct {p0, v2, v3, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleJoystickHatEvent(III)V

    .line 157
    .line 158
    .line 159
    :cond_5
    return v1

    .line 160
    :cond_6
    return v3

    .line 161
    :cond_7
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->gestureDetector:Landroid/view/GestureDetector;

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_8

    .line 168
    .line 169
    return v1

    .line 170
    :cond_8
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godotGestureHandler:Lorg/godotengine/godot/input/GodotGestureHandler;

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_9

    .line 177
    .line 178
    return v1

    .line 179
    :cond_9
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    return p1
.end method

.method public onInputDeviceAdded(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mInputManager:Landroid/hardware/input/InputManager;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v2, 0x1d

    .line 22
    .line 23
    if-lt v1, v2, :cond_2

    .line 24
    .line 25
    const/16 v1, 0x101

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-static {v0}, Landroidx/core/view/accessibility/b;->q(Landroid/view/InputDevice;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/InputDevice;->getKeyboardType()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x2

    .line 44
    if-ne v1, v2, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mHardwareKeyboardIds:Ljava/util/HashSet;

    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_2
    const/16 v1, 0x401

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const v3, 0x1000010

    .line 62
    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    :goto_0
    return-void

    .line 73
    :cond_3
    sget-object v2, Lorg/godotengine/godot/input/GodotInputHandler;->JOYPAD_IGNORE_LIST:[Ljava/lang/String;

    .line 74
    .line 75
    array-length v4, v2

    .line 76
    const/4 v5, 0x0

    .line 77
    move v6, v5

    .line 78
    :goto_1
    if-ge v6, v4, :cond_5

    .line 79
    .line 80
    aget-object v7, v2, v6

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_4

    .line 91
    .line 92
    sget-object p1, Lorg/godotengine/godot/input/GodotInputHandler;->TAG:Ljava/lang/String;

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v2, "=== Input Device ignored: "

    .line 97
    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    invoke-direct {p0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->assignJoystickIdNumber(I)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    new-instance v4, Lorg/godotengine/godot/input/Joystick;

    .line 124
    .line 125
    invoke-direct {v4}, Lorg/godotengine/godot/input/Joystick;-><init>()V

    .line 126
    .line 127
    .line 128
    iput p1, v4, Lorg/godotengine/godot/input/Joystick;->device_id:I

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    iput-object v6, v4, Lorg/godotengine/godot/input/Joystick;->name:Ljava/lang/String;

    .line 135
    .line 136
    sget-object v6, Lorg/godotengine/godot/input/GodotInputHandler;->TAG:Ljava/lang/String;

    .line 137
    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v8, "=== New Input Device: "

    .line 141
    .line 142
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v8, v4, Lorg/godotengine/godot/input/Joystick;->name:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    new-instance v6, Ljava/util/HashSet;

    .line 158
    .line 159
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    const/4 v8, 0x1

    .line 175
    if-eqz v7, :cond_a

    .line 176
    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    check-cast v7, Landroid/view/InputDevice$MotionRange;

    .line 182
    .line 183
    invoke-virtual {v7, v3}, Landroid/view/InputDevice$MotionRange;->isFromSource(I)Z

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    invoke-virtual {v7, v1}, Landroid/view/InputDevice$MotionRange;->isFromSource(I)Z

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-nez v9, :cond_6

    .line 192
    .line 193
    if-nez v10, :cond_6

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_6
    invoke-virtual {v7}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    const/16 v9, 0xf

    .line 201
    .line 202
    if-eq v7, v9, :cond_9

    .line 203
    .line 204
    const/16 v9, 0x10

    .line 205
    .line 206
    if-ne v7, v9, :cond_7

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    if-nez v8, :cond_8

    .line 218
    .line 219
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    iget-object v8, v4, Lorg/godotengine/godot/input/Joystick;->axes:Ljava/util/List;

    .line 227
    .line 228
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_8
    sget-object v8, Lorg/godotengine/godot/input/GodotInputHandler;->TAG:Ljava/lang/String;

    .line 237
    .line 238
    new-instance v9, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v10, " - DUPLICATE AXIS VALUE IN LIST: "

    .line 241
    .line 242
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_9
    :goto_3
    iput-boolean v8, v4, Lorg/godotengine/godot/input/Joystick;->hasAxisHat:Z

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_a
    iget-object v0, v4, Lorg/godotengine/godot/input/Joystick;->axes:Ljava/util/List;

    .line 260
    .line 261
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 262
    .line 263
    .line 264
    :goto_4
    iget-object v0, v4, Lorg/godotengine/godot/input/Joystick;->axes:Ljava/util/List;

    .line 265
    .line 266
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-ge v5, v0, :cond_b

    .line 271
    .line 272
    sget-object v0, Lorg/godotengine/godot/input/GodotInputHandler;->TAG:Ljava/lang/String;

    .line 273
    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v3, " - Mapping Android axis "

    .line 277
    .line 278
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v3, v4, Lorg/godotengine/godot/input/Joystick;->axes:Ljava/util/List;

    .line 282
    .line 283
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v3, " to Godot axis "

    .line 291
    .line 292
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    add-int/lit8 v5, v5, 0x1

    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_b
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoysticksDevices:Landroid/util/SparseArray;

    .line 309
    .line 310
    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    iget-object p1, v4, Lorg/godotengine/godot/input/Joystick;->name:Ljava/lang/String;

    .line 314
    .line 315
    invoke-direct {p0, v2, v8, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleJoystickConnectionChangedEvent(IZLjava/lang/String;)V

    .line 316
    .line 317
    .line 318
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onInputDeviceRemoved(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onInputDeviceAdded(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mHardwareKeyboardIds:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoysticksDevices:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    const-string v1, ""

    .line 37
    .line 38
    invoke-direct {p0, v0, p1, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleJoystickConnectionChangedEvent(IZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->isKeyEventGameDevice(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-lez p2, :cond_0

    .line 21
    .line 22
    return v2

    .line 23
    :cond_0
    iget-object p2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-ltz p2, :cond_1

    .line 30
    .line 31
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getGodotButton(I)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-direct {p0, v0, p2, v2}, Lorg/godotengine/godot/input/GodotInputHandler;->handleJoystickButtonEvent(IIZ)V

    .line 42
    .line 43
    .line 44
    :cond_1
    move-object v3, p0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayLabel()C

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-lez p2, :cond_3

    .line 63
    .line 64
    move v8, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 p2, 0x0

    .line 67
    move v8, p2

    .line 68
    :goto_0
    const/4 v7, 0x1

    .line 69
    move-object v3, p0

    .line 70
    invoke-virtual/range {v3 .. v8}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 71
    .line 72
    .line 73
    :goto_1
    const/16 p2, 0x18

    .line 74
    .line 75
    if-eq p1, p2, :cond_5

    .line 76
    .line 77
    const/16 p2, 0x19

    .line 78
    .line 79
    if-ne p1, p2, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    return v2

    .line 83
    :cond_5
    :goto_2
    iget-boolean p1, v3, Lorg/godotengine/godot/input/GodotInputHandler;->overrideVolumeButtons:Z

    .line 84
    .line 85
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->isKeyEventGameDevice(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ltz v0, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getGodotButton(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v3, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    .line 30
    .line 31
    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->get(I)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-direct {p0, p2, v0, v2}, Lorg/godotengine/godot/input/GodotInputHandler;->handleJoystickButtonEvent(IIZ)V

    .line 36
    .line 37
    .line 38
    :cond_0
    move-object v3, p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayLabel()C

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-lez p2, :cond_2

    .line 57
    .line 58
    move v8, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v8, v2

    .line 61
    :goto_0
    const/4 v7, 0x0

    .line 62
    move-object v3, p0

    .line 63
    invoke-virtual/range {v3 .. v8}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 64
    .line 65
    .line 66
    :goto_1
    const/16 p2, 0x18

    .line 67
    .line 68
    if-eq p1, p2, :cond_4

    .line 69
    .line 70
    const/16 p2, 0x19

    .line 71
    .line 72
    if-ne p1, p2, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    return v1

    .line 76
    :cond_4
    :goto_2
    iget-boolean p1, v3, Lorg/godotengine/godot/input/GodotInputHandler;->overrideVolumeButtons:Z

    .line 77
    .line 78
    return p1
.end method

.method public onPointerCaptureChange(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godotGestureHandler:Lorg/godotengine/godot/input/GodotGestureHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->onPointerCaptureChange(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x3

    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    iget v3, p0, Lorg/godotengine/godot/input/GodotInputHandler;->cachedRotation:I

    .line 18
    .line 19
    const/4 v4, -0x1

    .line 20
    if-ne v3, v4, :cond_2

    .line 21
    .line 22
    invoke-direct {p0}, Lorg/godotengine/godot/input/GodotInputHandler;->updateCachedRotation()V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget v3, p0, Lorg/godotengine/godot/input/GodotInputHandler;->cachedRotation:I

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x2

    .line 29
    const/4 v6, 0x1

    .line 30
    if-eqz v3, :cond_6

    .line 31
    .line 32
    if-eq v3, v6, :cond_5

    .line 33
    .line 34
    if-eq v3, v5, :cond_4

    .line 35
    .line 36
    if-eq v3, v2, :cond_3

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    move v2, v0

    .line 40
    move v3, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    aget v2, v0, v6

    .line 43
    .line 44
    aget v3, v0, v4

    .line 45
    .line 46
    neg-float v3, v3

    .line 47
    aget v0, v0, v5

    .line 48
    .line 49
    :goto_0
    move v7, v2

    .line 50
    move v2, v0

    .line 51
    move v0, v7

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    aget v2, v0, v4

    .line 54
    .line 55
    neg-float v2, v2

    .line 56
    aget v3, v0, v6

    .line 57
    .line 58
    neg-float v3, v3

    .line 59
    aget v0, v0, v5

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_5
    aget v2, v0, v6

    .line 63
    .line 64
    neg-float v2, v2

    .line 65
    aget v3, v0, v4

    .line 66
    .line 67
    aget v0, v0, v5

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_6
    aget v2, v0, v4

    .line 71
    .line 72
    aget v3, v0, v6

    .line 73
    .line 74
    aget v0, v0, v5

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :goto_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-virtual {v1, p1, v0, v3, v2}, Lorg/godotengine/godot/input/InputEventRunnable;->setSensorEvent(IFFF)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godot:Lorg/godotengine/godot/Godot;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Lorg/godotengine/godot/Godot;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    :cond_7
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->lastSeenToolType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventToolType(Landroid/view/MotionEvent;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->gestureDetector:Landroid/view/GestureDetector;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godotGestureHandler:Lorg/godotengine/godot/input/GodotGestureHandler;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v2, 0x2

    .line 39
    if-ne v0, v2, :cond_2

    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->isMouseEvent(Landroid/view/MotionEvent;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1

    .line 53
    :cond_3
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1
.end method

.method public performHapticFeedback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godot:Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getRenderView()Lorg/godotengine/godot/GodotRenderView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setOverrideVolumeButtons(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->overrideVolumeButtons:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRotaryInputAxis(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->rotaryInputAxis:I

    .line 2
    .line 3
    return-void
.end method
