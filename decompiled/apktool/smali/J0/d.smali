.class public final LJ0/d;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final y:D

.field public static final z:Landroid/graphics/drawable/ColorDrawable;


# instance fields
.field public final a:Lcom/google/android/material/card/MaterialCardView;

.field public final b:Landroid/graphics/Rect;

.field public final c:LY0/h;

.field public final d:LY0/h;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:LY0/m;

.field public n:Landroid/content/res/ColorStateList;

.field public o:Landroid/graphics/drawable/RippleDrawable;

.field public p:Landroid/graphics/drawable/LayerDrawable;

.field public q:LY0/h;

.field public r:Z

.field public s:Z

.field public t:Landroid/animation/ValueAnimator;

.field public final u:Landroid/animation/TimeInterpolator;

.field public final v:I

.field public final w:I

.field public x:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x4046800000000000L    # 45.0

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sput-wide v0, LJ0/d;->y:D

    .line 15
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v1, 0x1c

    .line 19
    .line 20
    if-gt v0, v1, :cond_0

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    sput-object v0, LJ0/d;->z:Landroid/graphics/drawable/ColorDrawable;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LJ0/d;->b:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, LJ0/d;->r:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, LJ0/d;->x:F

    .line 16
    .line 17
    iput-object p1, p0, LJ0/d;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 18
    .line 19
    new-instance v1, LY0/h;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const v3, 0x7f0402ce

    .line 26
    .line 27
    .line 28
    const v4, 0x7f130418

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, p2, v3, v4}, LY0/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, LJ0/d;->c:LY0/h;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, LY0/h;->j(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, LY0/h;->n()V

    .line 44
    .line 45
    .line 46
    iget-object v1, v1, LY0/h;->b:LY0/g;

    .line 47
    .line 48
    iget-object v1, v1, LY0/g;->a:LY0/m;

    .line 49
    .line 50
    invoke-virtual {v1}, LY0/m;->e()LY0/l;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    sget-object v4, LA0/a;->d:[I

    .line 59
    .line 60
    const v5, 0x7f13011f

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p2, v4, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const/4 v2, 0x3

    .line 68
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_0

    .line 73
    .line 74
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {v1, v0}, LY0/l;->b(F)V

    .line 79
    .line 80
    .line 81
    :cond_0
    new-instance v0, LY0/h;

    .line 82
    .line 83
    invoke-direct {v0}, LY0/h;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, LJ0/d;->d:LY0/h;

    .line 87
    .line 88
    invoke-virtual {v1}, LY0/l;->a()LY0/m;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, LJ0/d;->h(LY0/m;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const v1, 0x7f040313

    .line 100
    .line 101
    .line 102
    sget-object v2, LB0/a;->a:Landroid/view/animation/LinearInterpolator;

    .line 103
    .line 104
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/c;->O(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, LJ0/d;->u:Landroid/animation/TimeInterpolator;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const v1, 0x7f040309

    .line 115
    .line 116
    .line 117
    const/16 v2, 0x12c

    .line 118
    .line 119
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/c;->N(Landroid/content/Context;II)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iput v0, p0, LJ0/d;->v:I

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const v0, 0x7f040308

    .line 130
    .line 131
    .line 132
    invoke-static {p1, v0, v2}, Lcom/bumptech/glide/c;->N(Landroid/content/Context;II)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    iput p1, p0, LJ0/d;->w:I

    .line 137
    .line 138
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public static b(La/a;F)F
    .locals 4

    .line 1
    instance-of v0, p0, LY0/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 6
    .line 7
    sget-wide v2, LJ0/d;->y:D

    .line 8
    .line 9
    sub-double/2addr v0, v2

    .line 10
    float-to-double p0, p1

    .line 11
    mul-double/2addr v0, p0

    .line 12
    double-to-float p0, v0

    .line 13
    return p0

    .line 14
    :cond_0
    instance-of p0, p0, LY0/d;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    const/high16 p0, 0x40000000    # 2.0f

    .line 19
    .line 20
    div-float/2addr p1, p0

    .line 21
    return p1

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0
.end method


# virtual methods
.method public final a()F
    .locals 5

    .line 1
    iget-object v0, p0, LJ0/d;->m:LY0/m;

    .line 2
    .line 3
    iget-object v0, v0, LY0/m;->a:La/a;

    .line 4
    .line 5
    iget-object v1, p0, LJ0/d;->c:LY0/h;

    .line 6
    .line 7
    invoke-virtual {v1}, LY0/h;->h()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v0, v2}, LJ0/d;->b(La/a;F)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v2, p0, LJ0/d;->m:LY0/m;

    .line 16
    .line 17
    iget-object v2, v2, LY0/m;->b:La/a;

    .line 18
    .line 19
    iget-object v3, v1, LY0/h;->b:LY0/g;

    .line 20
    .line 21
    iget-object v3, v3, LY0/g;->a:LY0/m;

    .line 22
    .line 23
    iget-object v3, v3, LY0/m;->f:LY0/c;

    .line 24
    .line 25
    invoke-virtual {v1}, LY0/h;->g()Landroid/graphics/RectF;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-interface {v3, v4}, LY0/c;->a(Landroid/graphics/RectF;)F

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v2, v3}, LJ0/d;->b(La/a;F)F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v2, p0, LJ0/d;->m:LY0/m;

    .line 42
    .line 43
    iget-object v2, v2, LY0/m;->c:La/a;

    .line 44
    .line 45
    iget-object v3, v1, LY0/h;->b:LY0/g;

    .line 46
    .line 47
    iget-object v3, v3, LY0/g;->a:LY0/m;

    .line 48
    .line 49
    iget-object v3, v3, LY0/m;->g:LY0/c;

    .line 50
    .line 51
    invoke-virtual {v1}, LY0/h;->g()Landroid/graphics/RectF;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-interface {v3, v4}, LY0/c;->a(Landroid/graphics/RectF;)F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-static {v2, v3}, LJ0/d;->b(La/a;F)F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iget-object v3, p0, LJ0/d;->m:LY0/m;

    .line 64
    .line 65
    iget-object v3, v3, LY0/m;->d:La/a;

    .line 66
    .line 67
    iget-object v4, v1, LY0/h;->b:LY0/g;

    .line 68
    .line 69
    iget-object v4, v4, LY0/g;->a:LY0/m;

    .line 70
    .line 71
    iget-object v4, v4, LY0/m;->h:LY0/c;

    .line 72
    .line 73
    invoke-virtual {v1}, LY0/h;->g()Landroid/graphics/RectF;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v4, v1}, LY0/c;->a(Landroid/graphics/RectF;)F

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v3, v1}, LJ0/d;->b(La/a;F)F

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    return v0
.end method

