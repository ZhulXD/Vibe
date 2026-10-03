.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final b:Landroid/util/SparseArray;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lv/e;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:I

.field public k:Lx/m;

.field public l:LA1/d;

.field public m:I

.field public n:Ljava/util/HashMap;

.field public final o:Landroid/util/SparseArray;

.field public final p:Lx/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Lv/e;

    invoke-direct {p1}, Lv/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lv/e;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/16 v0, 0x107

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lx/m;

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:LA1/d;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroid/util/SparseArray;

    .line 16
    new-instance v0, Lx/f;

    invoke-direct {v0, p0}, Lx/f;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lx/f;

    .line 17
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 21
    new-instance p1, Lv/e;

    invoke-direct {p1}, Lv/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lv/e;

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 23
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const p1, 0x7fffffff

    .line 24
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 25
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/16 p1, 0x107

    .line 27
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lx/m;

    .line 29
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:LA1/d;

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    .line 32
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroid/util/SparseArray;

    .line 33
    new-instance p1, Lx/f;

    invoke-direct {p1, p0}, Lx/f;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lx/f;

    .line 34
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static a()Lx/e;
    .locals 7

    .line 1
    new-instance v0, Lx/e;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, v0, Lx/e;->a:I

    .line 9
    .line 10
    iput v1, v0, Lx/e;->b:I

    .line 11
    .line 12
    const/high16 v2, -0x40800000    # -1.0f

    .line 13
    .line 14
    iput v2, v0, Lx/e;->c:F

    .line 15
    .line 16
    iput v1, v0, Lx/e;->d:I

    .line 17
    .line 18
    iput v1, v0, Lx/e;->e:I

    .line 19
    .line 20
    iput v1, v0, Lx/e;->f:I

    .line 21
    .line 22
    iput v1, v0, Lx/e;->g:I

    .line 23
    .line 24
    iput v1, v0, Lx/e;->h:I

    .line 25
    .line 26
    iput v1, v0, Lx/e;->i:I

    .line 27
    .line 28
    iput v1, v0, Lx/e;->j:I

    .line 29
    .line 30
    iput v1, v0, Lx/e;->k:I

    .line 31
    .line 32
    iput v1, v0, Lx/e;->l:I

    .line 33
    .line 34
    iput v1, v0, Lx/e;->m:I

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    iput v3, v0, Lx/e;->n:I

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    iput v4, v0, Lx/e;->o:F

    .line 41
    .line 42
    iput v1, v0, Lx/e;->p:I

    .line 43
    .line 44
    iput v1, v0, Lx/e;->q:I

    .line 45
    .line 46
    iput v1, v0, Lx/e;->r:I

    .line 47
    .line 48
    iput v1, v0, Lx/e;->s:I

    .line 49
    .line 50
    iput v1, v0, Lx/e;->t:I

    .line 51
    .line 52
    iput v1, v0, Lx/e;->u:I

    .line 53
    .line 54
    iput v1, v0, Lx/e;->v:I

    .line 55
    .line 56
    iput v1, v0, Lx/e;->w:I

    .line 57
    .line 58
    iput v1, v0, Lx/e;->x:I

    .line 59
    .line 60
    iput v1, v0, Lx/e;->y:I

    .line 61
    .line 62
    const/high16 v4, 0x3f000000    # 0.5f

    .line 63
    .line 64
    iput v4, v0, Lx/e;->z:F

    .line 65
    .line 66
    iput v4, v0, Lx/e;->A:F

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    iput-object v5, v0, Lx/e;->B:Ljava/lang/String;

    .line 70
    .line 71
    const/4 v6, 0x1

    .line 72
    iput v6, v0, Lx/e;->C:I

    .line 73
    .line 74
    iput v2, v0, Lx/e;->D:F

    .line 75
    .line 76
    iput v2, v0, Lx/e;->E:F

    .line 77
    .line 78
    iput v3, v0, Lx/e;->F:I

    .line 79
    .line 80
    iput v3, v0, Lx/e;->G:I

    .line 81
    .line 82
    iput v3, v0, Lx/e;->H:I

    .line 83
    .line 84
    iput v3, v0, Lx/e;->I:I

    .line 85
    .line 86
    iput v3, v0, Lx/e;->J:I

    .line 87
    .line 88
    iput v3, v0, Lx/e;->K:I

    .line 89
    .line 90
    iput v3, v0, Lx/e;->L:I

    .line 91
    .line 92
    iput v3, v0, Lx/e;->M:I

    .line 93
    .line 94
    const/high16 v2, 0x3f800000    # 1.0f

    .line 95
    .line 96
    iput v2, v0, Lx/e;->N:F

    .line 97
    .line 98
    iput v2, v0, Lx/e;->O:F

    .line 99
    .line 100
    iput v1, v0, Lx/e;->P:I

    .line 101
    .line 102
    iput v1, v0, Lx/e;->Q:I

    .line 103
    .line 104
    iput v1, v0, Lx/e;->R:I

    .line 105
    .line 106
    iput-boolean v3, v0, Lx/e;->S:Z

    .line 107
    .line 108
    iput-boolean v3, v0, Lx/e;->T:Z

    .line 109
    .line 110
    iput-object v5, v0, Lx/e;->U:Ljava/lang/String;

    .line 111
    .line 112
    iput-boolean v6, v0, Lx/e;->V:Z

    .line 113
    .line 114
    iput-boolean v6, v0, Lx/e;->W:Z

    .line 115
    .line 116
    iput-boolean v3, v0, Lx/e;->X:Z

    .line 117
    .line 118
    iput-boolean v3, v0, Lx/e;->Y:Z

    .line 119
    .line 120
    iput-boolean v3, v0, Lx/e;->Z:Z

    .line 121
    .line 122
    iput v1, v0, Lx/e;->a0:I

    .line 123
    .line 124
    iput v1, v0, Lx/e;->b0:I

    .line 125
    .line 126
    iput v1, v0, Lx/e;->c0:I

    .line 127
    .line 128
    iput v1, v0, Lx/e;->d0:I

    .line 129
    .line 130
    iput v1, v0, Lx/e;->e0:I

    .line 131
    .line 132
    iput v1, v0, Lx/e;->f0:I

    .line 133
    .line 134
    iput v4, v0, Lx/e;->g0:F

    .line 135
    .line 136
    new-instance v1, Lv/d;

    .line 137
    .line 138
    invoke-direct {v1}, Lv/d;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v1, v0, Lx/e;->k0:Lv/d;

    .line 142
    .line 143
    return-object v0
.end method

.method private getPaddingWidth()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    if-lez v1, :cond_0

    .line 37
    .line 38
    return v1

    .line 39
    :cond_0
    return v2
.end method


# virtual methods
.method public final b(Landroid/view/View;)Lv/d;
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lv/e;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lx/e;

    .line 15
    .line 16
    iget-object p1, p1, Lx/e;->k0:Lv/d;

    .line 17
    .line 18
    return-object p1
.end method

