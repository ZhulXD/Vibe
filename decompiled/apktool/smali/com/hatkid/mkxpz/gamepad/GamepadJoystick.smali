.class public Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;
.super Lcom/hatkid/mkxpz/gamepad/GamepadDPad;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field private static final DEFAULT_COLOR:I = -0x10bbbc

.field private static final INVALIDATE_THROTTLE_MS:J = 0x10L


# instance fields
.field private basePaint:Landroid/graphics/Paint;

.field private borderPaint:Landroid/graphics/Paint;

.field private cachedOpacityPct:I

.field private cachedThemeColor:I

.field private isActive:Z

.field private joystickRadius:F

.field private joystickX:F

.field private joystickY:F

.field private knobBorderPaint:Landroid/graphics/Paint;

.field private knobPaint:Landroid/graphics/Paint;

.field private knobRadius:F

.field private lastInvalidateTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickX:F

    .line 3
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickY:F

    .line 4
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickRadius:F

    .line 5
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobRadius:F

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->isActive:Z

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->lastInvalidateTime:J

    .line 8
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickX:F

    .line 11
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickY:F

    .line 12
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickRadius:F

    .line 13
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobRadius:F

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->isActive:Z

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->lastInvalidateTime:J

    .line 16
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickX:F

    .line 19
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickY:F

    .line 20
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickRadius:F

    .line 21
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobRadius:F

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->isActive:Z

    const-wide/16 p1, 0x0

    .line 23
    iput-wide p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->lastInvalidateTime:J

    .line 24
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickX:F

    .line 27
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickY:F

    .line 28
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickRadius:F

    .line 29
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobRadius:F

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->isActive:Z

    const-wide/16 p1, 0x0

    .line 31
    iput-wide p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->lastInvalidateTime:J

    .line 32
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->init()V

    return-void
.end method

.method private adjustAlpha(II)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method private handleJoystickMove(FFFF)V
    .locals 5

    .line 1
    sub-float v0, p1, p3

    .line 2
    .line 3
    sub-float v1, p2, p4

    .line 4
    .line 5
    mul-float v2, v0, v0

    .line 6
    .line 7
    mul-float v3, v1, v1

    .line 8
    .line 9
    add-float/2addr v3, v2

    .line 10
    float-to-double v2, v3

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    double-to-float v2, v2

    .line 16
    iget v3, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickRadius:F

    .line 17
    .line 18
    iget v4, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobRadius:F

    .line 19
    .line 20
    sub-float/2addr v3, v4

    .line 21
    cmpl-float v2, v2, v3

    .line 22
    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    float-to-double p1, v1

    .line 26
    float-to-double v0, v0

    .line 27
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    double-to-float p1, p1

    .line 32
    float-to-double p1, p1

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    double-to-float v0, v0

    .line 38
    mul-float/2addr v0, v3

    .line 39
    add-float/2addr v0, p3

    .line 40
    iput v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickX:F

    .line 41
    .line 42
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    double-to-float p1, p1

    .line 47
    mul-float/2addr v3, p1

    .line 48
    add-float/2addr v3, p4

    .line 49
    iput v3, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickY:F

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickX:F

    .line 53
    .line 54
    iput p2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickY:F

    .line 55
    .line 56
    return-void
.end method

.method private init()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->basePaint:Landroid/graphics/Paint;

    .line 8
    .line 9
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->basePaint:Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobPaint:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobPaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobPaint:Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->borderPaint:Landroid/graphics/Paint;

    .line 46
    .line 47
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->borderPaint:Landroid/graphics/Paint;

    .line 53
    .line 54
    const/high16 v3, 0x40800000    # 4.0f

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->borderPaint:Landroid/graphics/Paint;

    .line 60
    .line 61
    const/16 v3, 0x96

    .line 62
    .line 63
    const/16 v4, 0xc8

    .line 64
    .line 65
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->borderPaint:Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobBorderPaint:Landroid/graphics/Paint;

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobBorderPaint:Landroid/graphics/Paint;

    .line 88
    .line 89
    const/high16 v2, 0x40400000    # 3.0f

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobBorderPaint:Landroid/graphics/Paint;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x2

    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 102
    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->loadButtonColor()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->cachedThemeColor:I

    .line 113
    .line 114
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->loadButtonOpacity()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->cachedOpacityPct:I

    .line 119
    .line 120
    return-void
.end method

