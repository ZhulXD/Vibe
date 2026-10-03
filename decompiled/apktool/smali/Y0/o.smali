.class public final LY0/o;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:[LY0/w;

.field public final b:[Landroid/graphics/Matrix;

.field public final c:[Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/PointF;

.field public final e:Landroid/graphics/Path;

.field public final f:Landroid/graphics/Path;

.field public final g:LY0/w;

.field public final h:[F

.field public final i:[F

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/Path;

.field public final l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [LY0/w;

    .line 6
    .line 7
    iput-object v1, p0, LY0/o;->a:[LY0/w;

    .line 8
    .line 9
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 10
    .line 11
    iput-object v1, p0, LY0/o;->b:[Landroid/graphics/Matrix;

    .line 12
    .line 13
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 14
    .line 15
    iput-object v1, p0, LY0/o;->c:[Landroid/graphics/Matrix;

    .line 16
    .line 17
    new-instance v1, Landroid/graphics/PointF;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, LY0/o;->d:Landroid/graphics/PointF;

    .line 23
    .line 24
    new-instance v1, Landroid/graphics/Path;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, LY0/o;->e:Landroid/graphics/Path;

    .line 30
    .line 31
    new-instance v1, Landroid/graphics/Path;

    .line 32
    .line 33
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, LY0/o;->f:Landroid/graphics/Path;

    .line 37
    .line 38
    new-instance v1, LY0/w;

    .line 39
    .line 40
    invoke-direct {v1}, LY0/w;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, LY0/o;->g:LY0/w;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    new-array v2, v1, [F

    .line 47
    .line 48
    iput-object v2, p0, LY0/o;->h:[F

    .line 49
    .line 50
    new-array v1, v1, [F

    .line 51
    .line 52
    iput-object v1, p0, LY0/o;->i:[F

    .line 53
    .line 54
    new-instance v1, Landroid/graphics/Path;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, LY0/o;->j:Landroid/graphics/Path;

    .line 60
    .line 61
    new-instance v1, Landroid/graphics/Path;

    .line 62
    .line 63
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, LY0/o;->k:Landroid/graphics/Path;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, LY0/o;->l:Z

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    .line 74
    iget-object v2, p0, LY0/o;->a:[LY0/w;

    .line 75
    .line 76
    new-instance v3, LY0/w;

    .line 77
    .line 78
    invoke-direct {v3}, LY0/w;-><init>()V

    .line 79
    .line 80
    .line 81
    aput-object v3, v2, v1

    .line 82
    .line 83
    iget-object v2, p0, LY0/o;->b:[Landroid/graphics/Matrix;

    .line 84
    .line 85
    new-instance v3, Landroid/graphics/Matrix;

    .line 86
    .line 87
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    .line 89
    .line 90
    aput-object v3, v2, v1

    .line 91
    .line 92
    iget-object v2, p0, LY0/o;->c:[Landroid/graphics/Matrix;

    .line 93
    .line 94
    new-instance v3, Landroid/graphics/Matrix;

    .line 95
    .line 96
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    .line 98
    .line 99
    aput-object v3, v2, v1

    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(LY0/m;FLandroid/graphics/RectF;LA1/b;Landroid/graphics/Path;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 1
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 2
    iget-object v6, v0, LY0/o;->e:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 3
    iget-object v7, v0, LY0/o;->f:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 4
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v3, v8}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    const/4 v9, 0x0

    .line 5
    :goto_0
    iget-object v10, v0, LY0/o;->c:[Landroid/graphics/Matrix;

    const/4 v11, 0x2

    iget-object v13, v0, LY0/o;->h:[F

    const/4 v14, 0x4

    iget-object v15, v0, LY0/o;->a:[LY0/w;

    const/16 v16, 0x0

    iget-object v8, v0, LY0/o;->b:[Landroid/graphics/Matrix;

    const/4 v12, 0x1

    if-ge v9, v14, :cond_9

    if-eq v9, v12, :cond_2

    if-eq v9, v11, :cond_1

    const/4 v14, 0x3

    if-eq v9, v14, :cond_0

    .line 6
    iget-object v14, v1, LY0/m;->f:LY0/c;

    goto :goto_1

    .line 7
    :cond_0
    iget-object v14, v1, LY0/m;->e:LY0/c;

    goto :goto_1

    .line 8
    :cond_1
    iget-object v14, v1, LY0/m;->h:LY0/c;

    goto :goto_1

    .line 9
    :cond_2
    iget-object v14, v1, LY0/m;->g:LY0/c;

    :goto_1
    if-eq v9, v12, :cond_5

    if-eq v9, v11, :cond_4

    const/4 v11, 0x3

    if-eq v9, v11, :cond_3

    .line 10
    iget-object v11, v1, LY0/m;->b:La/a;

    goto :goto_2

    .line 11
    :cond_3
    iget-object v11, v1, LY0/m;->a:La/a;

    goto :goto_2

    .line 12
    :cond_4
    iget-object v11, v1, LY0/m;->d:La/a;

    goto :goto_2

    .line 13
    :cond_5
    iget-object v11, v1, LY0/m;->c:La/a;

    .line 14
    :goto_2
    aget-object v12, v15, v9

    .line 15
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-interface {v14, v3}, LY0/c;->a(Landroid/graphics/RectF;)F

    move-result v14

    invoke-virtual {v11, v12, v2, v14}, La/a;->i(LY0/w;FF)V

    add-int/lit8 v11, v9, 0x1

    .line 17
    rem-int/lit8 v12, v11, 0x4

    mul-int/lit8 v12, v12, 0x5a

    int-to-float v12, v12

    .line 18
    aget-object v14, v8, v9

    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    .line 19
    iget-object v14, v0, LY0/o;->d:Landroid/graphics/PointF;

    move-object/from16 v19, v8

    const/4 v8, 0x1

    if-eq v9, v8, :cond_8

    const/4 v8, 0x2

    if-eq v9, v8, :cond_7

    const/4 v8, 0x3

    if-eq v9, v8, :cond_6

    .line 20
    iget v8, v3, Landroid/graphics/RectF;->right:F

    move/from16 v17, v9

    iget v9, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_6
    move/from16 v17, v9

    .line 21
    iget v8, v3, Landroid/graphics/RectF;->left:F

    iget v9, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_7
    move/from16 v17, v9

    .line 22
    iget v8, v3, Landroid/graphics/RectF;->left:F

    iget v9, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v14, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_8
    move/from16 v17, v9

    .line 23
    iget v8, v3, Landroid/graphics/RectF;->right:F

    iget v9, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v14, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 24
    :goto_3
    aget-object v8, v19, v17

    iget v9, v14, Landroid/graphics/PointF;->x:F

    iget v14, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v14}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 25
    aget-object v8, v19, v17

    invoke-virtual {v8, v12}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 26
    aget-object v8, v15, v17

    .line 27
    iget v9, v8, LY0/w;->c:F

    .line 28
    aput v9, v13, v16

    .line 29
    iget v8, v8, LY0/w;->d:F

    const/16 v18, 0x1

    .line 30
    aput v8, v13, v18

    .line 31
    aget-object v8, v19, v17

    invoke-virtual {v8, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 32
    aget-object v8, v10, v17

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 33
    aget-object v8, v10, v17

    aget v9, v13, v16

    aget v13, v13, v18

    invoke-virtual {v8, v9, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 34
    aget-object v8, v10, v17

    invoke-virtual {v8, v12}, Landroid/graphics/Matrix;->preRotate(F)Z

    move v9, v11

    goto/16 :goto_0

    :cond_9
    move-object/from16 v19, v8

    move/from16 v18, v12

    move/from16 v8, v16

    :goto_4
    if-ge v8, v14, :cond_13

    .line 35
    aget-object v9, v15, v8

    .line 36
    iget v11, v9, LY0/w;->a:F

    .line 37
    aput v11, v13, v16

    .line 38
    iget v9, v9, LY0/w;->b:F

    .line 39
    aput v9, v13, v18

    .line 40
    aget-object v9, v19, v8

    invoke-virtual {v9, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez v8, :cond_a

    .line 41
    aget v9, v13, v16

    aget v11, v13, v18

    invoke-virtual {v5, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    .line 42
    :cond_a
    aget v9, v13, v16

    aget v11, v13, v18

    invoke-virtual {v5, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    :goto_5
    aget-object v9, v15, v8

    aget-object v11, v19, v8

    invoke-virtual {v9, v11, v5}, LY0/w;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    if-eqz v4, :cond_b

    .line 44
    aget-object v9, v15, v8

    aget-object v11, v19, v8

    .line 45
    iget-object v12, v4, LA1/b;->b:Ljava/lang/Object;

    check-cast v12, LY0/h;

    .line 46
    iget-object v14, v12, LY0/h;->e:Ljava/util/BitSet;

    .line 47
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v3, v16

    invoke-virtual {v14, v8, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 48
    iget-object v3, v12, LY0/h;->c:[LY0/v;

    .line 49
    iget v12, v9, LY0/w;->f:F

    .line 50
    invoke-virtual {v9, v12}, LY0/w;->a(F)V

    .line 51
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12, v11}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 52
    new-instance v11, Ljava/util/ArrayList;

    iget-object v9, v9, LY0/w;->h:Ljava/util/ArrayList;

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    new-instance v9, LY0/p;

    invoke-direct {v9, v11, v12}, LY0/p;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 54
    aput-object v9, v3, v8

    :cond_b
    add-int/lit8 v3, v8, 0x1

    .line 55
    rem-int/lit8 v9, v3, 0x4

    .line 56
    aget-object v11, v15, v8

    .line 57
    iget v12, v11, LY0/w;->c:F

    const/16 v16, 0x0

    .line 58
    aput v12, v13, v16

    .line 59
    iget v11, v11, LY0/w;->d:F

    const/16 v18, 0x1

    .line 60
    aput v11, v13, v18

    .line 61
    aget-object v11, v19, v8

    invoke-virtual {v11, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 62
    aget-object v11, v15, v9

    .line 63
    iget v12, v11, LY0/w;->a:F

    .line 64
    iget-object v14, v0, LY0/o;->i:[F

    aput v12, v14, v16

    .line 65
    iget v11, v11, LY0/w;->b:F

    .line 66
    aput v11, v14, v18

    .line 67
    aget-object v11, v19, v9

    invoke-virtual {v11, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 68
    aget v11, v13, v16

    aget v12, v14, v16

    sub-float/2addr v11, v12

    float-to-double v11, v11

    aget v20, v13, v18

    aget v14, v14, v18

    sub-float v14, v20, v14

    move-object/from16 v20, v15

    float-to-double v14, v14

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    double-to-float v11, v11

    const v12, 0x3a83126f    # 0.001f

    sub-float/2addr v11, v12

    const/4 v12, 0x0

    .line 69
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 70
    aget-object v14, v20, v8

    iget v15, v14, LY0/w;->c:F

    const/16 v16, 0x0

    aput v15, v13, v16

    .line 71
    iget v14, v14, LY0/w;->d:F

    const/4 v15, 0x1

    aput v14, v13, v15

    .line 72
    aget-object v14, v19, v8

    invoke-virtual {v14, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq v8, v15, :cond_c

    const/4 v14, 0x3

    if-eq v8, v14, :cond_c

    .line 73
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    aget v21, v13, v15

    sub-float v14, v14, v21

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    goto :goto_6

    .line 74
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    const/16 v16, 0x0

    aget v15, v13, v16

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    :goto_6
    const/high16 v15, 0x43870000    # 270.0f

    move/from16 v21, v3

    .line 75
    iget-object v3, v0, LY0/o;->g:LY0/w;

    invoke-virtual {v3, v12, v12, v15, v12}, LY0/w;->d(FFFF)V

    const/4 v15, 0x1

    if-eq v8, v15, :cond_f

    const/4 v12, 0x2

    if-eq v8, v12, :cond_e

    const/4 v15, 0x3

    if-eq v8, v15, :cond_d

    .line 76
    iget-object v12, v1, LY0/m;->j:LY0/e;

    goto :goto_7

    .line 77
    :cond_d
    iget-object v12, v1, LY0/m;->i:LY0/e;

    goto :goto_7

    :cond_e
    const/4 v15, 0x3

    .line 78
    iget-object v12, v1, LY0/m;->l:LY0/e;

    goto :goto_7

    :cond_f
    const/4 v15, 0x3

    .line 79
    iget-object v12, v1, LY0/m;->k:LY0/e;

    .line 80
    :goto_7
    invoke-virtual {v12, v11, v14, v2, v3}, LY0/e;->j(FFFLY0/w;)V

    .line 81
    iget-object v11, v0, LY0/o;->j:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 82
    aget-object v14, v10, v8

    invoke-virtual {v3, v14, v11}, LY0/w;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 83
    iget-boolean v14, v0, LY0/o;->l:Z

    if-eqz v14, :cond_10

    .line 84
    invoke-virtual {v12}, LY0/e;->i()Z

    move-result v12

    if-nez v12, :cond_11

    .line 85
    invoke-virtual {v0, v11, v8}, LY0/o;->b(Landroid/graphics/Path;I)Z

    move-result v12

    if-nez v12, :cond_11

    .line 86
    invoke-virtual {v0, v11, v9}, LY0/o;->b(Landroid/graphics/Path;I)Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_8

    :cond_10
    const/16 v18, 0x1

    goto :goto_9

    .line 87
    :cond_11
    :goto_8
    sget-object v9, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v11, v11, v7, v9}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 88
    iget v9, v3, LY0/w;->a:F

    const/16 v16, 0x0

    .line 89
    aput v9, v13, v16

    .line 90
    iget v9, v3, LY0/w;->b:F

    const/16 v18, 0x1

    .line 91
    aput v9, v13, v18

    .line 92
    aget-object v9, v10, v8

    invoke-virtual {v9, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 93
    aget v9, v13, v16

    aget v11, v13, v18

    invoke-virtual {v6, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 94
    aget-object v9, v10, v8

    invoke-virtual {v3, v9, v6}, LY0/w;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_a

    .line 95
    :goto_9
    aget-object v9, v10, v8

    invoke-virtual {v3, v9, v5}, LY0/w;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    :goto_a
    if-eqz v4, :cond_12

    .line 96
    aget-object v9, v10, v8

    .line 97
    iget-object v11, v4, LA1/b;->b:Ljava/lang/Object;

    check-cast v11, LY0/h;

    .line 98
    iget-object v12, v11, LY0/h;->e:Ljava/util/BitSet;

    add-int/lit8 v14, v8, 0x4

    const/4 v15, 0x0

    .line 99
    invoke-virtual {v12, v14, v15}, Ljava/util/BitSet;->set(IZ)V

    .line 100
    iget-object v11, v11, LY0/h;->d:[LY0/v;

    .line 101
    iget v12, v3, LY0/w;->f:F

    .line 102
    invoke-virtual {v3, v12}, LY0/w;->a(F)V

    .line 103
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12, v9}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 104
    new-instance v9, Ljava/util/ArrayList;

    iget-object v3, v3, LY0/w;->h:Ljava/util/ArrayList;

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    new-instance v3, LY0/p;

    invoke-direct {v3, v9, v12}, LY0/p;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 106
    aput-object v3, v11, v8

    goto :goto_b

    :cond_12
    const/4 v15, 0x0

    :goto_b
    move-object/from16 v3, p3

    move/from16 v16, v15

    move-object/from16 v15, v20

    move/from16 v8, v21

    const/4 v14, 0x4

    goto/16 :goto_4

    .line 107
    :cond_13
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 108
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 109
    invoke-virtual {v6}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 110
    sget-object v1, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v5, v6, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_14
    return-void
.end method

.method public final b(Landroid/graphics/Path;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, LY0/o;->k:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LY0/o;->a:[LY0/w;

    .line 7
    .line 8
    aget-object v1, v1, p2

    .line 9
    .line 10
    iget-object v2, p0, LY0/o;->b:[Landroid/graphics/Matrix;

    .line 11
    .line 12
    aget-object p2, v2, p2

    .line 13
    .line 14
    invoke-virtual {v1, p2, v0}, LY0/w;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Landroid/graphics/RectF;

    .line 18
    .line 19
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 27
    .line 28
    .line 29
    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    .line 49
    cmpl-float p1, p1, v0

    .line 50
    .line 51
    if-lez p1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    cmpl-float p1, p1, v0

    .line 58
    .line 59
    if-lez p1, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p1, 0x0

    .line 63
    return p1

    .line 64
    :cond_1
    :goto_0
    return v1
.end method
