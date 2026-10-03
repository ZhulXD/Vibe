.class public Lcom/hatkid/mkxpz/gamepad/GamepadDPad;
.super Lcom/hatkid/mkxpz/gamepad/GamepadButton;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field private static final DEFAULT_COLOR:I = -0x10bbbc

.field private static final MOVE_THROTTLE_MS:J = 0x32L


# instance fields
.field private angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field private arrowPaint:Landroid/graphics/Paint;

.field private basePaint:Landroid/graphics/Paint;

.field private borderPaint:Landroid/graphics/Paint;

.field private cachedOpacityPct:I

.field private cachedThemeColor:I

.field private final hBar:Landroid/graphics/RectF;

.field public isDiagonal:Ljava/lang/Boolean;

.field private lastMoveEventTime:J

.field private mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

.field private mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

.field private final vBar:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->isDiagonal:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->lastMoveEventTime:J

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->hBar:Landroid/graphics/RectF;

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->vBar:Landroid/graphics/RectF;

    .line 7
    new-instance p1, LS/u;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 8
    new-instance p1, LS/u;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 9
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->initPaints()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 12
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->isDiagonal:Ljava/lang/Boolean;

    const-wide/16 p1, 0x0

    .line 13
    iput-wide p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->lastMoveEventTime:J

    .line 14
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->hBar:Landroid/graphics/RectF;

    .line 15
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->vBar:Landroid/graphics/RectF;

    .line 16
    new-instance p1, LS/u;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 17
    new-instance p1, LS/u;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 18
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->initPaints()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 21
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->isDiagonal:Ljava/lang/Boolean;

    const-wide/16 p1, 0x0

    .line 22
    iput-wide p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->lastMoveEventTime:J

    .line 23
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->hBar:Landroid/graphics/RectF;

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->vBar:Landroid/graphics/RectF;

    .line 25
    new-instance p1, LS/u;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 26
    new-instance p1, LS/u;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 27
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->initPaints()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 30
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->isDiagonal:Ljava/lang/Boolean;

    const-wide/16 p1, 0x0

    .line 31
    iput-wide p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->lastMoveEventTime:J

    .line 32
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->hBar:Landroid/graphics/RectF;

    .line 33
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->vBar:Landroid/graphics/RectF;

    .line 34
    new-instance p1, LS/u;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 35
    new-instance p1, LS/u;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 36
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->initPaints()V

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