.method public final c(Landroid/util/AttributeSet;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lv/e;

    .line 2
    .line 3
    iput-object p0, v0, Lv/d;->U:Landroid/view/View;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lx/f;

    .line 6
    .line 7
    iput-object v1, v0, Lv/e;->g0:Lx/f;

    .line 8
    .line 9
    iget-object v2, v0, Lv/e;->f0:Lw/e;

    .line 10
    .line 11
    iput-object v1, v2, Lw/e;->f:Lx/f;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lx/m;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz p1, :cond_8

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    sget-object v4, Lx/q;->b:[I

    .line 33
    .line 34
    invoke-virtual {v3, p1, v4, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    move v3, v2

    .line 43
    :goto_0
    if-ge v3, p2, :cond_7

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/16 v5, 0x9

    .line 50
    .line 51
    if-ne v4, v5, :cond_0

    .line 52
    .line 53
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 54
    .line 55
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_0
    const/16 v5, 0xa

    .line 63
    .line 64
    if-ne v4, v5, :cond_1

    .line 65
    .line 66
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 67
    .line 68
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    const/4 v5, 0x7

    .line 76
    if-ne v4, v5, :cond_2

    .line 77
    .line 78
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 79
    .line 80
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const/16 v5, 0x8

    .line 88
    .line 89
    if-ne v4, v5, :cond_3

    .line 90
    .line 91
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 92
    .line 93
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const/16 v5, 0x59

    .line 101
    .line 102
    if-ne v4, v5, :cond_4

    .line 103
    .line 104
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 105
    .line 106
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    const/16 v5, 0x26

    .line 114
    .line 115
    if-ne v4, v5, :cond_5

    .line 116
    .line 117
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_6

    .line 122
    .line 123
    :try_start_0
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catch_0
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:LA1/d;

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    const/16 v5, 0x12

    .line 131
    .line 132
    if-ne v4, v5, :cond_6

    .line 133
    .line 134
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    :try_start_1
    new-instance v5, Lx/m;

    .line 139
    .line 140
    invoke-direct {v5}, Lx/m;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lx/m;

    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v5, v6, v4}, Lx/m;->e(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :catch_1
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lx/m;

    .line 154
    .line 155
    :goto_1
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 156
    .line 157
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    .line 162
    .line 163
    :cond_8
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 164
    .line 165
    iput p1, v0, Lv/e;->p0:I

    .line 166
    .line 167
    const/16 p2, 0x100

    .line 168
    .line 169
    and-int/2addr p1, p2

    .line 170
    if-ne p1, p2, :cond_9

    .line 171
    .line 172
    const/4 v2, 0x1

    .line 173
    :cond_9
    sput-boolean v2, Lu/e;->p:Z

    .line 174
    .line 175
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lx/e;

    .line 2
    .line 3
    return p1
.end method

.method public final d(I)V
    .locals 7

    .line 1
    new-instance v0, LA1/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v2, 0x19

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v2, v3}, LA1/d;-><init>(IZ)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, LA1/d;->c:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v2, Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, v0, LA1/d;->d:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x0

    .line 40
    :goto_0
    const/4 v4, 0x1

    .line 41
    if-eq v2, v4, :cond_4

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    const/4 v4, 0x2

    .line 46
    if-eq v2, v4, :cond_0

    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    sparse-switch v4, :sswitch_data_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :sswitch_0
    const-string v4, "Variant"

    .line 63
    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    new-instance v2, Lx/g;

    .line 71
    .line 72
    invoke-direct {v2, v1, p1}, Lx/g;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 73
    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    iget-object v4, v3, LC0/b;->c:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v4, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :catch_0
    move-exception p1

    .line 86
    goto :goto_3

    .line 87
    :catch_1
    move-exception p1

    .line 88
    goto :goto_4

    .line 89
    :sswitch_1
    const-string v4, "layoutDescription"

    .line 90
    .line 91
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :sswitch_2
    const-string v4, "StateSet"

    .line 99
    .line 100
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :sswitch_3
    const-string v4, "State"

    .line 108
    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_1

    .line 114
    .line 115
    new-instance v3, LC0/b;

    .line 116
    .line 117
    invoke-direct {v3, v1, p1}, LC0/b;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 118
    .line 119
    .line 120
    iget-object v2, v0, LA1/d;->c:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v2, Landroid/util/SparseArray;

    .line 123
    .line 124
    iget v4, v3, LC0/b;->a:I

    .line 125
    .line 126
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :sswitch_4
    const-string v4, "ConstraintSet"

    .line 131
    .line 132
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_1

    .line 137
    .line 138
    invoke-virtual {v0, v1, p1}, LA1/d;->y(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_1
    :goto_1
    const-string v4, "ConstraintLayoutStates"

    .line 143
    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v6, "unknown tag "

    .line 150
    .line 151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    :cond_3
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 169
    .line 170
    .line 171
    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :goto_4
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 179
    .line 180
    .line 181
    :cond_4
    :goto_5
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:LA1/d;

    .line 182
    .line 183
    return-void

    .line 184
    nop

    .line 185
    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-lez v3, :cond_0

    .line 13
    .line 14
    move v4, v1

    .line 15
    :goto_0
    if-ge v4, v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Lx/c;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    int-to-float v3, v3

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    int-to-float v4, v4

    .line 52
    move v5, v1

    .line 53
    :goto_1
    if-ge v5, v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const/16 v8, 0x8

    .line 64
    .line 65
    if-ne v7, v8, :cond_1

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    instance-of v7, v6, Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    check-cast v6, Ljava/lang/String;

    .line 80
    .line 81
    const-string v7, ","

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    array-length v7, v6

    .line 88
    const/4 v8, 0x4

    .line 89
    if-ne v7, v8, :cond_2

    .line 90
    .line 91
    aget-object v7, v6, v1

    .line 92
    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    const/4 v8, 0x1

    .line 98
    aget-object v8, v6, v8

    .line 99
    .line 100
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    const/4 v9, 0x2

    .line 105
    aget-object v9, v6, v9

    .line 106
    .line 107
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    const/4 v10, 0x3

    .line 112
    aget-object v6, v6, v10

    .line 113
    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    int-to-float v7, v7

    .line 119
    const/high16 v10, 0x44870000    # 1080.0f

    .line 120
    .line 121
    div-float/2addr v7, v10

    .line 122
    mul-float/2addr v7, v3

    .line 123
    float-to-int v7, v7

    .line 124
    int-to-float v8, v8

    .line 125
    const/high16 v11, 0x44f00000    # 1920.0f

    .line 126
    .line 127
    div-float/2addr v8, v11

    .line 128
    mul-float/2addr v8, v4

    .line 129
    float-to-int v8, v8

    .line 130
    int-to-float v9, v9

    .line 131
    div-float/2addr v9, v10

    .line 132
    mul-float/2addr v9, v3

    .line 133
    float-to-int v9, v9

    .line 134
    int-to-float v6, v6

    .line 135
    div-float/2addr v6, v11

    .line 136
    mul-float/2addr v6, v4

    .line 137
    float-to-int v6, v6

    .line 138
    new-instance v15, Landroid/graphics/Paint;

    .line 139
    .line 140
    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 141
    .line 142
    .line 143
    const/high16 v10, -0x10000

    .line 144
    .line 145
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    .line 147
    .line 148
    int-to-float v11, v7

    .line 149
    int-to-float v12, v8

    .line 150
    add-int/2addr v7, v9

    .line 151
    int-to-float v13, v7

    .line 152
    move v14, v12

    .line 153
    move-object/from16 v10, p1

    .line 154
    .line 155
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 156
    .line 157
    .line 158
    move v7, v11

    .line 159
    add-int/2addr v8, v6

    .line 160
    int-to-float v14, v8

    .line 161
    move v11, v13

    .line 162
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 163
    .line 164
    .line 165
    move v6, v12

    .line 166
    move v12, v14

    .line 167
    move v13, v7

    .line 168
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 169
    .line 170
    .line 171
    move v7, v11

    .line 172
    move v11, v13

    .line 173
    move v14, v6

    .line 174
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 175
    .line 176
    .line 177
    move/from16 v16, v14

    .line 178
    .line 179
    move v14, v12

    .line 180
    move/from16 v12, v16

    .line 181
    .line 182
    const v6, -0xff0100

    .line 183
    .line 184
    .line 185
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    .line 187
    .line 188
    move v13, v7

    .line 189
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 190
    .line 191
    .line 192
    move/from16 v16, v14

    .line 193
    .line 194
    move v14, v12

    .line 195
    move/from16 v12, v16

    .line 196
    .line 197
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 198
    .line 199
    .line 200
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_3
    return-void
.end method

.method public final forceLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/View;->forceLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->a()Lx/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 12

    .line 1
    new-instance v0, Lx/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, -0x1

    .line 3
    iput v2, v0, Lx/e;->a:I

    .line 4
    iput v2, v0, Lx/e;->b:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 5
    iput v3, v0, Lx/e;->c:F

    .line 6
    iput v2, v0, Lx/e;->d:I

    .line 7
    iput v2, v0, Lx/e;->e:I

    .line 8
    iput v2, v0, Lx/e;->f:I

    .line 9
    iput v2, v0, Lx/e;->g:I

    .line 10
    iput v2, v0, Lx/e;->h:I

    .line 11
    iput v2, v0, Lx/e;->i:I

    .line 12
    iput v2, v0, Lx/e;->j:I

    .line 13
    iput v2, v0, Lx/e;->k:I

    .line 14
    iput v2, v0, Lx/e;->l:I

    .line 15
    iput v2, v0, Lx/e;->m:I

    const/4 v4, 0x0

    .line 16
    iput v4, v0, Lx/e;->n:I

    const/4 v5, 0x0

    .line 17
    iput v5, v0, Lx/e;->o:F

    .line 18
    iput v2, v0, Lx/e;->p:I

    .line 19
    iput v2, v0, Lx/e;->q:I

    .line 20
    iput v2, v0, Lx/e;->r:I

    .line 21
    iput v2, v0, Lx/e;->s:I

    .line 22
    iput v2, v0, Lx/e;->t:I

    .line 23
    iput v2, v0, Lx/e;->u:I

    .line 24
    iput v2, v0, Lx/e;->v:I

    .line 25
    iput v2, v0, Lx/e;->w:I

    .line 26
    iput v2, v0, Lx/e;->x:I

    .line 27
    iput v2, v0, Lx/e;->y:I

    const/high16 v6, 0x3f000000    # 0.5f

    .line 28
    iput v6, v0, Lx/e;->z:F

    .line 29
    iput v6, v0, Lx/e;->A:F

    const/4 v7, 0x0

    .line 30
    iput-object v7, v0, Lx/e;->B:Ljava/lang/String;

    const/4 v8, 0x1

    .line 31
    iput v8, v0, Lx/e;->C:I

    .line 32
    iput v3, v0, Lx/e;->D:F

    .line 33
    iput v3, v0, Lx/e;->E:F

    .line 34
    iput v4, v0, Lx/e;->F:I

    .line 35
    iput v4, v0, Lx/e;->G:I

    .line 36
    iput v4, v0, Lx/e;->H:I

    .line 37
    iput v4, v0, Lx/e;->I:I

    .line 38
    iput v4, v0, Lx/e;->J:I

    .line 39
    iput v4, v0, Lx/e;->K:I

    .line 40
    iput v4, v0, Lx/e;->L:I

    .line 41
    iput v4, v0, Lx/e;->M:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 42
    iput v3, v0, Lx/e;->N:F

    .line 43
    iput v3, v0, Lx/e;->O:F

    .line 44
    iput v2, v0, Lx/e;->P:I

    .line 45
    iput v2, v0, Lx/e;->Q:I

    .line 46
    iput v2, v0, Lx/e;->R:I

    .line 47
    iput-boolean v4, v0, Lx/e;->S:Z

    .line 48
    iput-boolean v4, v0, Lx/e;->T:Z

    .line 49
    iput-object v7, v0, Lx/e;->U:Ljava/lang/String;

    .line 50
    iput-boolean v8, v0, Lx/e;->V:Z

    .line 51
    iput-boolean v8, v0, Lx/e;->W:Z

    .line 52
    iput-boolean v4, v0, Lx/e;->X:Z

    .line 53
    iput-boolean v4, v0, Lx/e;->Y:Z

    .line 54
    iput-boolean v4, v0, Lx/e;->Z:Z

    .line 55
    iput v2, v0, Lx/e;->a0:I

    .line 56
    iput v2, v0, Lx/e;->b0:I

    .line 57
    iput v2, v0, Lx/e;->c0:I

    .line 58
    iput v2, v0, Lx/e;->d0:I

    .line 59
    iput v2, v0, Lx/e;->e0:I

    .line 60
    iput v2, v0, Lx/e;->f0:I

    .line 61
    iput v6, v0, Lx/e;->g0:F

    .line 62
    new-instance v3, Lv/d;

    invoke-direct {v3}, Lv/d;-><init>()V

    iput-object v3, v0, Lx/e;->k0:Lv/d;

    .line 63
    sget-object v3, Lx/q;->b:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_6

    .line 65
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 66
    sget-object v7, Lx/d;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 67
    const-string v9, "ConstraintLayout"

    const/4 v10, 0x2

    const/4 v11, -0x2

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_3

    .line 68
    :pswitch_0
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lx/e;->U:Ljava/lang/String;

    goto/16 :goto_3

    .line 69
    :pswitch_1
    iget v7, v0, Lx/e;->Q:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v0, Lx/e;->Q:I

    goto/16 :goto_3

    .line 70
    :pswitch_2
    iget v7, v0, Lx/e;->P:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v0, Lx/e;->P:I

    goto/16 :goto_3

    .line 71
    :pswitch_3
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->G:I

    goto/16 :goto_3

    .line 72
    :pswitch_4
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->F:I

    goto/16 :goto_3

    .line 73
    :pswitch_5
    iget v7, v0, Lx/e;->E:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v0, Lx/e;->E:F

    goto/16 :goto_3

    .line 74
    :pswitch_6
    iget v7, v0, Lx/e;->D:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v0, Lx/e;->D:F

    goto/16 :goto_3

    .line 75
    :pswitch_7
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lx/e;->B:Ljava/lang/String;

    .line 76
    iput v2, v0, Lx/e;->C:I

    if-eqz v6, :cond_5

    .line 77
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 78
    iget-object v7, v0, Lx/e;->B:Ljava/lang/String;

    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_2

    add-int/lit8 v9, v6, -0x1

    if-ge v7, v9, :cond_2

    .line 79
    iget-object v9, v0, Lx/e;->B:Ljava/lang/String;

    invoke-virtual {v9, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 80
    const-string v10, "W"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 81
    iput v4, v0, Lx/e;->C:I

    goto :goto_1

    .line 82
    :cond_0
    const-string v10, "H"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 83
    iput v8, v0, Lx/e;->C:I

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move v7, v4

    .line 84
    :goto_2
    iget-object v9, v0, Lx/e;->B:Ljava/lang/String;

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_4

    add-int/lit8 v6, v6, -0x1

    if-ge v9, v6, :cond_4

    .line 85
    iget-object v6, v0, Lx/e;->B:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 86
    iget-object v7, v0, Lx/e;->B:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 88
    :try_start_0
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 89
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    cmpl-float v9, v6, v5

    if-lez v9, :cond_5

    cmpl-float v9, v7, v5

    if-lez v9, :cond_5

    .line 90
    iget v9, v0, Lx/e;->C:I

    if-ne v9, v8, :cond_3

    div-float/2addr v7, v6

    .line 91
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    goto/16 :goto_3

    :cond_3
    div-float/2addr v6, v7

    .line 92
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_3

    .line 93
    :cond_4
    iget-object v6, v0, Lx/e;->B:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 95
    :try_start_1
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_3

    .line 96
    :pswitch_8
    iget v7, v0, Lx/e;->O:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lx/e;->O:F

    .line 97
    iput v10, v0, Lx/e;->I:I

    goto/16 :goto_3

    .line 98
    :pswitch_9
    :try_start_2
    iget v7, v0, Lx/e;->M:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lx/e;->M:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 99
    :catch_0
    iget v7, v0, Lx/e;->M:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ne v6, v11, :cond_5

    .line 100
    iput v11, v0, Lx/e;->M:I

    goto/16 :goto_3

    .line 101
    :pswitch_a
    :try_start_3
    iget v7, v0, Lx/e;->K:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lx/e;->K:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 102
    :catch_1
    iget v7, v0, Lx/e;->K:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ne v6, v11, :cond_5

    .line 103
    iput v11, v0, Lx/e;->K:I

    goto/16 :goto_3

    .line 104
    :pswitch_b
    iget v7, v0, Lx/e;->N:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lx/e;->N:F

    .line 105
    iput v10, v0, Lx/e;->H:I

    goto/16 :goto_3

    .line 106
    :pswitch_c
    :try_start_4
    iget v7, v0, Lx/e;->L:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lx/e;->L:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 107
    :catch_2
    iget v7, v0, Lx/e;->L:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ne v6, v11, :cond_5

    .line 108
    iput v11, v0, Lx/e;->L:I

    goto/16 :goto_3

    .line 109
    :pswitch_d
    :try_start_5
    iget v7, v0, Lx/e;->J:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lx/e;->J:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 110
    :catch_3
    iget v7, v0, Lx/e;->J:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ne v6, v11, :cond_5

    .line 111
    iput v11, v0, Lx/e;->J:I

    goto/16 :goto_3

    .line 112
    :pswitch_e
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->I:I

    if-ne v6, v8, :cond_5

    .line 113
    const-string v6, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 114
    :pswitch_f
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->H:I

    if-ne v6, v8, :cond_5

    .line 115
    const-string v6, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 116
    :pswitch_10
    iget v7, v0, Lx/e;->A:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v0, Lx/e;->A:F

    goto/16 :goto_3

    .line 117
    :pswitch_11
    iget v7, v0, Lx/e;->z:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v0, Lx/e;->z:F

    goto/16 :goto_3

    .line 118
    :pswitch_12
    iget-boolean v7, v0, Lx/e;->T:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Lx/e;->T:Z

    goto/16 :goto_3

    .line 119
    :pswitch_13
    iget-boolean v7, v0, Lx/e;->S:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Lx/e;->S:Z

    goto/16 :goto_3

    .line 120
    :pswitch_14
    iget v7, v0, Lx/e;->y:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lx/e;->y:I

    goto/16 :goto_3

    .line 121
    :pswitch_15
    iget v7, v0, Lx/e;->x:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lx/e;->x:I

    goto/16 :goto_3

    .line 122
    :pswitch_16
    iget v7, v0, Lx/e;->w:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lx/e;->w:I

    goto/16 :goto_3

    .line 123
    :pswitch_17
    iget v7, v0, Lx/e;->v:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lx/e;->v:I

    goto/16 :goto_3

    .line 124
    :pswitch_18
    iget v7, v0, Lx/e;->u:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lx/e;->u:I

    goto/16 :goto_3

    .line 125
    :pswitch_19
    iget v7, v0, Lx/e;->t:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lx/e;->t:I

    goto/16 :goto_3

    .line 126
    :pswitch_1a
    iget v7, v0, Lx/e;->s:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lx/e;->s:I

    if-ne v7, v2, :cond_5

    .line 127
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->s:I

    goto/16 :goto_3

    .line 128
    :pswitch_1b
    iget v7, v0, Lx/e;->r:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lx/e;->r:I

    if-ne v7, v2, :cond_5

    .line 129
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->r:I

    goto/16 :goto_3

    .line 130
    :pswitch_1c
    iget v7, v0, Lx/e;->q:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lx/e;->q:I

    if-ne v7, v2, :cond_5

    .line 131
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->q:I

    goto/16 :goto_3

    .line 132
    :pswitch_1d
    iget v7, v0, Lx/e;->p:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lx/e;->p:I

    if-ne v7, v2, :cond_5

    .line 133
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->p:I

    goto/16 :goto_3

    .line 134
    :pswitch_1e
    iget v7, v0, Lx/e;->l:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lx/e;->l:I

    if-ne v7, v2, :cond_5

    .line 135
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->l:I

    goto/16 :goto_3

    .line 136
    :pswitch_1f
    iget v7, v0, Lx/e;->k:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lx/e;->k:I

    if-ne v7, v2, :cond_5

    .line 137
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->k:I

    goto/16 :goto_3

    .line 138
    :pswitch_20
    iget v7, v0, Lx/e;->j:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lx/e;->j:I

    if-ne v7, v2, :cond_5

    .line 139
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->j:I

    goto/16 :goto_3

    .line 140
    :pswitch_21
    iget v7, v0, Lx/e;->i:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lx/e;->i:I

    if-ne v7, v2, :cond_5

    .line 141
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->i:I

    goto/16 :goto_3

    .line 142
    :pswitch_22
    iget v7, v0, Lx/e;->h:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lx/e;->h:I

    if-ne v7, v2, :cond_5

    .line 143
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->h:I

    goto/16 :goto_3

    .line 144
    :pswitch_23
    iget v7, v0, Lx/e;->g:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lx/e;->g:I

    if-ne v7, v2, :cond_5

    .line 145
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->g:I

    goto/16 :goto_3

    .line 146
    :pswitch_24
    iget v7, v0, Lx/e;->f:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lx/e;->f:I

    if-ne v7, v2, :cond_5

    .line 147
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->f:I

    goto/16 :goto_3

    .line 148
    :pswitch_25
    iget v7, v0, Lx/e;->e:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lx/e;->e:I

    if-ne v7, v2, :cond_5

    .line 149
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->e:I

    goto :goto_3

    .line 150
    :pswitch_26
    iget v7, v0, Lx/e;->d:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lx/e;->d:I

    if-ne v7, v2, :cond_5

    .line 151
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->d:I

    goto :goto_3

    .line 152
    :pswitch_27
    iget v7, v0, Lx/e;->c:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v0, Lx/e;->c:F

    goto :goto_3

    .line 153
    :pswitch_28
    iget v7, v0, Lx/e;->b:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v0, Lx/e;->b:I

    goto :goto_3

    .line 154
    :pswitch_29
    iget v7, v0, Lx/e;->a:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v0, Lx/e;->a:I

    goto :goto_3

    .line 155
    :pswitch_2a
    iget v7, v0, Lx/e;->o:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    const/high16 v7, 0x43b40000    # 360.0f

    rem-float/2addr v6, v7

    iput v6, v0, Lx/e;->o:F

    cmpg-float v9, v6, v5

    if-gez v9, :cond_5

    sub-float v6, v7, v6

    rem-float/2addr v6, v7

    .line 156
    iput v6, v0, Lx/e;->o:F

    goto :goto_3

    .line 157
    :pswitch_2b
    iget v7, v0, Lx/e;->n:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lx/e;->n:I

    goto :goto_3

    .line 158
    :pswitch_2c
    iget v7, v0, Lx/e;->m:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lx/e;->m:I

    if-ne v7, v2, :cond_5

    .line 159
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->m:I

    goto :goto_3

    .line 160
    :pswitch_2d
    iget v7, v0, Lx/e;->R:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lx/e;->R:I

    :catch_4
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 161
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    invoke-virtual {v0}, Lx/e;->a()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
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

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .line 163
    new-instance v0, Lx/e;

    .line 164
    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 165
    iput p1, v0, Lx/e;->a:I

    .line 166
    iput p1, v0, Lx/e;->b:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 167
    iput v1, v0, Lx/e;->c:F

    .line 168
    iput p1, v0, Lx/e;->d:I

    .line 169
    iput p1, v0, Lx/e;->e:I

    .line 170
    iput p1, v0, Lx/e;->f:I

    .line 171
    iput p1, v0, Lx/e;->g:I

    .line 172
    iput p1, v0, Lx/e;->h:I

    .line 173
    iput p1, v0, Lx/e;->i:I

    .line 174
    iput p1, v0, Lx/e;->j:I

    .line 175
    iput p1, v0, Lx/e;->k:I

    .line 176
    iput p1, v0, Lx/e;->l:I

    .line 177
    iput p1, v0, Lx/e;->m:I

    const/4 v2, 0x0

    .line 178
    iput v2, v0, Lx/e;->n:I

    const/4 v3, 0x0

    .line 179
    iput v3, v0, Lx/e;->o:F

    .line 180
    iput p1, v0, Lx/e;->p:I

    .line 181
    iput p1, v0, Lx/e;->q:I

    .line 182
    iput p1, v0, Lx/e;->r:I

    .line 183
    iput p1, v0, Lx/e;->s:I

    .line 184
    iput p1, v0, Lx/e;->t:I

    .line 185
    iput p1, v0, Lx/e;->u:I

    .line 186
    iput p1, v0, Lx/e;->v:I

    .line 187
    iput p1, v0, Lx/e;->w:I

    .line 188
    iput p1, v0, Lx/e;->x:I

    .line 189
    iput p1, v0, Lx/e;->y:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 190
    iput v3, v0, Lx/e;->z:F

    .line 191
    iput v3, v0, Lx/e;->A:F

    const/4 v4, 0x0

    .line 192
    iput-object v4, v0, Lx/e;->B:Ljava/lang/String;

    const/4 v5, 0x1

    .line 193
    iput v5, v0, Lx/e;->C:I

    .line 194
    iput v1, v0, Lx/e;->D:F

    .line 195
    iput v1, v0, Lx/e;->E:F

    .line 196
    iput v2, v0, Lx/e;->F:I

    .line 197
    iput v2, v0, Lx/e;->G:I

    .line 198
    iput v2, v0, Lx/e;->H:I

    .line 199
    iput v2, v0, Lx/e;->I:I

    .line 200
    iput v2, v0, Lx/e;->J:I

    .line 201
    iput v2, v0, Lx/e;->K:I

    .line 202
    iput v2, v0, Lx/e;->L:I

    .line 203
    iput v2, v0, Lx/e;->M:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 204
    iput v1, v0, Lx/e;->N:F

    .line 205
    iput v1, v0, Lx/e;->O:F

    .line 206
    iput p1, v0, Lx/e;->P:I

    .line 207
    iput p1, v0, Lx/e;->Q:I

    .line 208
    iput p1, v0, Lx/e;->R:I

    .line 209
    iput-boolean v2, v0, Lx/e;->S:Z

    .line 210
    iput-boolean v2, v0, Lx/e;->T:Z

    .line 211
    iput-object v4, v0, Lx/e;->U:Ljava/lang/String;

    .line 212
    iput-boolean v5, v0, Lx/e;->V:Z

    .line 213
    iput-boolean v5, v0, Lx/e;->W:Z

    .line 214
    iput-boolean v2, v0, Lx/e;->X:Z

    .line 215
    iput-boolean v2, v0, Lx/e;->Y:Z

    .line 216
    iput-boolean v2, v0, Lx/e;->Z:Z

    .line 217
    iput p1, v0, Lx/e;->a0:I

    .line 218
    iput p1, v0, Lx/e;->b0:I

    .line 219
    iput p1, v0, Lx/e;->c0:I

    .line 220
    iput p1, v0, Lx/e;->d0:I

    .line 221
    iput p1, v0, Lx/e;->e0:I

    .line 222
    iput p1, v0, Lx/e;->f0:I

    .line 223
    iput v3, v0, Lx/e;->g0:F

    .line 224
    new-instance p1, Lv/d;

    invoke-direct {p1}, Lv/d;-><init>()V

    iput-object p1, v0, Lx/e;->k0:Lv/d;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lv/e;

    .line 2
    .line 3
    iget v0, v0, Lv/e;->p0:I

    .line 4
    .line 5
    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x0

    .line 10
    move p4, p3

    .line 11
    :goto_0
    if-ge p4, p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lx/e;

    .line 22
    .line 23
    iget-object v1, v0, Lx/e;->k0:Lv/d;

    .line 24
    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v3, 0x8

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    iget-boolean v2, v0, Lx/e;->Y:Z

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    iget-boolean v0, v0, Lx/e;->Z:Z

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v1}, Lv/d;->m()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {v1}, Lv/d;->n()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1}, Lv/d;->l()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/2addr v3, v0

    .line 57
    invoke-virtual {v1}, Lv/d;->i()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v1, v2

    .line 62
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 63
    .line 64
    .line 65
    :goto_1
    add-int/lit8 p4, p4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-lez p2, :cond_2

    .line 75
    .line 76
    :goto_2
    if-ge p3, p2, :cond_2

    .line 77
    .line 78
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    check-cast p4, Lx/c;

    .line 83
    .line 84
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    add-int/lit8 p3, p3, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 41

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-ne v5, v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    .line 3
    :goto_0
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lv/e;

    iput-boolean v3, v7, Lv/e;->h0:Z

    iget-object v3, v7, Lv/e;->e0:LF/b;

    iget-object v8, v7, Lv/e;->f0:Lw/e;

    .line 4
    iget-boolean v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    if-eqz v9, :cond_50

    .line 5
    iput-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move/from16 v18, v4

    move v4, v6

    :goto_1
    if-ge v4, v9, :cond_2

    .line 7
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 8
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->isLayoutRequested()Z

    move-result v16

    if-eqz v16, :cond_1

    move v4, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_2
    if-eqz v4, :cond_4c

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v9

    move/from16 v19, v5

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v10, v6

    :goto_3
    if-ge v10, v5, :cond_4

    .line 11
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 12
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lv/d;

    move-result-object v11

    if-nez v11, :cond_3

    goto :goto_4

    .line 13
    :cond_3
    invoke-virtual {v11}, Lv/d;->s()V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 14
    :cond_4
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    const/4 v13, -0x1

    if-eqz v9, :cond_d

    move v12, v6

    const/16 v17, 0x2

    :goto_5
    if-ge v12, v5, :cond_e

    .line 15
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 16
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v14

    .line 17
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    if-eqz v14, :cond_7

    .line 18
    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    if-nez v10, :cond_5

    .line 19
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    .line 20
    :cond_5
    const-string v10, "/"

    invoke-virtual {v14, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v13, :cond_6

    add-int/lit8 v10, v10, 0x1

    .line 21
    invoke-virtual {v14, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_6
    move-object v10, v14

    .line 22
    :goto_6
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    invoke-virtual {v6, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/16 v6, 0x2f

    .line 23
    invoke-virtual {v14, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v13, :cond_8

    add-int/lit8 v6, v6, 0x1

    .line 24
    invoke-virtual {v14, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 25
    :cond_8
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getId()I

    move-result v6

    if-nez v6, :cond_9

    :goto_7
    move-object v6, v7

    goto :goto_8

    .line 26
    :cond_9
    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-nez v10, :cond_a

    .line 27
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_a

    if-eq v10, v0, :cond_a

    .line 28
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-ne v6, v0, :cond_a

    .line 29
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_a
    if-ne v10, v0, :cond_b

    goto :goto_7

    :cond_b
    if-nez v10, :cond_c

    const/4 v6, 0x0

    goto :goto_8

    .line 30
    :cond_c
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lx/e;

    iget-object v6, v6, Lx/e;->k0:Lv/d;

    .line 31
    :goto_8
    iput-object v14, v6, Lv/d;->W:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    goto :goto_5

    :cond_d
    const/16 v17, 0x2

    .line 32
    :cond_e
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    if-eq v6, v13, :cond_f

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v5, :cond_f

    .line 33
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 34
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 35
    :cond_f
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lx/m;

    if-eqz v6, :cond_10

    .line 36
    invoke-virtual {v6, v0}, Lx/m;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 37
    :cond_10
    iget-object v6, v7, Lv/e;->d0:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 39
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_19

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v10, :cond_19

    .line 40
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lx/c;

    .line 41
    iget-object v15, v14, Lx/c;->g:Ljava/util/HashMap;

    .line 42
    invoke-virtual {v14}, Landroid/view/View;->isInEditMode()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 43
    iget-object v13, v14, Lx/c;->f:Ljava/lang/String;

    invoke-virtual {v14, v13}, Lx/c;->setIds(Ljava/lang/String;)V

    .line 44
    :cond_11
    iget-object v13, v14, Lx/c;->e:Lv/i;

    if-nez v13, :cond_12

    move/from16 v26, v4

    move-object/from16 v29, v6

    move/from16 v30, v9

    goto/16 :goto_10

    :cond_12
    move/from16 v26, v4

    const/4 v4, 0x0

    .line 45
    iput v4, v13, Lv/i;->e0:I

    .line 46
    iget-object v4, v13, Lv/i;->d0:[Lv/d;

    const/4 v13, 0x0

    invoke-static {v4, v13}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 47
    :goto_b
    iget v13, v14, Lx/c;->c:I

    if-ge v4, v13, :cond_18

    .line 48
    iget-object v13, v14, Lx/c;->b:[I

    aget v13, v13, v4

    .line 49
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    if-nez v27, :cond_14

    .line 50
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move/from16 v28, v4

    .line 51
    invoke-virtual {v14, v0, v13}, Lx/c;->d(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v29, v6

    if-eqz v4, :cond_13

    .line 52
    iget-object v6, v14, Lx/c;->b:[I

    aput v4, v6, v28

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v27, v4

    check-cast v27, Landroid/view/View;

    :cond_13
    :goto_c
    move-object/from16 v4, v27

    goto :goto_d

    :cond_14
    move/from16 v28, v4

    move-object/from16 v29, v6

    goto :goto_c

    :goto_d
    if-eqz v4, :cond_17

    .line 55
    iget-object v6, v14, Lx/c;->e:Lv/i;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lv/d;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v4, v6, :cond_17

    if-nez v4, :cond_15

    goto :goto_e

    .line 56
    :cond_15
    iget v13, v6, Lv/i;->e0:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v27, v4

    iget-object v4, v6, Lv/i;->d0:[Lv/d;

    move/from16 v30, v9

    array-length v9, v4

    if-le v13, v9, :cond_16

    .line 57
    array-length v9, v4

    mul-int/lit8 v9, v9, 0x2

    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lv/d;

    iput-object v4, v6, Lv/i;->d0:[Lv/d;

    .line 58
    :cond_16
    iget-object v4, v6, Lv/i;->d0:[Lv/d;

    iget v9, v6, Lv/i;->e0:I

    aput-object v27, v4, v9

    add-int/lit8 v9, v9, 0x1

    .line 59
    iput v9, v6, Lv/i;->e0:I

    goto :goto_f

    :cond_17
    :goto_e
    move/from16 v30, v9

    :goto_f
    add-int/lit8 v4, v28, 0x1

    move-object/from16 v6, v29

    move/from16 v9, v30

    goto :goto_b

    :cond_18
    move-object/from16 v29, v6

    move/from16 v30, v9

    .line 60
    iget-object v4, v14, Lx/c;->e:Lv/i;

    invoke-virtual {v4}, Lv/i;->B()V

    :goto_10
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v26

    move-object/from16 v6, v29

    move/from16 v9, v30

    const/4 v13, -0x1

    goto/16 :goto_a

    :cond_19
    move/from16 v26, v4

    move/from16 v30, v9

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v5, :cond_1a

    .line 61
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 62
    :cond_1a
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    const/4 v6, 0x0

    .line 63
    invoke-virtual {v4, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v5, :cond_1b

    .line 65
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 66
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lv/d;

    move-result-object v10

    .line 67
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v4, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_1b
    const/4 v6, 0x0

    :goto_13
    if-ge v6, v5, :cond_4b

    .line 68
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 69
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lv/d;

    move-result-object v10

    if-nez v10, :cond_1c

    move-object/from16 v16, v4

    move/from16 v27, v5

    move/from16 v39, v6

    move-object v13, v11

    const/4 v4, 0x3

    const/4 v12, 0x4

    const/16 v24, 0x0

    goto/16 :goto_2a

    .line 70
    :cond_1c
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lx/e;

    .line 71
    iget-object v13, v7, Lv/e;->d0:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v13, v10, Lv/d;->I:Lv/d;

    if-eqz v13, :cond_1d

    .line 74
    check-cast v13, Lv/e;

    .line 75
    iget-object v13, v13, Lv/e;->d0:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    .line 76
    iput-object v13, v10, Lv/d;->I:Lv/d;

    goto :goto_14

    :cond_1d
    const/4 v13, 0x0

    .line 77
    :goto_14
    iput-object v7, v10, Lv/d;->I:Lv/d;

    .line 78
    invoke-virtual {v12}, Lx/e;->a()V

    .line 79
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v14

    .line 80
    iput v14, v10, Lv/d;->V:I

    .line 81
    iput-object v9, v10, Lv/d;->U:Landroid/view/View;

    .line 82
    instance-of v14, v9, Lx/c;

    if-eqz v14, :cond_1e

    .line 83
    check-cast v9, Lx/c;

    .line 84
    iget-boolean v14, v7, Lv/e;->h0:Z

    .line 85
    invoke-virtual {v9, v10, v14}, Lx/c;->f(Lv/d;Z)V

    .line 86
    :cond_1e
    iget-boolean v9, v12, Lx/e;->Y:Z

    if-eqz v9, :cond_22

    .line 87
    check-cast v10, Lv/h;

    .line 88
    iget v9, v12, Lx/e;->h0:I

    .line 89
    iget v14, v12, Lx/e;->i0:I

    .line 90
    iget v12, v12, Lx/e;->j0:F

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v24, v12, v15

    if-eqz v24, :cond_20

    if-lez v24, :cond_1f

    .line 91
    iput v12, v10, Lv/h;->d0:F

    const/4 v12, -0x1

    .line 92
    iput v12, v10, Lv/h;->e0:I

    .line 93
    iput v12, v10, Lv/h;->f0:I

    :cond_1f
    :goto_15
    move-object/from16 v16, v4

    move/from16 v27, v5

    move/from16 v39, v6

    move-object/from16 v24, v13

    const/4 v4, 0x3

    const/4 v12, 0x4

    move-object v13, v11

    goto/16 :goto_2a

    :cond_20
    const/4 v12, -0x1

    if-eq v9, v12, :cond_21

    if-le v9, v12, :cond_1f

    .line 94
    iput v15, v10, Lv/h;->d0:F

    .line 95
    iput v9, v10, Lv/h;->e0:I

    .line 96
    iput v12, v10, Lv/h;->f0:I

    goto :goto_15

    :cond_21
    if-eq v14, v12, :cond_1f

    if-le v14, v12, :cond_1f

    .line 97
    iput v15, v10, Lv/h;->d0:F

    .line 98
    iput v12, v10, Lv/h;->e0:I

    .line 99
    iput v14, v10, Lv/h;->f0:I

    goto :goto_15

    .line 100
    :cond_22
    iget v9, v12, Lx/e;->a0:I

    .line 101
    iget v14, v12, Lx/e;->b0:I

    .line 102
    iget v15, v12, Lx/e;->c0:I

    .line 103
    iget v13, v12, Lx/e;->d0:I

    move/from16 v27, v5

    .line 104
    iget v5, v12, Lx/e;->e0:I

    move/from16 v28, v13

    .line 105
    iget v13, v12, Lx/e;->f0:I

    move-object/from16 v29, v11

    .line 106
    iget v11, v12, Lx/e;->g0:F

    move/from16 v35, v5

    .line 107
    iget v5, v12, Lx/e;->m:I

    const/16 v37, 0x2

    const/16 v38, 0x3

    move/from16 v39, v6

    const/4 v6, -0x1

    if-eq v5, v6, :cond_24

    .line 108
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v36, v5

    check-cast v36, Lv/d;

    if-eqz v36, :cond_23

    .line 109
    iget v5, v12, Lx/e;->o:F

    iget v6, v12, Lx/e;->n:I

    const/16 v32, 0x7

    const/16 v35, 0x0

    move/from16 v33, v32

    move/from16 v34, v6

    move-object/from16 v31, v10

    .line 110
    invoke-virtual/range {v31 .. v36}, Lv/d;->o(IIIILv/d;)V

    .line 111
    iput v5, v10, Lv/d;->v:F

    :cond_23
    move-object/from16 v16, v4

    move-object v9, v12

    move-object/from16 v13, v29

    move/from16 v11, v38

    const/4 v6, -0x1

    const/16 v20, 0x0

    const/16 v24, 0x0

    goto/16 :goto_1f

    :cond_24
    if-eq v9, v6, :cond_27

    .line 112
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v36, v5

    check-cast v36, Lv/d;

    if-eqz v36, :cond_25

    .line 113
    iget v5, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v33, v37

    move/from16 v34, v5

    move-object/from16 v31, v10

    move/from16 v32, v37

    invoke-virtual/range {v31 .. v36}, Lv/d;->o(IIIILv/d;)V

    goto :goto_16

    :cond_25
    move/from16 v32, v37

    :cond_26
    :goto_16
    move-object/from16 v31, v10

    move-object v9, v12

    move/from16 v22, v13

    move v10, v15

    move/from16 v5, v28

    const/4 v13, 0x4

    const/16 v24, 0x0

    goto :goto_17

    :cond_27
    move/from16 v32, v37

    if-eq v14, v6, :cond_26

    .line 114
    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/d;

    if-eqz v5, :cond_26

    move v9, v15

    .line 115
    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object v14, v10

    move v10, v9

    move-object v9, v12

    move-object v12, v14

    move-object/from16 v17, v5

    move/from16 v22, v13

    move/from16 v5, v28

    move/from16 v13, v32

    move/from16 v16, v35

    const/4 v14, 0x4

    const/16 v24, 0x0

    invoke-virtual/range {v12 .. v17}, Lv/d;->o(IIIILv/d;)V

    move-object/from16 v31, v12

    move v13, v14

    :goto_17
    if-eq v10, v6, :cond_2a

    .line 116
    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lv/d;

    if-eqz v17, :cond_28

    .line 117
    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v22

    move-object/from16 v12, v31

    move/from16 v14, v32

    invoke-virtual/range {v12 .. v17}, Lv/d;->o(IIIILv/d;)V

    move-object v10, v12

    goto :goto_18

    :cond_28
    move-object/from16 v10, v31

    :cond_29
    :goto_18
    move/from16 v5, v32

    goto :goto_19

    :cond_2a
    move/from16 v16, v22

    move-object/from16 v10, v31

    if-eq v5, v6, :cond_29

    .line 118
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lv/d;

    if-eqz v17, :cond_29

    .line 119
    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v14, v13

    move-object v12, v10

    move/from16 v5, v32

    invoke-virtual/range {v12 .. v17}, Lv/d;->o(IIIILv/d;)V

    .line 120
    :goto_19
    iget v12, v9, Lx/e;->h:I

    if-eq v12, v6, :cond_2d

    .line 121
    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v36, v12

    check-cast v36, Lv/d;

    if-eqz v36, :cond_2b

    .line 122
    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v14, v9, Lx/e;->u:I

    move/from16 v33, v38

    move-object/from16 v31, v10

    move/from16 v34, v12

    move/from16 v35, v14

    move/from16 v32, v38

    invoke-virtual/range {v31 .. v36}, Lv/d;->o(IIIILv/d;)V

    goto :goto_1a

    :cond_2b
    move/from16 v32, v38

    :cond_2c
    :goto_1a
    move v5, v11

    move-object/from16 v40, v29

    const/4 v11, 0x5

    const/16 v20, 0x0

    goto :goto_1b

    :cond_2d
    move/from16 v32, v38

    .line 123
    iget v12, v9, Lx/e;->i:I

    if-eq v12, v6, :cond_2c

    .line 124
    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Lv/d;

    if-eqz v15, :cond_2c

    move v14, v13

    .line 125
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v14

    iget v14, v9, Lx/e;->u:I

    move v5, v11

    move-object/from16 v40, v29

    move/from16 v11, v32

    const/4 v12, 0x5

    const/16 v20, 0x0

    invoke-virtual/range {v10 .. v15}, Lv/d;->o(IIIILv/d;)V

    move v11, v12

    .line 126
    :goto_1b
    iget v12, v9, Lx/e;->j:I

    if-eq v12, v6, :cond_2e

    .line 127
    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Lv/d;

    if-eqz v15, :cond_2f

    .line 128
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v14, v9, Lx/e;->w:I

    move/from16 v12, v32

    invoke-virtual/range {v10 .. v15}, Lv/d;->o(IIIILv/d;)V

    goto :goto_1c

    .line 129
    :cond_2e
    iget v12, v9, Lx/e;->k:I

    if-eq v12, v6, :cond_2f

    .line 130
    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Lv/d;

    if-eqz v15, :cond_2f

    .line 131
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v14, v9, Lx/e;->w:I

    move v12, v11

    invoke-virtual/range {v10 .. v15}, Lv/d;->o(IIIILv/d;)V

    .line 132
    :cond_2f
    :goto_1c
    iget v12, v9, Lx/e;->l:I

    if-eq v12, v6, :cond_31

    move-object/from16 v13, v40

    .line 133
    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 134
    iget v14, v9, Lx/e;->l:I

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv/d;

    if-eqz v14, :cond_30

    if-eqz v12, :cond_30

    .line 135
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    instance-of v15, v15, Lx/e;

    if-eqz v15, :cond_30

    .line 136
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lx/e;

    move/from16 v15, v19

    .line 137
    iput-boolean v15, v9, Lx/e;->X:Z

    .line 138
    iput-boolean v15, v12, Lx/e;->X:Z

    const/4 v11, 0x6

    move-object/from16 v16, v4

    .line 139
    invoke-virtual {v10, v11}, Lv/d;->g(I)Lv/c;

    move-result-object v4

    .line 140
    invoke-virtual {v14, v11}, Lv/d;->g(I)Lv/c;

    move-result-object v11

    const/4 v14, 0x0

    .line 141
    invoke-virtual {v4, v11, v14, v6, v15}, Lv/c;->b(Lv/c;IIZ)Z

    .line 142
    iput-boolean v15, v10, Lv/d;->w:Z

    .line 143
    iget-object v4, v12, Lx/e;->k0:Lv/d;

    .line 144
    iput-boolean v15, v4, Lv/d;->w:Z

    const/4 v11, 0x3

    .line 145
    invoke-virtual {v10, v11}, Lv/d;->g(I)Lv/c;

    move-result-object v4

    invoke-virtual {v4}, Lv/c;->h()V

    const/4 v12, 0x5

    .line 146
    invoke-virtual {v10, v12}, Lv/d;->g(I)Lv/c;

    move-result-object v4

    invoke-virtual {v4}, Lv/c;->h()V

    goto :goto_1e

    :cond_30
    move-object/from16 v16, v4

    :goto_1d
    const/4 v11, 0x3

    goto :goto_1e

    :cond_31
    move-object/from16 v16, v4

    move-object/from16 v13, v40

    goto :goto_1d

    :goto_1e
    cmpl-float v4, v5, v20

    if-ltz v4, :cond_32

    .line 147
    iput v5, v10, Lv/d;->S:F

    .line 148
    :cond_32
    iget v4, v9, Lx/e;->A:F

    cmpl-float v5, v4, v20

    if-ltz v5, :cond_33

    .line 149
    iput v4, v10, Lv/d;->T:F

    :cond_33
    :goto_1f
    if-eqz v30, :cond_35

    .line 150
    iget v4, v9, Lx/e;->P:I

    if-ne v4, v6, :cond_34

    iget v5, v9, Lx/e;->Q:I

    if-eq v5, v6, :cond_35

    .line 151
    :cond_34
    iget v5, v9, Lx/e;->Q:I

    .line 152
    iput v4, v10, Lv/d;->N:I

    .line 153
    iput v5, v10, Lv/d;->O:I

    .line 154
    :cond_35
    iget-boolean v4, v9, Lx/e;->V:Z

    const/4 v5, -0x2

    if-nez v4, :cond_38

    .line 155
    iget v4, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v4, v6, :cond_37

    .line 156
    iget-boolean v4, v9, Lx/e;->S:Z

    if-eqz v4, :cond_36

    const/4 v4, 0x3

    .line 157
    invoke-virtual {v10, v4}, Lv/d;->w(I)V

    const/4 v12, 0x4

    :goto_20
    const/4 v14, 0x2

    goto :goto_21

    :cond_36
    const/4 v4, 0x3

    const/4 v12, 0x4

    .line 158
    invoke-virtual {v10, v12}, Lv/d;->w(I)V

    goto :goto_20

    .line 159
    :goto_21
    invoke-virtual {v10, v14}, Lv/d;->g(I)Lv/c;

    move-result-object v14

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v15, v14, Lv/c;->e:I

    const/4 v14, 0x4

    .line 160
    invoke-virtual {v10, v14}, Lv/d;->g(I)Lv/c;

    move-result-object v15

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v14, v15, Lv/c;->e:I

    goto :goto_22

    :cond_37
    const/4 v4, 0x3

    const/4 v12, 0x4

    .line 161
    invoke-virtual {v10, v4}, Lv/d;->w(I)V

    const/4 v14, 0x0

    .line 162
    invoke-virtual {v10, v14}, Lv/d;->y(I)V

    goto :goto_22

    :cond_38
    const/4 v4, 0x3

    const/4 v12, 0x4

    const/4 v15, 0x1

    .line 163
    invoke-virtual {v10, v15}, Lv/d;->w(I)V

    .line 164
    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v10, v14}, Lv/d;->y(I)V

    .line 165
    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v14, v5, :cond_39

    const/4 v14, 0x2

    .line 166
    invoke-virtual {v10, v14}, Lv/d;->w(I)V

    .line 167
    :cond_39
    :goto_22
    iget-boolean v14, v9, Lx/e;->W:Z

    if-nez v14, :cond_3c

    .line 168
    iget v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v5, v6, :cond_3b

    .line 169
    iget-boolean v5, v9, Lx/e;->T:Z

    if-eqz v5, :cond_3a

    .line 170
    invoke-virtual {v10, v4}, Lv/d;->x(I)V

    goto :goto_23

    .line 171
    :cond_3a
    invoke-virtual {v10, v12}, Lv/d;->x(I)V

    .line 172
    :goto_23
    invoke-virtual {v10, v11}, Lv/d;->g(I)Lv/c;

    move-result-object v5

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v11, v5, Lv/c;->e:I

    const/4 v11, 0x5

    .line 173
    invoke-virtual {v10, v11}, Lv/d;->g(I)Lv/c;

    move-result-object v5

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v11, v5, Lv/c;->e:I

    goto :goto_24

    .line 174
    :cond_3b
    invoke-virtual {v10, v4}, Lv/d;->x(I)V

    const/4 v14, 0x0

    .line 175
    invoke-virtual {v10, v14}, Lv/d;->v(I)V

    goto :goto_24

    :cond_3c
    const/4 v15, 0x1

    .line 176
    invoke-virtual {v10, v15}, Lv/d;->x(I)V

    .line 177
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v10, v11}, Lv/d;->v(I)V

    .line 178
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v11, v5, :cond_3d

    const/4 v14, 0x2

    .line 179
    invoke-virtual {v10, v14}, Lv/d;->x(I)V

    .line 180
    :cond_3d
    :goto_24
    iget-object v5, v9, Lx/e;->B:Ljava/lang/String;

    if-eqz v5, :cond_3e

    .line 181
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3f

    :cond_3e
    move/from16 v5, v20

    goto/16 :goto_28

    .line 182
    :cond_3f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v14, 0x2c

    .line 183
    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-lez v14, :cond_42

    add-int/lit8 v15, v11, -0x1

    if-ge v14, v15, :cond_42

    const/4 v15, 0x0

    .line 184
    invoke-virtual {v5, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 185
    const-string v15, "W"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_40

    const/4 v6, 0x0

    goto :goto_25

    .line 186
    :cond_40
    const-string v15, "H"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    const/4 v6, 0x1

    goto :goto_25

    :cond_41
    const/4 v6, -0x1

    :goto_25
    add-int/lit8 v14, v14, 0x1

    goto :goto_26

    :cond_42
    const/4 v6, -0x1

    const/4 v14, 0x0

    :goto_26
    const/16 v15, 0x3a

    .line 187
    invoke-virtual {v5, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ltz v15, :cond_44

    add-int/lit8 v11, v11, -0x1

    if-ge v15, v11, :cond_44

    .line 188
    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v15, v15, 0x1

    .line 189
    invoke-virtual {v5, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_45

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_45

    .line 191
    :try_start_1
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 192
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    cmpl-float v14, v11, v20

    if-lez v14, :cond_45

    cmpl-float v14, v5, v20

    if-lez v14, :cond_45

    const/4 v15, 0x1

    if-ne v6, v15, :cond_43

    div-float/2addr v5, v11

    .line 193
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    goto :goto_27

    :cond_43
    div-float/2addr v11, v5

    .line 194
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_27

    .line 195
    :cond_44
    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_45

    .line 197
    :try_start_2
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_27

    :catch_1
    :cond_45
    move/from16 v5, v20

    :goto_27
    cmpl-float v11, v5, v20

    if-lez v11, :cond_46

    .line 198
    iput v5, v10, Lv/d;->L:F

    .line 199
    iput v6, v10, Lv/d;->M:I

    goto :goto_29

    .line 200
    :goto_28
    iput v5, v10, Lv/d;->L:F

    .line 201
    :cond_46
    :goto_29
    iget v5, v9, Lx/e;->D:F

    .line 202
    iget-object v6, v10, Lv/d;->Z:[F

    const/16 v25, 0x0

    aput v5, v6, v25

    .line 203
    iget v5, v9, Lx/e;->E:F

    const/16 v19, 0x1

    .line 204
    aput v5, v6, v19

    .line 205
    iget v5, v9, Lx/e;->F:I

    .line 206
    iput v5, v10, Lv/d;->X:I

    .line 207
    iget v5, v9, Lx/e;->G:I

    .line 208
    iput v5, v10, Lv/d;->Y:I

    .line 209
    iget v5, v9, Lx/e;->H:I

    iget v6, v9, Lx/e;->J:I

    iget v11, v9, Lx/e;->L:I

    iget v14, v9, Lx/e;->N:F

    .line 210
    iput v5, v10, Lv/d;->j:I

    .line 211
    iput v6, v10, Lv/d;->m:I

    const v6, 0x7fffffff

    if-ne v11, v6, :cond_47

    const/4 v11, 0x0

    .line 212
    :cond_47
    iput v11, v10, Lv/d;->n:I

    .line 213
    iput v14, v10, Lv/d;->o:F

    const/16 v20, 0x0

    cmpl-float v11, v14, v20

    const/high16 v15, 0x3f800000    # 1.0f

    if-lez v11, :cond_48

    cmpg-float v11, v14, v15

    if-gez v11, :cond_48

    if-nez v5, :cond_48

    const/4 v14, 0x2

    .line 214
    iput v14, v10, Lv/d;->j:I

    .line 215
    :cond_48
    iget v5, v9, Lx/e;->I:I

    iget v11, v9, Lx/e;->K:I

    iget v14, v9, Lx/e;->M:I

    iget v9, v9, Lx/e;->O:F

    .line 216
    iput v5, v10, Lv/d;->k:I

    .line 217
    iput v11, v10, Lv/d;->p:I

    if-ne v14, v6, :cond_49

    const/4 v14, 0x0

    .line 218
    :cond_49
    iput v14, v10, Lv/d;->q:I

    .line 219
    iput v9, v10, Lv/d;->r:F

    const/16 v20, 0x0

    cmpl-float v6, v9, v20

    if-lez v6, :cond_4a

    cmpg-float v6, v9, v15

    if-gez v6, :cond_4a

    if-nez v5, :cond_4a

    const/4 v14, 0x2

    .line 220
    iput v14, v10, Lv/d;->k:I

    :cond_4a
    :goto_2a
    add-int/lit8 v6, v39, 0x1

    move-object v11, v13

    move-object/from16 v4, v16

    move/from16 v5, v27

    const/16 v17, 0x2

    const/16 v19, 0x1

    goto/16 :goto_13

    :cond_4b
    :goto_2b
    const/4 v4, 0x3

    const/4 v12, 0x4

    goto :goto_2c

    :cond_4c
    move/from16 v26, v4

    goto :goto_2b

    :goto_2c
    if-eqz v26, :cond_51

    .line 221
    iget-object v5, v3, LF/b;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .line 222
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 223
    iget-object v6, v7, Lv/e;->d0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v9, 0x0

    :goto_2d
    if-ge v9, v6, :cond_4f

    .line 224
    iget-object v10, v7, Lv/e;->d0:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv/d;

    .line 225
    iget-object v11, v10, Lv/d;->c0:[I

    const/16 v25, 0x0

    .line 226
    aget v13, v11, v25

    if-eq v13, v4, :cond_4d

    if-eq v13, v12, :cond_4d

    const/16 v19, 0x1

    .line 227
    aget v11, v11, v19

    if-eq v11, v4, :cond_4d

    if-ne v11, v12, :cond_4e

    .line 228
    :cond_4d
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    :cond_4f
    const/4 v15, 0x1

    .line 229
    iput-boolean v15, v8, Lw/e;->b:Z

    goto :goto_2e

    :cond_50
    move/from16 v18, v4

    const/4 v4, 0x3

    const/4 v12, 0x4

    .line 230
    :cond_51
    :goto_2e
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 231
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 232
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 233
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 234
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int v12, v13, v15

    .line 237
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v4

    .line 238
    iget-object v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lx/f;

    iput v13, v14, Lx/f;->b:I

    .line 239
    iput v15, v14, Lx/f;->c:I

    .line 240
    iput v4, v14, Lx/f;->d:I

    .line 241
    iput v12, v14, Lx/f;->e:I

    .line 242
    iput v1, v14, Lx/f;->f:I

    .line 243
    iput v2, v14, Lx/f;->g:I

    .line 244
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v15

    move/from16 v16, v4

    const/4 v4, 0x0

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v17, v9

    .line 245
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-gtz v15, :cond_53

    if-lez v9, :cond_52

    goto :goto_2f

    .line 246
    :cond_52
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_30

    .line 247
    :cond_53
    :goto_2f
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int v4, v4, v18

    if-eqz v4, :cond_54

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    move/from16 v18, v9

    const/4 v9, 0x1

    if-ne v9, v4, :cond_54

    move/from16 v15, v18

    :cond_54
    :goto_30
    sub-int v9, v17, v16

    sub-int/2addr v11, v12

    .line 249
    iget v4, v14, Lx/f;->e:I

    .line 250
    iget v12, v14, Lx/f;->d:I

    .line 251
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    move/from16 v17, v4

    const/high16 v4, -0x80000000

    if-eq v6, v4, :cond_58

    if-eqz v6, :cond_56

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v6, v4, :cond_55

    move/from16 v26, v12

    const/high16 v2, -0x80000000

    const/4 v4, 0x0

    :goto_31
    const/4 v12, 0x1

    goto :goto_33

    .line 252
    :cond_55
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v4, v12

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v26, v12

    const/high16 v2, -0x80000000

    goto :goto_31

    :cond_56
    if-nez v16, :cond_57

    .line 253
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    move/from16 v26, v12

    const/4 v12, 0x0

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v25

    move/from16 v4, v25

    :goto_32
    const/high16 v2, -0x80000000

    const/4 v12, 0x2

    goto :goto_33

    :cond_57
    move/from16 v26, v12

    const/4 v12, 0x0

    move v4, v12

    goto :goto_32

    :cond_58
    move/from16 v26, v12

    const/4 v12, 0x0

    if-nez v16, :cond_59

    .line 254
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_32

    :cond_59
    move v4, v9

    goto :goto_32

    :goto_33
    if-eq v10, v2, :cond_5d

    if-eqz v10, :cond_5b

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v10, v2, :cond_5a

    move-object/from16 v16, v14

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto :goto_36

    .line 255
    :cond_5a
    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    sub-int v2, v2, v17

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v16, v14

    const/4 v1, 0x1

    goto :goto_36

    :cond_5b
    if-nez v16, :cond_5c

    .line 256
    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v25

    move-object/from16 v16, v14

    move/from16 v2, v25

    :goto_34
    const/4 v1, 0x2

    goto :goto_36

    :cond_5c
    const/4 v1, 0x0

    move v2, v1

    :goto_35
    move-object/from16 v16, v14

    goto :goto_34

    :cond_5d
    const/4 v1, 0x0

    if-nez v16, :cond_5e

    .line 257
    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_35

    :cond_5e
    move v2, v11

    goto :goto_35

    .line 258
    :goto_36
    invoke-virtual {v7}, Lv/d;->l()I

    move-result v14

    move/from16 v24, v11

    iget-object v11, v7, Lv/d;->u:[I

    if-ne v4, v14, :cond_5f

    invoke-virtual {v7}, Lv/d;->i()I

    move-result v14

    if-eq v2, v14, :cond_60

    :cond_5f
    const/4 v14, 0x1

    goto :goto_38

    :cond_60
    const/16 v19, 0x1

    :goto_37
    const/4 v14, 0x0

    goto :goto_39

    .line 259
    :goto_38
    iput-boolean v14, v8, Lw/e;->c:Z

    move/from16 v19, v14

    goto :goto_37

    .line 260
    :goto_39
    iput v14, v7, Lv/d;->N:I

    .line 261
    iput v14, v7, Lv/d;->O:I

    move/from16 v25, v14

    .line 262
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int v14, v14, v26

    .line 263
    aput v14, v11, v25

    .line 264
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    sub-int v14, v14, v17

    .line 265
    aput v14, v11, v19

    move/from16 v14, v25

    .line 266
    iput v14, v7, Lv/d;->Q:I

    .line 267
    iput v14, v7, Lv/d;->R:I

    .line 268
    invoke-virtual {v7, v12}, Lv/d;->w(I)V

    .line 269
    invoke-virtual {v7, v4}, Lv/d;->y(I)V

    .line 270
    invoke-virtual {v7, v1}, Lv/d;->x(I)V

    .line 271
    invoke-virtual {v7, v2}, Lv/d;->v(I)V

    .line 272
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    sub-int v1, v1, v26

    if-gez v1, :cond_61

    .line 273
    iput v14, v7, Lv/d;->Q:I

    goto :goto_3a

    .line 274
    :cond_61
    iput v1, v7, Lv/d;->Q:I

    .line 275
    :goto_3a
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int v1, v1, v17

    if-gez v1, :cond_62

    .line 276
    iput v14, v7, Lv/d;->R:I

    goto :goto_3b

    .line 277
    :cond_62
    iput v1, v7, Lv/d;->R:I

    .line 278
    :goto_3b
    iput v15, v7, Lv/e;->j0:I

    .line 279
    iput v13, v7, Lv/e;->k0:I

    .line 280
    iget-object v1, v3, LF/b;->e:Ljava/lang/Object;

    check-cast v1, Lv/e;

    .line 281
    iget-object v2, v3, LF/b;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 282
    iget-object v4, v7, Lv/e;->g0:Lx/f;

    .line 283
    iget-object v12, v7, Lv/e;->d0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 284
    invoke-virtual {v7}, Lv/d;->l()I

    move-result v13

    .line 285
    invoke-virtual {v7}, Lv/d;->i()I

    move-result v14

    and-int/lit16 v15, v5, 0x80

    move/from16 v17, v5

    const/16 v5, 0x80

    if-ne v15, v5, :cond_63

    const/4 v5, 0x1

    goto :goto_3c

    :cond_63
    const/4 v5, 0x0

    :goto_3c
    if-nez v5, :cond_65

    const/16 v15, 0x40

    move-object/from16 v26, v11

    and-int/lit8 v11, v17, 0x40

    if-ne v11, v15, :cond_64

    goto :goto_3d

    :cond_64
    const/4 v11, 0x0

    goto :goto_3e

    :cond_65
    move-object/from16 v26, v11

    :goto_3d
    const/4 v11, 0x1

    :goto_3e
    if-eqz v11, :cond_6f

    const/4 v15, 0x0

    :goto_3f
    if-ge v15, v12, :cond_6f

    move/from16 v17, v11

    .line 286
    iget-object v11, v7, Lv/e;->d0:Ljava/util/ArrayList;

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lv/d;

    move/from16 v27, v12

    .line 287
    iget-object v12, v11, Lv/d;->c0:[I

    move-object/from16 v28, v12

    const/16 v25, 0x0

    .line 288
    aget v12, v28, v25

    move/from16 v29, v15

    const/4 v15, 0x3

    if-ne v12, v15, :cond_66

    const/16 v30, 0x1

    :goto_40
    const/16 v19, 0x1

    goto :goto_41

    :cond_66
    const/16 v30, 0x0

    goto :goto_40

    .line 289
    :goto_41
    aget v12, v28, v19

    if-ne v12, v15, :cond_67

    const/4 v12, 0x1

    goto :goto_42

    :cond_67
    const/4 v12, 0x0

    :goto_42
    if-eqz v30, :cond_68

    if-eqz v12, :cond_68

    .line 290
    iget v12, v11, Lv/d;->L:F

    const/16 v20, 0x0

    cmpl-float v12, v12, v20

    if-lez v12, :cond_69

    const/4 v12, 0x1

    goto :goto_43

    :cond_68
    const/16 v20, 0x0

    :cond_69
    const/4 v12, 0x0

    .line 291
    :goto_43
    invoke-virtual {v11}, Lv/d;->q()Z

    move-result v15

    if-eqz v15, :cond_6b

    if-eqz v12, :cond_6b

    :cond_6a
    :goto_44
    const/high16 v11, 0x40000000    # 2.0f

    const/16 v17, 0x0

    goto :goto_45

    .line 292
    :cond_6b
    invoke-virtual {v11}, Lv/d;->r()Z

    move-result v15

    if-eqz v15, :cond_6c

    if-eqz v12, :cond_6c

    goto :goto_44

    .line 293
    :cond_6c
    instance-of v12, v11, Lv/g;

    if-eqz v12, :cond_6d

    goto :goto_44

    .line 294
    :cond_6d
    invoke-virtual {v11}, Lv/d;->q()Z

    move-result v12

    if-nez v12, :cond_6a

    .line 295
    invoke-virtual {v11}, Lv/d;->r()Z

    move-result v11

    if-eqz v11, :cond_6e

    goto :goto_44

    :cond_6e
    add-int/lit8 v15, v29, 0x1

    move/from16 v11, v17

    move/from16 v12, v27

    goto :goto_3f

    :cond_6f
    move/from16 v17, v11

    move/from16 v27, v12

    const/high16 v11, 0x40000000    # 2.0f

    :goto_45
    if-ne v6, v11, :cond_70

    if-eq v10, v11, :cond_71

    :cond_70
    if-eqz v5, :cond_72

    :cond_71
    const/4 v11, 0x1

    goto :goto_46

    :cond_72
    const/4 v11, 0x0

    :goto_46
    and-int v11, v17, v11

    if-eqz v11, :cond_93

    const/16 v25, 0x0

    .line 296
    aget v11, v26, v25

    .line 297
    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v15, 0x1

    .line 298
    aget v11, v26, v15

    move/from16 v12, v24

    .line 299
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v6, v12, :cond_74

    .line 300
    invoke-virtual {v7}, Lv/d;->l()I

    move-result v12

    if-eq v12, v9, :cond_73

    .line 301
    invoke-virtual {v7, v9}, Lv/d;->y(I)V

    .line 302
    iput-boolean v15, v8, Lw/e;->b:Z

    :cond_73
    const/high16 v12, 0x40000000    # 2.0f

    :cond_74
    if-ne v10, v12, :cond_75

    .line 303
    invoke-virtual {v7}, Lv/d;->i()I

    move-result v9

    if-eq v9, v11, :cond_75

    .line 304
    invoke-virtual {v7, v11}, Lv/d;->v(I)V

    .line 305
    iput-boolean v15, v8, Lw/e;->b:Z

    :cond_75
    if-ne v6, v12, :cond_8c

    if-ne v10, v12, :cond_8c

    .line 306
    iget-object v9, v8, Lw/e;->e:Ljava/util/ArrayList;

    .line 307
    iget-object v11, v8, Lw/e;->a:Lv/e;

    .line 308
    iget-boolean v12, v8, Lw/e;->b:Z

    if-nez v12, :cond_77

    iget-boolean v12, v8, Lw/e;->c:Z

    if-eqz v12, :cond_76

    goto :goto_47

    :cond_76
    const/4 v12, 0x0

    goto :goto_49

    .line 309
    :cond_77
    :goto_47
    iget-object v12, v11, Lv/e;->d0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v0, 0x0

    :goto_48
    if-ge v0, v15, :cond_78

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v0, v0, 0x1

    move/from16 v20, v0

    move-object/from16 v0, v17

    check-cast v0, Lv/d;

    move-object/from16 v17, v12

    const/4 v12, 0x0

    .line 310
    iput-boolean v12, v0, Lv/d;->a:Z

    .line 311
    iget-object v12, v0, Lv/d;->d:Lw/j;

    invoke-virtual {v12}, Lw/j;->n()V

    .line 312
    iget-object v0, v0, Lv/d;->e:Lw/l;

    invoke-virtual {v0}, Lw/l;->m()V

    move-object/from16 v12, v17

    move/from16 v0, v20

    goto :goto_48

    :cond_78
    const/4 v12, 0x0

    .line 313
    iput-boolean v12, v11, Lv/d;->a:Z

    .line 314
    iget-object v0, v11, Lv/d;->d:Lw/j;

    invoke-virtual {v0}, Lw/j;->n()V

    .line 315
    iget-object v0, v11, Lv/d;->e:Lw/l;

    invoke-virtual {v0}, Lw/l;->m()V

    .line 316
    iput-boolean v12, v8, Lw/e;->c:Z

    .line 317
    :goto_49
    iget-object v0, v8, Lw/e;->d:Lv/e;

    invoke-virtual {v8, v0}, Lw/e;->b(Lv/e;)V

    .line 318
    iput v12, v11, Lv/d;->N:I

    iget-object v0, v11, Lv/d;->c0:[I

    iget-object v15, v11, Lv/d;->e:Lw/l;

    move-object/from16 v17, v0

    iget-object v0, v11, Lv/d;->d:Lw/j;

    .line 319
    iput v12, v11, Lv/d;->O:I

    move-object/from16 v20, v4

    .line 320
    invoke-virtual {v11, v12}, Lv/d;->h(I)I

    move-result v4

    move-object/from16 v24, v2

    const/4 v12, 0x1

    .line 321
    invoke-virtual {v11, v12}, Lv/d;->h(I)I

    move-result v2

    .line 322
    iget-boolean v12, v8, Lw/e;->b:Z

    if-eqz v12, :cond_79

    .line 323
    invoke-virtual {v8}, Lw/e;->c()V

    .line 324
    :cond_79
    invoke-virtual {v11}, Lv/d;->m()I

    move-result v12

    move-object/from16 v26, v1

    .line 325
    invoke-virtual {v11}, Lv/d;->n()I

    move-result v1

    move/from16 v28, v13

    .line 326
    iget-object v13, v0, Lw/m;->h:Lw/f;

    move/from16 v29, v14

    iget-object v14, v0, Lw/m;->e:Lw/g;

    invoke-virtual {v13, v12}, Lw/f;->d(I)V

    .line 327
    iget-object v13, v15, Lw/m;->h:Lw/f;

    move/from16 v30, v12

    iget-object v12, v15, Lw/m;->e:Lw/g;

    invoke-virtual {v13, v1}, Lw/f;->d(I)V

    .line 328
    invoke-virtual {v8}, Lw/e;->g()V

    const/4 v13, 0x2

    if-eq v4, v13, :cond_7c

    if-ne v2, v13, :cond_7a

    goto :goto_4b

    :cond_7a
    move/from16 v31, v1

    :cond_7b
    const/4 v1, 0x1

    :goto_4a
    const/16 v25, 0x0

    goto :goto_4d

    :cond_7c
    :goto_4b
    if-eqz v5, :cond_7e

    .line 329
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v31, v1

    const/4 v1, 0x0

    :cond_7d
    if-ge v1, v13, :cond_7f

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    add-int/lit8 v1, v1, 0x1

    check-cast v32, Lw/m;

    .line 330
    invoke-virtual/range {v32 .. v32}, Lw/m;->k()Z

    move-result v32

    if-nez v32, :cond_7d

    const/4 v5, 0x0

    goto :goto_4c

    :cond_7e
    move/from16 v31, v1

    :cond_7f
    :goto_4c
    if-eqz v5, :cond_80

    const/4 v13, 0x2

    if-ne v4, v13, :cond_80

    const/4 v1, 0x1

    .line 331
    invoke-virtual {v11, v1}, Lv/d;->w(I)V

    const/4 v1, 0x0

    .line 332
    invoke-virtual {v8, v11, v1}, Lw/e;->d(Lv/e;I)I

    move-result v13

    invoke-virtual {v11, v13}, Lv/d;->y(I)V

    .line 333
    invoke-virtual {v11}, Lv/d;->l()I

    move-result v1

    invoke-virtual {v14, v1}, Lw/g;->d(I)V

    :cond_80
    if-eqz v5, :cond_7b

    const/4 v13, 0x2

    if-ne v2, v13, :cond_7b

    const/4 v1, 0x1

    .line 334
    invoke-virtual {v11, v1}, Lv/d;->x(I)V

    .line 335
    invoke-virtual {v8, v11, v1}, Lw/e;->d(Lv/e;I)I

    move-result v5

    invoke-virtual {v11, v5}, Lv/d;->v(I)V

    .line 336
    invoke-virtual {v11}, Lv/d;->i()I

    move-result v5

    invoke-virtual {v12, v5}, Lw/g;->d(I)V

    goto :goto_4a

    .line 337
    :goto_4d
    aget v5, v17, v25

    if-eq v5, v1, :cond_82

    const/4 v1, 0x4

    if-ne v5, v1, :cond_81

    goto :goto_4e

    :cond_81
    const/4 v0, 0x0

    goto :goto_4f

    .line 338
    :cond_82
    :goto_4e
    invoke-virtual {v11}, Lv/d;->l()I

    move-result v1

    add-int v1, v1, v30

    .line 339
    iget-object v0, v0, Lw/m;->i:Lw/f;

    invoke-virtual {v0, v1}, Lw/f;->d(I)V

    sub-int v1, v1, v30

    .line 340
    invoke-virtual {v14, v1}, Lw/g;->d(I)V

    .line 341
    invoke-virtual {v8}, Lw/e;->g()V

    const/4 v1, 0x1

    .line 342
    aget v0, v17, v1

    if-eq v0, v1, :cond_83

    const/4 v1, 0x4

    if-ne v0, v1, :cond_84

    .line 343
    :cond_83
    invoke-virtual {v11}, Lv/d;->i()I

    move-result v0

    add-int v0, v0, v31

    .line 344
    iget-object v1, v15, Lw/m;->i:Lw/f;

    invoke-virtual {v1, v0}, Lw/f;->d(I)V

    sub-int v0, v0, v31

    .line 345
    invoke-virtual {v12, v0}, Lw/g;->d(I)V

    .line 346
    :cond_84
    invoke-virtual {v8}, Lw/e;->g()V

    const/4 v0, 0x1

    .line 347
    :goto_4f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_50
    if-ge v5, v1, :cond_86

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    check-cast v8, Lw/m;

    .line 348
    iget-object v12, v8, Lw/m;->b:Lv/d;

    if-ne v12, v11, :cond_85

    iget-boolean v12, v8, Lw/m;->g:Z

    if-nez v12, :cond_85

    goto :goto_50

    .line 349
    :cond_85
    invoke-virtual {v8}, Lw/m;->e()V

    goto :goto_50

    .line 350
    :cond_86
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :cond_87
    :goto_51
    if-ge v5, v1, :cond_8b

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    check-cast v8, Lw/m;

    if-nez v0, :cond_88

    .line 351
    iget-object v12, v8, Lw/m;->b:Lv/d;

    if-ne v12, v11, :cond_88

    goto :goto_51

    .line 352
    :cond_88
    iget-object v12, v8, Lw/m;->h:Lw/f;

    iget-boolean v12, v12, Lw/f;->j:Z

    if-nez v12, :cond_89

    :goto_52
    const/4 v0, 0x0

    goto :goto_53

    .line 353
    :cond_89
    iget-object v12, v8, Lw/m;->i:Lw/f;

    iget-boolean v12, v12, Lw/f;->j:Z

    if-nez v12, :cond_8a

    instance-of v12, v8, Lw/h;

    if-nez v12, :cond_8a

    goto :goto_52

    .line 354
    :cond_8a
    iget-object v12, v8, Lw/m;->e:Lw/g;

    iget-boolean v12, v12, Lw/f;->j:Z

    if-nez v12, :cond_87

    instance-of v12, v8, Lw/c;

    if-nez v12, :cond_87

    instance-of v8, v8, Lw/h;

    if-nez v8, :cond_87

    goto :goto_52

    :cond_8b
    const/4 v0, 0x1

    .line 355
    :goto_53
    invoke-virtual {v11, v4}, Lv/d;->w(I)V

    .line 356
    invoke-virtual {v11, v2}, Lv/d;->x(I)V

    move v1, v0

    const/4 v0, 0x2

    const/high16 v12, 0x40000000    # 2.0f

    goto/16 :goto_57

    :cond_8c
    move-object/from16 v26, v1

    move-object/from16 v24, v2

    move-object/from16 v20, v4

    move/from16 v28, v13

    move/from16 v29, v14

    .line 357
    iget-object v0, v8, Lw/e;->a:Lv/e;

    .line 358
    iget-boolean v1, v8, Lw/e;->b:Z

    if-eqz v1, :cond_8e

    .line 359
    iget-object v1, v0, Lv/e;->d0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_54
    if-ge v4, v2, :cond_8d

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v4, v4, 0x1

    check-cast v9, Lv/d;

    const/4 v14, 0x0

    .line 360
    iput-boolean v14, v9, Lv/d;->a:Z

    .line 361
    iget-object v11, v9, Lv/d;->d:Lw/j;

    iget-object v12, v11, Lw/m;->e:Lw/g;

    iput-boolean v14, v12, Lw/f;->j:Z

    .line 362
    iput-boolean v14, v11, Lw/m;->g:Z

    .line 363
    invoke-virtual {v11}, Lw/j;->n()V

    .line 364
    iget-object v9, v9, Lv/d;->e:Lw/l;

    iget-object v11, v9, Lw/m;->e:Lw/g;

    iput-boolean v14, v11, Lw/f;->j:Z

    .line 365
    iput-boolean v14, v9, Lw/m;->g:Z

    .line 366
    invoke-virtual {v9}, Lw/l;->m()V

    goto :goto_54

    :cond_8d
    const/4 v14, 0x0

    .line 367
    iput-boolean v14, v0, Lv/d;->a:Z

    .line 368
    iget-object v1, v0, Lv/d;->d:Lw/j;

    iget-object v2, v1, Lw/m;->e:Lw/g;

    iput-boolean v14, v2, Lw/f;->j:Z

    .line 369
    iput-boolean v14, v1, Lw/m;->g:Z

    .line 370
    invoke-virtual {v1}, Lw/j;->n()V

    .line 371
    iget-object v1, v0, Lv/d;->e:Lw/l;

    iget-object v2, v1, Lw/m;->e:Lw/g;

    iput-boolean v14, v2, Lw/f;->j:Z

    .line 372
    iput-boolean v14, v1, Lw/m;->g:Z

    .line 373
    invoke-virtual {v1}, Lw/l;->m()V

    .line 374
    invoke-virtual {v8}, Lw/e;->c()V

    goto :goto_55

    :cond_8e
    const/4 v14, 0x0

    .line 375
    :goto_55
    iget-object v1, v8, Lw/e;->d:Lv/e;

    invoke-virtual {v8, v1}, Lw/e;->b(Lv/e;)V

    .line 376
    iput v14, v0, Lv/d;->N:I

    .line 377
    iput v14, v0, Lv/d;->O:I

    .line 378
    iget-object v1, v0, Lv/d;->d:Lw/j;

    iget-object v1, v1, Lw/m;->h:Lw/f;

    invoke-virtual {v1, v14}, Lw/f;->d(I)V

    .line 379
    iget-object v0, v0, Lv/d;->e:Lw/l;

    iget-object v0, v0, Lw/m;->h:Lw/f;

    invoke-virtual {v0, v14}, Lw/f;->d(I)V

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v6, v12, :cond_8f

    .line 380
    invoke-virtual {v7, v14, v5}, Lv/e;->D(IZ)Z

    move-result v0

    move v1, v0

    const/4 v0, 0x1

    goto :goto_56

    :cond_8f
    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_56
    if-ne v10, v12, :cond_90

    const/4 v15, 0x1

    .line 381
    invoke-virtual {v7, v15, v5}, Lv/e;->D(IZ)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    :cond_90
    :goto_57
    if-eqz v1, :cond_94

    if-ne v6, v12, :cond_91

    const/4 v2, 0x1

    goto :goto_58

    :cond_91
    const/4 v2, 0x0

    :goto_58
    if-ne v10, v12, :cond_92

    const/4 v4, 0x1

    goto :goto_59

    :cond_92
    const/4 v4, 0x0

    .line 382
    :goto_59
    invoke-virtual {v7, v2, v4}, Lv/e;->z(ZZ)V

    goto :goto_5a

    :cond_93
    move-object/from16 v26, v1

    move-object/from16 v24, v2

    move-object/from16 v20, v4

    move/from16 v28, v13

    move/from16 v29, v14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_94
    :goto_5a
    if-eqz v1, :cond_95

    const/4 v14, 0x2

    if-eq v0, v14, :cond_b7

    :cond_95
    if-lez v27, :cond_9b

    .line 383
    iget-object v0, v7, Lv/e;->d0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 384
    iget-object v1, v7, Lv/e;->g0:Lx/f;

    const/4 v2, 0x0

    :goto_5b
    if-ge v2, v0, :cond_99

    .line 385
    iget-object v4, v7, Lv/e;->d0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/d;

    .line 386
    instance-of v5, v4, Lv/h;

    if-eqz v5, :cond_96

    :goto_5c
    const/4 v8, 0x3

    goto :goto_5d

    .line 387
    :cond_96
    iget-object v5, v4, Lv/d;->d:Lw/j;

    iget-object v5, v5, Lw/m;->e:Lw/g;

    iget-boolean v5, v5, Lw/f;->j:Z

    if-eqz v5, :cond_97

    iget-object v5, v4, Lv/d;->e:Lw/l;

    iget-object v5, v5, Lw/m;->e:Lw/g;

    iget-boolean v5, v5, Lw/f;->j:Z

    if-eqz v5, :cond_97

    goto :goto_5c

    :cond_97
    const/4 v14, 0x0

    .line 388
    invoke-virtual {v4, v14}, Lv/d;->h(I)I

    move-result v5

    const/4 v15, 0x1

    .line 389
    invoke-virtual {v4, v15}, Lv/d;->h(I)I

    move-result v6

    const/4 v8, 0x3

    if-ne v5, v8, :cond_98

    .line 390
    iget v5, v4, Lv/d;->j:I

    if-eq v5, v15, :cond_98

    if-ne v6, v8, :cond_98

    iget v5, v4, Lv/d;->k:I

    if-eq v5, v15, :cond_98

    goto :goto_5d

    :cond_98
    const/4 v14, 0x0

    .line 391
    invoke-virtual {v3, v1, v4, v14}, LF/b;->j(Lx/f;Lv/d;Z)Z

    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 392
    :cond_99
    iget-object v0, v1, Lx/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 393
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_5e
    if-ge v4, v1, :cond_9a

    .line 394
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 395
    :cond_9a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9b

    const/4 v1, 0x0

    :goto_5f
    if-ge v1, v0, :cond_9b

    .line 396
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx/c;

    .line 397
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 398
    :cond_9b
    iget v0, v7, Lv/e;->p0:I

    .line 399
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v2, v28

    move/from16 v4, v29

    if-lez v27, :cond_9c

    .line 400
    invoke-virtual {v3, v7, v2, v4}, LF/b;->l(Lv/e;II)V

    :cond_9c
    if-lez v1, :cond_b5

    .line 401
    iget-object v5, v7, Lv/d;->c0:[I

    const/16 v25, 0x0

    aget v6, v5, v25

    const/4 v14, 0x2

    if-ne v6, v14, :cond_9d

    const/4 v6, 0x1

    :goto_60
    const/16 v19, 0x1

    goto :goto_61

    :cond_9d
    const/4 v6, 0x0

    goto :goto_60

    .line 402
    :goto_61
    aget v5, v5, v19

    if-ne v5, v14, :cond_9e

    const/4 v5, 0x1

    goto :goto_62

    :cond_9e
    const/4 v5, 0x0

    .line 403
    :goto_62
    invoke-virtual {v7}, Lv/d;->l()I

    move-result v8

    move-object/from16 v9, v26

    .line 404
    iget v10, v9, Lv/d;->Q:I

    .line 405
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 406
    invoke-virtual {v7}, Lv/d;->i()I

    move-result v10

    .line 407
    iget v9, v9, Lv/d;->R:I

    .line 408
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v10, v8

    move v11, v9

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_63
    if-ge v8, v1, :cond_a4

    move-object/from16 v12, v24

    .line 409
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lv/d;

    .line 410
    instance-of v14, v13, Lv/g;

    if-nez v14, :cond_9f

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v5, v20

    goto/16 :goto_65

    .line 411
    :cond_9f
    invoke-virtual {v13}, Lv/d;->l()I

    move-result v14

    .line 412
    invoke-virtual {v13}, Lv/d;->i()I

    move-result v15

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v5, v20

    const/4 v6, 0x1

    .line 413
    invoke-virtual {v3, v5, v13, v6}, LF/b;->j(Lx/f;Lv/d;Z)Z

    move-result v20

    or-int v6, v9, v20

    .line 414
    invoke-virtual {v13}, Lv/d;->l()I

    move-result v9

    move/from16 v20, v6

    .line 415
    invoke-virtual {v13}, Lv/d;->i()I

    move-result v6

    if-eq v9, v14, :cond_a1

    .line 416
    invoke-virtual {v13, v9}, Lv/d;->y(I)V

    if-eqz v18, :cond_a0

    .line 417
    invoke-virtual {v13}, Lv/d;->m()I

    move-result v9

    iget v14, v13, Lv/d;->J:I

    add-int/2addr v9, v14

    if-le v9, v10, :cond_a0

    .line 418
    invoke-virtual {v13}, Lv/d;->m()I

    move-result v9

    iget v14, v13, Lv/d;->J:I

    add-int/2addr v9, v14

    const/4 v14, 0x4

    .line 419
    invoke-virtual {v13, v14}, Lv/d;->g(I)Lv/c;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lv/c;->c()I

    move-result v14

    add-int/2addr v14, v9

    .line 420
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_a0
    const/16 v20, 0x1

    :cond_a1
    if-eq v6, v15, :cond_a3

    .line 421
    invoke-virtual {v13, v6}, Lv/d;->v(I)V

    if-eqz v17, :cond_a2

    .line 422
    invoke-virtual {v13}, Lv/d;->n()I

    move-result v6

    iget v9, v13, Lv/d;->K:I

    add-int/2addr v6, v9

    if-le v6, v11, :cond_a2

    .line 423
    invoke-virtual {v13}, Lv/d;->n()I

    move-result v6

    iget v9, v13, Lv/d;->K:I

    add-int/2addr v6, v9

    const/4 v9, 0x5

    .line 424
    invoke-virtual {v13, v9}, Lv/d;->g(I)Lv/c;

    move-result-object v14

    invoke-virtual {v14}, Lv/c;->c()I

    move-result v9

    add-int/2addr v9, v6

    .line 425
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_a2
    const/4 v15, 0x1

    goto :goto_64

    :cond_a3
    move/from16 v15, v20

    .line 426
    :goto_64
    check-cast v13, Lv/g;

    .line 427
    iget-boolean v6, v13, Lv/g;->l0:Z

    or-int/2addr v6, v15

    move v9, v6

    :goto_65
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v20, v5

    move-object/from16 v24, v12

    move/from16 v5, v17

    move/from16 v6, v18

    goto/16 :goto_63

    :cond_a4
    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v5, v20

    move-object/from16 v12, v24

    const/4 v6, 0x0

    :goto_66
    const/4 v14, 0x2

    if-ge v6, v14, :cond_b2

    const/4 v8, 0x0

    :goto_67
    if-ge v8, v1, :cond_b0

    .line 428
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lv/d;

    .line 429
    instance-of v15, v13, Lv/i;

    if-eqz v15, :cond_a5

    instance-of v15, v13, Lv/g;

    if-eqz v15, :cond_a9

    :cond_a5
    instance-of v15, v13, Lv/h;

    if-eqz v15, :cond_a6

    goto :goto_68

    .line 430
    :cond_a6
    iget v15, v13, Lv/d;->V:I

    const/16 v14, 0x8

    if-ne v15, v14, :cond_a7

    goto :goto_68

    .line 431
    :cond_a7
    iget-object v14, v13, Lv/d;->d:Lw/j;

    iget-object v14, v14, Lw/m;->e:Lw/g;

    iget-boolean v14, v14, Lw/f;->j:Z

    if-eqz v14, :cond_a8

    iget-object v14, v13, Lv/d;->e:Lw/l;

    iget-object v14, v14, Lw/m;->e:Lw/g;

    iget-boolean v14, v14, Lw/f;->j:Z

    if-eqz v14, :cond_a8

    goto :goto_68

    .line 432
    :cond_a8
    instance-of v14, v13, Lv/g;

    if-eqz v14, :cond_aa

    :cond_a9
    :goto_68
    move/from16 v20, v1

    move-object/from16 v23, v5

    move/from16 v22, v6

    const/4 v6, 0x5

    const/4 v14, 0x4

    goto/16 :goto_6d

    .line 433
    :cond_aa
    invoke-virtual {v13}, Lv/d;->l()I

    move-result v14

    .line 434
    invoke-virtual {v13}, Lv/d;->i()I

    move-result v15

    move/from16 v20, v1

    .line 435
    iget v1, v13, Lv/d;->P:I

    move/from16 v22, v6

    const/4 v6, 0x1

    .line 436
    invoke-virtual {v3, v5, v13, v6}, LF/b;->j(Lx/f;Lv/d;Z)Z

    move-result v19

    or-int v9, v9, v19

    .line 437
    invoke-virtual {v13}, Lv/d;->l()I

    move-result v6

    move-object/from16 v23, v5

    .line 438
    invoke-virtual {v13}, Lv/d;->i()I

    move-result v5

    if-eq v6, v14, :cond_ac

    .line 439
    invoke-virtual {v13, v6}, Lv/d;->y(I)V

    if-eqz v18, :cond_ab

    .line 440
    invoke-virtual {v13}, Lv/d;->m()I

    move-result v6

    iget v9, v13, Lv/d;->J:I

    add-int/2addr v6, v9

    if-le v6, v10, :cond_ab

    .line 441
    invoke-virtual {v13}, Lv/d;->m()I

    move-result v6

    iget v9, v13, Lv/d;->J:I

    add-int/2addr v6, v9

    const/4 v14, 0x4

    .line 442
    invoke-virtual {v13, v14}, Lv/d;->g(I)Lv/c;

    move-result-object v9

    invoke-virtual {v9}, Lv/c;->c()I

    move-result v9

    add-int/2addr v9, v6

    .line 443
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_69

    :cond_ab
    const/4 v14, 0x4

    :goto_69
    const/4 v9, 0x1

    goto :goto_6a

    :cond_ac
    const/4 v14, 0x4

    :goto_6a
    if-eq v5, v15, :cond_ae

    .line 444
    invoke-virtual {v13, v5}, Lv/d;->v(I)V

    if-eqz v17, :cond_ad

    .line 445
    invoke-virtual {v13}, Lv/d;->n()I

    move-result v5

    iget v6, v13, Lv/d;->K:I

    add-int/2addr v5, v6

    if-le v5, v11, :cond_ad

    .line 446
    invoke-virtual {v13}, Lv/d;->n()I

    move-result v5

    iget v6, v13, Lv/d;->K:I

    add-int/2addr v5, v6

    const/4 v6, 0x5

    .line 447
    invoke-virtual {v13, v6}, Lv/d;->g(I)Lv/c;

    move-result-object v9

    invoke-virtual {v9}, Lv/c;->c()I

    move-result v9

    add-int/2addr v9, v5

    .line 448
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_6b

    :cond_ad
    const/4 v6, 0x5

    :goto_6b
    const/4 v15, 0x1

    goto :goto_6c

    :cond_ae
    const/4 v6, 0x5

    move v15, v9

    .line 449
    :goto_6c
    iget-boolean v5, v13, Lv/d;->w:Z

    if-eqz v5, :cond_af

    .line 450
    iget v5, v13, Lv/d;->P:I

    if-eq v1, v5, :cond_af

    const/4 v9, 0x1

    goto :goto_6d

    :cond_af
    move v9, v15

    :goto_6d
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v20

    move/from16 v6, v22

    move-object/from16 v5, v23

    const/4 v14, 0x2

    goto/16 :goto_67

    :cond_b0
    move/from16 v20, v1

    move-object/from16 v23, v5

    move/from16 v22, v6

    const/4 v6, 0x5

    const/4 v14, 0x4

    if-eqz v9, :cond_b1

    .line 451
    invoke-virtual {v3, v7, v2, v4}, LF/b;->l(Lv/e;II)V

    const/4 v9, 0x0

    :cond_b1
    add-int/lit8 v1, v22, 0x1

    move v6, v1

    move/from16 v1, v20

    move-object/from16 v5, v23

    goto/16 :goto_66

    :cond_b2
    if-eqz v9, :cond_b5

    .line 452
    invoke-virtual {v3, v7, v2, v4}, LF/b;->l(Lv/e;II)V

    .line 453
    invoke-virtual {v7}, Lv/d;->l()I

    move-result v1

    if-ge v1, v10, :cond_b3

    .line 454
    invoke-virtual {v7, v10}, Lv/d;->y(I)V

    const/4 v1, 0x1

    goto :goto_6e

    :cond_b3
    const/4 v1, 0x0

    .line 455
    :goto_6e
    invoke-virtual {v7}, Lv/d;->i()I

    move-result v5

    if-ge v5, v11, :cond_b4

    .line 456
    invoke-virtual {v7, v11}, Lv/d;->v(I)V

    const/4 v15, 0x1

    goto :goto_6f

    :cond_b4
    move v15, v1

    :goto_6f
    if-eqz v15, :cond_b5

    .line 457
    invoke-virtual {v3, v7, v2, v4}, LF/b;->l(Lv/e;II)V

    .line 458
    :cond_b5
    iput v0, v7, Lv/e;->p0:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b6

    const/4 v5, 0x1

    goto :goto_70

    :cond_b6
    const/4 v5, 0x0

    .line 459
    :goto_70
    sput-boolean v5, Lu/e;->p:Z

    .line 460
    :cond_b7
    invoke-virtual {v7}, Lv/d;->l()I

    move-result v0

    invoke-virtual {v7}, Lv/d;->i()I

    move-result v1

    .line 461
    iget-boolean v2, v7, Lv/e;->q0:Z

    .line 462
    iget-boolean v3, v7, Lv/e;->r0:Z

    move-object/from16 v4, v16

    .line 463
    iget v5, v4, Lx/f;->e:I

    .line 464
    iget v4, v4, Lx/f;->d:I

    add-int/2addr v0, v4

    add-int/2addr v1, v5

    move/from16 v4, p1

    const/4 v14, 0x0

    .line 465
    invoke-static {v0, v4, v14}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    move/from16 v4, p2

    .line 466
    invoke-static {v1, v4, v14}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    const v4, 0xffffff

    and-int/2addr v0, v4

    and-int/2addr v1, v4

    move-object/from16 v4, p0

    .line 467
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 468
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v5, 0x1000000

    if-eqz v2, :cond_b8

    or-int/2addr v0, v5

    :cond_b8
    if-eqz v3, :cond_b9

    or-int/2addr v1, v5

    .line 469
    :cond_b9
    invoke-virtual {v4, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lv/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, p1, Lx/o;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    instance-of v0, v0, Lv/h;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lx/e;

    .line 22
    .line 23
    new-instance v1, Lv/h;

    .line 24
    .line 25
    invoke-direct {v1}, Lv/h;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Lx/e;->k0:Lv/d;

    .line 29
    .line 30
    iput-boolean v2, v0, Lx/e;->Y:Z

    .line 31
    .line 32
    iget v0, v0, Lx/e;->R:I

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lv/h;->B(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    instance-of v0, p1, Lx/c;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    move-object v0, p1

    .line 42
    check-cast v0, Lx/c;

    .line 43
    .line 44
    invoke-virtual {v0}, Lx/c;->g()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lx/e;

    .line 52
    .line 53
    iput-boolean v2, v1, Lx/e;->Z:Z

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    .line 76
    .line 77
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/view/View;)Lv/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lv/e;

    .line 18
    .line 19
    iget-object v1, v1, Lv/e;->d0:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, v0, Lv/d;->I:Lv/d;

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    .line 34
    .line 35
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setConstraintSet(Lx/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lx/m;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/view/View;->setId(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnConstraintsChanged(Lx/n;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:LA1/d;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lv/e;

    .line 4
    .line 5
    iput p1, v0, Lv/e;->p0:I

    .line 6
    .line 7
    const/16 v0, 0x100

    .line 8
    .line 9
    and-int/2addr p1, v0

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    sput-boolean p1, Lu/e;->p:Z

    .line 16
    .line 17
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