.method public final c()Landroid/graphics/drawable/LayerDrawable;
    .locals 5

    .line 1
    iget-object v0, p0, LJ0/d;->o:Landroid/graphics/drawable/RippleDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, LW0/a;->a:[I

    .line 6
    .line 7
    new-instance v0, LY0/h;

    .line 8
    .line 9
    iget-object v1, p0, LJ0/d;->m:LY0/m;

    .line 10
    .line 11
    invoke-direct {v0, v1}, LY0/h;-><init>(LY0/m;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, LJ0/d;->q:LY0/h;

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 17
    .line 18
    iget-object v1, p0, LJ0/d;->k:Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iget-object v3, p0, LJ0/d;->q:LY0/h;

    .line 22
    .line 23
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, LJ0/d;->o:Landroid/graphics/drawable/RippleDrawable;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, LJ0/d;->p:Landroid/graphics/drawable/LayerDrawable;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 33
    .line 34
    iget-object v1, p0, LJ0/d;->o:Landroid/graphics/drawable/RippleDrawable;

    .line 35
    .line 36
    iget-object v2, p0, LJ0/d;->j:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    const/4 v3, 0x3

    .line 39
    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    aput-object v1, v3, v4

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    iget-object v4, p0, LJ0/d;->d:LY0/h;

    .line 46
    .line 47
    aput-object v4, v3, v1

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    aput-object v2, v3, v1

    .line 51
    .line 52
    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, LJ0/d;->p:Landroid/graphics/drawable/LayerDrawable;

    .line 56
    .line 57
    const v2, 0x7f090216

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, LJ0/d;->p:Landroid/graphics/drawable/LayerDrawable;

    .line 64
    .line 65
    return-object v0
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)LJ0/c;
    .locals 8

    .line 1
    iget-object v0, p0, LJ0/d;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp/a;->getUseCompatPadding()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lp/a;->getMaxCardElevation()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 14
    .line 15
    mul-float/2addr v1, v2

    .line 16
    invoke-virtual {p0}, LJ0/d;->i()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, LJ0/d;->a()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v2, v3

    .line 29
    :goto_0
    add-float/2addr v1, v2

    .line 30
    float-to-double v1, v1

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    double-to-int v1, v1

    .line 36
    invoke-virtual {v0}, Lp/a;->getMaxCardElevation()F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p0}, LJ0/d;->i()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, LJ0/d;->a()F

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    :cond_1
    add-float/2addr v0, v3

    .line 51
    float-to-double v2, v0

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    double-to-int v0, v2

    .line 57
    move v4, v0

    .line 58
    move v5, v1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v1, 0x0

    .line 61
    move v4, v1

    .line 62
    move v5, v4

    .line 63
    :goto_1
    new-instance v2, LJ0/c;

    .line 64
    .line 65
    move v6, v4

    .line 66
    move v7, v5

    .line 67
    move-object v3, p1

    .line 68
    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 69
    .line 70
    .line 71
    return-object v2
