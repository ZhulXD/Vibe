.class final Lorg/godotengine/godot/input/InputEventRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/input/InputEventRunnable$EventType;
    }
.end annotation


# static fields
.field private static final MAX_TOUCH_POINTER_COUNT:I = 0xa

.field private static final POOL:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lorg/godotengine/godot/input/InputEventRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "InputEventRunnable"


# instance fields
.field private actionPointerId:I

.field private axis:I

.field private button:I

.field private buttonsMask:I

.field private connected:Z

.field private final creationRank:I

.field private currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

.field private doubleTap:Z

.field private echo:Z

.field private eventAction:I

.field private eventDeltaX:F

.field private eventDeltaY:F

.field private eventPressed:Z

.field private eventX:F

.field private eventY:F

.field private hatX:I

.field private hatY:I

.field private joystickDevice:I

.field private joystickName:Ljava/lang/String;

.field private keyLabel:I

.field private magnifyFactor:F

.field private physicalKeycode:I

.field private pointerCount:I

.field private final positions:[F

.field private pressure:F

.field private rotatedValue0:F

.field private rotatedValue1:F

.field private rotatedValue2:F

.field private sensorType:I

.field private sourceMouseRelative:Z

.field private tiltX:F

.field private tiltY:F

.field private unicode:I

.field private value:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/godotengine/godot/input/InputEventRunnable$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/godotengine/godot/input/InputEventRunnable$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/godotengine/godot/input/InputEventRunnable;->POOL:Landroidx/core/util/Pools$Pool;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    const/16 v0, 0x3c

    .line 4
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    .line 5
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->creationRank:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/godotengine/godot/input/InputEventRunnable;-><init>(I)V

    return-void
.end method

.method public static obtain()Lorg/godotengine/godot/input/InputEventRunnable;
    .locals 3

    .line 1
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable;->POOL:Landroidx/core/util/Pools$Pool;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/godotengine/godot/input/InputEventRunnable;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lorg/godotengine/godot/input/InputEventRunnable;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "Input event pool is at capacity"

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object v0
.end method

.method private recycle()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 3
    .line 4
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable;->POOL:Landroidx/core/util/Pools$Pool;

    .line 5
    .line 6
    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "Invalid event type"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lorg/godotengine/godot/input/InputEventRunnable;->recycle()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :pswitch_0
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->sensorType:I

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-eq v0, v1, :cond_4

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    if-eq v0, v1, :cond_3

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    const/16 v1, 0x9

    .line 40
    .line 41
    if-eq v0, v1, :cond_1

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_1
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue0:F

    .line 46
    .line 47
    neg-float v0, v0

    .line 48
    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue1:F

    .line 49
    .line 50
    neg-float v1, v1

    .line 51
    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue2:F

    .line 52
    .line 53
    neg-float v2, v2

    .line 54
    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->gravity(FFF)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_2
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue0:F

    .line 60
    .line 61
    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue1:F

    .line 62
    .line 63
    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue2:F

    .line 64
    .line 65
    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->gyroscope(FFF)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_3
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue0:F

    .line 71
    .line 72
    neg-float v0, v0

    .line 73
    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue1:F

    .line 74
    .line 75
    neg-float v1, v1

    .line 76
    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue2:F

    .line 77
    .line 78
    neg-float v2, v2

    .line 79
    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->magnetometer(FFF)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :cond_4
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue0:F

    .line 85
    .line 86
    neg-float v0, v0

    .line 87
    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue1:F

    .line 88
    .line 89
    neg-float v1, v1

    .line 90
    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue2:F

    .line 91
    .line 92
    neg-float v2, v2

    .line 93
    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->accelerometer(FFF)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :pswitch_1
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->physicalKeycode:I

    .line 99
    .line 100
    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->unicode:I

    .line 101
    .line 102
    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->keyLabel:I

    .line 103
    .line 104
    iget-boolean v3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventPressed:Z

    .line 105
    .line 106
    iget-boolean v4, p0, Lorg/godotengine/godot/input/InputEventRunnable;->echo:Z

    .line 107
    .line 108
    invoke-static {v0, v1, v2, v3, v4}, Lorg/godotengine/godot/GodotLib;->key(IIIZZ)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_2
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    .line 113
    .line 114
    iget-boolean v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->connected:Z

    .line 115
    .line 116
    iget-object v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickName:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->joyconnectionchanged(IZLjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_3
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    .line 123
    .line 124
    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->hatX:I

    .line 125
    .line 126
    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->hatY:I

    .line 127
    .line 128
    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->joyhat(III)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :pswitch_4
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    .line 133
    .line 134
    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->axis:I

    .line 135
    .line 136
    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->value:F

    .line 137
    .line 138
    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->joyaxis(IIF)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :pswitch_5
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    .line 143
    .line 144
    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->button:I

    .line 145
    .line 146
    iget-boolean v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventPressed:Z

    .line 147
    .line 148
    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->joybutton(IIZ)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :pswitch_6
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventX:F

    .line 153
    .line 154
    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventY:F

    .line 155
    .line 156
    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaX:F

    .line 157
    .line 158
    iget v3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaY:F

    .line 159
    .line 160
    invoke-static {v0, v1, v2, v3}, Lorg/godotengine/godot/GodotLib;->pan(FFFF)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :pswitch_7
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventX:F

    .line 165
    .line 166
    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventY:F

    .line 167
    .line 168
    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->magnifyFactor:F

    .line 169
    .line 170
    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->magnify(FFF)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :pswitch_8
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventAction:I

    .line 175
    .line 176
    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->actionPointerId:I

    .line 177
    .line 178
    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->pointerCount:I

    .line 179
    .line 180
    iget-object v3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    .line 181
    .line 182
    iget-boolean v4, p0, Lorg/godotengine/godot/input/InputEventRunnable;->doubleTap:Z

    .line 183
    .line 184
    invoke-static {v0, v1, v2, v3, v4}, Lorg/godotengine/godot/GodotLib;->dispatchTouchEvent(III[FZ)V

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :pswitch_9
    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventAction:I

    .line 189
    .line 190
    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->buttonsMask:I

    .line 191
    .line 192
    iget v3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventX:F

    .line 193
    .line 194
    iget v4, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventY:F

    .line 195
    .line 196
    iget v5, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaX:F

    .line 197
    .line 198
    iget v6, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaY:F

    .line 199
    .line 200
    iget-boolean v7, p0, Lorg/godotengine/godot/input/InputEventRunnable;->doubleTap:Z

    .line 201
    .line 202
    iget-boolean v8, p0, Lorg/godotengine/godot/input/InputEventRunnable;->sourceMouseRelative:Z

    .line 203
    .line 204
    iget v9, p0, Lorg/godotengine/godot/input/InputEventRunnable;->pressure:F

    .line 205
    .line 206
    iget v10, p0, Lorg/godotengine/godot/input/InputEventRunnable;->tiltX:F

    .line 207
    .line 208
    iget v11, p0, Lorg/godotengine/godot/input/InputEventRunnable;->tiltY:F

    .line 209
    .line 210
    invoke-static/range {v1 .. v11}, Lorg/godotengine/godot/GodotLib;->dispatchMouseEvent(IIFFFFZZFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .line 212
    .line 213
    :goto_0
    invoke-direct {p0}, Lorg/godotengine/godot/input/InputEventRunnable;->recycle()V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :goto_1
    invoke-direct {p0}, Lorg/godotengine/godot/input/InputEventRunnable;->recycle()V

    .line 218
    .line 219
    .line 220
    throw v0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setJoystickAxisEvent(IIF)V
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_AXIS:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 4
    .line 5
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    .line 6
    .line 7
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->axis:I

    .line 8
    .line 9
    iput p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->value:F

    .line 10
    .line 11
    return-void
.end method

.method public setJoystickButtonEvent(IIZ)V
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_BUTTON:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 4
    .line 5
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    .line 6
    .line 7
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->button:I

    .line 8
    .line 9
    iput-boolean p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventPressed:Z

    .line 10
    .line 11
    return-void
.end method

.method public setJoystickConnectionChangedEvent(IZLjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_CONNECTION_CHANGED:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 4
    .line 5
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    .line 6
    .line 7
    iput-boolean p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->connected:Z

    .line 8
    .line 9
    iput-object p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickName:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public setJoystickHatEvent(III)V
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_HAT:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 4
    .line 5
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    .line 6
    .line 7
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->hatX:I

    .line 8
    .line 9
    iput p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->hatY:I

    .line 10
    .line 11
    return-void
.end method

.method public setKeyEvent(IIIZZ)V
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->KEY:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 4
    .line 5
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->physicalKeycode:I

    .line 6
    .line 7
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->unicode:I

    .line 8
    .line 9
    iput p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->keyLabel:I

    .line 10
    .line 11
    iput-boolean p4, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventPressed:Z

    .line 12
    .line 13
    iput-boolean p5, p0, Lorg/godotengine/godot/input/InputEventRunnable;->echo:Z

    .line 14
    .line 15
    return-void
.end method

.method public setMagnifyEvent(FFF)V
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->MAGNIFY:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 4
    .line 5
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventX:F

    .line 6
    .line 7
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventY:F

    .line 8
    .line 9
    iput p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->magnifyFactor:F

    .line 10
    .line 11
    return-void
.end method

.method public setMouseEvent(IIFFFFZZFFF)V
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->MOUSE:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 4
    .line 5
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventAction:I

    .line 6
    .line 7
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->buttonsMask:I

    .line 8
    .line 9
    iput p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventX:F

    .line 10
    .line 11
    iput p4, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventY:F

    .line 12
    .line 13
    iput p5, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaX:F

    .line 14
    .line 15
    iput p6, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaY:F

    .line 16
    .line 17
    iput-boolean p7, p0, Lorg/godotengine/godot/input/InputEventRunnable;->doubleTap:Z

    .line 18
    .line 19
    iput-boolean p8, p0, Lorg/godotengine/godot/input/InputEventRunnable;->sourceMouseRelative:Z

    .line 20
    .line 21
    iput p9, p0, Lorg/godotengine/godot/input/InputEventRunnable;->pressure:F

    .line 22
    .line 23
    iput p10, p0, Lorg/godotengine/godot/input/InputEventRunnable;->tiltX:F

    .line 24
    .line 25
    iput p11, p0, Lorg/godotengine/godot/input/InputEventRunnable;->tiltY:F

    .line 26
    .line 27
    return-void
.end method

.method public setPanEvent(FFFF)V
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->PAN:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 4
    .line 5
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventX:F

    .line 6
    .line 7
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventY:F

    .line 8
    .line 9
    iput p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaX:F

    .line 10
    .line 11
    iput p4, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaY:F

    .line 12
    .line 13
    return-void
.end method

.method public setSensorEvent(IFFF)V
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->SENSOR:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 4
    .line 5
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->sensorType:I

    .line 6
    .line 7
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue0:F

    .line 8
    .line 9
    iput p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue1:F

    .line 10
    .line 11
    iput p4, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue2:F

    .line 12
    .line 13
    return-void
.end method

.method public setTouchEvent(Landroid/view/MotionEvent;IZ)V
    .locals 3

    .line 1
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->TOUCH:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 4
    .line 5
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventAction:I

    .line 6
    .line 7
    iput-boolean p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->doubleTap:Z

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->actionPointerId:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    const/16 p3, 0xa

    .line 24
    .line 25
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->pointerCount:I

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    :goto_0
    iget p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->pointerCount:I

    .line 33
    .line 34
    if-ge p2, p3, :cond_0

    .line 35
    .line 36
    iget-object p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    .line 37
    .line 38
    mul-int/lit8 v0, p2, 0x6

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    int-to-float v1, v1

    .line 45
    aput v1, p3, v0

    .line 46
    .line 47
    iget-object p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    .line 48
    .line 49
    add-int/lit8 v1, v0, 0x1

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    aput v2, p3, v1

    .line 56
    .line 57
    iget-object p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    .line 58
    .line 59
    add-int/lit8 v1, v0, 0x2

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    aput v2, p3, v1

    .line 66
    .line 67
    iget-object p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    .line 68
    .line 69
    add-int/lit8 v1, v0, 0x3

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPressure(I)F

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    aput v2, p3, v1

    .line 76
    .line 77
    iget-object p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    .line 78
    .line 79
    add-int/lit8 v1, v0, 0x4

    .line 80
    .line 81
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventTiltX(Landroid/view/MotionEvent;)F

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    aput v2, p3, v1

    .line 86
    .line 87
    iget-object p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    .line 88
    .line 89
    add-int/lit8 v0, v0, 0x5

    .line 90
    .line 91
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventTiltY(Landroid/view/MotionEvent;)F

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    aput v1, p3, v0

    .line 96
    .line 97
    add-int/lit8 p2, p2, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method