.method public static synthetic c(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->lambda$new$1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->lambda$new$0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private initPaints()V
    .locals 4

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
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->basePaint:Landroid/graphics/Paint;

    .line 8
    .line 9
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->basePaint:Landroid/graphics/Paint;

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
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->borderPaint:Landroid/graphics/Paint;

    .line 25
    .line 26
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->borderPaint:Landroid/graphics/Paint;

    .line 32
    .line 33
    const/high16 v3, 0x40800000    # 4.0f

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->borderPaint:Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Landroid/graphics/Paint;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->arrowPaint:Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->arrowPaint:Landroid/graphics/Paint;

    .line 54
    .line 55
    const/4 v2, -0x1

    .line 56
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->arrowPaint:Landroid/graphics/Paint;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x2

    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->loadButtonColor()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->cachedThemeColor:I

    .line 78
    .line 79
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->loadButtonOpacity()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->cachedOpacityPct:I

    .line 84
    .line 85
    return-void
.end method

.method private static synthetic lambda$new$0(I)V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic lambda$new$1(I)V
    .locals 0

    .line 1
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
    const-string v1, "button_color_D-Pad"

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
    const-string v1, "button_opacity_D-Pad"

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

.method private pressNewDirection(Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$1;->$SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/16 v0, 0x13

    .line 10
    .line 11
    const/16 v1, 0x16

    .line 12
    .line 13
    const/16 v2, 0x15

    .line 14
    .line 15
    const/16 v3, 0x14

    .line 16
    .line 17
    packed-switch p1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 22
    .line 23
    invoke-interface {p1, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 27
    .line 28
    invoke-interface {p1, v2}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 33
    .line 34
    invoke-interface {p1, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 38
    .line 39
    invoke-interface {p1, v1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_2
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 44
    .line 45
    invoke-interface {p1, v0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 49
    .line 50
    invoke-interface {p1, v2}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_3
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 55
    .line 56
    invoke-interface {p1, v0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 60
    .line 61
    invoke-interface {p1, v1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_4
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 66
    .line 67
    invoke-interface {p1, v1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_5
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 72
    .line 73
    invoke-interface {p1, v2}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_6
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 78
    .line 79
    invoke-interface {p1, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_7
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 84
    .line 85
    invoke-interface {p1, v0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
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

.method private processDirectionChange(Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->releaseCurrentDirection()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->pressNewDirection(Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private releaseCurrentDirection()V
    .locals 5

    .line 1
    sget-object v0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$1;->$SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/16 v1, 0x13

    .line 12
    .line 13
    const/16 v2, 0x16

    .line 14
    .line 15
    const/16 v3, 0x15

    .line 16
    .line 17
    const/16 v4, 0x14

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 24
    .line 25
    invoke-interface {v0, v4}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 29
    .line 30
    invoke-interface {v0, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 35
    .line 36
    invoke-interface {v0, v4}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 40
    .line 41
    invoke-interface {v0, v2}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 46
    .line 47
    invoke-interface {v0, v1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 51
    .line 52
    invoke-interface {v0, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_3
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 57
    .line 58
    invoke-interface {v0, v1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 62
    .line 63
    invoke-interface {v0, v2}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_4
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 68
    .line 69
    invoke-interface {v0, v2}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_5
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 74
    .line 75
    invoke-interface {v0, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_6
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 80
    .line 81
    invoke-interface {v0, v4}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_7
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 86
    .line 87
    invoke-interface {v0, v1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

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
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    const v4, 0x3eb33333    # 0.35f

    .line 29
    .line 30
    .line 31
    mul-float/2addr v4, v3

    .line 32
    const/high16 v5, 0x3f000000    # 0.5f

    .line 33
    .line 34
    mul-float/2addr v3, v5

    .line 35
    iget v5, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->cachedThemeColor:I

    .line 36
    .line 37
    iget v6, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->cachedOpacityPct:I

    .line 38
    .line 39
    int-to-float v6, v6

    .line 40
    const/high16 v7, 0x42c80000    # 100.0f

    .line 41
    .line 42
    div-float/2addr v6, v7

    .line 43
    const/high16 v7, 0x437f0000    # 255.0f

    .line 44
    .line 45
    mul-float/2addr v6, v7

    .line 46
    float-to-int v6, v6

    .line 47
    div-int/lit8 v7, v6, 0x3

    .line 48
    .line 49
    add-int/lit8 v6, v6, 0x3c

    .line 50
    .line 51
    const/16 v8, 0xff

    .line 52
    .line 53
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    iget-object v8, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->basePaint:Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    invoke-static {v7, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    .line 77
    .line 78
    iget-object v7, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->borderPaint:Landroid/graphics/Paint;

    .line 79
    .line 80
    invoke-direct {p0, v5, v6}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->adjustAlpha(II)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    .line 86
    .line 87
    iget-object v5, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->hBar:Landroid/graphics/RectF;

    .line 88
    .line 89
    sub-float v6, v0, v3

    .line 90
    .line 91
    div-float v1, v4, v1

    .line 92
    .line 93
    sub-float v7, v2, v1

    .line 94
    .line 95
    add-float v8, v0, v3

    .line 96
    .line 97
    add-float v9, v2, v1

    .line 98
    .line 99
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 100
    .line 101
    .line 102
    iget-object v5, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->hBar:Landroid/graphics/RectF;

    .line 103
    .line 104
    iget-object v6, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->basePaint:Landroid/graphics/Paint;

    .line 105
    .line 106
    const/high16 v7, 0x41700000    # 15.0f

    .line 107
    .line 108
    invoke-virtual {p1, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 109
    .line 110
    .line 111
    iget-object v5, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->hBar:Landroid/graphics/RectF;

    .line 112
    .line 113
    iget-object v6, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->borderPaint:Landroid/graphics/Paint;

    .line 114
    .line 115
    invoke-virtual {p1, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 116
    .line 117
    .line 118
    iget-object v5, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->vBar:Landroid/graphics/RectF;

    .line 119
    .line 120
    sub-float v6, v0, v1

    .line 121
    .line 122
    sub-float v8, v2, v3

    .line 123
    .line 124
    add-float/2addr v1, v0

    .line 125
    add-float/2addr v3, v2

    .line 126
    invoke-virtual {v5, v6, v8, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->vBar:Landroid/graphics/RectF;

    .line 130
    .line 131
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->basePaint:Landroid/graphics/Paint;

    .line 132
    .line 133
    invoke-virtual {p1, v1, v7, v7, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->vBar:Landroid/graphics/RectF;

    .line 137
    .line 138
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->borderPaint:Landroid/graphics/Paint;

    .line 139
    .line 140
    invoke-virtual {p1, v1, v7, v7, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 141
    .line 142
    .line 143
    const v1, 0x3ecccccd    # 0.4f

    .line 144
    .line 145
    .line 146
    mul-float/2addr v4, v1

    .line 147
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->basePaint:Landroid/graphics/Paint;

    .line 148
    .line 149
    invoke-virtual {p1, v0, v2, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->borderPaint:Landroid/graphics/Paint;

    .line 153
    .line 154
    invoke-virtual {p1, v0, v2, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

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
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    iget-wide v5, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->lastMoveEventTime:J

    .line 28
    .line 29
    sub-long v5, v3, v5

    .line 30
    .line 31
    const-wide/16 v7, 0x32

    .line 32
    .line 33
    cmp-long v1, v5, v7

    .line 34
    .line 35
    if-gez v1, :cond_0

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    return p1

    .line 39
    :cond_0
    iput-wide v3, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->lastMoveEventTime:J

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->isDiagonal:Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-static {v0, v1, v2, p1, v3}, Lcom/hatkid/mkxpz/utils/DirectionUtils;->getAngle(FFFFZ)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 60
    .line 61
    if-eq v0, p1, :cond_1

    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->processDirectionChange(Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_1
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->releaseCurrentDirection()V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->isDiagonal:Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-static {v0, v1, v2, p1, v3}, Lcom/hatkid/mkxpz/utils/DirectionUtils;->getAngle(FFFFZ)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 94
    .line 95
    if-eq v0, p1, :cond_1

    .line 96
    .line 97
    invoke-direct {p0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->processDirectionChange(Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 101
    return p1

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public refreshThemeColor()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->loadButtonColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->cachedThemeColor:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->loadButtonOpacity()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->cachedOpacityPct:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setOnKeyDownListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnKeyUpListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 2
    .line 3
    return-void
.end method
