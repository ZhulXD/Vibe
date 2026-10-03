.class public Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;
.super Landroid/view/View;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;,
        Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$OnButtonEventListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUTTON_COLOR:I = -0x10bbbc


# instance fields
.field private final borderWidth:F

.field private final buttonName:Ljava/lang/String;

.field private cachedOpacityPct:I

.field private cachedThemeColor:I

.field private final context:Landroid/content/Context;

.field private final displayText:Ljava/lang/String;

.field private eventListener:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$OnButtonEventListener;

.field private final fillPaint:Landroid/graphics/Paint;

.field private final glowPaint:Landroid/graphics/Paint;

.field private isPressed:Z

.field private final sdlKeycode:I

.field private final shape:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

.field private final strokePaint:Landroid/graphics/Paint;

.field private final tempRect:Landroid/graphics/RectF;

.field private final textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;F)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->isPressed:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->context:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->buttonName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->displayText:Ljava/lang/String;

    .line 12
    .line 13
    iput p4, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->sdlKeycode:I

    .line 14
    .line 15
    iput-object p5, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->shape:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 16
    .line 17
    iput p6, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->borderWidth:F

    .line 18
    .line 19
    new-instance p1, Landroid/graphics/RectF;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->tempRect:Landroid/graphics/RectF;

    .line 25
    .line 26
    new-instance p1, Landroid/graphics/Paint;

    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->fillPaint:Landroid/graphics/Paint;

    .line 33
    .line 34
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 35
    .line 36
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->strokePaint:Landroid/graphics/Paint;

    .line 51
    .line 52
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 53
    .line 54
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->glowPaint:Landroid/graphics/Paint;

    .line 69
    .line 70
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    .line 72
    .line 73
    const/high16 p3, 0x40000000    # 2.0f

    .line 74
    .line 75
    mul-float/2addr p6, p3

    .line 76
    invoke-virtual {p1, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Landroid/graphics/Paint;

    .line 83
    .line 84
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->textPaint:Landroid/graphics/Paint;

    .line 88
    .line 89
    const/4 p3, -0x1

    .line 90
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    .line 92
    .line 93
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 94
    .line 95
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 96
    .line 97
    .line 98
    const/high16 p3, 0x42200000    # 40.0f

    .line 99
    .line 100
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 101
    .line 102
    .line 103
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 104
    .line 105
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 109
    .line 110
    .line 111
    const/4 p1, 0x2

    .line 112
    const/4 p2, 0x0

    .line 113
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->loadButtonColor()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->cachedThemeColor:I

    .line 124
    .line 125
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->loadButtonOpacity()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->cachedOpacityPct:I

    .line 130
    .line 131
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->setupTouchListener()V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public static synthetic a(Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->lambda$setupTouchListener$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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

.method private drawCircle(Landroid/graphics/Canvas;FF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    .line 16
    div-float/2addr v0, v1

    .line 17
    const/high16 v1, 0x41200000    # 10.0f

    .line 18
    .line 19
    sub-float/2addr v0, v1

    .line 20
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->fillPaint:Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->strokePaint:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private drawRectHorizontal(Landroid/graphics/Canvas;FF)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    int-to-float p2, p2

    .line 6
    const/high16 v0, 0x40000000    # 2.0f

    .line 7
    .line 8
    div-float/2addr p2, v0

    .line 9
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->tempRect:Landroid/graphics/RectF;

    .line 10
    .line 11
    div-float/2addr p2, v0

    .line 12
    sub-float v0, p3, p2

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    const/high16 v3, 0x41200000    # 10.0f

    .line 20
    .line 21
    sub-float/2addr v2, v3

    .line 22
    add-float/2addr p3, p2

    .line 23
    invoke-virtual {v1, v3, v0, v2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->tempRect:Landroid/graphics/RectF;

    .line 27
    .line 28
    iget-object p3, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->fillPaint:Landroid/graphics/Paint;

    .line 29
    .line 30
    const/high16 v0, 0x41a00000    # 20.0f

    .line 31
    .line 32
    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->tempRect:Landroid/graphics/RectF;

    .line 36
    .line 37
    iget-object p3, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->strokePaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private drawRectVertical(Landroid/graphics/Canvas;FF)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    int-to-float p3, p3

    .line 6
    const/high16 v0, 0x40000000    # 2.0f

    .line 7
    .line 8
    div-float/2addr p3, v0

    .line 9
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->tempRect:Landroid/graphics/RectF;

    .line 10
    .line 11
    div-float/2addr p3, v0

    .line 12
    sub-float v0, p2, p3

    .line 13
    .line 14
    add-float/2addr p2, p3

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    int-to-float p3, p3

    .line 20
    const/high16 v2, 0x41200000    # 10.0f

    .line 21
    .line 22
    sub-float/2addr p3, v2

    .line 23
    invoke-virtual {v1, v0, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->tempRect:Landroid/graphics/RectF;

    .line 27
    .line 28
    iget-object p3, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->fillPaint:Landroid/graphics/Paint;

    .line 29
    .line 30
    const/high16 v0, 0x41a00000    # 20.0f

    .line 31
    .line 32
    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->tempRect:Landroid/graphics/RectF;

    .line 36
    .line 37
    iget-object p3, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->strokePaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private drawSquare(Landroid/graphics/Canvas;FF)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    const/high16 v1, 0x41a00000    # 20.0f

    .line 15
    .line 16
    sub-float/2addr v0, v1

    .line 17
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->tempRect:Landroid/graphics/RectF;

    .line 18
    .line 19
    const/high16 v2, 0x40000000    # 2.0f

    .line 20
    .line 21
    div-float/2addr v0, v2

    .line 22
    sub-float v2, p2, v0

    .line 23
    .line 24
    sub-float v3, p3, v0

    .line 25
    .line 26
    add-float/2addr p2, v0

    .line 27
    add-float/2addr p3, v0

    .line 28
    invoke-virtual {v1, v2, v3, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->tempRect:Landroid/graphics/RectF;

    .line 32
    .line 33
    iget-object p3, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->fillPaint:Landroid/graphics/Paint;

    .line 34
    .line 35
    const/high16 v0, 0x41700000    # 15.0f

    .line 36
    .line 37
    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->tempRect:Landroid/graphics/RectF;

    .line 41
    .line 42
    iget-object p3, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->strokePaint:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->textPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    neg-float v0, v0

    .line 8
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->textPaint:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-float/2addr v1, v0

    .line 15
    const/high16 v0, 0x40000000    # 2.0f

    .line 16
    .line 17
    div-float/2addr v1, v0

    .line 18
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->textPaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sub-float/2addr v1, v0

    .line 25
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->displayText:Ljava/lang/String;

    .line 26
    .line 27
    add-float/2addr p3, v1

    .line 28
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->textPaint:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private synthetic lambda$setupTouchListener$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eq p1, p2, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    iput-boolean v0, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->isPressed:Z

    .line 16
    .line 17
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->eventListener:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$OnButtonEventListener;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->sdlKeycode:I

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$OnButtonEventListener;->onButtonUp(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    .line 28
    .line 29
    return p2

    .line 30
    :cond_2
    iput-boolean p2, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->isPressed:Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->eventListener:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$OnButtonEventListener;

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    iget v0, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->sdlKeycode:I

    .line 37
    .line 38
    invoke-interface {p1, v0}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$OnButtonEventListener;->onButtonDown(I)V

    .line 39
    .line 40
    .line 41
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 42
    .line 43
    .line 44
    return p2
.end method

.method private loadButtonColor()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "gamepad_settings"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "button_color_"

    .line 13
    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v4, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->buttonName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const v4, -0x10bbbc

    .line 31
    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->buttonName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0

    .line 54
    :cond_0
    const-string v1, "button_theme"

    .line 55
    .line 56
    const-string v3, "default"

    .line 57
    .line 58
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const/4 v3, -0x1

    .line 70
    sparse-switch v1, :sswitch_data_0

    .line 71
    .line 72
    .line 73
    :goto_0
    move v2, v3

    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :sswitch_0
    const-string v1, "retro_yellow"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const/16 v2, 0xa

    .line 86
    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :sswitch_1
    const-string v1, "cyberpunk"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    const/16 v2, 0x9

    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :sswitch_2
    const-string v1, "neon_pink"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_3

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    const/16 v2, 0x8

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :sswitch_3
    const-string v1, "neon_blue"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_4

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    const/4 v2, 0x7

    .line 124
    goto :goto_1

    .line 125
    :sswitch_4
    const-string v1, "glass_light"

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_5

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    const/4 v2, 0x6

    .line 135
    goto :goto_1

    .line 136
    :sswitch_5
    const-string v1, "gradient_ocean"

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_6

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_6
    const/4 v2, 0x5

    .line 146
    goto :goto_1

    .line 147
    :sswitch_6
    const-string v1, "neon_green"

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_7

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_7
    const/4 v2, 0x4

    .line 157
    goto :goto_1

    .line 158
    :sswitch_7
    const-string v1, "gradient_sunset"

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_8

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_8
    const/4 v2, 0x3

    .line 168
    goto :goto_1

    .line 169
    :sswitch_8
    const-string v1, "retro_red"

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-nez v0, :cond_9

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_9
    const/4 v2, 0x2

    .line 179
    goto :goto_1

    .line 180
    :sswitch_9
    const-string v1, "glass_dark"

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-nez v0, :cond_a

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_a
    const/4 v2, 0x1

    .line 190
    goto :goto_1

    .line 191
    :sswitch_a
    const-string v1, "gradient_purple"

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_b

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_b
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 201
    .line 202
    .line 203
    return v4

    .line 204
    :pswitch_0
    const-string v0, "#FFD60A"

    .line 205
    .line 206
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    return v0

    .line 211
    :pswitch_1
    const-string v0, "#00FFF0"

    .line 212
    .line 213
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    return v0

    .line 218
    :pswitch_2
    const-string v0, "#FF1493"

    .line 219
    .line 220
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    return v0

    .line 225
    :pswitch_3
    const-string v0, "#00D4FF"

    .line 226
    .line 227
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    return v0

    .line 232
    :pswitch_4
    const-string v0, "#FFFFFF"

    .line 233
    .line 234
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    return v0

    .line 239
    :pswitch_5
    const-string v0, "#00A8CC"

    .line 240
    .line 241
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    return v0

    .line 246
    :pswitch_6
    const-string v0, "#39FF14"

    .line 247
    .line 248
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    return v0

    .line 253
    :pswitch_7
    const-string v0, "#FF6B35"

    .line 254
    .line 255
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    return v0

    .line 260
    :pswitch_8
    const-string v0, "#E63946"

    .line 261
    .line 262
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    return v0

    .line 267
    :pswitch_9
    const-string v0, "#404040"

    .line 268
    .line 269
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    return v0

    .line 274
    :pswitch_a
    const-string v0, "#C77DFF"

    .line 275
    .line 276
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    return v0

    .line 281
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
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
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
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "gamepad_settings"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "button_opacity_"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->buttonName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/16 v2, 0x3c

    .line 27
    .line 28
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method private setupTouchListener()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hatkid/mkxpz/gamepad/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0}, Lcom/hatkid/mkxpz/gamepad/a;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getButtonName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->buttonName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    int-to-float v0, v0

    .line 9
    const/high16 v1, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr v0, v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    div-float/2addr v2, v1

    .line 18
    iget v1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->cachedThemeColor:I

    .line 19
    .line 20
    iget v3, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->cachedOpacityPct:I

    .line 21
    .line 22
    int-to-float v3, v3

    .line 23
    const/high16 v4, 0x42c80000    # 100.0f

    .line 24
    .line 25
    div-float/2addr v3, v4

    .line 26
    const/high16 v4, 0x437f0000    # 255.0f

    .line 27
    .line 28
    mul-float/2addr v3, v4

    .line 29
    float-to-int v3, v3

    .line 30
    iget-boolean v4, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->isPressed:Z

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    const/16 v4, 0xe6

    .line 35
    .line 36
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    div-int/lit8 v4, v3, 0x3

    .line 42
    .line 43
    :goto_0
    iget-boolean v5, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->isPressed:Z

    .line 44
    .line 45
    const/16 v6, 0xff

    .line 46
    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    add-int/lit8 v3, v3, 0x3c

    .line 51
    .line 52
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    :goto_1
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->fillPaint:Landroid/graphics/Paint;

    .line 57
    .line 58
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    invoke-static {v4, v5, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->strokePaint:Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-direct {p0, v1, v6}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->adjustAlpha(II)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    .line 85
    .line 86
    sget-object v1, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$1;->$SwitchMap$com$hatkid$mkxpz$gamepad$DynamicGamepadButton$ButtonShape:[I

    .line 87
    .line 88
    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->shape:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    aget v1, v1, v3

    .line 95
    .line 96
    const/4 v3, 0x1

    .line 97
    if-eq v1, v3, :cond_5

    .line 98
    .line 99
    const/4 v3, 0x2

    .line 100
    if-eq v1, v3, :cond_4

    .line 101
    .line 102
    const/4 v3, 0x3

    .line 103
    if-eq v1, v3, :cond_3

    .line 104
    .line 105
    const/4 v3, 0x4

    .line 106
    if-eq v1, v3, :cond_2

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    invoke-direct {p0, p1, v0, v2}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->drawRectVertical(Landroid/graphics/Canvas;FF)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    invoke-direct {p0, p1, v0, v2}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->drawRectHorizontal(Landroid/graphics/Canvas;FF)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    invoke-direct {p0, p1, v0, v2}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->drawSquare(Landroid/graphics/Canvas;FF)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    invoke-direct {p0, p1, v0, v2}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->drawCircle(Landroid/graphics/Canvas;FF)V

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-direct {p0, p1, v0, v2}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->drawText(Landroid/graphics/Canvas;FF)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public refreshThemeColor()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->loadButtonColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->cachedThemeColor:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->loadButtonOpacity()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->cachedOpacityPct:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setOnButtonEventListener(Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$OnButtonEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->eventListener:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$OnButtonEventListener;

    .line 2
    .line 3
    return-void
.end method
