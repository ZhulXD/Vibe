.class public final LT/m;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final p:Landroid/graphics/Matrix;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Matrix;

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/PathMeasure;

.field public final g:LT/j;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/Boolean;

.field public final o:Lq/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LT/m;->p:Landroid/graphics/Matrix;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LT/m;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, LT/m;->h:F

    .line 4
    iput v0, p0, LT/m;->i:F

    .line 5
    iput v0, p0, LT/m;->j:F

    .line 6
    iput v0, p0, LT/m;->k:F

    const/16 v0, 0xff

    .line 7
    iput v0, p0, LT/m;->l:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LT/m;->m:Ljava/lang/String;

    .line 9
    iput-object v0, p0, LT/m;->n:Ljava/lang/Boolean;

    .line 10
    new-instance v0, Lq/e;

    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lq/j;-><init>(I)V

    .line 12
    iput-object v0, p0, LT/m;->o:Lq/e;

    .line 13
    new-instance v0, LT/j;

    invoke-direct {v0}, LT/j;-><init>()V

    iput-object v0, p0, LT/m;->g:LT/j;

    .line 14
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LT/m;->a:Landroid/graphics/Path;

    .line 15
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LT/m;->b:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(LT/m;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LT/m;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, LT/m;->h:F

    .line 19
    iput v0, p0, LT/m;->i:F

    .line 20
    iput v0, p0, LT/m;->j:F

    .line 21
    iput v0, p0, LT/m;->k:F

    const/16 v0, 0xff

    .line 22
    iput v0, p0, LT/m;->l:I

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, LT/m;->m:Ljava/lang/String;

    .line 24
    iput-object v0, p0, LT/m;->n:Ljava/lang/Boolean;

    .line 25
    new-instance v0, Lq/e;

    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1}, Lq/j;-><init>(I)V

    .line 27
    iput-object v0, p0, LT/m;->o:Lq/e;

    .line 28
    new-instance v1, LT/j;

    iget-object v2, p1, LT/m;->g:LT/j;

    invoke-direct {v1, v2, v0}, LT/j;-><init>(LT/j;Lq/e;)V

    iput-object v1, p0, LT/m;->g:LT/j;

    .line 29
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, LT/m;->a:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, LT/m;->a:Landroid/graphics/Path;

    .line 30
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, LT/m;->b:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, LT/m;->b:Landroid/graphics/Path;

    .line 31
    iget v1, p1, LT/m;->h:F

    iput v1, p0, LT/m;->h:F

    .line 32
    iget v1, p1, LT/m;->i:F

    iput v1, p0, LT/m;->i:F

    .line 33
    iget v1, p1, LT/m;->j:F

    iput v1, p0, LT/m;->j:F

    .line 34
    iget v1, p1, LT/m;->k:F

    iput v1, p0, LT/m;->k:F

    .line 35
    iget v1, p1, LT/m;->l:I

    iput v1, p0, LT/m;->l:I

    .line 36
    iget-object v1, p1, LT/m;->m:Ljava/lang/String;

    iput-object v1, p0, LT/m;->m:Ljava/lang/String;

    .line 37
    iget-object v1, p1, LT/m;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0, v1, p0}, Lq/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    iget-object p1, p1, LT/m;->n:Ljava/lang/Boolean;

    iput-object p1, p0, LT/m;->n:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a(LT/j;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V
    .locals 20

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, LT/j;->a:Landroid/graphics/Matrix;

    iget-object v6, v0, LT/j;->b:Ljava/util/ArrayList;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object v2, v0, LT/j;->a:Landroid/graphics/Matrix;

    iget-object v0, v0, LT/j;->j:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    const/4 v7, 0x0

    move v8, v7

    .line 4
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_14

    .line 5
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT/k;

    .line 6
    instance-of v1, v0, LT/j;

    if-eqz v1, :cond_0

    .line 7
    move-object v1, v0

    check-cast v1, LT/j;

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, LT/m;->a(LT/j;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    move-object v1, v0

    :goto_1
    move/from16 v9, p5

    move/from16 v18, v8

    goto/16 :goto_a

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v3, p3

    .line 9
    instance-of v4, v0, LT/l;

    if-eqz v4, :cond_12

    .line 10
    check-cast v0, LT/l;

    move/from16 v4, p4

    int-to-float v5, v4

    .line 11
    iget v9, v1, LT/m;->j:F

    div-float/2addr v5, v9

    move/from16 v9, p5

    int-to-float v10, v9

    .line 12
    iget v11, v1, LT/m;->k:F

    div-float/2addr v10, v11

    .line 13
    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 14
    iget-object v12, v1, LT/m;->c:Landroid/graphics/Matrix;

    invoke-virtual {v12, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 15
    invoke-virtual {v12, v5, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v5, 0x4

    .line 16
    new-array v5, v5, [F

    fill-array-data v5, :array_0

    .line 17
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 18
    aget v10, v5, v7

    float-to-double v13, v10

    const/4 v10, 0x1

    aget v15, v5, v10

    move/from16 p2, v10

    move/from16 p1, v11

    float-to-double v10, v15

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v10, v10

    const/4 v11, 0x2

    .line 19
    aget v13, v5, v11

    float-to-double v13, v13

    const/4 v15, 0x3

    move/from16 v16, v11

    aget v11, v5, v15

    move/from16 v17, v7

    move/from16 v18, v8

    float-to-double v7, v11

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 20
    aget v8, v5, v17

    aget v11, v5, p2

    aget v13, v5, v16

    aget v5, v5, v15

    mul-float/2addr v8, v5

    mul-float/2addr v11, v13

    sub-float/2addr v8, v11

    .line 21
    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/4 v7, 0x0

    cmpl-float v10, v5, v7

    if-lez v10, :cond_1

    .line 22
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float/2addr v8, v5

    goto :goto_2

    :cond_1
    move v8, v7

    :goto_2
    cmpl-float v5, v8, v7

    if-nez v5, :cond_2

    goto/16 :goto_a

    .line 23
    :cond_2
    iget-object v5, v1, LT/m;->a:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 24
    iget-object v10, v0, LT/l;->a:[Landroidx/core/graphics/PathParser$PathDataNode;

    if-eqz v10, :cond_3

    .line 25
    invoke-static {v10, v5}, Landroidx/core/graphics/PathParser$PathDataNode;->nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V

    .line 26
    :cond_3
    iget-object v10, v1, LT/m;->b:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 27
    instance-of v11, v0, LT/h;

    if-eqz v11, :cond_5

    .line 28
    iget v0, v0, LT/l;->c:I

    if-nez v0, :cond_4

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_3

    :cond_4
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_3
    invoke-virtual {v10, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 29
    invoke-virtual {v10, v5, v12}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 30
    invoke-virtual {v3, v10}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_a

    .line 31
    :cond_5
    check-cast v0, LT/i;

    .line 32
    iget v11, v0, LT/i;->i:F

    cmpl-float v13, v11, v7

    const/high16 v14, 0x3f800000    # 1.0f

    if-nez v13, :cond_6

    iget v13, v0, LT/i;->j:F

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_9

    .line 33
    :cond_6
    iget v13, v0, LT/i;->k:F

    add-float/2addr v11, v13

    rem-float/2addr v11, v14

    .line 34
    iget v15, v0, LT/i;->j:F

    add-float/2addr v15, v13

    rem-float/2addr v15, v14

    .line 35
    iget-object v13, v1, LT/m;->f:Landroid/graphics/PathMeasure;

    if-nez v13, :cond_7

    .line 36
    new-instance v13, Landroid/graphics/PathMeasure;

    invoke-direct {v13}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v13, v1, LT/m;->f:Landroid/graphics/PathMeasure;

    .line 37
    :cond_7
    iget-object v13, v1, LT/m;->f:Landroid/graphics/PathMeasure;

    move/from16 v14, v17

    invoke-virtual {v13, v5, v14}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 38
    iget-object v13, v1, LT/m;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v13

    mul-float/2addr v11, v13

    mul-float/2addr v15, v13

    .line 39
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    cmpl-float v16, v11, v15

    if-lez v16, :cond_8

    .line 40
    iget-object v14, v1, LT/m;->f:Landroid/graphics/PathMeasure;

    move/from16 v7, p2

    invoke-virtual {v14, v11, v13, v5, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 41
    iget-object v11, v1, LT/m;->f:Landroid/graphics/PathMeasure;

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v15, v5, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_4

    :cond_8
    move v13, v7

    move/from16 v7, p2

    .line 42
    iget-object v14, v1, LT/m;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v14, v11, v15, v5, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 43
    :goto_4
    invoke-virtual {v5, v13, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 44
    :cond_9
    invoke-virtual {v10, v5, v12}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 45
    iget-object v5, v0, LT/i;->f:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v5}, Landroidx/core/content/res/ComplexColorCompat;->willDraw()Z

    move-result v5

    const/4 v11, 0x0

    const/16 v13, 0xff

    const/high16 v14, 0x437f0000    # 255.0f

    if-eqz v5, :cond_d

    .line 46
    iget-object v5, v0, LT/i;->f:Landroidx/core/content/res/ComplexColorCompat;

    .line 47
    iget-object v15, v1, LT/m;->e:Landroid/graphics/Paint;

    if-nez v15, :cond_a

    .line 48
    new-instance v15, Landroid/graphics/Paint;

    const/4 v7, 0x1

    const v16, 0xffffff

    invoke-direct {v15, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v15, v1, LT/m;->e:Landroid/graphics/Paint;

    .line 49
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_5

    :cond_a
    const v16, 0xffffff

    .line 50
    :goto_5
    iget-object v7, v1, LT/m;->e:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {v5}, Landroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 52
    invoke-virtual {v5}, Landroidx/core/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    move-result-object v5

    .line 53
    invoke-virtual {v5, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 54
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 55
    iget v5, v0, LT/i;->h:F

    mul-float/2addr v5, v14

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    move/from16 v19, v14

    goto :goto_6

    .line 56
    :cond_b
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 57
    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    invoke-virtual {v5}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v5

    iget v15, v0, LT/i;->h:F

    sget-object v19, LT/p;->k:Landroid/graphics/PorterDuff$Mode;

    move/from16 v19, v14

    .line 59
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    and-int v5, v5, v16

    int-to-float v14, v14

    mul-float/2addr v14, v15

    float-to-int v14, v14

    shl-int/lit8 v14, v14, 0x18

    or-int/2addr v5, v14

    .line 60
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    :goto_6
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 62
    iget v5, v0, LT/l;->c:I

    if-nez v5, :cond_c

    sget-object v5, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_7

    :cond_c
    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_7
    invoke-virtual {v10, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 63
    invoke-virtual {v3, v10, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_8

    :cond_d
    move/from16 v19, v14

    const v16, 0xffffff

    .line 64
    :goto_8
    iget-object v5, v0, LT/i;->d:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v5}, Landroidx/core/content/res/ComplexColorCompat;->willDraw()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 65
    iget-object v5, v0, LT/i;->d:Landroidx/core/content/res/ComplexColorCompat;

    .line 66
    iget-object v7, v1, LT/m;->d:Landroid/graphics/Paint;

    if-nez v7, :cond_e

    .line 67
    new-instance v7, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v7, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v1, LT/m;->d:Landroid/graphics/Paint;

    .line 68
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    :cond_e
    iget-object v7, v1, LT/m;->d:Landroid/graphics/Paint;

    .line 70
    iget-object v14, v0, LT/i;->m:Landroid/graphics/Paint$Join;

    if-eqz v14, :cond_f

    .line 71
    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 72
    :cond_f
    iget-object v14, v0, LT/i;->l:Landroid/graphics/Paint$Cap;

    if-eqz v14, :cond_10

    .line 73
    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 74
    :cond_10
    iget v14, v0, LT/i;->n:F

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 75
    invoke-virtual {v5}, Landroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 76
    invoke-virtual {v5}, Landroidx/core/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    move-result-object v5

    .line 77
    invoke-virtual {v5, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 78
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 79
    iget v5, v0, LT/i;->g:F

    mul-float v5, v5, v19

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_9

    .line 80
    :cond_11
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 81
    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 82
    invoke-virtual {v5}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v5

    iget v12, v0, LT/i;->g:F

    sget-object v13, LT/p;->k:Landroid/graphics/PorterDuff$Mode;

    .line 83
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    and-int v5, v5, v16

    int-to-float v13, v13

    mul-float/2addr v13, v12

    float-to-int v12, v13

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v5, v12

    .line 84
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    :goto_9
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    mul-float v11, p1, v8

    .line 86
    iget v0, v0, LT/i;->e:F

    mul-float/2addr v0, v11

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    invoke-virtual {v3, v10, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_a

    :cond_12
    move/from16 v4, p4

    goto/16 :goto_1

    :cond_13
    :goto_a
    add-int/lit8 v8, v18, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_14
    move-object/from16 v1, p0

    move-object/from16 v3, p3

    .line 88
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getAlpha()F
    .locals 2

    .line 1
    invoke-virtual {p0}, LT/m;->getRootAlpha()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x437f0000    # 255.0f

    .line 7
    .line 8
    div-float/2addr v0, v1

    .line 9
    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    .line 1
    iget v0, p0, LT/m;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    .line 2
    .line 3
    mul-float/2addr p1, v0

    .line 4
    float-to-int p1, p1

    .line 5
    invoke-virtual {p0, p1}, LT/m;->setRootAlpha(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, LT/m;->l:I

    .line 2
    .line 3
    return-void
.end method
