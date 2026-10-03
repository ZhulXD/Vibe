.class public Landroidx/core/util/TypedValueCompat;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/util/TypedValueCompat$Api34Impl;,
        Landroidx/core/util/TypedValueCompat$ComplexDimensionUnit;
    }
.end annotation


# static fields
.field private static final INCHES_PER_MM:F = 0.03937008f

.field private static final INCHES_PER_PT:F = 0.013888889f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static deriveDimension(IFLandroid/util/DisplayMetrics;)F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Landroidx/core/util/TypedValueCompat$Api34Impl;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    if-eqz p0, :cond_b

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eq p0, v0, :cond_9

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-eq p0, v0, :cond_7

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    if-eq p0, v0, :cond_5

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    if-eq p0, v0, :cond_3

    .line 26
    .line 27
    const/4 v0, 0x5

    .line 28
    if-ne p0, v0, :cond_2

    .line 29
    .line 30
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 31
    .line 32
    cmpl-float p2, p0, v1

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    div-float/2addr p1, p0

    .line 38
    const p0, 0x3d214285

    .line 39
    .line 40
    .line 41
    :goto_0
    div-float/2addr p1, p0

    .line 42
    return p1

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string p2, "Invalid unitToConvertTo "

    .line 46
    .line 47
    invoke-static {p0, p2}, LE/b;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_3
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 56
    .line 57
    cmpl-float p2, p0, v1

    .line 58
    .line 59
    if-nez p2, :cond_4

    .line 60
    .line 61
    return v1

    .line 62
    :cond_4
    div-float/2addr p1, p0

    .line 63
    return p1

    .line 64
    :cond_5
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 65
    .line 66
    cmpl-float p2, p0, v1

    .line 67
    .line 68
    if-nez p2, :cond_6

    .line 69
    .line 70
    return v1

    .line 71
    :cond_6
    div-float/2addr p1, p0

    .line 72
    const p0, 0x3c638e39

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_7
    iget p0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 77
    .line 78
    cmpl-float p2, p0, v1

    .line 79
    .line 80
    if-nez p2, :cond_8

    .line 81
    .line 82
    return v1

    .line 83
    :cond_8
    div-float/2addr p1, p0

    .line 84
    return p1

    .line 85
    :cond_9
    iget p0, p2, Landroid/util/DisplayMetrics;->density:F

    .line 86
    .line 87
    cmpl-float p2, p0, v1

    .line 88
    .line 89
    if-nez p2, :cond_a

    .line 90
    .line 91
    return v1

    .line 92
    :cond_a
    div-float/2addr p1, p0

    .line 93
    :cond_b
    return p1
.end method

.method public static dpToPx(FLandroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static getUnitFromComplexDimension(I)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    and-int/lit8 p0, p0, 0xf

    .line 2
    .line 3
    return p0
.end method

.method public static pxToDp(FLandroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0, p1}, Landroidx/core/util/TypedValueCompat;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static pxToSp(FLandroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0, p0, p1}, Landroidx/core/util/TypedValueCompat;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static spToPx(FLandroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method
