.class public Lcom/hatkid/mkxpz/gamepad/GamepadButton;
.super Landroid/widget/ImageView;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;,
        Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;
    }
.end annotation


# static fields
.field private static final EVENT_THROTTLE_MS:J = 0x10L


# instance fields
.field private lastEventTime:J

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mKey:I

.field private mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

.field private mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;

.field private final mTextColor:I

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x24

    .line 2
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    const/16 p1, 0xff

    .line 3
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextColor:I

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mKey:I

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->lastEventTime:J

    .line 7
    new-instance p1, LS/u;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 8
    new-instance p1, LS/u;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x24

    .line 10
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    const/16 p1, 0xff

    .line 11
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextColor:I

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mKey:I

    const-wide/16 p1, 0x0

    .line 14
    iput-wide p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->lastEventTime:J

    .line 15
    new-instance p1, LS/u;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 16
    new-instance p1, LS/u;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x24

    .line 18
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    const/16 p1, 0xff

    .line 19
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextColor:I

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mKey:I

    const-wide/16 p1, 0x0

    .line 22
    iput-wide p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->lastEventTime:J

    .line 23
    new-instance p1, LS/u;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 24
    new-instance p1, LS/u;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x24

    .line 26
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    const/16 p1, 0xff

    .line 27
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextColor:I

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mKey:I

    const-wide/16 p1, 0x0

    .line 30
    iput-wide p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->lastEventTime:J

    .line 31
    new-instance p1, LS/u;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 32
    new-instance p1, LS/u;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, LS/u;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->lambda$new$1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->lambda$new$0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getTextSizeScaled()I
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mText:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    .line 9
    .line 10
    iget v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mText:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    float-to-double v0, v0

    .line 30
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 31
    .line 32
    add-double/2addr v0, v4

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    long-to-int v0, v0

    .line 38
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_0
    int-to-double v6, v1

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    int-to-double v8, v1

    .line 51
    const-wide v10, 0x3feb333333333333L    # 0.85

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    mul-double/2addr v8, v10

    .line 57
    cmpl-double v1, v6, v8

    .line 58
    .line 59
    if-gtz v1, :cond_2

    .line 60
    .line 61
    int-to-double v0, v0

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    int-to-double v6, v6

    .line 67
    mul-double/2addr v6, v10

    .line 68
    cmpl-double v0, v0, v6

    .line 69
    .line 70
    if-lez v0, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iget v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    .line 74
    .line 75
    return v0

    .line 76
    :cond_2
    :goto_1
    iget v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    .line 77
    .line 78
    add-int/lit8 v0, v0, -0x2

    .line 79
    .line 80
    iput v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    .line 81
    .line 82
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    .line 83
    .line 84
    int-to-float v0, v0

    .line 85
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mText:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-virtual {v0, v1, v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    float-to-double v0, v0

    .line 101
    add-double/2addr v0, v4

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    long-to-int v0, v0

    .line 107
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    goto :goto_0
.end method

.method private initPaint()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextColor:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    .line 9
    .line 10
    const-string v1, "sans-serif"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    .line 21
    .line 22
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->getTextSizeScaled()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    int-to-float v1, v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    .line 36
    .line 37
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
.method public initBitmap()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Landroid/graphics/Canvas;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    int-to-double v2, v2

    .line 61
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    mul-double/2addr v2, v4

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    long-to-int v2, v2

    .line 72
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    int-to-double v6, v3

    .line 77
    mul-double/2addr v6, v4

    .line 78
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    long-to-int v3, v3

    .line 83
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    sub-int/2addr v4, v2

    .line 88
    div-int/lit8 v4, v4, 0x2

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    sub-int/2addr v5, v3

    .line 95
    div-int/lit8 v5, v5, 0x2

    .line 96
    .line 97
    iget-object v6, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    if-eqz v6, :cond_2

    .line 100
    .line 101
    add-int/2addr v2, v4

    .line 102
    add-int/2addr v3, v5

    .line 103
    invoke-virtual {v6, v4, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    iget-object v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mText:Ljava/lang/String;

    .line 112
    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initPaint()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    div-int/lit8 v2, v2, 0x2

    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    div-int/lit8 v3, v3, 0x2

    .line 129
    .line 130
    move v4, v2

    .line 131
    iget-object v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mText:Ljava/lang/String;

    .line 132
    .line 133
    move v5, v4

    .line 134
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    int-to-float v5, v5

    .line 139
    int-to-float v3, v3

    .line 140
    iget-object v6, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    .line 141
    .line 142
    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    const/high16 v7, 0x40000000    # 2.0f

    .line 147
    .line 148
    div-float/2addr v6, v7

    .line 149
    sub-float v6, v3, v6

    .line 150
    .line 151
    iget-object v7, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 155
    .line 156
    .line 157
    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    .line 159
    .line 160
    :cond_4
    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initBitmap()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initBitmap()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->lastEventTime:J

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
    const/4 v3, 0x1

    .line 14
    if-gez v2, :cond_0

    .line 15
    .line 16
    move v2, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    if-eq p1, v3, :cond_1

    .line 26
    .line 27
    const/4 v4, 0x3

    .line 28
    if-eq p1, v4, :cond_1

    .line 29
    .line 30
    const/4 v4, 0x5

    .line 31
    if-eq p1, v4, :cond_2

    .line 32
    .line 33
    const/4 v2, 0x6

    .line 34
    if-eq p1, v2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 43
    .line 44
    iget v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mKey:I

    .line 45
    .line 46
    invoke-interface {p1, v2}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 47
    .line 48
    .line 49
    iput-wide v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->lastEventTime:J

    .line 50
    .line 51
    return v3

    .line 52
    :cond_2
    if-nez v2, :cond_3

    .line 53
    .line 54
    const/high16 p1, 0x3f000000    # 0.5f

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 60
    .line 61
    iget v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mKey:I

    .line 62
    .line 63
    invoke-interface {p1, v2}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 64
    .line 65
    .line 66
    iput-wide v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->lastEventTime:J

    .line 67
    .line 68
    :cond_3
    :goto_1
    return v3
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initBitmap()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mText:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initBitmap()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setForegroundResource(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setForegroundText(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mText:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initBitmap()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setKey(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mKey:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initBitmap()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnKeyDownListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnKeyUpListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 2
    .line 3
    return-void
.end method