.method private loadButtonColor()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "gamepad_settings"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "button_color_Joystick"

    .line 13
    .line 14
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const v4, -0x10bbbc

    .line 19
    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_0
    const-string v1, "button_theme"

    .line 29
    .line 30
    const-string v3, "default"

    .line 31
    .line 32
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v3, -0x1

    .line 44
    sparse-switch v1, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    :goto_0
    move v2, v3

    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :sswitch_0
    const-string v1, "retro_yellow"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/16 v2, 0xa

    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :sswitch_1
    const-string v1, "cyberpunk"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/16 v2, 0x9

    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :sswitch_2
    const-string v1, "neon_pink"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const/16 v2, 0x8

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :sswitch_3
    const-string v1, "neon_blue"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_4

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    const/4 v2, 0x7

    .line 98
    goto :goto_1

    .line 99
    :sswitch_4
    const-string v1, "glass_light"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_5

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    const/4 v2, 0x6

    .line 109
    goto :goto_1

    .line 110
    :sswitch_5
    const-string v1, "gradient_ocean"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_6

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    const/4 v2, 0x5

    .line 120
    goto :goto_1

    .line 121
    :sswitch_6
    const-string v1, "neon_green"

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_7

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    const/4 v2, 0x4

    .line 131
    goto :goto_1

    .line 132
    :sswitch_7
    const-string v1, "gradient_sunset"

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_8

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_8
    const/4 v2, 0x3

    .line 142
    goto :goto_1

    .line 143
    :sswitch_8
    const-string v1, "retro_red"

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_9

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_9
    const/4 v2, 0x2

    .line 153
    goto :goto_1

    .line 154
    :sswitch_9
    const-string v1, "glass_dark"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_a

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_a
    const/4 v2, 0x1

    .line 164
    goto :goto_1

    .line 165
    :sswitch_a
    const-string v1, "gradient_purple"

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_b

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_b
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 175
    .line 176
    .line 177
    return v4

    .line 178
    :pswitch_0
    const-string v0, "#FFD60A"

    .line 179
    .line 180
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    return v0

    .line 185
    :pswitch_1
    const-string v0, "#00FFF0"

    .line 186
    .line 187
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    return v0

    .line 192
    :pswitch_2
    const-string v0, "#FF1493"

    .line 193
    .line 194
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    return v0

    .line 199
    :pswitch_3
    const-string v0, "#00D4FF"

    .line 200
    .line 201
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    return v0

    .line 206
    :pswitch_4
    const-string v0, "#FFFFFF"

    .line 207
    .line 208
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    return v0

    .line 213
    :pswitch_5
    const-string v0, "#00A8CC"

    .line 214
    .line 215
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    return v0

    .line 220
    :pswitch_6
    const-string v0, "#39FF14"

    .line 221
    .line 222
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    return v0

    .line 227
    :pswitch_7
    const-string v0, "#FF6B35"

    .line 228
    .line 229
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    return v0

    .line 234
    :pswitch_8
    const-string v0, "#E63946"

    .line 235
    .line 236
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    return v0

    .line 241
    :pswitch_9
    const-string v0, "#404040"

    .line 242
    .line 243
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    return v0

    .line 248
    :pswitch_a
    const-string v0, "#C77DFF"

    .line 249
    .line 250
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    return v0

    .line 255
    :sswitch_data_0
    .sparse-switch
        -0x417e6855 -> :sswitch_a
        -0x402f11a7 -> :sswitch_9
        -0x3c8b7490 -> :sswitch_8
        -0x3c61a57b -> :sswitch_7
        -0x1be47ca6 -> :sswitch_6
        0x1ed4ef2f -> :sswitch_5
        0x3ac11293 -> :sswitch_4
        0x62301523 -> :sswitch_3
        0x6236663f -> :sswitch_2
        0x62dc6e5b -> :sswitch_1
        0x6365b135 -> :sswitch_0
    .end sparse-switch

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method

