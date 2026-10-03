.class public final LP/G;
.super LP/d0;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements LP/i0;


# instance fields
.field public A:Landroid/graphics/Rect;

.field public B:J

.field public final a:Ljava/util/ArrayList;

.field public final b:[F

.field public c:LP/y0;

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public final m:LC1/N0;

.field public n:I

.field public o:I

.field public final p:Ljava/util/ArrayList;

.field public q:I

.field public r:Landroidx/recyclerview/widget/RecyclerView;

.field public final s:LA1/u0;

.field public t:Landroid/view/VelocityTracker;

.field public u:Ljava/util/ArrayList;

.field public v:Ljava/util/ArrayList;

.field public w:Landroid/view/View;

.field public x:Landroidx/core/view/GestureDetectorCompat;

.field public y:LP/F;

.field public final z:LP/C;


# direct methods
.method public constructor <init>(LC1/N0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LP/G;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [F

    .line 13
    .line 14
    iput-object v0, p0, LP/G;->b:[F

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, LP/G;->c:LP/y0;

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, p0, LP/G;->l:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput v1, p0, LP/G;->n:I

    .line 24
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, LP/G;->p:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v1, LA1/u0;

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    invoke-direct {v1, v2, p0}, LA1/u0;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, LP/G;->s:LA1/u0;

    .line 39
    .line 40
    iput-object v0, p0, LP/G;->w:Landroid/view/View;

    .line 41
    .line 42
    new-instance v0, LP/C;

    .line 43
    .line 44
    invoke-direct {v0, p0}, LP/C;-><init>(LP/G;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, LP/G;->z:LP/C;

    .line 48
    .line 49
    iput-object p1, p0, LP/G;->m:LC1/N0;

    .line 50
    .line 51
    return-void
.end method

.method public static o(Landroid/view/View;FFFF)Z
    .locals 1

    .line 1
    cmpl-float v0, p1, p3

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    add-float/2addr p3, v0

    .line 11
    cmpg-float p1, p1, p3

    .line 12
    .line 13
    if-gtz p1, :cond_0

    .line 14
    .line 15
    cmpl-float p1, p2, p4

    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    int-to-float p0, p0

    .line 24
    add-float/2addr p4, p0

    .line 25
    cmpg-float p0, p2, p4

    .line 26
    .line 27
    if-gtz p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LP/G;->q(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)LP/y0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, LP/G;->c:LP/y0;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1, v1}, LP/G;->r(LP/y0;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0, p1, v1}, LP/G;->l(LP/y0;Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, LP/G;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object v1, p1, LP/y0;->a:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, LP/G;->m:LC1/N0;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, LP/E;->a(LP/y0;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method public final f(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 13

    .line 1
    iget-object v0, p0, LP/G;->c:LP/y0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LP/G;->b:[F

    .line 8
    .line 9
    invoke-virtual {p0, v0}, LP/G;->n([F)V

    .line 10
    .line 11
    .line 12
    aget v3, v0, v2

    .line 13
    .line 14
    aget v0, v0, v1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    move v0, v3

    .line 19
    :goto_0
    iget-object v4, p0, LP/G;->c:LP/y0;

    .line 20
    .line 21
    iget-object v5, p0, LP/G;->m:LC1/N0;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v5, p0, LP/G;->p:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    move v7, v2

    .line 33
    :goto_1
    if-ge v7, v6, :cond_3

    .line 34
    .line 35
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    check-cast v8, LP/D;

    .line 40
    .line 41
    iget-object v9, v8, LP/D;->e:LP/y0;

    .line 42
    .line 43
    iget v10, v8, LP/D;->a:F

    .line 44
    .line 45
    iget v11, v8, LP/D;->c:F

    .line 46
    .line 47
    cmpl-float v12, v10, v11

    .line 48
    .line 49
    if-nez v12, :cond_1

    .line 50
    .line 51
    iget-object v10, v9, LP/y0;->a:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    iput v10, v8, LP/D;->i:F

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    iget v12, v8, LP/D;->m:F

    .line 61
    .line 62
    sub-float/2addr v11, v10

    .line 63
    mul-float/2addr v11, v12

    .line 64
    add-float/2addr v11, v10

    .line 65
    iput v11, v8, LP/D;->i:F

    .line 66
    .line 67
    :goto_2
    iget v10, v8, LP/D;->b:F

    .line 68
    .line 69
    iget v11, v8, LP/D;->d:F

    .line 70
    .line 71
    cmpl-float v12, v10, v11

    .line 72
    .line 73
    if-nez v12, :cond_2

    .line 74
    .line 75
    iget-object v9, v9, LP/y0;->a:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    iput v9, v8, LP/D;->j:F

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_2
    iget v9, v8, LP/D;->m:F

    .line 85
    .line 86
    sub-float/2addr v11, v10

    .line 87
    mul-float/2addr v11, v9

    .line 88
    add-float/2addr v11, v10

    .line 89
    iput v11, v8, LP/D;->j:F

    .line 90
    .line 91
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    iget-object v10, v8, LP/D;->e:LP/y0;

    .line 96
    .line 97
    iget v11, v8, LP/D;->i:F

    .line 98
    .line 99
    iget v8, v8, LP/D;->j:F

    .line 100
    .line 101
    invoke-static {p2, v10, v11, v8, v2}, LP/E;->e(Landroidx/recyclerview/widget/RecyclerView;LP/y0;FFZ)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v7, v7, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    if-eqz v4, :cond_4

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-static {p2, v4, v3, v0, v1}, LP/E;->e(Landroidx/recyclerview/widget/RecyclerView;LP/y0;FFZ)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 120
    .line 121
    .line 122
    :cond_4
    return-void
.end method

.method public final h(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    .line 1
    iget-object v0, p0, LP/G;->c:LP/y0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LP/G;->b:[F

    .line 8
    .line 9
    invoke-virtual {p0, v0}, LP/G;->n([F)V

    .line 10
    .line 11
    .line 12
    aget v3, v0, v2

    .line 13
    .line 14
    aget v0, v0, v1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, LP/G;->c:LP/y0;

    .line 17
    .line 18
    iget-object v3, p0, LP/G;->m:LC1/N0;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, LP/G;->p:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    move v5, v2

    .line 30
    :goto_0
    if-ge v5, v4, :cond_1

    .line 31
    .line 32
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, LP/D;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    iget-object v6, v6, LP/D;->e:LP/y0;

    .line 43
    .line 44
    iget-object v6, v6, LP/y0;->a:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    sub-int/2addr v4, v1

    .line 62
    :goto_1
    if-ltz v4, :cond_5

    .line 63
    .line 64
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, LP/D;

    .line 69
    .line 70
    iget-boolean v0, p1, LP/D;->l:Z

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-boolean p1, p1, LP/D;->h:Z

    .line 75
    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    if-nez v0, :cond_4

    .line 83
    .line 84
    move v2, v1

    .line 85
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    if-eqz v2, :cond_6

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 91
    .line 92
    .line 93
    :cond_6
    return-void
.end method

.method public final i(I)I
    .locals 8

    .line 1
    and-int/lit8 v0, p1, 0xc

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v0, p0, LP/G;->h:F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    move v0, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    iget-object v4, p0, LP/G;->t:Landroid/view/VelocityTracker;

    .line 19
    .line 20
    iget-object v5, p0, LP/G;->m:LC1/N0;

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget v6, p0, LP/G;->l:I

    .line 25
    .line 26
    const/4 v7, -0x1

    .line 27
    if-le v6, v7, :cond_2

    .line 28
    .line 29
    iget v6, p0, LP/G;->g:F

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const/16 v7, 0x3e8

    .line 35
    .line 36
    invoke-virtual {v4, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, LP/G;->t:Landroid/view/VelocityTracker;

    .line 40
    .line 41
    iget v6, p0, LP/G;->l:I

    .line 42
    .line 43
    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget-object v6, p0, LP/G;->t:Landroid/view/VelocityTracker;

    .line 48
    .line 49
    iget v7, p0, LP/G;->l:I

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    cmpl-float v1, v4, v1

    .line 56
    .line 57
    if-lez v1, :cond_1

    .line 58
    .line 59
    move v2, v3

    .line 60
    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    and-int v3, v2, p1

    .line 65
    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    if-ne v0, v2, :cond_2

    .line 69
    .line 70
    iget v3, p0, LP/G;->f:F

    .line 71
    .line 72
    cmpl-float v3, v1, v3

    .line 73
    .line 74
    if-ltz v3, :cond_2

    .line 75
    .line 76
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    cmpl-float v1, v1, v3

    .line 81
    .line 82
    if-lez v1, :cond_2

    .line 83
    .line 84
    return v2

    .line 85
    :cond_2
    iget-object v1, p0, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    int-to-float v1, v1

    .line 92
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    const/high16 v2, 0x3f000000    # 0.5f

    .line 96
    .line 97
    mul-float/2addr v1, v2

    .line 98
    and-int/2addr p1, v0

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    iget p1, p0, LP/G;->h:F

    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    cmpl-float p1, p1, v1

    .line 108
    .line 109
    if-lez p1, :cond_3

    .line 110
    .line 111
    return v0

    .line 112
    :cond_3
    const/4 p1, 0x0

    .line 113
    return p1
.end method

.method public final j(Landroid/view/MotionEvent;II)V
    .locals 8

    .line 1
    iget-object v0, p0, LP/G;->c:LP/y0;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p2, v0, :cond_d

    .line 7
    .line 8
    iget p2, p0, LP/G;->n:I

    .line 9
    .line 10
    if-eq p2, v0, :cond_d

    .line 11
    .line 12
    iget-object p2, p0, LP/G;->m:LC1/N0;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()LP/g0;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget v3, p0, LP/G;->l:I

    .line 35
    .line 36
    const/4 v4, -0x1

    .line 37
    const/4 v5, 0x0

    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    iget v6, p0, LP/G;->d:F

    .line 50
    .line 51
    sub-float/2addr v4, v6

    .line 52
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iget v6, p0, LP/G;->e:F

    .line 57
    .line 58
    sub-float/2addr v3, v6

    .line 59
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    iget v6, p0, LP/G;->q:I

    .line 68
    .line 69
    int-to-float v6, v6

    .line 70
    cmpg-float v7, v4, v6

    .line 71
    .line 72
    if-gez v7, :cond_2

    .line 73
    .line 74
    cmpg-float v6, v3, v6

    .line 75
    .line 76
    if-gez v6, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    cmpl-float v6, v4, v3

    .line 80
    .line 81
    if-lez v6, :cond_3

    .line 82
    .line 83
    invoke-virtual {v1}, LP/g0;->d()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_3

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    cmpl-float v3, v3, v4

    .line 91
    .line 92
    if-lez v3, :cond_4

    .line 93
    .line 94
    invoke-virtual {v1}, LP/g0;->e()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_4

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {p0, p1}, LP/G;->m(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    iget-object v3, p0, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 109
    .line 110
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)LP/y0;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    :goto_0
    if-nez v5, :cond_6

    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :cond_6
    iget-object v1, p0, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    .line 120
    invoke-virtual {p2, v1, v5}, LC1/N0;->f(Landroidx/recyclerview/widget/RecyclerView;LP/y0;)I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-static {p2, v1}, LP/E;->b(II)I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    const v1, 0xff00

    .line 133
    .line 134
    .line 135
    and-int/2addr p2, v1

    .line 136
    shr-int/lit8 p2, p2, 0x8

    .line 137
    .line 138
    if-nez p2, :cond_7

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_7
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    .line 146
    .line 147
    .line 148
    move-result p3

    .line 149
    iget v3, p0, LP/G;->d:F

    .line 150
    .line 151
    sub-float/2addr v1, v3

    .line 152
    iget v3, p0, LP/G;->e:F

    .line 153
    .line 154
    sub-float/2addr p3, v3

    .line 155
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    iget v6, p0, LP/G;->q:I

    .line 164
    .line 165
    int-to-float v6, v6

    .line 166
    cmpg-float v7, v3, v6

    .line 167
    .line 168
    if-gez v7, :cond_8

    .line 169
    .line 170
    cmpg-float v6, v4, v6

    .line 171
    .line 172
    if-gez v6, :cond_8

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_8
    cmpl-float v3, v3, v4

    .line 176
    .line 177
    const/4 v4, 0x0

    .line 178
    if-lez v3, :cond_a

    .line 179
    .line 180
    cmpg-float p3, v1, v4

    .line 181
    .line 182
    if-gez p3, :cond_9

    .line 183
    .line 184
    and-int/lit8 p3, p2, 0x4

    .line 185
    .line 186
    if-nez p3, :cond_9

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_9
    cmpl-float p3, v1, v4

    .line 190
    .line 191
    if-lez p3, :cond_c

    .line 192
    .line 193
    and-int/lit8 p2, p2, 0x8

    .line 194
    .line 195
    if-nez p2, :cond_c

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_a
    cmpg-float v1, p3, v4

    .line 199
    .line 200
    if-gez v1, :cond_b

    .line 201
    .line 202
    and-int/lit8 v1, p2, 0x1

    .line 203
    .line 204
    if-nez v1, :cond_b

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_b
    cmpl-float p3, p3, v4

    .line 208
    .line 209
    if-lez p3, :cond_c

    .line 210
    .line 211
    and-int/2addr p2, v0

    .line 212
    if-nez p2, :cond_c

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_c
    iput v4, p0, LP/G;->i:F

    .line 216
    .line 217
    iput v4, p0, LP/G;->h:F

    .line 218
    .line 219
    const/4 p2, 0x0

    .line 220
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    iput p1, p0, LP/G;->l:I

    .line 225
    .line 226
    invoke-virtual {p0, v5, v2}, LP/G;->r(LP/y0;I)V

    .line 227
    .line 228
    .line 229
    :cond_d
    :goto_1
    return-void
.end method

.method public final k(I)I
    .locals 8

    .line 1
    and-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v0, p0, LP/G;->i:F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x2

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    move v0, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v2

    .line 17
    :goto_0
    iget-object v4, p0, LP/G;->t:Landroid/view/VelocityTracker;

    .line 18
    .line 19
    iget-object v5, p0, LP/G;->m:LC1/N0;

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    iget v6, p0, LP/G;->l:I

    .line 24
    .line 25
    const/4 v7, -0x1

    .line 26
    if-le v6, v7, :cond_2

    .line 27
    .line 28
    iget v6, p0, LP/G;->g:F

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/16 v7, 0x3e8

    .line 34
    .line 35
    invoke-virtual {v4, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, LP/G;->t:Landroid/view/VelocityTracker;

    .line 39
    .line 40
    iget v6, p0, LP/G;->l:I

    .line 41
    .line 42
    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    iget-object v6, p0, LP/G;->t:Landroid/view/VelocityTracker;

    .line 47
    .line 48
    iget v7, p0, LP/G;->l:I

    .line 49
    .line 50
    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    cmpl-float v1, v6, v1

    .line 55
    .line 56
    if-lez v1, :cond_1

    .line 57
    .line 58
    move v2, v3

    .line 59
    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    and-int v3, v2, p1

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    if-ne v2, v0, :cond_2

    .line 68
    .line 69
    iget v3, p0, LP/G;->f:F

    .line 70
    .line 71
    cmpl-float v3, v1, v3

    .line 72
    .line 73
    if-ltz v3, :cond_2

    .line 74
    .line 75
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    cmpl-float v1, v1, v3

    .line 80
    .line 81
    if-lez v1, :cond_2

    .line 82
    .line 83
    return v2

    .line 84
    :cond_2
    iget-object v1, p0, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    int-to-float v1, v1

    .line 91
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    const/high16 v2, 0x3f000000    # 0.5f

    .line 95
    .line 96
    mul-float/2addr v1, v2

    .line 97
    and-int/2addr p1, v0

    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    iget p1, p0, LP/G;->i:F

    .line 101
    .line 102
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    cmpl-float p1, p1, v1

    .line 107
    .line 108
    if-lez p1, :cond_3

    .line 109
    .line 110
    return v0

    .line 111
    :cond_3
    const/4 p1, 0x0

    .line 112
    return p1
.end method

.method public final l(LP/y0;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, LP/G;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, LP/D;

    .line 16
    .line 17
    iget-object v3, v2, LP/D;->e:LP/y0;

    .line 18
    .line 19
    if-ne v3, p1, :cond_1

    .line 20
    .line 21
    iget-boolean p1, v2, LP/D;->k:Z

    .line 22
    .line 23
    or-int/2addr p1, p2

    .line 24
    iput-boolean p1, v2, LP/D;->k:Z

    .line 25
    .line 26
    iget-boolean p1, v2, LP/D;->l:Z

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, v2, LP/D;->g:Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method public final m(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v1, p0, LP/G;->c:LP/y0;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v1, LP/y0;->a:Landroid/view/View;

    .line 14
    .line 15
    iget v2, p0, LP/G;->j:F

    .line 16
    .line 17
    iget v3, p0, LP/G;->h:F

    .line 18
    .line 19
    add-float/2addr v2, v3

    .line 20
    iget v3, p0, LP/G;->k:F

    .line 21
    .line 22
    iget v4, p0, LP/G;->i:F

    .line 23
    .line 24
    add-float/2addr v3, v4

    .line 25
    invoke-static {v1, v0, p1, v2, v3}, LP/G;->o(Landroid/view/View;FFFF)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    iget-object v1, p0, LP/G;->p:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/lit8 v2, v2, -0x1

    .line 39
    .line 40
    :goto_0
    if-ltz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, LP/D;

    .line 47
    .line 48
    iget-object v4, v3, LP/D;->e:LP/y0;

    .line 49
    .line 50
    iget-object v4, v4, LP/y0;->a:Landroid/view/View;

    .line 51
    .line 52
    iget v5, v3, LP/D;->i:F

    .line 53
    .line 54
    iget v3, v3, LP/D;->j:F

    .line 55
    .line 56
    invoke-static {v4, v0, p1, v5, v3}, LP/G;->o(Landroid/view/View;FFFF)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    return-object v4

    .line 63
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->g:LP/i;

    .line 69
    .line 70
    invoke-virtual {v2}, LP/i;->e()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    add-int/lit8 v2, v2, -0x1

    .line 75
    .line 76
    :goto_1
    if-ltz v2, :cond_4

    .line 77
    .line 78
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->g:LP/i;

    .line 79
    .line 80
    invoke-virtual {v3, v2}, LP/i;->d(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    int-to-float v6, v6

    .line 97
    add-float/2addr v6, v4

    .line 98
    cmpl-float v6, v0, v6

    .line 99
    .line 100
    if-ltz v6, :cond_3

    .line 101
    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    int-to-float v6, v6

    .line 107
    add-float/2addr v6, v4

    .line 108
    cmpg-float v4, v0, v6

    .line 109
    .line 110
    if-gtz v4, :cond_3

    .line 111
    .line 112
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    int-to-float v4, v4

    .line 117
    add-float/2addr v4, v5

    .line 118
    cmpl-float v4, p1, v4

    .line 119
    .line 120
    if-ltz v4, :cond_3

    .line 121
    .line 122
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    int-to-float v4, v4

    .line 127
    add-float/2addr v4, v5

    .line 128
    cmpg-float v4, p1, v4

    .line 129
    .line 130
    if-gtz v4, :cond_3

    .line 131
    .line 132
    return-object v3

    .line 133
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    const/4 p1, 0x0

    .line 137
    return-object p1
.end method

.method public final n([F)V
    .locals 3

    .line 1
    iget v0, p0, LP/G;->o:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0xc

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, LP/G;->j:F

    .line 9
    .line 10
    iget v2, p0, LP/G;->h:F

    .line 11
    .line 12
    add-float/2addr v0, v2

    .line 13
    iget-object v2, p0, LP/G;->c:LP/y0;

    .line 14
    .line 15
    iget-object v2, v2, LP/y0;->a:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    sub-float/2addr v0, v2

    .line 23
    aput v0, p1, v1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, LP/G;->c:LP/y0;

    .line 27
    .line 28
    iget-object v0, v0, LP/y0;->a:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    aput v0, p1, v1

    .line 35
    .line 36
    :goto_0
    iget v0, p0, LP/G;->o:I

    .line 37
    .line 38
    and-int/lit8 v0, v0, 0x3

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget v0, p0, LP/G;->k:F

    .line 44
    .line 45
    iget v2, p0, LP/G;->i:F

    .line 46
    .line 47
    add-float/2addr v0, v2

    .line 48
    iget-object v2, p0, LP/G;->c:LP/y0;

    .line 49
    .line 50
    iget-object v2, v2, LP/y0;->a:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    sub-float/2addr v0, v2

    .line 58
    aput v0, p1, v1

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, LP/G;->c:LP/y0;

    .line 62
    .line 63
    iget-object v0, v0, LP/y0;->a:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    aput v0, p1, v1

    .line 70
    .line 71
    return-void
.end method

.method public final p(LP/y0;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_e

    .line 14
    .line 15
    :cond_0
    iget v2, v0, LP/G;->n:I

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-eq v2, v3, :cond_1

    .line 19
    .line 20
    goto/16 :goto_e

    .line 21
    .line 22
    :cond_1
    iget-object v2, v0, LP/G;->m:LC1/N0;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget v4, v0, LP/G;->j:F

    .line 28
    .line 29
    iget v5, v0, LP/G;->h:F

    .line 30
    .line 31
    add-float/2addr v4, v5

    .line 32
    float-to-int v4, v4

    .line 33
    iget v5, v0, LP/G;->k:F

    .line 34
    .line 35
    iget v6, v0, LP/G;->i:F

    .line 36
    .line 37
    add-float/2addr v5, v6

    .line 38
    float-to-int v5, v5

    .line 39
    iget-object v6, v1, LP/y0;->a:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    sub-int v7, v5, v7

    .line 46
    .line 47
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    int-to-float v7, v7

    .line 52
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    int-to-float v8, v8

    .line 57
    const/high16 v9, 0x3f000000    # 0.5f

    .line 58
    .line 59
    mul-float/2addr v8, v9

    .line 60
    cmpg-float v7, v7, v8

    .line 61
    .line 62
    if-gez v7, :cond_2

    .line 63
    .line 64
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    sub-int v7, v4, v7

    .line 69
    .line 70
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    int-to-float v7, v7

    .line 75
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    int-to-float v8, v8

    .line 80
    mul-float/2addr v8, v9

    .line 81
    cmpg-float v7, v7, v8

    .line 82
    .line 83
    if-gez v7, :cond_2

    .line 84
    .line 85
    goto/16 :goto_e

    .line 86
    .line 87
    :cond_2
    iget-object v7, v0, LP/G;->u:Ljava/util/ArrayList;

    .line 88
    .line 89
    if-nez v7, :cond_3

    .line 90
    .line 91
    new-instance v7, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v7, v0, LP/G;->u:Ljava/util/ArrayList;

    .line 97
    .line 98
    new-instance v7, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v7, v0, LP/G;->v:Ljava/util/ArrayList;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 107
    .line 108
    .line 109
    iget-object v7, v0, LP/G;->v:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 112
    .line 113
    .line 114
    :goto_0
    iget v7, v0, LP/G;->j:F

    .line 115
    .line 116
    iget v8, v0, LP/G;->h:F

    .line 117
    .line 118
    add-float/2addr v7, v8

    .line 119
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    iget v8, v0, LP/G;->k:F

    .line 124
    .line 125
    iget v9, v0, LP/G;->i:F

    .line 126
    .line 127
    add-float/2addr v8, v9

    .line 128
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    add-int/2addr v9, v7

    .line 137
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    add-int/2addr v10, v8

    .line 142
    add-int v11, v7, v9

    .line 143
    .line 144
    div-int/2addr v11, v3

    .line 145
    add-int v12, v8, v10

    .line 146
    .line 147
    div-int/2addr v12, v3

    .line 148
    iget-object v13, v0, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    .line 150
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()LP/g0;

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    invoke-virtual {v13}, LP/g0;->v()I

    .line 155
    .line 156
    .line 157
    move-result v14

    .line 158
    move/from16 v16, v3

    .line 159
    .line 160
    const/4 v3, 0x0

    .line 161
    :goto_1
    if-ge v3, v14, :cond_8

    .line 162
    .line 163
    invoke-virtual {v13, v3}, LP/g0;->u(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    if-ne v15, v6, :cond_5

    .line 168
    .line 169
    move/from16 v18, v3

    .line 170
    .line 171
    :cond_4
    :goto_2
    move/from16 v19, v4

    .line 172
    .line 173
    move/from16 v20, v5

    .line 174
    .line 175
    move/from16 v21, v7

    .line 176
    .line 177
    goto/16 :goto_4

    .line 178
    .line 179
    :cond_5
    move/from16 v18, v3

    .line 180
    .line 181
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-lt v3, v8, :cond_4

    .line 186
    .line 187
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-gt v3, v10, :cond_4

    .line 192
    .line 193
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-lt v3, v7, :cond_4

    .line 198
    .line 199
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-le v3, v9, :cond_6

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_6
    iget-object v3, v0, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 207
    .line 208
    invoke-virtual {v3, v15}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)LP/y0;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    .line 213
    .line 214
    .line 215
    move-result v19

    .line 216
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    .line 217
    .line 218
    .line 219
    move-result v20

    .line 220
    add-int v20, v20, v19

    .line 221
    .line 222
    div-int/lit8 v20, v20, 0x2

    .line 223
    .line 224
    sub-int v19, v11, v20

    .line 225
    .line 226
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    .line 227
    .line 228
    .line 229
    move-result v19

    .line 230
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    .line 231
    .line 232
    .line 233
    move-result v20

    .line 234
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    .line 235
    .line 236
    .line 237
    move-result v15

    .line 238
    add-int v15, v15, v20

    .line 239
    .line 240
    div-int/lit8 v15, v15, 0x2

    .line 241
    .line 242
    sub-int v15, v12, v15

    .line 243
    .line 244
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    .line 245
    .line 246
    .line 247
    move-result v15

    .line 248
    mul-int v19, v19, v19

    .line 249
    .line 250
    mul-int/2addr v15, v15

    .line 251
    add-int v15, v15, v19

    .line 252
    .line 253
    move/from16 v19, v4

    .line 254
    .line 255
    iget-object v4, v0, LP/G;->u:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    move/from16 v20, v5

    .line 262
    .line 263
    move/from16 v21, v7

    .line 264
    .line 265
    const/4 v5, 0x0

    .line 266
    const/4 v7, 0x0

    .line 267
    :goto_3
    if-ge v5, v4, :cond_7

    .line 268
    .line 269
    move/from16 v22, v4

    .line 270
    .line 271
    iget-object v4, v0, LP/G;->v:Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    check-cast v4, Ljava/lang/Integer;

    .line 278
    .line 279
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-le v15, v4, :cond_7

    .line 284
    .line 285
    add-int/lit8 v7, v7, 0x1

    .line 286
    .line 287
    add-int/lit8 v5, v5, 0x1

    .line 288
    .line 289
    move/from16 v4, v22

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_7
    iget-object v4, v0, LP/G;->u:Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-virtual {v4, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    iget-object v3, v0, LP/G;->v:Ljava/util/ArrayList;

    .line 298
    .line 299
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v3, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    :goto_4
    add-int/lit8 v3, v18, 0x1

    .line 307
    .line 308
    move/from16 v4, v19

    .line 309
    .line 310
    move/from16 v5, v20

    .line 311
    .line 312
    move/from16 v7, v21

    .line 313
    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :cond_8
    move/from16 v19, v4

    .line 317
    .line 318
    move/from16 v20, v5

    .line 319
    .line 320
    iget-object v3, v0, LP/G;->u:Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-nez v4, :cond_9

    .line 327
    .line 328
    goto/16 :goto_e

    .line 329
    .line 330
    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    add-int v4, v4, v19

    .line 335
    .line 336
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    add-int v5, v5, v20

    .line 341
    .line 342
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    sub-int v7, v19, v7

    .line 347
    .line 348
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 349
    .line 350
    .line 351
    move-result v8

    .line 352
    sub-int v8, v20, v8

    .line 353
    .line 354
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 355
    .line 356
    .line 357
    move-result v9

    .line 358
    const/4 v11, 0x0

    .line 359
    const/4 v12, -0x1

    .line 360
    const/4 v15, 0x0

    .line 361
    :goto_5
    if-ge v15, v9, :cond_f

    .line 362
    .line 363
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v13

    .line 367
    check-cast v13, LP/y0;

    .line 368
    .line 369
    if-lez v7, :cond_a

    .line 370
    .line 371
    iget-object v14, v13, LP/y0;->a:Landroid/view/View;

    .line 372
    .line 373
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    .line 374
    .line 375
    .line 376
    move-result v14

    .line 377
    sub-int/2addr v14, v4

    .line 378
    if-gez v14, :cond_a

    .line 379
    .line 380
    iget-object v10, v13, LP/y0;->a:Landroid/view/View;

    .line 381
    .line 382
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    .line 383
    .line 384
    .line 385
    move-result v10

    .line 386
    move-object/from16 v17, v3

    .line 387
    .line 388
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    if-le v10, v3, :cond_b

    .line 393
    .line 394
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-le v3, v12, :cond_b

    .line 399
    .line 400
    move v12, v3

    .line 401
    move-object v11, v13

    .line 402
    goto :goto_6

    .line 403
    :cond_a
    move-object/from16 v17, v3

    .line 404
    .line 405
    :cond_b
    :goto_6
    if-gez v7, :cond_c

    .line 406
    .line 407
    iget-object v3, v13, LP/y0;->a:Landroid/view/View;

    .line 408
    .line 409
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    sub-int v3, v3, v19

    .line 414
    .line 415
    if-lez v3, :cond_c

    .line 416
    .line 417
    iget-object v10, v13, LP/y0;->a:Landroid/view/View;

    .line 418
    .line 419
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 420
    .line 421
    .line 422
    move-result v10

    .line 423
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 424
    .line 425
    .line 426
    move-result v14

    .line 427
    if-ge v10, v14, :cond_c

    .line 428
    .line 429
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    if-le v3, v12, :cond_c

    .line 434
    .line 435
    move v12, v3

    .line 436
    move-object v11, v13

    .line 437
    :cond_c
    if-gez v8, :cond_d

    .line 438
    .line 439
    iget-object v3, v13, LP/y0;->a:Landroid/view/View;

    .line 440
    .line 441
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    sub-int v3, v3, v20

    .line 446
    .line 447
    if-lez v3, :cond_d

    .line 448
    .line 449
    iget-object v10, v13, LP/y0;->a:Landroid/view/View;

    .line 450
    .line 451
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    .line 452
    .line 453
    .line 454
    move-result v10

    .line 455
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 456
    .line 457
    .line 458
    move-result v14

    .line 459
    if-ge v10, v14, :cond_d

    .line 460
    .line 461
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    if-le v3, v12, :cond_d

    .line 466
    .line 467
    move v12, v3

    .line 468
    move-object v11, v13

    .line 469
    :cond_d
    if-lez v8, :cond_e

    .line 470
    .line 471
    iget-object v3, v13, LP/y0;->a:Landroid/view/View;

    .line 472
    .line 473
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    sub-int/2addr v3, v5

    .line 478
    if-gez v3, :cond_e

    .line 479
    .line 480
    iget-object v10, v13, LP/y0;->a:Landroid/view/View;

    .line 481
    .line 482
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    .line 483
    .line 484
    .line 485
    move-result v10

    .line 486
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 487
    .line 488
    .line 489
    move-result v14

    .line 490
    if-le v10, v14, :cond_e

    .line 491
    .line 492
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    if-le v3, v12, :cond_e

    .line 497
    .line 498
    move v12, v3

    .line 499
    move-object v11, v13

    .line 500
    :cond_e
    add-int/lit8 v15, v15, 0x1

    .line 501
    .line 502
    move-object/from16 v3, v17

    .line 503
    .line 504
    goto/16 :goto_5

    .line 505
    .line 506
    :cond_f
    if-nez v11, :cond_10

    .line 507
    .line 508
    iget-object v1, v0, LP/G;->u:Ljava/util/ArrayList;

    .line 509
    .line 510
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 511
    .line 512
    .line 513
    iget-object v1, v0, LP/G;->v:Ljava/util/ArrayList;

    .line 514
    .line 515
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 516
    .line 517
    .line 518
    return-void

    .line 519
    :cond_10
    iget-object v3, v11, LP/y0;->a:Landroid/view/View;

    .line 520
    .line 521
    iget-object v4, v11, LP/y0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 522
    .line 523
    if-nez v4, :cond_11

    .line 524
    .line 525
    const/4 v4, -0x1

    .line 526
    goto :goto_7

    .line 527
    :cond_11
    invoke-virtual {v4, v11}, Landroidx/recyclerview/widget/RecyclerView;->H(LP/y0;)I

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    :goto_7
    iget-object v5, v1, LP/y0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 532
    .line 533
    if-nez v5, :cond_12

    .line 534
    .line 535
    goto :goto_8

    .line 536
    :cond_12
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->H(LP/y0;)I

    .line 537
    .line 538
    .line 539
    :goto_8
    iget-object v5, v0, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 540
    .line 541
    const-string v7, "recyclerView"

    .line 542
    .line 543
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    const-string v5, "viewHolder"

    .line 547
    .line 548
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    const-string v5, "target"

    .line 552
    .line 553
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    sget-object v5, LS1/d;->a:Ljava/util/Set;

    .line 557
    .line 558
    iget-object v2, v2, LC1/N0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 559
    .line 560
    invoke-static {v2}, LS1/d;->p(Landroid/content/Context;)Z

    .line 561
    .line 562
    .line 563
    move-result v5

    .line 564
    sget-object v7, LC1/X0;->a:Li1/l;

    .line 565
    .line 566
    if-nez v5, :cond_13

    .line 567
    .line 568
    invoke-static {v2}, Lcom/bumptech/glide/c;->V(Lcom/minhub/gamehub/hub/GameDetailActivity;)V

    .line 569
    .line 570
    .line 571
    return-void

    .line 572
    :cond_13
    iget-object v5, v1, LP/y0;->s:LP/W;

    .line 573
    .line 574
    if-nez v5, :cond_15

    .line 575
    .line 576
    :cond_14
    :goto_9
    const/4 v7, -0x1

    .line 577
    goto :goto_a

    .line 578
    :cond_15
    iget-object v5, v1, LP/y0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 579
    .line 580
    if-nez v5, :cond_16

    .line 581
    .line 582
    goto :goto_9

    .line 583
    :cond_16
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()LP/W;

    .line 584
    .line 585
    .line 586
    move-result-object v5

    .line 587
    if-nez v5, :cond_17

    .line 588
    .line 589
    goto :goto_9

    .line 590
    :cond_17
    iget-object v7, v1, LP/y0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 591
    .line 592
    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView;->H(LP/y0;)I

    .line 593
    .line 594
    .line 595
    move-result v7

    .line 596
    const/4 v8, -0x1

    .line 597
    if-ne v7, v8, :cond_18

    .line 598
    .line 599
    goto :goto_9

    .line 600
    :cond_18
    iget-object v1, v1, LP/y0;->s:LP/W;

    .line 601
    .line 602
    if-ne v1, v5, :cond_14

    .line 603
    .line 604
    :goto_a
    iget-object v1, v11, LP/y0;->s:LP/W;

    .line 605
    .line 606
    if-nez v1, :cond_1a

    .line 607
    .line 608
    :cond_19
    :goto_b
    const/4 v8, -0x1

    .line 609
    goto :goto_c

    .line 610
    :cond_1a
    iget-object v1, v11, LP/y0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 611
    .line 612
    if-nez v1, :cond_1b

    .line 613
    .line 614
    goto :goto_b

    .line 615
    :cond_1b
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()LP/W;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    if-nez v1, :cond_1c

    .line 620
    .line 621
    goto :goto_b

    .line 622
    :cond_1c
    iget-object v5, v11, LP/y0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 623
    .line 624
    invoke-virtual {v5, v11}, Landroidx/recyclerview/widget/RecyclerView;->H(LP/y0;)I

    .line 625
    .line 626
    .line 627
    move-result v8

    .line 628
    const/4 v5, -0x1

    .line 629
    if-ne v8, v5, :cond_1d

    .line 630
    .line 631
    goto :goto_b

    .line 632
    :cond_1d
    iget-object v5, v11, LP/y0;->s:LP/W;

    .line 633
    .line 634
    if-ne v5, v1, :cond_19

    .line 635
    .line 636
    :goto_c
    new-instance v1, LC1/M0;

    .line 637
    .line 638
    invoke-direct {v1, v2, v7, v8}, LC1/M0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;II)V

    .line 639
    .line 640
    .line 641
    invoke-static {v2, v1}, Lcom/bumptech/glide/c;->Z(Lcom/minhub/gamehub/hub/GameDetailActivity;Lkotlin/jvm/functions/Function1;)V

    .line 642
    .line 643
    .line 644
    iget-object v1, v0, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 645
    .line 646
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()LP/g0;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    instance-of v5, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 651
    .line 652
    if-eqz v5, :cond_22

    .line 653
    .line 654
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 655
    .line 656
    const-string v1, "Cannot drop a view during a scroll or layout calculation"

    .line 657
    .line 658
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0()V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->e1()V

    .line 665
    .line 666
    .line 667
    invoke-static {v6}, LP/g0;->K(Landroid/view/View;)I

    .line 668
    .line 669
    .line 670
    move-result v1

    .line 671
    invoke-static {v3}, LP/g0;->K(Landroid/view/View;)I

    .line 672
    .line 673
    .line 674
    move-result v4

    .line 675
    const/4 v8, 0x1

    .line 676
    if-ge v1, v4, :cond_1e

    .line 677
    .line 678
    move v1, v8

    .line 679
    goto :goto_d

    .line 680
    :cond_1e
    const/4 v1, -0x1

    .line 681
    :goto_d
    iget-boolean v5, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 682
    .line 683
    if-eqz v5, :cond_20

    .line 684
    .line 685
    if-ne v1, v8, :cond_1f

    .line 686
    .line 687
    iget-object v1, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->r:LP/Q;

    .line 688
    .line 689
    invoke-virtual {v1}, LP/Q;->g()I

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    iget-object v5, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->r:LP/Q;

    .line 694
    .line 695
    invoke-virtual {v5, v3}, LP/Q;->e(Landroid/view/View;)I

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    iget-object v5, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->r:LP/Q;

    .line 700
    .line 701
    invoke-virtual {v5, v6}, LP/Q;->c(Landroid/view/View;)I

    .line 702
    .line 703
    .line 704
    move-result v5

    .line 705
    add-int/2addr v5, v3

    .line 706
    sub-int/2addr v1, v5

    .line 707
    invoke-virtual {v2, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->g1(II)V

    .line 708
    .line 709
    .line 710
    return-void

    .line 711
    :cond_1f
    iget-object v1, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->r:LP/Q;

    .line 712
    .line 713
    invoke-virtual {v1}, LP/Q;->g()I

    .line 714
    .line 715
    .line 716
    move-result v1

    .line 717
    iget-object v5, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->r:LP/Q;

    .line 718
    .line 719
    invoke-virtual {v5, v3}, LP/Q;->b(Landroid/view/View;)I

    .line 720
    .line 721
    .line 722
    move-result v3

    .line 723
    sub-int/2addr v1, v3

    .line 724
    invoke-virtual {v2, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->g1(II)V

    .line 725
    .line 726
    .line 727
    return-void

    .line 728
    :cond_20
    const/4 v5, -0x1

    .line 729
    if-ne v1, v5, :cond_21

    .line 730
    .line 731
    iget-object v1, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->r:LP/Q;

    .line 732
    .line 733
    invoke-virtual {v1, v3}, LP/Q;->e(Landroid/view/View;)I

    .line 734
    .line 735
    .line 736
    move-result v1

    .line 737
    invoke-virtual {v2, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->g1(II)V

    .line 738
    .line 739
    .line 740
    return-void

    .line 741
    :cond_21
    iget-object v1, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->r:LP/Q;

    .line 742
    .line 743
    invoke-virtual {v1, v3}, LP/Q;->b(Landroid/view/View;)I

    .line 744
    .line 745
    .line 746
    move-result v1

    .line 747
    iget-object v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->r:LP/Q;

    .line 748
    .line 749
    invoke-virtual {v3, v6}, LP/Q;->c(Landroid/view/View;)I

    .line 750
    .line 751
    .line 752
    move-result v3

    .line 753
    sub-int/2addr v1, v3

    .line 754
    invoke-virtual {v2, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->g1(II)V

    .line 755
    .line 756
    .line 757
    return-void

    .line 758
    :cond_22
    invoke-virtual {v2}, LP/g0;->d()Z

    .line 759
    .line 760
    .line 761
    move-result v5

    .line 762
    if-eqz v5, :cond_24

    .line 763
    .line 764
    invoke-static {v3}, LP/g0;->A(Landroid/view/View;)I

    .line 765
    .line 766
    .line 767
    move-result v5

    .line 768
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 769
    .line 770
    .line 771
    move-result v6

    .line 772
    if-gt v5, v6, :cond_23

    .line 773
    .line 774
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 775
    .line 776
    .line 777
    :cond_23
    invoke-static {v3}, LP/g0;->D(Landroid/view/View;)I

    .line 778
    .line 779
    .line 780
    move-result v5

    .line 781
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 782
    .line 783
    .line 784
    move-result v6

    .line 785
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 786
    .line 787
    .line 788
    move-result v7

    .line 789
    sub-int/2addr v6, v7

    .line 790
    if-lt v5, v6, :cond_24

    .line 791
    .line 792
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 793
    .line 794
    .line 795
    :cond_24
    invoke-virtual {v2}, LP/g0;->e()Z

    .line 796
    .line 797
    .line 798
    move-result v2

    .line 799
    if-eqz v2, :cond_26

    .line 800
    .line 801
    invoke-static {v3}, LP/g0;->E(Landroid/view/View;)I

    .line 802
    .line 803
    .line 804
    move-result v2

    .line 805
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 806
    .line 807
    .line 808
    move-result v5

    .line 809
    if-gt v2, v5, :cond_25

    .line 810
    .line 811
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 812
    .line 813
    .line 814
    :cond_25
    invoke-static {v3}, LP/g0;->y(Landroid/view/View;)I

    .line 815
    .line 816
    .line 817
    move-result v2

    .line 818
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 819
    .line 820
    .line 821
    move-result v3

    .line 822
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 823
    .line 824
    .line 825
    move-result v5

    .line 826
    sub-int/2addr v3, v5

    .line 827
    if-lt v2, v3, :cond_26

    .line 828
    .line 829
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 830
    .line 831
    .line 832
    :cond_26
    :goto_e
    return-void
.end method

.method public final q(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, LP/G;->w:Landroid/view/View;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, LP/G;->w:Landroid/view/View;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final r(LP/y0;I)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move/from16 v11, p2

    .line 6
    .line 7
    iget-object v0, v1, LP/G;->c:LP/y0;

    .line 8
    .line 9
    if-ne v10, v0, :cond_0

    .line 10
    .line 11
    iget v0, v1, LP/G;->n:I

    .line 12
    .line 13
    if-ne v11, v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    .line 17
    .line 18
    iput-wide v2, v1, LP/G;->B:J

    .line 19
    .line 20
    iget v3, v1, LP/G;->n:I

    .line 21
    .line 22
    const/4 v12, 0x1

    .line 23
    invoke-virtual {v1, v10, v12}, LP/G;->l(LP/y0;Z)V

    .line 24
    .line 25
    .line 26
    iput v11, v1, LP/G;->n:I

    .line 27
    .line 28
    const/4 v13, 0x2

    .line 29
    if-ne v11, v13, :cond_2

    .line 30
    .line 31
    if-eqz v10, :cond_1

    .line 32
    .line 33
    iget-object v0, v10, LP/y0;->a:Landroid/view/View;

    .line 34
    .line 35
    iput-object v0, v1, LP/G;->w:Landroid/view/View;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string v2, "Must pass a ViewHolder when dragging"

    .line 41
    .line 42
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    :goto_0
    mul-int/lit8 v0, v11, 0x8

    .line 47
    .line 48
    const/16 v14, 0x8

    .line 49
    .line 50
    add-int/2addr v0, v14

    .line 51
    shl-int v0, v12, v0

    .line 52
    .line 53
    add-int/lit8 v15, v0, -0x1

    .line 54
    .line 55
    iget-object v2, v1, LP/G;->c:LP/y0;

    .line 56
    .line 57
    iget-object v0, v1, LP/G;->m:LC1/N0;

    .line 58
    .line 59
    if-eqz v2, :cond_14

    .line 60
    .line 61
    iget-object v5, v2, LP/y0;->a:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    const/4 v7, 0x0

    .line 68
    if-eqz v6, :cond_13

    .line 69
    .line 70
    if-ne v3, v13, :cond_4

    .line 71
    .line 72
    :cond_3
    :goto_1
    const/4 v8, 0x0

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    iget v5, v1, LP/G;->n:I

    .line 75
    .line 76
    if-ne v5, v13, :cond_5

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    iget-object v5, v1, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    .line 81
    invoke-virtual {v0, v5, v2}, LC1/N0;->f(Landroidx/recyclerview/widget/RecyclerView;LP/y0;)I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    iget-object v6, v1, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    .line 87
    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-static {v5, v6}, LP/E;->b(II)I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    const v8, 0xff00

    .line 96
    .line 97
    .line 98
    and-int/2addr v6, v8

    .line 99
    shr-int/2addr v6, v14

    .line 100
    if-nez v6, :cond_6

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    and-int/2addr v5, v8

    .line 104
    shr-int/2addr v5, v14

    .line 105
    iget v8, v1, LP/G;->h:F

    .line 106
    .line 107
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    iget v9, v1, LP/G;->i:F

    .line 112
    .line 113
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    cmpl-float v8, v8, v9

    .line 118
    .line 119
    if-lez v8, :cond_8

    .line 120
    .line 121
    invoke-virtual {v1, v6}, LP/G;->i(I)I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-lez v8, :cond_7

    .line 126
    .line 127
    and-int/2addr v5, v8

    .line 128
    if-nez v5, :cond_a

    .line 129
    .line 130
    iget-object v5, v1, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 131
    .line 132
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-static {v8, v5}, LP/E;->c(II)I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    goto :goto_2

    .line 141
    :cond_7
    invoke-virtual {v1, v6}, LP/G;->k(I)I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-lez v8, :cond_3

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_8
    invoke-virtual {v1, v6}, LP/G;->k(I)I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-lez v8, :cond_9

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_9
    invoke-virtual {v1, v6}, LP/G;->i(I)I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-lez v8, :cond_3

    .line 160
    .line 161
    and-int/2addr v5, v8

    .line 162
    if-nez v5, :cond_a

    .line 163
    .line 164
    iget-object v5, v1, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    .line 166
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    invoke-static {v8, v5}, LP/E;->c(II)I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    :cond_a
    :goto_2
    iget-object v5, v1, LP/G;->t:Landroid/view/VelocityTracker;

    .line 175
    .line 176
    if-eqz v5, :cond_b

    .line 177
    .line 178
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 179
    .line 180
    .line 181
    iput-object v7, v1, LP/G;->t:Landroid/view/VelocityTracker;

    .line 182
    .line 183
    :cond_b
    const/4 v5, 0x4

    .line 184
    const/4 v6, 0x0

    .line 185
    if-eq v8, v12, :cond_d

    .line 186
    .line 187
    if-eq v8, v13, :cond_d

    .line 188
    .line 189
    if-eq v8, v5, :cond_c

    .line 190
    .line 191
    if-eq v8, v14, :cond_c

    .line 192
    .line 193
    const/16 v9, 0x10

    .line 194
    .line 195
    if-eq v8, v9, :cond_c

    .line 196
    .line 197
    const/16 v9, 0x20

    .line 198
    .line 199
    if-eq v8, v9, :cond_c

    .line 200
    .line 201
    move-object v4, v7

    .line 202
    const/16 v16, 0x0

    .line 203
    .line 204
    move v7, v6

    .line 205
    goto :goto_3

    .line 206
    :cond_c
    iget v9, v1, LP/G;->h:F

    .line 207
    .line 208
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    const/16 v16, 0x0

    .line 213
    .line 214
    iget-object v4, v1, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 215
    .line 216
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    int-to-float v4, v4

    .line 221
    mul-float/2addr v9, v4

    .line 222
    move-object v4, v7

    .line 223
    move v7, v6

    .line 224
    move v6, v9

    .line 225
    goto :goto_3

    .line 226
    :cond_d
    const/16 v16, 0x0

    .line 227
    .line 228
    iget v4, v1, LP/G;->i:F

    .line 229
    .line 230
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    iget-object v9, v1, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 235
    .line 236
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    int-to-float v9, v9

    .line 241
    mul-float/2addr v4, v9

    .line 242
    move-object/from16 v20, v7

    .line 243
    .line 244
    move v7, v4

    .line 245
    move-object/from16 v4, v20

    .line 246
    .line 247
    :goto_3
    if-ne v3, v13, :cond_e

    .line 248
    .line 249
    move v5, v14

    .line 250
    goto :goto_4

    .line 251
    :cond_e
    if-lez v8, :cond_f

    .line 252
    .line 253
    move v5, v13

    .line 254
    :cond_f
    :goto_4
    iget-object v9, v1, LP/G;->b:[F

    .line 255
    .line 256
    invoke-virtual {v1, v9}, LP/G;->n([F)V

    .line 257
    .line 258
    .line 259
    move-object/from16 v17, v4

    .line 260
    .line 261
    aget v4, v9, v16

    .line 262
    .line 263
    aget v9, v9, v12

    .line 264
    .line 265
    move-object/from16 v18, v0

    .line 266
    .line 267
    new-instance v0, LP/D;

    .line 268
    .line 269
    move/from16 v19, v5

    .line 270
    .line 271
    move v5, v9

    .line 272
    move-object v9, v2

    .line 273
    move/from16 v12, v16

    .line 274
    .line 275
    move/from16 v13, v19

    .line 276
    .line 277
    invoke-direct/range {v0 .. v9}, LP/D;-><init>(LP/G;LP/y0;IFFFFILP/y0;)V

    .line 278
    .line 279
    .line 280
    iget-object v3, v1, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 281
    .line 282
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()LP/c0;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    if-nez v3, :cond_11

    .line 290
    .line 291
    if-ne v13, v14, :cond_10

    .line 292
    .line 293
    const-wide/16 v3, 0xc8

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_10
    const-wide/16 v3, 0xfa

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_11
    if-ne v13, v14, :cond_12

    .line 300
    .line 301
    iget-wide v3, v3, LP/c0;->e:J

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_12
    iget-wide v3, v3, LP/c0;->d:J

    .line 305
    .line 306
    :goto_5
    iget-object v5, v0, LP/D;->g:Landroid/animation/ValueAnimator;

    .line 307
    .line 308
    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 309
    .line 310
    .line 311
    iget-object v3, v1, LP/G;->p:Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v12}, LP/y0;->n(Z)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 320
    .line 321
    .line 322
    const/4 v4, 0x1

    .line 323
    :goto_6
    const/4 v0, 0x0

    .line 324
    goto :goto_7

    .line 325
    :cond_13
    move-object/from16 v18, v0

    .line 326
    .line 327
    const/4 v12, 0x0

    .line 328
    invoke-virtual {v1, v5}, LP/G;->q(Landroid/view/View;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    invoke-static {v2}, LP/E;->a(LP/y0;)V

    .line 335
    .line 336
    .line 337
    move v4, v12

    .line 338
    goto :goto_6

    .line 339
    :goto_7
    iput-object v0, v1, LP/G;->c:LP/y0;

    .line 340
    .line 341
    goto :goto_8

    .line 342
    :cond_14
    move-object/from16 v18, v0

    .line 343
    .line 344
    const/4 v12, 0x0

    .line 345
    move v4, v12

    .line 346
    :goto_8
    if-eqz v10, :cond_15

    .line 347
    .line 348
    iget-object v0, v10, LP/y0;->a:Landroid/view/View;

    .line 349
    .line 350
    iget-object v2, v1, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 351
    .line 352
    move-object/from16 v3, v18

    .line 353
    .line 354
    invoke-virtual {v3, v2, v10}, LC1/N0;->f(Landroidx/recyclerview/widget/RecyclerView;LP/y0;)I

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    invoke-static {v5, v2}, LP/E;->b(II)I

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    and-int/2addr v2, v15

    .line 367
    iget v5, v1, LP/G;->n:I

    .line 368
    .line 369
    mul-int/2addr v5, v14

    .line 370
    shr-int/2addr v2, v5

    .line 371
    iput v2, v1, LP/G;->o:I

    .line 372
    .line 373
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    int-to-float v2, v2

    .line 378
    iput v2, v1, LP/G;->j:F

    .line 379
    .line 380
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    int-to-float v2, v2

    .line 385
    iput v2, v1, LP/G;->k:F

    .line 386
    .line 387
    iput-object v10, v1, LP/G;->c:LP/y0;

    .line 388
    .line 389
    const/4 v2, 0x2

    .line 390
    if-ne v11, v2, :cond_16

    .line 391
    .line 392
    invoke-virtual {v0, v12}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 393
    .line 394
    .line 395
    goto :goto_9

    .line 396
    :cond_15
    move-object/from16 v3, v18

    .line 397
    .line 398
    :cond_16
    :goto_9
    iget-object v0, v1, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 399
    .line 400
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    if-eqz v0, :cond_18

    .line 405
    .line 406
    iget-object v2, v1, LP/G;->c:LP/y0;

    .line 407
    .line 408
    if-eqz v2, :cond_17

    .line 409
    .line 410
    const/4 v12, 0x1

    .line 411
    :cond_17
    invoke-interface {v0, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 412
    .line 413
    .line 414
    :cond_18
    if-nez v4, :cond_19

    .line 415
    .line 416
    iget-object v0, v1, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 417
    .line 418
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()LP/g0;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    const/4 v2, 0x1

    .line 423
    iput-boolean v2, v0, LP/g0;->f:Z

    .line 424
    .line 425
    :cond_19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    iget-object v0, v1, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 429
    .line 430
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 431
    .line 432
    .line 433
    return-void
.end method

.method public final s(Landroid/view/MotionEvent;II)V
    .locals 1

    .line 1
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget p3, p0, LP/G;->d:F

    .line 10
    .line 11
    sub-float/2addr v0, p3

    .line 12
    iput v0, p0, LP/G;->h:F

    .line 13
    .line 14
    iget p3, p0, LP/G;->e:F

    .line 15
    .line 16
    sub-float/2addr p1, p3

    .line 17
    iput p1, p0, LP/G;->i:F

    .line 18
    .line 19
    and-int/lit8 p1, p2, 0x4

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, LP/G;->h:F

    .line 29
    .line 30
    :cond_0
    and-int/lit8 p1, p2, 0x8

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    iget p1, p0, LP/G;->h:F

    .line 35
    .line 36
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, LP/G;->h:F

    .line 41
    .line 42
    :cond_1
    and-int/lit8 p1, p2, 0x1

    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    iget p1, p0, LP/G;->i:F

    .line 47
    .line 48
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, LP/G;->i:F

    .line 53
    .line 54
    :cond_2
    and-int/lit8 p1, p2, 0x2

    .line 55
    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    iget p1, p0, LP/G;->i:F

    .line 59
    .line 60
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput p1, p0, LP/G;->i:F

    .line 65
    .line 66
    :cond_3
    return-void
.end method
