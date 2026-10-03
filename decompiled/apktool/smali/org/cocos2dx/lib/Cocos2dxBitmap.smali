.class public final Lorg/cocos2dx/lib/Cocos2dxBitmap;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field private static final HORIZONTAL_ALIGN_CENTER:I = 0x3

.field private static final HORIZONTAL_ALIGN_LEFT:I = 0x1

.field private static final HORIZONTAL_ALIGN_RIGHT:I = 0x2

.field private static final VERTICAL_ALIGN_BOTTOM:I = 0x2

.field private static final VERTICAL_ALIGN_CENTER:I = 0x3

.field private static final VERTICAL_ALIGN_TOP:I = 0x1

.field private static sContext:Landroid/content/Context;


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

.method public static calculateShrinkTypeFace(Ljava/lang/String;IILandroid/text/Layout$Alignment;FLandroid/text/TextPaint;Z)Landroid/graphics/Typeface;
    .locals 12

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    move-object/from16 v3, p5

    .line 4
    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 12
    .line 13
    int-to-float v1, v1

    .line 14
    add-int/lit8 v2, p2, 0x1

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    const/high16 v9, 0x3f800000    # 1.0f

    .line 18
    .line 19
    add-float v4, v0, v9

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    if-nez p6, :cond_3

    .line 23
    .line 24
    :cond_1
    int-to-float p3, p1

    .line 25
    cmpl-float p3, v1, p3

    .line 26
    .line 27
    if-gtz p3, :cond_2

    .line 28
    .line 29
    int-to-float p3, p2

    .line 30
    cmpl-float p3, v2, p3

    .line 31
    .line 32
    if-lez p3, :cond_5

    .line 33
    .line 34
    :cond_2
    sub-float/2addr v4, v9

    .line 35
    invoke-static {p0, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    float-to-double v1, p3

    .line 40
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    double-to-int p3, v1

    .line 45
    int-to-float v1, p3

    .line 46
    float-to-int p3, v1

    .line 47
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {p0, p3, v4, v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getTextHeight(Ljava/lang/String;IFLandroid/graphics/Typeface;)I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    int-to-float v2, p3

    .line 56
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 57
    .line 58
    .line 59
    cmpg-float p3, v4, v10

    .line 60
    .line 61
    if-gtz p3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    :goto_0
    int-to-float v5, p2

    .line 68
    cmpl-float v2, v2, v5

    .line 69
    .line 70
    if-gtz v2, :cond_4

    .line 71
    .line 72
    int-to-float v2, p1

    .line 73
    cmpl-float v1, v1, v2

    .line 74
    .line 75
    if-lez v1, :cond_5

    .line 76
    .line 77
    :cond_4
    sub-float v11, v4, v9

    .line 78
    .line 79
    new-instance v1, Landroid/text/StaticLayout;

    .line 80
    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    const/high16 v6, 0x3f800000    # 1.0f

    .line 84
    .line 85
    move-object v2, p0

    .line 86
    move v4, p1

    .line 87
    move-object v5, p3

    .line 88
    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    int-to-float v2, v2

    .line 96
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineTop(I)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    int-to-float v1, v1

    .line 105
    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    .line 107
    .line 108
    cmpg-float v4, v11, v10

    .line 109
    .line 110
    if-gtz v4, :cond_6

    .line 111
    .line 112
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :cond_6
    move v4, v2

    .line 121
    move v2, v1

    .line 122
    move v1, v4

    .line 123
    move v4, v11

    .line 124
    goto :goto_0

    .line 125
    :cond_7
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0
.end method

.method public static createTextBitmapShadowStroke([BLjava/lang/String;IIIIIIIIFZFFFFZIIIIFZI)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p23

    const/4 v8, 0x0

    if-eqz v0, :cond_f

    .line 1
    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    and-int/lit8 v1, p7, 0xf

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    :goto_0
    move-object v13, v0

    goto :goto_1

    .line 4
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 6
    :goto_1
    invoke-static/range {p1 .. p2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;I)Landroid/text/TextPaint;

    move-result-object v11

    if-eqz p16, :cond_3

    .line 7
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p21

    .line 8
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_3
    if-gtz p8, :cond_4

    .line 9
    invoke-static {v10, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move v12, v0

    goto :goto_2

    :cond_4
    move/from16 v12, p8

    :goto_2
    const/4 v0, 0x1

    if-ne v7, v0, :cond_5

    if-nez p22, :cond_5

    .line 10
    invoke-static {v10, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v12, v4

    .line 11
    new-instance v9, Landroid/text/StaticLayout;

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    move/from16 v15, p10

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move v4, v3

    move v3, v2

    move v2, v1

    move/from16 v1, p8

    goto :goto_5

    :cond_5
    if-ne v7, v3, :cond_6

    move/from16 v4, p2

    int-to-float v4, v4

    move-object v5, v10

    move v10, v0

    move-object v0, v5

    move-object v5, v13

    move v13, v3

    move-object v3, v5

    move/from16 v6, p22

    move v9, v1

    move-object v5, v11

    move/from16 v1, p8

    move v11, v2

    move/from16 v2, p9

    .line 12
    invoke-static/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->calculateShrinkTypeFace(Ljava/lang/String;IILandroid/text/Layout$Alignment;FLandroid/text/TextPaint;Z)Landroid/graphics/Typeface;

    :goto_3
    move v2, v9

    goto :goto_4

    :cond_6
    move-object v5, v10

    move v10, v0

    move-object v0, v5

    move-object v5, v13

    move v13, v3

    move-object v3, v5

    move v9, v1

    move-object v5, v11

    move/from16 v1, p8

    move v11, v2

    goto :goto_3

    .line 13
    :goto_4
    new-instance v9, Landroid/text/StaticLayout;

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    move v4, v10

    move-object v10, v0

    move v0, v4

    move/from16 v15, p10

    move v4, v13

    move-object v13, v3

    move v3, v11

    move-object v11, v5

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 14
    :goto_5
    invoke-virtual {v9}, Landroid/text/Layout;->getWidth()I

    move-result v5

    .line 15
    invoke-virtual {v9}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 16
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-lez p9, :cond_7

    move/from16 v12, p9

    goto :goto_6

    :cond_7
    move v12, v6

    :goto_6
    if-ne v7, v0, :cond_8

    if-nez p22, :cond_8

    if-lez v1, :cond_8

    move v10, v1

    :cond_8
    if-eqz v10, :cond_f

    if-nez v12, :cond_9

    goto :goto_9

    :cond_9
    if-ne v2, v3, :cond_a

    sub-int v1, v10, v5

    .line 17
    div-int/2addr v1, v4

    goto :goto_7

    :cond_a
    if-ne v2, v4, :cond_b

    sub-int v1, v10, v5

    goto :goto_7

    :cond_b
    move v1, v8

    :goto_7
    shr-int/lit8 v2, p7, 0x4

    and-int/lit8 v2, v2, 0xf

    if-eq v2, v4, :cond_d

    if-eq v2, v3, :cond_c

    goto :goto_8

    :cond_c
    sub-int v2, v12, v6

    .line 18
    div-int/lit8 v8, v2, 0x2

    goto :goto_8

    :cond_d
    sub-int v8, v12, v6

    .line 19
    :goto_8
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v12, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 20
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v1, v1

    int-to-float v4, v8

    .line 21
    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz p16, :cond_e

    move/from16 v1, p17

    move/from16 v4, p18

    move/from16 v5, p19

    move/from16 v6, p20

    .line 22
    invoke-virtual {v11, v6, v1, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 23
    invoke-virtual {v9, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 24
    :cond_e
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v1, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 25
    invoke-virtual {v11, v6, v1, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 26
    invoke-virtual {v9, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 27
    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->initNativeObject(Landroid/graphics/Bitmap;)V

    return v0

    :cond_f
    :goto_9
    return v8
.end method

.method public static getFontSizeAccordingHeight(I)I
    .locals 8

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    move v5, v2

    .line 19
    move v4, v3

    .line 20
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 21
    .line 22
    int-to-float v6, v5

    .line 23
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 24
    .line 25
    .line 26
    const-string v6, "SghMNy"

    .line 27
    .line 28
    const/4 v7, 0x6

    .line 29
    invoke-virtual {v0, v6, v3, v7, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v5, v5, 0x1

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    sub-int v6, p0, v6

    .line 39
    .line 40
    const/4 v7, 0x2

    .line 41
    if-gt v6, v7, :cond_0

    .line 42
    .line 43
    move v4, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return v5
.end method

.method private static getPixels(Landroid/graphics/Bitmap;)[B
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    mul-int/2addr v1, v0

    .line 12
    mul-int/lit8 v1, v1, 0x4

    .line 13
    .line 14
    new-array v0, v1, [B

    .line 15
    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method private static getStringWithEllipsis(Ljava/lang/String;FF)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 21
    .line 22
    .line 23
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 24
    .line 25
    invoke-static {p0, v0, p1, p2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static getTextHeight(Ljava/lang/String;IFLandroid/graphics/Typeface;)I
    .locals 7

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    .line 2
    .line 3
    const/16 v1, 0x81

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 p2, 0x0

    .line 19
    move v2, p2

    .line 20
    :goto_0
    if-ge v2, v3, :cond_1

    .line 21
    .line 22
    int-to-float v5, p1

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    move-object v1, p0

    .line 26
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/2addr v2, p0

    .line 36
    add-int/lit8 p2, p2, 0x1

    .line 37
    .line 38
    :goto_1
    move-object p0, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    add-float/2addr p1, p0

    .line 57
    int-to-float p0, p2

    .line 58
    mul-float/2addr p0, p1

    .line 59
    float-to-double p0, p0

    .line 60
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    .line 61
    .line 62
    .line 63
    move-result-wide p0

    .line 64
    double-to-int p0, p0

    .line 65
    return p0
.end method

.method private static initNativeObject(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getPixels(Landroid/graphics/Bitmap;)[B

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
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {v1, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->nativeInitBitmapDC(II[B)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static native nativeInitBitmapDC(II[B)V
.end method

.method private static newPaint(Ljava/lang/String;I)Landroid/text/TextPaint;
    .locals 3

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 4
    .line 5
    .line 6
    int-to-float p1, p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    .line 13
    .line 14
    const-string p1, ".ttf"

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    :try_start_0
    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :catch_0
    const-string p1, "error to create ttf type face: "

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v2, "Cocos2dxBitmap"

    .line 40
    .line 41
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_0
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method