.method private loadButtonOpacity()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "gamepad_settings"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "button_opacity_Joystick"

    .line 13
    .line 14
    const/16 v2, 0x3c

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method private throttledInvalidate()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->lastInvalidateTime:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x10

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-ltz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->lastInvalidateTime:J

    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    div-float/2addr v0, v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    int-to-float v2, v2

    .line 14
    div-float/2addr v2, v1

    .line 15
    iget v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->cachedThemeColor:I

    .line 16
    .line 17
    iget v3, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->cachedOpacityPct:I

    .line 18
    .line 19
    int-to-float v3, v3

    .line 20
    const/high16 v4, 0x42c80000    # 100.0f

    .line 21
    .line 22
    div-float/2addr v3, v4

    .line 23
    const/high16 v4, 0x437f0000    # 255.0f

    .line 24
    .line 25
    mul-float/2addr v3, v4

    .line 26
    float-to-int v3, v3

    .line 27
    iget-boolean v4, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->isActive:Z

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    div-int/lit8 v4, v3, 0x2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    div-int/lit8 v4, v3, 0x4

    .line 35
    .line 36
    :goto_0
    add-int/lit8 v5, v3, 0x3c

    .line 37
    .line 38
    const/16 v6, 0xff

    .line 39
    .line 40
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget-object v7, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->basePaint:Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    invoke-static {v4, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    .line 64
    .line 65
    iget v4, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickRadius:F

    .line 66
    .line 67
    iget-object v7, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->basePaint:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {p1, v0, v2, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 70
    .line 71
    .line 72
    iget-object v4, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->borderPaint:Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-direct {p0, v1, v5}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->adjustAlpha(II)I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    .line 80
    .line 81
    iget v4, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickRadius:F

    .line 82
    .line 83
    iget-object v5, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->borderPaint:Landroid/graphics/Paint;

    .line 84
    .line 85
    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    .line 87
    .line 88
    iget-boolean v4, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->isActive:Z

    .line 89
    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobPaint:Landroid/graphics/Paint;

    .line 93
    .line 94
    add-int/lit8 v2, v3, 0x28

    .line 95
    .line 96
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-direct {p0, v1, v2}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->adjustAlpha(II)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    .line 106
    .line 107
    iget v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickX:F

    .line 108
    .line 109
    iget v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickY:F

    .line 110
    .line 111
    iget v4, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobRadius:F

    .line 112
    .line 113
    iget-object v5, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobPaint:Landroid/graphics/Paint;

    .line 114
    .line 115
    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobBorderPaint:Landroid/graphics/Paint;

    .line 119
    .line 120
    invoke-direct {p0, v1, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->adjustAlpha(II)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    .line 126
    .line 127
    iget v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickX:F

    .line 128
    .line 129
    iget v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickY:F

    .line 130
    .line 131
    iget v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobRadius:F

    .line 132
    .line 133
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobBorderPaint:Landroid/graphics/Paint;

    .line 134
    .line 135
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_1
    iget-object v4, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobPaint:Landroid/graphics/Paint;

    .line 140
    .line 141
    div-int/lit8 v3, v3, 0x2

    .line 142
    .line 143
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-static {v3, v5, v6, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    .line 161
    .line 162
    iget v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobRadius:F

    .line 163
    .line 164
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobPaint:Landroid/graphics/Paint;

    .line 165
    .line 166
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    int-to-float p3, p3

    .line 9
    const/high16 p4, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr p3, p4

    .line 12
    const/high16 v0, 0x41200000    # 10.0f

    .line 13
    .line 14
    sub-float/2addr p3, v0

    .line 15
    iput p3, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickRadius:F

    .line 16
    .line 17
    const/high16 v0, 0x40800000    # 4.0f

    .line 18
    .line 19
    div-float/2addr p3, v0

    .line 20
    iput p3, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->knobRadius:F

    .line 21
    .line 22
    int-to-float p1, p1

    .line 23
    div-float/2addr p1, p4

    .line 24
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickX:F

    .line 25
    .line 26
    int-to-float p1, p2

    .line 27
    div-float/2addr p1, p4

    .line 28
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickY:F

    .line 29
    .line 30
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    int-to-float v2, v2

    .line 14
    const/high16 v3, 0x40000000    # 2.0f

    .line 15
    .line 16
    div-float/2addr v2, v3

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    int-to-float v4, v4

    .line 22
    div-float/2addr v4, v3

    .line 23
    sub-float v3, v0, v2

    .line 24
    .line 25
    float-to-double v5, v3

    .line 26
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 27
    .line 28
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    sub-float v3, v1, v4

    .line 33
    .line 34
    float-to-double v9, v3

    .line 35
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 36
    .line 37
    .line 38
    move-result-wide v7

    .line 39
    add-double/2addr v7, v5

    .line 40
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    double-to-float v3, v5

    .line 45
    iget-boolean v5, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->isActive:Z

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    if-nez v5, :cond_0

    .line 49
    .line 50
    iget v5, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickRadius:F

    .line 51
    .line 52
    const/high16 v7, 0x42480000    # 50.0f

    .line 53
    .line 54
    add-float/2addr v5, v7

    .line 55
    cmpl-float v3, v3, v5

    .line 56
    .line 57
    if-lez v3, :cond_0

    .line 58
    .line 59
    return v6

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/4 v5, 0x1

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    if-eq v3, v5, :cond_3

    .line 68
    .line 69
    const/4 v7, 0x2

    .line 70
    if-eq v3, v7, :cond_1

    .line 71
    .line 72
    const/4 v0, 0x3

    .line 73
    if-eq v3, v0, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-boolean v3, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->isActive:Z

    .line 77
    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    invoke-direct {p0, v0, v1, v2, v4}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->handleJoystickMove(FFFF)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->throttledInvalidate()V

    .line 84
    .line 85
    .line 86
    invoke-super {p0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 87
    .line 88
    .line 89
    return v5

    .line 90
    :cond_2
    :goto_0
    return v6

    .line 91
    :cond_3
    iput-boolean v6, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->isActive:Z

    .line 92
    .line 93
    iput v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickX:F

    .line 94
    .line 95
    iput v4, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->joystickY:F

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 98
    .line 99
    .line 100
    invoke-super {p0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 101
    .line 102
    .line 103
    return v5

    .line 104
    :cond_4
    iput-boolean v5, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->isActive:Z

    .line 105
    .line 106
    invoke-direct {p0, v0, v1, v2, v4}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->handleJoystickMove(FFFF)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->throttledInvalidate()V

    .line 110
    .line 111
    .line 112
    invoke-super {p0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 113
    .line 114
    .line 115
    return v5
.end method

.method public refreshThemeColor()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->loadButtonColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->cachedThemeColor:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->loadButtonOpacity()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;->cachedOpacityPct:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