.end method

.method public final e(II)V
    .locals 14

    .line 1
    iget-object v0, p0, LJ0/d;->p:Landroid/graphics/drawable/LayerDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, LJ0/d;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lp/a;->getUseCompatPadding()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Lp/a;->getMaxCardElevation()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 18
    .line 19
    mul-float/2addr v1, v2

    .line 20
    invoke-virtual {p0}, LJ0/d;->i()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, LJ0/d;->a()F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v2, v3

    .line 33
    :goto_0
    add-float/2addr v1, v2

    .line 34
    const/high16 v2, 0x40000000    # 2.0f

    .line 35
    .line 36
    mul-float/2addr v1, v2

    .line 37
    float-to-double v4, v1

    .line 38
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    double-to-int v1, v4

    .line 43
    invoke-virtual {v0}, Lp/a;->getMaxCardElevation()F

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {p0}, LJ0/d;->i()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, LJ0/d;->a()F

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    :cond_1
    add-float/2addr v4, v3

    .line 58
    mul-float/2addr v4, v2

    .line 59
    float-to-double v2, v4

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    double-to-int v2, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v1, 0x0

    .line 67
    move v2, v1

    .line 68
    :goto_1
    iget v3, p0, LJ0/d;->g:I

    .line 69
    .line 70
    const v4, 0x800005

    .line 71
    .line 72
    .line 73
    and-int v5, v3, v4

    .line 74
    .line 75
    if-ne v5, v4, :cond_3

    .line 76
    .line 77
    iget v5, p0, LJ0/d;->e:I

    .line 78
    .line 79
    sub-int v5, p1, v5

    .line 80
    .line 81
    iget v6, p0, LJ0/d;->f:I

    .line 82
    .line 83
    sub-int/2addr v5, v6

    .line 84
    sub-int/2addr v5, v2

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    iget v5, p0, LJ0/d;->e:I

    .line 87
    .line 88
    :goto_2
    and-int/lit8 v6, v3, 0x50

    .line 89
    .line 90
    const/16 v7, 0x50

    .line 91
    .line 92
    if-ne v6, v7, :cond_4

    .line 93
    .line 94
    iget v6, p0, LJ0/d;->e:I

    .line 95
    .line 96
    :goto_3
    move v13, v6

    .line 97
    goto :goto_4

    .line 98
    :cond_4
    iget v6, p0, LJ0/d;->e:I

    .line 99
    .line 100
    sub-int v6, p2, v6

    .line 101
    .line 102
    iget v8, p0, LJ0/d;->f:I

    .line 103
    .line 104
    sub-int/2addr v6, v8

    .line 105
    sub-int/2addr v6, v1

    .line 106
    goto :goto_3

    .line 107
    :goto_4
    and-int v6, v3, v4

    .line 108
    .line 109
    if-ne v6, v4, :cond_5

    .line 110
    .line 111
    iget p1, p0, LJ0/d;->e:I

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_5
    iget v4, p0, LJ0/d;->e:I

    .line 115
    .line 116
    sub-int/2addr p1, v4

    .line 117
    iget v4, p0, LJ0/d;->f:I

    .line 118
    .line 119
    sub-int/2addr p1, v4

    .line 120
    sub-int/2addr p1, v2

    .line 121
    :goto_5
    and-int/lit8 v2, v3, 0x50

    .line 122
    .line 123
    if-ne v2, v7, :cond_6

    .line 124
    .line 125
    iget v2, p0, LJ0/d;->e:I

    .line 126
    .line 127
    sub-int v2, p2, v2

    .line 128
    .line 129
    iget v3, p0, LJ0/d;->f:I

    .line 130
    .line 131
    sub-int/2addr v2, v3

    .line 132
    sub-int/2addr v2, v1

    .line 133
    :goto_6
    move v11, v2

    .line 134
    goto :goto_7

    .line 135
    :cond_6
    iget v2, p0, LJ0/d;->e:I

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :goto_7
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    const/4 v1, 0x1

    .line 143
    if-ne v0, v1, :cond_7

    .line 144
    .line 145
    move v10, p1

    .line 146
    move v12, v5

    .line 147
    goto :goto_8

    .line 148
    :cond_7
    move v12, p1

    .line 149
    move v10, v5

    .line 150
    :goto_8
    iget-object v8, p0, LJ0/d;->p:Landroid/graphics/drawable/LayerDrawable;

    .line 151
    .line 152
    const/4 v9, 0x2

    .line 153
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 154
    .line 155
    .line 156
    :cond_8
    return-void
