.class public Lcom/hatkid/mkxpz/gamepad/Gamepad;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;,
        Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDPad:Lcom/hatkid/mkxpz/gamepad/GamepadDPad;

.field private final mDynamicButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;",
            ">;"
        }
    .end annotation
.end field

.field private mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

.field private mGamepadLayout:Landroid/widget/FrameLayout;

.field private mInvisible:Z

.field private mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

.field private mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mInvisible:Z

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mDynamicButtons:Ljava/util/List;

    .line 16
    .line 17
    new-instance v0, LS/u;

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    invoke-direct {v0, v1}, LS/u;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

    .line 24
    .line 25
    new-instance v0, LS/u;

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    invoke-direct {v0, v1}, LS/u;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic a(Lcom/hatkid/mkxpz/gamepad/Gamepad;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->lambda$createDPad$2(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private applyFirstRunDefaults()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "button_enabled_D-Pad"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "button_enabled_ENTER"

    .line 23
    .line 24
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "button_enabled_ESC"

    .line 29
    .line 30
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/hatkid/mkxpz/gamepad/Gamepad;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->lambda$createJoystick$4(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/hatkid/mkxpz/gamepad/Gamepad;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->lambda$createJoystick$5(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private convertShape(Ljava/lang/String;)Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    sparse-switch v0, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :sswitch_0
    const-string v0, "RECT_VERTICAL"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x2

    .line 23
    goto :goto_0

    .line 24
    :sswitch_1
    const-string v0, "RECT_HORIZONTAL"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :sswitch_2
    const-string v0, "SQUARE"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v1, 0x0

    .line 45
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    sget-object p1, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->CIRCLE:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_0
    sget-object p1, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->RECT_VERTICAL:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_1
    sget-object p1, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->RECT_HORIZONTAL:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_2
    sget-object p1, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->SQUARE:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 58
    .line 59
    return-object p1

    .line 60
    nop

    .line 61
    :sswitch_data_0
    .sparse-switch
        -0x6dc0b2e3 -> :sswitch_2
        0x4c22255f -> :sswitch_1
        0x56951771 -> :sswitch_0
    .end sparse-switch

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createDPad()V
    .locals 5

    .line 1
    new-instance v0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mDPad:Lcom/hatkid/mkxpz/gamepad/GamepadDPad;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    const-string v1, "button_pos_D-Pad_x"

    .line 13
    .line 14
    const v2, 0x3e19999a    # 0.15f

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    const-string v2, "button_pos_D-Pad_y"

    .line 24
    .line 25
    const v3, 0x3f4ccccd    # 0.8f

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v2, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->scale:Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    mul-int/lit16 v2, v2, 0xdc

    .line 41
    .line 42
    int-to-float v2, v2

    .line 43
    const/high16 v3, 0x42c80000    # 100.0f

    .line 44
    .line 45
    div-float/2addr v2, v3

    .line 46
    float-to-int v2, v2

    .line 47
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 48
    .line 49
    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    int-to-float v4, v4

    .line 59
    mul-float/2addr v0, v4

    .line 60
    iget-object v4, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    int-to-float v4, v4

    .line 67
    mul-float/2addr v1, v4

    .line 68
    iget-object v4, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mDPad:Lcom/hatkid/mkxpz/gamepad/GamepadDPad;

    .line 69
    .line 70
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mDPad:Lcom/hatkid/mkxpz/gamepad/GamepadDPad;

    .line 74
    .line 75
    int-to-float v2, v2

    .line 76
    const/high16 v4, 0x40000000    # 2.0f

    .line 77
    .line 78
    div-float/2addr v2, v4

    .line 79
    sub-float/2addr v0, v2

    .line 80
    invoke-virtual {v3, v0}, Landroid/view/View;->setX(F)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mDPad:Lcom/hatkid/mkxpz/gamepad/GamepadDPad;

    .line 84
    .line 85
    sub-float/2addr v1, v2

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mDPad:Lcom/hatkid/mkxpz/gamepad/GamepadDPad;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 92
    .line 93
    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->diagonalMovement:Ljava/lang/Boolean;

    .line 94
    .line 95
    iput-object v1, v0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->isDiagonal:Ljava/lang/Boolean;

    .line 96
    .line 97
    new-instance v1, Lcom/hatkid/mkxpz/gamepad/b;

    .line 98
    .line 99
    const/4 v2, 0x2

    .line 100
    invoke-direct {v1, p0, v2}, Lcom/hatkid/mkxpz/gamepad/b;-><init>(Lcom/hatkid/mkxpz/gamepad/Gamepad;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->setOnKeyDownListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mDPad:Lcom/hatkid/mkxpz/gamepad/GamepadDPad;

    .line 107
    .line 108
    new-instance v1, Lcom/hatkid/mkxpz/gamepad/b;

    .line 109
    .line 110
    const/4 v2, 0x3

    .line 111
    invoke-direct {v1, p0, v2}, Lcom/hatkid/mkxpz/gamepad/b;-><init>(Lcom/hatkid/mkxpz/gamepad/Gamepad;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->setOnKeyUpListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mDPad:Lcom/hatkid/mkxpz/gamepad/GamepadDPad;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method private createDynamicButton(Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/hatkid/mkxpz/gamepad/GamepadButtons;->INSTANCE:Lcom/hatkid/mkxpz/gamepad/GamepadButtons;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButtons;->getButton(Ljava/lang/String;)Lcom/hatkid/mkxpz/gamepad/ButtonConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "button_shape_"

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Lcom/hatkid/mkxpz/gamepad/ButtonConfig;->getDefaultShape()Lcom/hatkid/mkxpz/gamepad/ButtonShape;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-direct {p0, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->convertShape(Ljava/lang/String;)Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 47
    .line 48
    const-string v2, "button_custom_size_"

    .line 49
    .line 50
    invoke-static {v2, p1}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0}, Lcom/hatkid/mkxpz/gamepad/ButtonConfig;->getDefaultSize()F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iget-object v2, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 63
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v4, "button_border_width_"

    .line 67
    .line 68
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const/high16 v4, 0x40400000    # 3.0f

    .line 79
    .line 80
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    invoke-direct {p0, v7, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->getButtonSize(Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;F)[I

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    new-instance v2, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/hatkid/mkxpz/gamepad/ButtonConfig;->getDisplayText()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v0}, Lcom/hatkid/mkxpz/gamepad/ButtonConfig;->getSdlKeycode()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    move-object v4, p1

    .line 101
    invoke-direct/range {v2 .. v8}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;F)V

    .line 102
    .line 103
    .line 104
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/Gamepad$1;

    .line 105
    .line 106
    invoke-direct {p1, p0}, Lcom/hatkid/mkxpz/gamepad/Gamepad$1;-><init>(Lcom/hatkid/mkxpz/gamepad/Gamepad;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, p1}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->setOnButtonEventListener(Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$OnButtonEventListener;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 113
    .line 114
    const-string v3, "_x"

    .line 115
    .line 116
    const-string v5, "button_pos_"

    .line 117
    .line 118
    invoke-static {v5, v4, v3}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v0}, Lcom/hatkid/mkxpz/gamepad/ButtonConfig;->getDefaultX()F

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 131
    .line 132
    const-string v6, "_y"

    .line 133
    .line 134
    invoke-static {v5, v4, v6}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v0}, Lcom/hatkid/mkxpz/gamepad/ButtonConfig;->getDefaultY()F

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 147
    .line 148
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    int-to-float v3, v3

    .line 153
    mul-float/2addr p1, v3

    .line 154
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 155
    .line 156
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    int-to-float v3, v3

    .line 161
    mul-float/2addr v0, v3

    .line 162
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 163
    .line 164
    const/4 v4, 0x0

    .line 165
    aget v5, v1, v4

    .line 166
    .line 167
    const/4 v6, 0x1

    .line 168
    aget v7, v1, v6

    .line 169
    .line 170
    invoke-direct {v3, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    .line 175
    .line 176
    aget v3, v1, v4

    .line 177
    .line 178
    int-to-float v3, v3

    .line 179
    const/high16 v4, 0x40000000    # 2.0f

    .line 180
    .line 181
    div-float/2addr v3, v4

    .line 182
    sub-float/2addr p1, v3

    .line 183
    invoke-virtual {v2, p1}, Landroid/view/View;->setX(F)V

    .line 184
    .line 185
    .line 186
    aget p1, v1, v6

    .line 187
    .line 188
    int-to-float p1, p1

    .line 189
    div-float/2addr p1, v4

    .line 190
    sub-float/2addr v0, p1

    .line 191
    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mDynamicButtons:Ljava/util/List;

    .line 195
    .line 196
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 200
    .line 201
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    return-void
.end method

.method private createDynamicButtons()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mDynamicButtons:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    const-string v1, "button_enabled_D-Pad"

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->createDPad()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 43
    .line 44
    const-string v1, "button_enabled_Joystick"

    .line 45
    .line 46
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->createJoystick()V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->getEnabledButtons()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/String;

    .line 74
    .line 75
    const-string v2, "D-Pad"

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_3

    .line 82
    .line 83
    const-string v2, "Joystick"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_3

    .line 90
    .line 91
    invoke-direct {p0, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->createDynamicButton(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->scale:Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    int-to-float v1, v1

    .line 106
    invoke-static {v0, v1}, Lcom/hatkid/mkxpz/utils/ViewUtils;->resize(Landroid/view/View;F)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 112
    .line 113
    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->opacity:Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-static {v0, v1}, Lcom/hatkid/mkxpz/utils/ViewUtils;->changeOpacity(Landroid/view/ViewGroup;I)V

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_1
    return-void
.end method

.method private createJoystick()V
    .locals 6

    .line 1
    new-instance v0, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/hatkid/mkxpz/gamepad/GamepadJoystick;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    const-string v2, "button_pos_Joystick_x"

    .line 11
    .line 12
    const v3, 0x3e19999a    # 0.15f

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    const-string v3, "button_pos_Joystick_y"

    .line 22
    .line 23
    const v4, 0x3f4ccccd    # 0.8f

    .line 24
    .line 25
    .line 26
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->scale:Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    mul-int/lit16 v3, v3, 0xdc

    .line 39
    .line 40
    int-to-float v3, v3

    .line 41
    const/high16 v4, 0x42c80000    # 100.0f

    .line 42
    .line 43
    div-float/2addr v3, v4

    .line 44
    float-to-int v3, v3

    .line 45
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 46
    .line 47
    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 48
    .line 49
    .line 50
    iget-object v5, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    int-to-float v5, v5

    .line 57
    mul-float/2addr v1, v5

    .line 58
    iget-object v5, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    int-to-float v5, v5

    .line 65
    mul-float/2addr v2, v5

    .line 66
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    int-to-float v3, v3

    .line 70
    const/high16 v4, 0x40000000    # 2.0f

    .line 71
    .line 72
    div-float/2addr v3, v4

    .line 73
    sub-float/2addr v1, v3

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 75
    .line 76
    .line 77
    sub-float/2addr v2, v3

    .line 78
    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    .line 79
    .line 80
    .line 81
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 82
    .line 83
    iput-object v1, v0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->isDiagonal:Ljava/lang/Boolean;

    .line 84
    .line 85
    new-instance v1, Lcom/hatkid/mkxpz/gamepad/b;

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    invoke-direct {v1, p0, v2}, Lcom/hatkid/mkxpz/gamepad/b;-><init>(Lcom/hatkid/mkxpz/gamepad/Gamepad;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->setOnKeyDownListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Lcom/hatkid/mkxpz/gamepad/b;

    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    invoke-direct {v1, p0, v2}, Lcom/hatkid/mkxpz/gamepad/b;-><init>(Lcom/hatkid/mkxpz/gamepad/Gamepad;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->setOnKeyUpListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 104
    .line 105
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public static synthetic d(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->lambda$new$0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->lambda$new$1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/hatkid/mkxpz/gamepad/Gamepad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->createDynamicButtons()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/hatkid/mkxpz/gamepad/Gamepad;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->lambda$createDPad$3(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getButtonSize(Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;F)[I
    .locals 3

    .line 1
    sget-object v0, Lcom/hatkid/mkxpz/gamepad/Gamepad$2;->$SwitchMap$com$hatkid$mkxpz$gamepad$DynamicGamepadButton$ButtonShape:[I

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
    const/4 v0, 0x1

    .line 10
    const/16 v1, 0x8c

    .line 11
    .line 12
    const/16 v2, 0xd2

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    int-to-float p1, v1

    .line 20
    mul-float/2addr p1, p2

    .line 21
    float-to-int p1, p1

    .line 22
    filled-new-array {p1, p1}, [I

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    int-to-float p1, v1

    .line 28
    mul-float/2addr p1, p2

    .line 29
    float-to-int p1, p1

    .line 30
    int-to-float v0, v2

    .line 31
    mul-float/2addr v0, p2

    .line 32
    float-to-int p2, v0

    .line 33
    filled-new-array {p1, p2}, [I

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_1
    int-to-float p1, v2

    .line 39
    mul-float/2addr p1, p2

    .line 40
    float-to-int p1, p1

    .line 41
    int-to-float v0, v1

    .line 42
    mul-float/2addr v0, p2

    .line 43
    float-to-int p2, v0

    .line 44
    filled-new-array {p1, p2}, [I

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method private getEnabledButtons()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/hatkid/mkxpz/gamepad/GamepadButtons;->INSTANCE:Lcom/hatkid/mkxpz/gamepad/GamepadButtons;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/hatkid/mkxpz/gamepad/GamepadButtons;->getALL_BUTTONS()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/hatkid/mkxpz/gamepad/ButtonConfig;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v5, "button_enabled_"

    .line 33
    .line 34
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/hatkid/mkxpz/gamepad/ButtonConfig;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/hatkid/mkxpz/gamepad/ButtonConfig;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    return-object v0
.end method

.method public static bridge synthetic h(Lcom/hatkid/mkxpz/gamepad/Gamepad;)Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic i(Lcom/hatkid/mkxpz/gamepad/Gamepad;)Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic lambda$createDPad$2(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;->onKeyDown(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$createDPad$3(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;->onKeyUp(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$createJoystick$4(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;->onKeyDown(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$createJoystick$5(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;->onKeyUp(I)V

    .line 4
    .line 5
    .line 6
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


# virtual methods
.method public attachTo(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "gamepad_settings"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    new-instance v0, Landroid/widget/FrameLayout;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    invoke-direct {p1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 31
    .line 32
    .line 33
    iget-boolean p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mInvisible:Z

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->applyFirstRunDefaults()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    new-instance p2, LC1/g1;

    .line 54
    .line 55
    const/16 v0, 0xb

    .line 56
    .line 57
    invoke-direct {p2, v0, p0}, LC1/g1;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public hideView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 7
    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v1, 0x1f4

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public init(Lcom/hatkid/mkxpz/gamepad/GamepadConfig;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mInvisible:Z

    .line 4
    .line 5
    return-void
.end method

.method public processDPadEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    and-int/lit16 v0, v0, 0x201

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/16 v0, 0xf

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x10

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/high16 v2, -0x40800000    # -1.0f

    .line 30
    .line 31
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    const/16 v0, 0x13

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 45
    .line 46
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    const/16 v0, 0x14

    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_4

    .line 64
    .line 65
    const/16 v0, 0x15

    .line 66
    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    const/16 v0, 0x16

    .line 79
    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    goto :goto_0

    .line 85
    :cond_5
    const/4 v0, 0x0

    .line 86
    :goto_0
    if-nez v0, :cond_6

    .line 87
    .line 88
    :goto_1
    const/4 p1, 0x0

    .line 89
    return p1

    .line 90
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    const/4 v1, 0x1

    .line 95
    if-eqz p1, :cond_8

    .line 96
    .line 97
    if-eq p1, v1, :cond_7

    .line 98
    .line 99
    return v1

    .line 100
    :cond_7
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-interface {p1, v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;->onKeyUp(I)V

    .line 107
    .line 108
    .line 109
    return v1

    .line 110
    :cond_8
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-interface {p1, v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;->onKeyDown(I)V

    .line 117
    .line 118
    .line 119
    return v1
.end method

.method public processGamepadEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    and-int/lit16 v1, v0, 0x401

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    and-int/lit16 v0, v0, 0x201

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :goto_0
    const/4 p1, 0x0

    .line 21
    return p1

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v1, 0x1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    if-eq p1, v1, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;

    .line 37
    .line 38
    invoke-interface {p1, v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;->onKeyUp(I)V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_3
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

    .line 43
    .line 44
    invoke-interface {p1, v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;->onKeyDown(I)V

    .line 45
    .line 46
    .line 47
    return v1
.end method

.method public reload()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "gamepad_settings"

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 19
    .line 20
    const-string v2, "opacity"

    .line 21
    .line 22
    const/16 v3, 0x1e

    .line 23
    .line 24
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->opacity:Ljava/lang/Integer;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    const-string v2, "scale"

    .line 39
    .line 40
    const/16 v3, 0x64

    .line 41
    .line 42
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, v0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->scale:Ljava/lang/Integer;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 55
    .line 56
    const-string v2, "diagonal_movement"

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, v0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->diagonalMovement:Ljava/lang/Boolean;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 70
    .line 71
    new-instance v1, LC1/g1;

    .line 72
    .line 73
    const/16 v2, 0xb

    .line 74
    .line 75
    invoke-direct {v1, v2, p0}, LC1/g1;-><init>(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void
.end method

.method public reloadConfig()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 10
    .line 11
    const-string v2, "opacity"

    .line 12
    .line 13
    const/16 v3, 0x1e

    .line 14
    .line 15
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->opacity:Ljava/lang/Integer;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    const-string v2, "scale"

    .line 30
    .line 31
    const/16 v3, 0x64

    .line 32
    .line 33
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, v0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->scale:Ljava/lang/Integer;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mPrefs:Landroid/content/SharedPreferences;

    .line 46
    .line 47
    const-string v2, "diagonal_movement"

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, v0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->diagonalMovement:Ljava/lang/Boolean;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->scale:Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    int-to-float v1, v1

    .line 71
    invoke-static {v0, v1}, Lcom/hatkid/mkxpz/utils/ViewUtils;->resize(Landroid/view/View;F)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->opacity:Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-static {v0, v1}, Lcom/hatkid/mkxpz/utils/ViewUtils;->changeOpacity(Landroid/view/ViewGroup;I)V

    .line 85
    .line 86
    .line 87
    :cond_0
    return-void
.end method

.method public setOnKeyDownListener(Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnKeyUpListener(Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;

    .line 2
    .line 3
    return-void
.end method

.method public showView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 20
    .line 21
    .line 22
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v1, 0xfa

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
