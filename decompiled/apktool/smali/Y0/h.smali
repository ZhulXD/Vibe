.class public LY0/h;
.super Landroid/graphics/drawable/Drawable;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;
.implements LY0/x;


# static fields
.field public static final x:Landroid/graphics/Paint;


# instance fields
.field public b:LY0/g;

.field public final c:[LY0/v;

.field public final d:[LY0/v;

.field public final e:Ljava/util/BitSet;

.field public f:Z

.field public final g:Landroid/graphics/Matrix;

.field public final h:Landroid/graphics/Path;

.field public final i:Landroid/graphics/Path;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/RectF;

.field public final l:Landroid/graphics/Region;

.field public final m:Landroid/graphics/Region;

.field public n:LY0/m;

.field public final o:Landroid/graphics/Paint;

.field public final p:Landroid/graphics/Paint;

.field public final q:LX0/a;

.field public final r:LA1/b;

.field public final s:LY0/o;

.field public t:Landroid/graphics/PorterDuffColorFilter;

.field public u:Landroid/graphics/PorterDuffColorFilter;

.field public final v:Landroid/graphics/RectF;

.field public w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

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
    sput-object v0, LY0/h;->x:Landroid/graphics/Paint;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 14
    .line 15
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, LY0/m;

    invoke-direct {v0}, LY0/m;-><init>()V

    invoke-direct {p0, v0}, LY0/h;-><init>(LY0/m;)V

    return-void
.end method

.method public constructor <init>(LY0/g;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [LY0/v;

    iput-object v1, p0, LY0/h;->c:[LY0/v;

    .line 6
    new-array v0, v0, [LY0/v;

    iput-object v0, p0, LY0/h;->d:[LY0/v;

    .line 7
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, LY0/h;->e:Ljava/util/BitSet;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LY0/h;->g:Landroid/graphics/Matrix;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LY0/h;->h:Landroid/graphics/Path;

    .line 10
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LY0/h;->i:Landroid/graphics/Path;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LY0/h;->j:Landroid/graphics/RectF;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LY0/h;->k:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, LY0/h;->l:Landroid/graphics/Region;

    .line 14
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, LY0/h;->m:Landroid/graphics/Region;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, LY0/h;->o:Landroid/graphics/Paint;

    .line 16
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, LY0/h;->p:Landroid/graphics/Paint;

    .line 17
    new-instance v3, LX0/a;

    invoke-direct {v3}, LX0/a;-><init>()V

    iput-object v3, p0, LY0/h;->q:LX0/a;

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 19
    sget-object v3, LY0/n;->a:LY0/o;

    goto :goto_0

    .line 20
    :cond_0
    new-instance v3, LY0/o;

    invoke-direct {v3}, LY0/o;-><init>()V

    :goto_0
    iput-object v3, p0, LY0/h;->s:LY0/o;

    .line 21
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, LY0/h;->v:Landroid/graphics/RectF;

    .line 22
    iput-boolean v1, p0, LY0/h;->w:Z

    .line 23
    iput-object p1, p0, LY0/h;->b:LY0/g;

    .line 24
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    invoke-virtual {p0}, LY0/h;->r()Z

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, LY0/h;->q([I)Z

    .line 28
    new-instance p1, LA1/b;

    invoke-direct {p1, p0}, LA1/b;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LY0/h;->r:LA1/b;

    return-void
.end method

.method public constructor <init>(LY0/m;)V
    .locals 1

    .line 3
    new-instance v0, LY0/g;

    invoke-direct {v0, p1}, LY0/g;-><init>(LY0/m;)V

    invoke-direct {p0, v0}, LY0/h;-><init>(LY0/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, LY0/m;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)LY0/l;

    move-result-object p1

    invoke-virtual {p1}, LY0/l;->a()LY0/m;

    move-result-object p1

    invoke-direct {p0, p1}, LY0/h;-><init>(LY0/m;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LY0/h;->invalidateSelf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 7

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget-object v2, v0, LY0/g;->a:LY0/m;

    .line 4
    .line 5
    iget v3, v0, LY0/g;->i:F

    .line 6
    .line 7
    iget-object v5, p0, LY0/h;->r:LA1/b;

    .line 8
    .line 9
    iget-object v1, p0, LY0/h;->s:LY0/o;

    .line 10
    .line 11
    move-object v4, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-virtual/range {v1 .. v6}, LY0/o;->a(LY0/m;FLandroid/graphics/RectF;LA1/b;Landroid/graphics/Path;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, LY0/h;->b:LY0/g;

    .line 17
    .line 18
    iget p1, p1, LY0/g;->h:F

    .line 19
    .line 20
    const/high16 p2, 0x3f800000    # 1.0f

    .line 21
    .line 22
    cmpl-float p1, p1, p2

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, LY0/h;->g:Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, LY0/h;->b:LY0/g;

    .line 32
    .line 33
    iget p2, p2, LY0/g;->h:F

    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/high16 v1, 0x40000000    # 2.0f

    .line 40
    .line 41
    div-float/2addr v0, v1

    .line 42
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    div-float/2addr v2, v1

    .line 47
    invoke-virtual {p1, p2, p2, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, LY0/h;->v:Landroid/graphics/RectF;

    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final c(I)I
    .locals 3

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget v1, v0, LY0/g;->m:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    add-float/2addr v1, v2

    .line 7
    iget v2, v0, LY0/g;->l:F

    .line 8
    .line 9
    add-float/2addr v1, v2

    .line 10
    iget-object v0, v0, LY0/g;->b:LQ0/a;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, LQ0/a;->a(IF)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    :cond_0
    return p1
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, LY0/h;->e:Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "h"

    .line 10
    .line 11
    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 17
    .line 18
    iget v0, v0, LY0/g;->p:I

    .line 19
    .line 20
    iget-object v1, p0, LY0/h;->h:Landroid/graphics/Path;

    .line 21
    .line 22
    iget-object v2, p0, LY0/h;->q:LX0/a;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, v2, LX0/a;->a:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    move v3, v0

    .line 33
    :goto_0
    const/4 v4, 0x4

    .line 34
    if-ge v3, v4, :cond_2

    .line 35
    .line 36
    iget-object v4, p0, LY0/h;->c:[LY0/v;

    .line 37
    .line 38
    aget-object v4, v4, v3

    .line 39
    .line 40
    iget-object v5, p0, LY0/h;->b:LY0/g;

    .line 41
    .line 42
    iget v5, v5, LY0/g;->o:I

    .line 43
    .line 44
    sget-object v6, LY0/v;->b:Landroid/graphics/Matrix;

    .line 45
    .line 46
    invoke-virtual {v4, v6, v2, v5, p1}, LY0/v;->a(Landroid/graphics/Matrix;LX0/a;ILandroid/graphics/Canvas;)V

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, LY0/h;->d:[LY0/v;

    .line 50
    .line 51
    aget-object v4, v4, v3

    .line 52
    .line 53
    iget-object v5, p0, LY0/h;->b:LY0/g;

    .line 54
    .line 55
    iget v5, v5, LY0/g;->o:I

    .line 56
    .line 57
    invoke-virtual {v4, v6, v2, v5, p1}, LY0/v;->a(Landroid/graphics/Matrix;LX0/a;ILandroid/graphics/Canvas;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-boolean v2, p0, LY0/h;->w:Z

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    iget-object v2, p0, LY0/h;->b:LY0/g;

    .line 68
    .line 69
    iget v2, v2, LY0/g;->p:I

    .line 70
    .line 71
    int-to-double v2, v2

    .line 72
    int-to-double v4, v0

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v6

    .line 81
    mul-double/2addr v6, v2

    .line 82
    double-to-int v0, v6

    .line 83
    iget-object v2, p0, LY0/h;->b:LY0/g;

    .line 84
    .line 85
    iget v2, v2, LY0/g;->p:I

    .line 86
    .line 87
    int-to-double v2, v2

    .line 88
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 93
    .line 94
    .line 95
    move-result-wide v4

    .line 96
    mul-double/2addr v4, v2

    .line 97
    double-to-int v2, v4

    .line 98
    neg-int v3, v0

    .line 99
    int-to-float v3, v3

    .line 100
    neg-int v4, v2

    .line 101
    int-to-float v4, v4

    .line 102
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    .line 104
    .line 105
    sget-object v3, LY0/h;->x:Landroid/graphics/Paint;

    .line 106
    .line 107
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 108
    .line 109
    .line 110
    int-to-float v0, v0

    .line 111
    int-to-float v1, v2

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    .line 114
    .line 115
    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, LY0/h;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    .line 7
    iget-object v3, v0, LY0/h;->o:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    iget-object v2, v0, LY0/h;->b:LY0/g;

    .line 17
    .line 18
    iget v2, v2, LY0/g;->k:I

    .line 19
    .line 20
    ushr-int/lit8 v4, v2, 0x7

    .line 21
    .line 22
    add-int/2addr v2, v4

    .line 23
    mul-int/2addr v2, v6

    .line 24
    ushr-int/lit8 v2, v2, 0x8

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, LY0/h;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 30
    .line 31
    iget-object v7, v0, LY0/h;->p:Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 34
    .line 35
    .line 36
    iget-object v2, v0, LY0/h;->b:LY0/g;

    .line 37
    .line 38
    iget v2, v2, LY0/g;->j:F

    .line 39
    .line 40
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    iget-object v2, v0, LY0/h;->b:LY0/g;

    .line 48
    .line 49
    iget v2, v2, LY0/g;->k:I

    .line 50
    .line 51
    ushr-int/lit8 v4, v2, 0x7

    .line 52
    .line 53
    add-int/2addr v2, v4

    .line 54
    mul-int/2addr v2, v8

    .line 55
    ushr-int/lit8 v2, v2, 0x8

    .line 56
    .line 57
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    .line 59
    .line 60
    iget-boolean v2, v0, LY0/h;->f:Z

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    move v5, v2

    .line 64
    move-object v2, v3

    .line 65
    iget-object v3, v0, LY0/h;->h:Landroid/graphics/Path;

    .line 66
    .line 67
    if-eqz v5, :cond_6

    .line 68
    .line 69
    invoke-virtual {v0}, LY0/h;->i()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    const/4 v9, 0x0

    .line 74
    const/high16 v10, 0x40000000    # 2.0f

    .line 75
    .line 76
    if-eqz v5, :cond_0

    .line 77
    .line 78
    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    div-float/2addr v5, v10

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    move v5, v9

    .line 85
    :goto_0
    neg-float v5, v5

    .line 86
    iget-object v11, v0, LY0/h;->b:LY0/g;

    .line 87
    .line 88
    iget-object v11, v11, LY0/g;->a:LY0/m;

    .line 89
    .line 90
    invoke-virtual {v11}, LY0/m;->e()LY0/l;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    iget-object v13, v11, LY0/m;->e:LY0/c;

    .line 95
    .line 96
    instance-of v14, v13, LY0/j;

    .line 97
    .line 98
    if-eqz v14, :cond_1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    new-instance v14, LY0/b;

    .line 102
    .line 103
    invoke-direct {v14, v5, v13}, LY0/b;-><init>(FLY0/c;)V

    .line 104
    .line 105
    .line 106
    move-object v13, v14

    .line 107
    :goto_1
    iput-object v13, v12, LY0/l;->e:LY0/c;

    .line 108
    .line 109
    iget-object v13, v11, LY0/m;->f:LY0/c;

    .line 110
    .line 111
    instance-of v14, v13, LY0/j;

    .line 112
    .line 113
    if-eqz v14, :cond_2

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    new-instance v14, LY0/b;

    .line 117
    .line 118
    invoke-direct {v14, v5, v13}, LY0/b;-><init>(FLY0/c;)V

    .line 119
    .line 120
    .line 121
    move-object v13, v14

    .line 122
    :goto_2
    iput-object v13, v12, LY0/l;->f:LY0/c;

    .line 123
    .line 124
    iget-object v13, v11, LY0/m;->h:LY0/c;

    .line 125
    .line 126
    instance-of v14, v13, LY0/j;

    .line 127
    .line 128
    if-eqz v14, :cond_3

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_3
    new-instance v14, LY0/b;

    .line 132
    .line 133
    invoke-direct {v14, v5, v13}, LY0/b;-><init>(FLY0/c;)V

    .line 134
    .line 135
    .line 136
    move-object v13, v14

    .line 137
    :goto_3
    iput-object v13, v12, LY0/l;->h:LY0/c;

    .line 138
    .line 139
    iget-object v11, v11, LY0/m;->g:LY0/c;

    .line 140
    .line 141
    instance-of v13, v11, LY0/j;

    .line 142
    .line 143
    if-eqz v13, :cond_4

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_4
    new-instance v13, LY0/b;

    .line 147
    .line 148
    invoke-direct {v13, v5, v11}, LY0/b;-><init>(FLY0/c;)V

    .line 149
    .line 150
    .line 151
    move-object v11, v13

    .line 152
    :goto_4
    iput-object v11, v12, LY0/l;->g:LY0/c;

    .line 153
    .line 154
    invoke-virtual {v12}, LY0/l;->a()LY0/m;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    iput-object v14, v0, LY0/h;->n:LY0/m;

    .line 159
    .line 160
    iget-object v5, v0, LY0/h;->b:LY0/g;

    .line 161
    .line 162
    iget v15, v5, LY0/g;->i:F

    .line 163
    .line 164
    invoke-virtual {v0}, LY0/h;->g()Landroid/graphics/RectF;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    iget-object v11, v0, LY0/h;->k:Landroid/graphics/RectF;

    .line 169
    .line 170
    invoke-virtual {v11, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, LY0/h;->i()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_5

    .line 178
    .line 179
    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    div-float v9, v5, v10

    .line 184
    .line 185
    :cond_5
    invoke-virtual {v11, v9, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 186
    .line 187
    .line 188
    iget-object v5, v0, LY0/h;->i:Landroid/graphics/Path;

    .line 189
    .line 190
    const/16 v17, 0x0

    .line 191
    .line 192
    iget-object v13, v0, LY0/h;->s:LY0/o;

    .line 193
    .line 194
    move-object/from16 v18, v5

    .line 195
    .line 196
    move-object/from16 v16, v11

    .line 197
    .line 198
    invoke-virtual/range {v13 .. v18}, LY0/o;->a(LY0/m;FLandroid/graphics/RectF;LA1/b;Landroid/graphics/Path;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, LY0/h;->g()Landroid/graphics/RectF;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v0, v5, v3}, LY0/h;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 206
    .line 207
    .line 208
    iput-boolean v4, v0, LY0/h;->f:Z

    .line 209
    .line 210
    :cond_6
    iget-object v5, v0, LY0/h;->b:LY0/g;

    .line 211
    .line 212
    iget v9, v5, LY0/g;->n:I

    .line 213
    .line 214
    const/4 v10, 0x1

    .line 215
    if-eq v9, v10, :cond_a

    .line 216
    .line 217
    iget v10, v5, LY0/g;->o:I

    .line 218
    .line 219
    if-lez v10, :cond_a

    .line 220
    .line 221
    const/4 v10, 0x2

    .line 222
    if-eq v9, v10, :cond_7

    .line 223
    .line 224
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 225
    .line 226
    iget-object v5, v5, LY0/g;->a:LY0/m;

    .line 227
    .line 228
    invoke-virtual {v0}, LY0/h;->g()Landroid/graphics/RectF;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    invoke-virtual {v5, v11}, LY0/m;->d(Landroid/graphics/RectF;)Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-nez v5, :cond_a

    .line 237
    .line 238
    invoke-virtual {v3}, Landroid/graphics/Path;->isConvex()Z

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    if-nez v5, :cond_a

    .line 243
    .line 244
    const/16 v5, 0x1d

    .line 245
    .line 246
    if-ge v9, v5, :cond_a

    .line 247
    .line 248
    :cond_7
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 249
    .line 250
    .line 251
    iget-object v5, v0, LY0/h;->b:LY0/g;

    .line 252
    .line 253
    iget v5, v5, LY0/g;->p:I

    .line 254
    .line 255
    int-to-double v11, v5

    .line 256
    int-to-double v4, v4

    .line 257
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 258
    .line 259
    .line 260
    move-result-wide v13

    .line 261
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 262
    .line 263
    .line 264
    move-result-wide v13

    .line 265
    mul-double/2addr v13, v11

    .line 266
    double-to-int v9, v13

    .line 267
    iget-object v11, v0, LY0/h;->b:LY0/g;

    .line 268
    .line 269
    iget v11, v11, LY0/g;->p:I

    .line 270
    .line 271
    int-to-double v11, v11

    .line 272
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 273
    .line 274
    .line 275
    move-result-wide v4

    .line 276
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 277
    .line 278
    .line 279
    move-result-wide v4

    .line 280
    mul-double/2addr v4, v11

    .line 281
    double-to-int v4, v4

    .line 282
    int-to-float v5, v9

    .line 283
    int-to-float v4, v4

    .line 284
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 285
    .line 286
    .line 287
    iget-boolean v4, v0, LY0/h;->w:Z

    .line 288
    .line 289
    if-nez v4, :cond_8

    .line 290
    .line 291
    invoke-virtual/range {p0 .. p1}, LY0/h;->d(Landroid/graphics/Canvas;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_5

    .line 298
    .line 299
    :cond_8
    iget-object v4, v0, LY0/h;->v:Landroid/graphics/RectF;

    .line 300
    .line 301
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    int-to-float v9, v9

    .line 314
    sub-float/2addr v5, v9

    .line 315
    float-to-int v5, v5

    .line 316
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 317
    .line 318
    .line 319
    move-result v9

    .line 320
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 321
    .line 322
    .line 323
    move-result-object v11

    .line 324
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 325
    .line 326
    .line 327
    move-result v11

    .line 328
    int-to-float v11, v11

    .line 329
    sub-float/2addr v9, v11

    .line 330
    float-to-int v9, v9

    .line 331
    if-ltz v5, :cond_9

    .line 332
    .line 333
    if-ltz v9, :cond_9

    .line 334
    .line 335
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 336
    .line 337
    .line 338
    move-result v11

    .line 339
    float-to-int v11, v11

    .line 340
    iget-object v12, v0, LY0/h;->b:LY0/g;

    .line 341
    .line 342
    iget v12, v12, LY0/g;->o:I

    .line 343
    .line 344
    mul-int/2addr v12, v10

    .line 345
    add-int/2addr v12, v11

    .line 346
    add-int/2addr v12, v5

    .line 347
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    float-to-int v4, v4

    .line 352
    iget-object v11, v0, LY0/h;->b:LY0/g;

    .line 353
    .line 354
    iget v11, v11, LY0/g;->o:I

    .line 355
    .line 356
    mul-int/2addr v11, v10

    .line 357
    add-int/2addr v11, v4

    .line 358
    add-int/2addr v11, v9

    .line 359
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 360
    .line 361
    invoke-static {v12, v11, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    new-instance v10, Landroid/graphics/Canvas;

    .line 366
    .line 367
    invoke-direct {v10, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 371
    .line 372
    .line 373
    move-result-object v11

    .line 374
    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 375
    .line 376
    iget-object v12, v0, LY0/h;->b:LY0/g;

    .line 377
    .line 378
    iget v12, v12, LY0/g;->o:I

    .line 379
    .line 380
    sub-int/2addr v11, v12

    .line 381
    sub-int/2addr v11, v5

    .line 382
    int-to-float v5, v11

    .line 383
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 384
    .line 385
    .line 386
    move-result-object v11

    .line 387
    iget v11, v11, Landroid/graphics/Rect;->top:I

    .line 388
    .line 389
    iget-object v12, v0, LY0/h;->b:LY0/g;

    .line 390
    .line 391
    iget v12, v12, LY0/g;->o:I

    .line 392
    .line 393
    sub-int/2addr v11, v12

    .line 394
    sub-int/2addr v11, v9

    .line 395
    int-to-float v9, v11

    .line 396
    neg-float v11, v5

    .line 397
    neg-float v12, v9

    .line 398
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v10}, LY0/h;->d(Landroid/graphics/Canvas;)V

    .line 402
    .line 403
    .line 404
    const/4 v10, 0x0

    .line 405
    invoke-virtual {v1, v4, v5, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 412
    .line 413
    .line 414
    goto :goto_5

    .line 415
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 416
    .line 417
    const-string v2, "Invalid shadow bounds. Check that the treatments result in a valid path."

    .line 418
    .line 419
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    throw v1

    .line 423
    :cond_a
    :goto_5
    iget-object v4, v0, LY0/h;->b:LY0/g;

    .line 424
    .line 425
    iget-object v5, v4, LY0/g;->q:Landroid/graphics/Paint$Style;

    .line 426
    .line 427
    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 428
    .line 429
    if-eq v5, v9, :cond_b

    .line 430
    .line 431
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 432
    .line 433
    if-ne v5, v9, :cond_c

    .line 434
    .line 435
    :cond_b
    iget-object v4, v4, LY0/g;->a:LY0/m;

    .line 436
    .line 437
    invoke-virtual {v0}, LY0/h;->g()Landroid/graphics/RectF;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    invoke-virtual/range {v0 .. v5}, LY0/h;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LY0/m;Landroid/graphics/RectF;)V

    .line 442
    .line 443
    .line 444
    :cond_c
    invoke-virtual/range {p0 .. p0}, LY0/h;->i()Z

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-eqz v0, :cond_d

    .line 449
    .line 450
    invoke-virtual/range {p0 .. p1}, LY0/h;->f(Landroid/graphics/Canvas;)V

    .line 451
    .line 452
    .line 453
    :cond_d
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 457
    .line 458
    .line 459
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LY0/m;Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    invoke-virtual {p4, p5}, LY0/m;->d(Landroid/graphics/RectF;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p3, p4, LY0/m;->f:LY0/c;

    .line 8
    .line 9
    invoke-interface {p3, p5}, LY0/c;->a(Landroid/graphics/RectF;)F

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    iget-object p4, p0, LY0/h;->b:LY0/g;

    .line 14
    .line 15
    iget p4, p4, LY0/g;->i:F

    .line 16
    .line 17
    mul-float/2addr p3, p4

    .line 18
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public f(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v4, p0, LY0/h;->n:LY0/m;

    .line 2
    .line 3
    invoke-virtual {p0}, LY0/h;->g()Landroid/graphics/RectF;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v5, p0, LY0/h;->k:Landroid/graphics/RectF;

    .line 8
    .line 9
    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, LY0/h;->i()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, LY0/h;->p:Landroid/graphics/Paint;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/high16 v1, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float/2addr v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {v5, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, LY0/h;->i:Landroid/graphics/Path;

    .line 33
    .line 34
    move-object v0, p0

    .line 35
    move-object v1, p1

    .line 36
    invoke-virtual/range {v0 .. v5}, LY0/h;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LY0/m;Landroid/graphics/RectF;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final g()Landroid/graphics/RectF;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LY0/h;->j:Landroid/graphics/RectF;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    return-object v1
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget v0, v0, LY0/g;->k:I

    .line 4
    .line 5
    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 3

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget v1, v0, LY0/g;->n:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v0, LY0/g;->a:LY0/m;

    .line 10
    .line 11
    invoke-virtual {p0}, LY0/h;->g()Landroid/graphics/RectF;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, LY0/m;->d(Landroid/graphics/RectF;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, LY0/h;->h()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, LY0/h;->b:LY0/g;

    .line 26
    .line 27
    iget v1, v1, LY0/g;->i:F

    .line 28
    .line 29
    mul-float/2addr v0, v1

    .line 30
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, LY0/h;->g()Landroid/graphics/RectF;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, LY0/h;->h:Landroid/graphics/Path;

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, LY0/h;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 45
    .line 46
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v2, 0x1e

    .line 50
    .line 51
    if-lt v0, v2, :cond_2

    .line 52
    .line 53
    invoke-static {p1, v1}, LP0/d;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    const/16 v2, 0x1d

    .line 58
    .line 59
    if-lt v0, v2, :cond_3

    .line 60
    .line 61
    :try_start_0
    invoke-static {p1, v1}, LP0/b;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    return-void

    .line 65
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Path;->isConvex()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-static {p1, v1}, LP0/b;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_0
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget-object v0, v0, LY0/g;->g:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LY0/h;->l:Landroid/graphics/Region;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, LY0/h;->g()Landroid/graphics/RectF;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, LY0/h;->h:Landroid/graphics/Path;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v2}, LY0/h;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, LY0/h;->m:Landroid/graphics/Region;

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 22
    .line 23
    .line 24
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public final h()F
    .locals 2

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget-object v0, v0, LY0/g;->a:LY0/m;

    .line 4
    .line 5
    iget-object v0, v0, LY0/m;->e:LY0/c;

    .line 6
    .line 7
    invoke-virtual {p0}, LY0/h;->g()Landroid/graphics/RectF;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, LY0/c;->a(Landroid/graphics/RectF;)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final i()Z
    .locals 2

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget-object v0, v0, LY0/g;->q:Landroid/graphics/Paint$Style;

    .line 4
    .line 5
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, LY0/h;->p:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    cmpl-float v0, v0, v1

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public final invalidateSelf()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY0/h;->f:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 8
    .line 9
    iget-object v0, v0, LY0/g;->e:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 25
    .line 26
    iget-object v0, v0, LY0/g;->d:Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 37
    .line 38
    iget-object v0, v0, LY0/g;->c:Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    return v0

    .line 51
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 52
    return v0
.end method

.method public final j(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    new-instance v1, LQ0/a;

    .line 4
    .line 5
    invoke-direct {v1, p1}, LQ0/a;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, LY0/g;->b:LQ0/a;

    .line 9
    .line 10
    invoke-virtual {p0}, LY0/h;->s()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final k(F)V
    .locals 2

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget v1, v0, LY0/g;->m:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput p1, v0, LY0/g;->m:F

    .line 10
    .line 11
    invoke-virtual {p0}, LY0/h;->s()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final l(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget-object v1, v0, LY0/g;->c:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, LY0/g;->c:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, LY0/h;->onStateChange([I)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final m(F)V
    .locals 2

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget v1, v0, LY0/g;->i:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput p1, v0, LY0/g;->i:F

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, LY0/h;->f:Z

    .line 13
    .line 14
    invoke-virtual {p0}, LY0/h;->invalidateSelf()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, LY0/g;

    .line 2
    .line 3
    iget-object v1, p0, LY0/h;->b:LY0/g;

    .line 4
    .line 5
    invoke-direct {v0, v1}, LY0/g;-><init>(LY0/g;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, LY0/h;->b:LY0/g;

    .line 9
    .line 10
    return-object p0
.end method

.method public final n()V
    .locals 2

    .line 1
    const v0, -0xbbbbbc

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, LY0/h;->q:LX0/a;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, LX0/a;->a(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget v1, v0, LY0/g;->n:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    iput v2, v0, LY0/g;->n:I

    .line 9
    .line 10
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY0/h;->f:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, LY0/h;->q([I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, LY0/h;->r()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, LY0/h;->invalidateSelf()V

    .line 20
    .line 21
    .line 22
    :cond_2
    return p1
.end method

.method public final p(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget-object v1, v0, LY0/g;->d:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, LY0/g;->d:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, LY0/h;->onStateChange([I)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final q([I)Z
    .locals 5

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget-object v0, v0, LY0/g;->c:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, LY0/h;->o:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, LY0/h;->b:LY0/g;

    .line 15
    .line 16
    iget-object v3, v3, LY0/g;->c:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v2, p0, LY0/h;->b:LY0/g;

    .line 31
    .line 32
    iget-object v2, v2, LY0/g;->d:Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, LY0/h;->p:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v4, p0, LY0/h;->b:LY0/g;

    .line 43
    .line 44
    iget-object v4, v4, LY0/g;->d:Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    invoke-virtual {v4, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eq v3, p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    :cond_1
    return v0
.end method

.method public final r()Z
    .locals 7

    .line 1
    iget-object v0, p0, LY0/h;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 2
    .line 3
    iget-object v1, p0, LY0/h;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 4
    .line 5
    iget-object v2, p0, LY0/h;->b:LY0/g;

    .line 6
    .line 7
    iget-object v3, v2, LY0/g;->e:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iget-object v2, v2, LY0/g;->f:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-virtual {v3, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p0, v3}, LY0/h;->c(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    .line 31
    .line 32
    invoke-direct {v5, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    iget-object v2, p0, LY0/h;->o:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v2}, LY0/h;->c(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eq v3, v2, :cond_2

    .line 47
    .line 48
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    .line 49
    .line 50
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 51
    .line 52
    invoke-direct {v5, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v5, 0x0

    .line 57
    :goto_1
    iput-object v5, p0, LY0/h;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 58
    .line 59
    iget-object v2, p0, LY0/h;->b:LY0/g;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    iput-object v2, p0, LY0/h;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 66
    .line 67
    iget-object v2, p0, LY0/h;->b:LY0/g;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, LY0/h;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 73
    .line 74
    invoke-static {v0, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, LY0/h;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 81
    .line 82
    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const/4 v0, 0x0

    .line 90
    return v0

    .line 91
    :cond_4
    :goto_2
    return v4
.end method

.method public final s()V
    .locals 4

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget v1, v0, LY0/g;->m:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    add-float/2addr v1, v2

    .line 7
    const/high16 v2, 0x3f400000    # 0.75f

    .line 8
    .line 9
    mul-float/2addr v2, v1

    .line 10
    float-to-double v2, v2

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    double-to-int v2, v2

    .line 16
    iput v2, v0, LY0/g;->o:I

    .line 17
    .line 18
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 19
    .line 20
    const/high16 v2, 0x3e800000    # 0.25f

    .line 21
    .line 22
    mul-float/2addr v1, v2

    .line 23
    float-to-double v1, v1

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    double-to-int v1, v1

    .line 29
    iput v1, v0, LY0/g;->p:I

    .line 30
    .line 31
    invoke-virtual {p0}, LY0/h;->r()Z

    .line 32
    .line 33
    .line 34
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget v1, v0, LY0/g;->k:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput p1, v0, LY0/g;->k:I

    .line 8
    .line 9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p1, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setShapeAppearanceModel(LY0/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iput-object p1, v0, LY0/g;->a:LY0/m;

    .line 4
    .line 5
    invoke-virtual {p0}, LY0/h;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setTint(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, LY0/h;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iput-object p1, v0, LY0/g;->e:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    invoke-virtual {p0}, LY0/h;->r()Z

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, LY0/h;->b:LY0/g;

    .line 2
    .line 3
    iget-object v1, v0, LY0/g;->f:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, LY0/g;->f:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    invoke-virtual {p0}, LY0/h;->r()Z

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