.end method

.method public final f(ZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, LJ0/d;->j:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/high16 v3, 0x3f800000    # 1.0f

    .line 8
    .line 9
    if-eqz p2, :cond_4

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    move v2, v3

    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget p2, p0, LJ0/d;->x:F

    .line 17
    .line 18
    sub-float/2addr v3, p2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget v3, p0, LJ0/d;->x:F

    .line 21
    .line 22
    :goto_0
    iget-object p2, p0, LJ0/d;->t:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 27
    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    iput-object p2, p0, LJ0/d;->t:Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    :cond_2
    iget p2, p0, LJ0/d;->x:F

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    new-array v0, v0, [F

    .line 36
    .line 37
    aput p2, v0, v1

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    aput v2, v0, p2

    .line 41
    .line 42
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iput-object p2, p0, LJ0/d;->t:Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    new-instance v0, LJ0/b;

    .line 49
    .line 50
    invoke-direct {v0, v1, p0}, LJ0/b;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, LJ0/d;->t:Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    iget-object v0, p0, LJ0/d;->u:Landroid/animation/TimeInterpolator;

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, LJ0/d;->t:Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    iget p1, p0, LJ0/d;->v:I

    .line 68
    .line 69
    :goto_1
    int-to-float p1, p1

    .line 70
    mul-float/2addr p1, v3

    .line 71
    float-to-long v0, p1

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget p1, p0, LJ0/d;->w:I

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :goto_2
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, LJ0/d;->t:Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    if-eqz p1, :cond_5

    .line 86
    .line 87
    const/16 v1, 0xff

    .line 88
    .line 89
    :cond_5
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 90
    .line 91
    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    move v2, v3

    .line 95
    :cond_6
    iput v2, p0, LJ0/d;->x:F

    .line 96
    .line 97
    :cond_7
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, LJ0/d;->j:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    iget-object v0, p0, LJ0/d;->l:Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, LJ0/d;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 19
    .line 20
    iget-boolean p1, p1, Lcom/google/android/material/card/MaterialCardView;->k:Z

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, v0}, LJ0/d;->f(ZZ)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object p1, LJ0/d;->z:Landroid/graphics/drawable/ColorDrawable;

    .line 28
    .line 29
    iput-object p1, p0, LJ0/d;->j:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, LJ0/d;->p:Landroid/graphics/drawable/LayerDrawable;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const v0, 0x7f090216

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, LJ0/d;->j:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final h(LY0/m;)V
    .locals 3

    .line 1
    iput-object p1, p0, LJ0/d;->m:LY0/m;

    .line 2
    .line 3
    iget-object v0, p0, LJ0/d;->c:LY0/h;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LY0/h;->setShapeAppearanceModel(LY0/m;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, LY0/h;->b:LY0/g;

    .line 9
    .line 10
    iget-object v1, v1, LY0/g;->a:LY0/m;

    .line 11
    .line 12
    invoke-virtual {v0}, LY0/h;->g()Landroid/graphics/RectF;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, LY0/m;->d(Landroid/graphics/RectF;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    xor-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    iput-boolean v1, v0, LY0/h;->w:Z

    .line 23
    .line 24
    iget-object v0, p0, LJ0/d;->d:LY0/h;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, p1}, LY0/h;->setShapeAppearanceModel(LY0/m;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, LJ0/d;->q:LY0/h;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, p1}, LY0/h;->setShapeAppearanceModel(LY0/m;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final i()Z
    .locals 3

    .line 1
    iget-object v0, p0, LJ0/d;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp/a;->getPreventCornerOverlap()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, LJ0/d;->c:LY0/h;

    .line 10
    .line 11
    iget-object v2, v1, LY0/h;->b:LY0/g;

    .line 12
    .line 13
    iget-object v2, v2, LY0/g;->a:LY0/m;

    .line 14
    .line 15
    invoke-virtual {v1}, LY0/h;->g()Landroid/graphics/RectF;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v2, v1}, LY0/m;->d(Landroid/graphics/RectF;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lp/a;->getUseCompatPadding()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method public final j()Z
    .locals 2

    .line 1
    iget-object v0, p0, LJ0/d;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->isDuplicateParentStateEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    instance-of v1, v1, Landroid/view/View;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/view/View;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    return v0
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, LJ0/d;->i:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, LJ0/d;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, LJ0/d;->c()Landroid/graphics/drawable/LayerDrawable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, LJ0/d;->d:LY0/h;

    .line 15
    .line 16
    :goto_0
    iput-object v1, p0, LJ0/d;->i:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, LJ0/d;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    instance-of v2, v2, Landroid/graphics/drawable/InsetDrawable;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0, v1}, LJ0/d;->d(Landroid/graphics/drawable/Drawable;)LJ0/c;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public final l()V
    .locals 6

    .line 1
    iget-object v0, p0, LJ0/d;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp/a;->getPreventCornerOverlap()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, LJ0/d;->c:LY0/h;

    .line 11
    .line 12
    iget-object v3, v1, LY0/h;->b:LY0/g;

    .line 13
    .line 14
    iget-object v3, v3, LY0/g;->a:LY0/m;

    .line 15
    .line 16
    invoke-virtual {v1}, LY0/h;->g()Landroid/graphics/RectF;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v3, v1}, LY0/m;->d(Landroid/graphics/RectF;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, LJ0/d;->i()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0}, LJ0/d;->a()F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v1, v2

    .line 39
    :goto_1
    invoke-virtual {v0}, Lp/a;->getPreventCornerOverlap()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lp/a;->getUseCompatPadding()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 52
    .line 53
    sget-wide v4, LJ0/d;->y:D

    .line 54
    .line 55
    sub-double/2addr v2, v4

    .line 56
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getCardViewRadius()F

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    float-to-double v4, v4

    .line 61
    mul-double/2addr v2, v4

    .line 62
    double-to-float v2, v2

    .line 63
    :cond_2
    sub-float/2addr v1, v2

    .line 64
    float-to-int v1, v1

    .line 65
    iget-object v2, p0, LJ0/d;->b:Landroid/graphics/Rect;

    .line 66
    .line 67
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 68
    .line 69
    add-int/2addr v3, v1

    .line 70
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 71
    .line 72
    add-int/2addr v4, v1

    .line 73
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 74
    .line 75
    add-int/2addr v5, v1

    .line 76
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 77
    .line 78
    add-int/2addr v2, v1

    .line 79
    iget-object v1, v0, Lp/a;->d:Landroid/graphics/Rect;

    .line 80
    .line 81
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v0, Lp/a;->f:LA1/d;

    .line 85
    .line 86
    iget-object v1, v0, LA1/d;->d:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v1, Lp/a;

    .line 89
    .line 90
    invoke-virtual {v1}, Lp/a;->getUseCompatPadding()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_3

    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v1, v1, v1, v1}, LA1/d;->G(IIII)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    iget-object v2, v0, LA1/d;->c:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 104
    .line 105
    check-cast v2, Lp/b;

    .line 106
    .line 107
    iget v3, v2, Lp/b;->e:F

    .line 108
    .line 109
    iget v2, v2, Lp/b;->a:F

    .line 110
    .line 111
    invoke-virtual {v1}, Lp/a;->getPreventCornerOverlap()Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-static {v3, v2, v4}, Lp/c;->a(FFZ)F

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    float-to-double v4, v4

    .line 120
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    double-to-int v4, v4

    .line 125
    invoke-virtual {v1}, Lp/a;->getPreventCornerOverlap()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-static {v3, v2, v1}, Lp/c;->b(FFZ)F

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    float-to-double v1, v1

    .line 134
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    double-to-int v1, v1

    .line 139
    invoke-virtual {v0, v4, v1, v4, v1}, LA1/d;->G(IIII)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-boolean v0, p0, LJ0/d;->r:Z

    .line 2
    .line 3
    iget-object v1, p0, LJ0/d;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LJ0/d;->c:LY0/h;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, LJ0/d;->d(Landroid/graphics/drawable/Drawable;)LJ0/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, LJ0/d;->i:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, LJ0/d;->d(Landroid/graphics/drawable/Drawable;)LJ0/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
