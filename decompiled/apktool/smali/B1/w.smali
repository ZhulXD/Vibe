.class public final LB1/w;
.super Landroid/view/View;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public b:Lkotlin/jvm/functions/Function2;

.field public c:F

.field public d:F

.field public e:Z

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string v0, "ctx"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Landroid/graphics/Paint;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x66

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, LB1/w;->f:Landroid/graphics/Paint;

    .line 27
    .line 28
    new-instance p1, Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 31
    .line 32
    .line 33
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    .line 37
    .line 38
    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    .line 42
    .line 43
    const/16 v2, 0x22

    .line 44
    .line 45
    const/16 v3, 0xff

    .line 46
    .line 47
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, LB1/w;->g:Landroid/graphics/Paint;

    .line 55
    .line 56
    new-instance p1, Landroid/graphics/Paint;

    .line 57
    .line 58
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    .line 63
    .line 64
    const/high16 v1, 0x40000000    # 2.0f

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, LB1/w;->h:Landroid/graphics/Paint;

    .line 77
    .line 78
    new-instance p1, Landroid/graphics/Paint;

    .line 79
    .line 80
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 81
    .line 82
    .line 83
    const/16 v0, 0x44

    .line 84
    .line 85
    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, LB1/w;->i:Landroid/graphics/Paint;

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public final getOnAxis()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LB1/w;->b:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    const/high16 v1, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr v0, v1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    div-float/2addr v2, v1

    .line 20
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v3, 0x2

    .line 25
    int-to-float v3, v3

    .line 26
    sub-float/2addr v1, v3

    .line 27
    iget-boolean v3, p0, LB1/w;->e:Z

    .line 28
    .line 29
    const/16 v4, 0x44

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    move v3, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 v3, 0x22

    .line 36
    .line 37
    :goto_0
    iget-object v5, p0, LB1/w;->h:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, LB1/w;->f:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    const v3, 0x3f147ae1    # 0.58f

    .line 51
    .line 52
    .line 53
    mul-float/2addr v3, v1

    .line 54
    iget-object v5, p0, LB1/w;->g:Landroid/graphics/Paint;

    .line 55
    .line 56
    invoke-virtual {p1, v0, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 57
    .line 58
    .line 59
    iget-boolean v3, p0, LB1/w;->e:Z

    .line 60
    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    const/16 v4, 0x80

    .line 64
    .line 65
    :cond_1
    iget-object v3, p0, LB1/w;->i:Landroid/graphics/Paint;

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 68
    .line 69
    .line 70
    iget v4, p0, LB1/w;->c:F

    .line 71
    .line 72
    mul-float/2addr v4, v1

    .line 73
    const v5, 0x3f19999a    # 0.6f

    .line 74
    .line 75
    .line 76
    mul-float/2addr v4, v5

    .line 77
    add-float/2addr v4, v0

    .line 78
    iget v0, p0, LB1/w;->d:F

    .line 79
    .line 80
    mul-float/2addr v0, v1

    .line 81
    mul-float/2addr v0, v5

    .line 82
    add-float/2addr v0, v2

    .line 83
    const v2, 0x3ec28f5c    # 0.38f

    .line 84
    .line 85
    .line 86
    mul-float/2addr v1, v2

    .line 87
    invoke-virtual {p1, v4, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "e"

    .line 7
    .line 8
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    const/high16 v3, 0x40000000    # 2.0f

    .line 17
    .line 18
    div-float/2addr v2, v3

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    int-to-float v4, v4

    .line 24
    div-float/2addr v4, v3

    .line 25
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/4 v6, 0x1

    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    if-eq v5, v6, :cond_0

    .line 37
    .line 38
    const/4 v7, 0x3

    .line 39
    if-eq v5, v7, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, LB1/w;->e:Z

    .line 44
    .line 45
    iput v0, p0, LB1/w;->c:F

    .line 46
    .line 47
    iput v0, p0, LB1/w;->d:F

    .line 48
    .line 49
    iget-object p1, p0, LB1/w;->b:Lkotlin/jvm/functions/Function2;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-interface {p1, v1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 57
    .line 58
    .line 59
    return v6

    .line 60
    :cond_2
    iput-boolean v6, p0, LB1/w;->e:Z

    .line 61
    .line 62
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sub-float/2addr v0, v2

    .line 67
    div-float/2addr v0, v3

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    sub-float/2addr p1, v4

    .line 73
    div-float/2addr p1, v3

    .line 74
    mul-float v1, v0, v0

    .line 75
    .line 76
    mul-float v2, p1, p1

    .line 77
    .line 78
    add-float/2addr v2, v1

    .line 79
    float-to-double v1, v2

    .line 80
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    double-to-float v1, v1

    .line 85
    const/high16 v2, 0x3f800000    # 1.0f

    .line 86
    .line 87
    cmpl-float v2, v1, v2

    .line 88
    .line 89
    if-lez v2, :cond_3

    .line 90
    .line 91
    div-float/2addr v0, v1

    .line 92
    iput v0, p0, LB1/w;->c:F

    .line 93
    .line 94
    div-float/2addr p1, v1

    .line 95
    iput p1, p0, LB1/w;->d:F

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    iput v0, p0, LB1/w;->c:F

    .line 99
    .line 100
    iput p1, p0, LB1/w;->d:F

    .line 101
    .line 102
    :goto_1
    iget-object p1, p0, LB1/w;->b:Lkotlin/jvm/functions/Function2;

    .line 103
    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    iget v0, p0, LB1/w;->c:F

    .line 107
    .line 108
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget v1, p0, LB1/w;->d:F

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 122
    .line 123
    .line 124
    return v6
.end method

.method public final setOnAxis(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, LB1/w;->b:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method
