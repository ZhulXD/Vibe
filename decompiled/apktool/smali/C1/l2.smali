.class public final LC1/l2;
.super Lk/B;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final e:Landroid/graphics/Matrix;

.field public f:F

.field public g:F

.field public final h:Landroid/view/ScaleGestureDetector;

.field public final i:Landroidx/core/view/GestureDetectorCompat;

.field public j:F

.field public k:F

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, p1, v0, v1}, Lk/B;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LC1/l2;->e:Landroid/graphics/Matrix;

    .line 17
    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    .line 20
    iput v0, p0, LC1/l2;->f:F

    .line 21
    .line 22
    const/high16 v0, 0x40800000    # 4.0f

    .line 23
    .line 24
    iput v0, p0, LC1/l2;->g:F

    .line 25
    .line 26
    new-instance v0, Landroid/view/ScaleGestureDetector;

    .line 27
    .line 28
    new-instance v1, LC1/k2;

    .line 29
    .line 30
    invoke-direct {v1, p0}, LC1/k2;-><init>(LC1/l2;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, LC1/l2;->h:Landroid/view/ScaleGestureDetector;

    .line 37
    .line 38
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    .line 39
    .line 40
    new-instance v1, LC1/j2;

    .line 41
    .line 42
    invoke-direct {v1, p0}, LC1/j2;-><init>(LC1/l2;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p1, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, LC1/l2;->i:Landroidx/core/view/GestureDetectorCompat;

    .line 49
    .line 50
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static synthetic b(LC1/l2;)V
    .locals 0

    .line 1
    invoke-static {p0}, LC1/l2;->setImageDrawable$lambda$0(LC1/l2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final setImageDrawable$lambda$0(LC1/l2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LC1/l2;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

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
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    int-to-float v3, v3

    .line 23
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    const/16 v4, 0x9

    .line 29
    .line 30
    new-array v4, v4, [F

    .line 31
    .line 32
    iget-object v5, p0, LC1/l2;->e:Landroid/graphics/Matrix;

    .line 33
    .line 34
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 35
    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    aget v6, v4, v6

    .line 39
    .line 40
    const/4 v7, 0x2

    .line 41
    aget v7, v4, v7

    .line 42
    .line 43
    const/4 v8, 0x5

    .line 44
    aget v4, v4, v8

    .line 45
    .line 46
    mul-float/2addr v3, v6

    .line 47
    mul-float/2addr v0, v6

    .line 48
    cmpg-float v6, v3, v1

    .line 49
    .line 50
    const/high16 v8, 0x40000000    # 2.0f

    .line 51
    .line 52
    const/4 v9, 0x0

    .line 53
    if-gtz v6, :cond_1

    .line 54
    .line 55
    sub-float/2addr v1, v3

    .line 56
    div-float/2addr v1, v8

    .line 57
    :goto_0
    sub-float/2addr v1, v7

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    cmpl-float v6, v7, v9

    .line 60
    .line 61
    if-lez v6, :cond_2

    .line 62
    .line 63
    neg-float v1, v7

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    sub-float/2addr v1, v3

    .line 66
    cmpg-float v3, v7, v1

    .line 67
    .line 68
    if-gez v3, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    move v1, v9

    .line 72
    :goto_1
    cmpg-float v3, v0, v2

    .line 73
    .line 74
    if-gtz v3, :cond_4

    .line 75
    .line 76
    sub-float/2addr v2, v0

    .line 77
    div-float/2addr v2, v8

    .line 78
    :goto_2
    sub-float/2addr v2, v4

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    cmpl-float v3, v4, v9

    .line 81
    .line 82
    if-lez v3, :cond_5

    .line 83
    .line 84
    neg-float v2, v4

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    sub-float/2addr v2, v0

    .line 87
    cmpg-float v0, v4, v2

    .line 88
    .line 89
    if-gez v0, :cond_6

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_6
    move v2, v9

    .line 93
    :goto_3
    cmpg-float v0, v1, v9

    .line 94
    .line 95
    if-nez v0, :cond_7

    .line 96
    .line 97
    cmpg-float v0, v2, v9

    .line 98
    .line 99
    if-nez v0, :cond_7

    .line 100
    .line 101
    return-void

    .line 102
    :cond_7
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final e()F
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    iget-object v1, p0, LC1/l2;->e:Landroid/graphics/Matrix;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    return v0
.end method

.method public final f()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    cmpl-float v2, v2, v3

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    if-lez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v1, v4

    .line 30
    :goto_0
    if-eqz v1, :cond_5

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    int-to-float v2, v2

    .line 41
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    cmpl-float v5, v5, v3

    .line 50
    .line 51
    if-lez v5, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move-object v2, v4

    .line 55
    :goto_1
    if-eqz v2, :cond_5

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    int-to-float v5, v5

    .line 66
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    cmpl-float v6, v6, v3

    .line 75
    .line 76
    if-lez v6, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    move-object v5, v4

    .line 80
    :goto_2
    if-eqz v5, :cond_5

    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    int-to-float v0, v0

    .line 91
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    cmpl-float v3, v6, v3

    .line 100
    .line 101
    if-lez v3, :cond_4

    .line 102
    .line 103
    move-object v4, v0

    .line 104
    :cond_4
    if-eqz v4, :cond_5

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    div-float v3, v1, v5

    .line 111
    .line 112
    div-float v4, v2, v0

    .line 113
    .line 114
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    iput v3, p0, LC1/l2;->f:F

    .line 119
    .line 120
    const/high16 v4, 0x40a00000    # 5.0f

    .line 121
    .line 122
    mul-float/2addr v4, v3

    .line 123
    iput v4, p0, LC1/l2;->g:F

    .line 124
    .line 125
    mul-float/2addr v5, v3

    .line 126
    sub-float/2addr v1, v5

    .line 127
    const/high16 v4, 0x40000000    # 2.0f

    .line 128
    .line 129
    div-float/2addr v1, v4

    .line 130
    mul-float/2addr v0, v3

    .line 131
    sub-float/2addr v2, v0

    .line 132
    div-float/2addr v2, v4

    .line 133
    iget-object v0, p0, LC1/l2;->e:Landroid/graphics/Matrix;

    .line 134
    .line 135
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    :goto_3
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, LC1/l2;->f()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LC1/l2;->h:Landroid/view/ScaleGestureDetector;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, LC1/l2;->i:Landroidx/core/view/GestureDetectorCompat;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, LC1/l2;->e()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x1

    .line 26
    if-eqz v2, :cond_4

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    if-eq v2, v5, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_5

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget v2, p0, LC1/l2;->j:F

    .line 43
    .line 44
    sub-float/2addr v0, v2

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget v5, p0, LC1/l2;->k:F

    .line 50
    .line 51
    sub-float/2addr v2, v5

    .line 52
    iget-boolean v5, p0, LC1/l2;->l:Z

    .line 53
    .line 54
    if-nez v5, :cond_2

    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const/high16 v6, 0x41000000    # 8.0f

    .line 61
    .line 62
    cmpl-float v5, v5, v6

    .line 63
    .line 64
    if-gtz v5, :cond_1

    .line 65
    .line 66
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    cmpl-float v5, v5, v6

    .line 71
    .line 72
    if-lez v5, :cond_2

    .line 73
    .line 74
    :cond_1
    iput-boolean v4, p0, LC1/l2;->l:Z

    .line 75
    .line 76
    :cond_2
    iget-boolean v5, p0, LC1/l2;->l:Z

    .line 77
    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    iget-object v5, p0, LC1/l2;->e:Landroid/graphics/Matrix;

    .line 81
    .line 82
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, LC1/l2;->d()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iput v0, p0, LC1/l2;->j:F

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    iput p1, p0, LC1/l2;->k:F

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput v0, p0, LC1/l2;->j:F

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iput p1, p0, LC1/l2;->k:F

    .line 115
    .line 116
    iput-boolean v3, p0, LC1/l2;->l:Z

    .line 117
    .line 118
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_7

    .line 123
    .line 124
    iget v0, p0, LC1/l2;->f:F

    .line 125
    .line 126
    const v2, 0x3f866666    # 1.05f

    .line 127
    .line 128
    .line 129
    mul-float/2addr v0, v2

    .line 130
    cmpl-float v0, v1, v0

    .line 131
    .line 132
    if-lez v0, :cond_6

    .line 133
    .line 134
    move v3, v4

    .line 135
    :cond_6
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 136
    .line 137
    .line 138
    :cond_7
    return v4
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lk/B;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, LC1/g1;

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    invoke-direct {p1, v0, p0}, LC1/g1;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
