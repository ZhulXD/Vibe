.class public final LP/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Landroidx/core/util/Pools$SimplePool;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:LP/V;

.field public final e:LA1/b;

.field public f:I


# direct methods
.method public constructor <init>(LP/V;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    .line 5
    .line 6
    const/16 v1, 0x1e

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LP/b;->a:Landroidx/core/util/Pools$SimplePool;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, LP/b;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, LP/b;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, LP/b;->f:I

    .line 29
    .line 30
    iput-object p1, p0, LP/b;->d:LP/V;

    .line 31
    .line 32
    new-instance p1, LA1/b;

    .line 33
    .line 34
    invoke-direct {p1, p0}, LA1/b;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, LP/b;->e:LA1/b;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, LP/b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, LP/a;

    .line 16
    .line 17
    iget v5, v4, LP/a;->a:I

    .line 18
    .line 19
    const/16 v6, 0x8

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    if-ne v5, v6, :cond_0

    .line 23
    .line 24
    iget v4, v4, LP/a;->c:I

    .line 25
    .line 26
    add-int/lit8 v5, v3, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, v4, v5}, LP/b;->f(II)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-ne v4, p1, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    if-ne v5, v7, :cond_2

    .line 36
    .line 37
    iget v5, v4, LP/a;->b:I

    .line 38
    .line 39
    iget v4, v4, LP/a;->c:I

    .line 40
    .line 41
    add-int/2addr v4, v5

    .line 42
    :goto_1
    if-ge v5, v4, :cond_2

    .line 43
    .line 44
    add-int/lit8 v6, v3, 0x1

    .line 45
    .line 46
    invoke-virtual {p0, v5, v6}, LP/b;->f(II)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-ne v6, p1, :cond_1

    .line 51
    .line 52
    :goto_2
    return v7

    .line 53
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return v2
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, LP/b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, LP/a;

    .line 16
    .line 17
    iget-object v5, p0, LP/b;->d:LP/V;

    .line 18
    .line 19
    invoke-virtual {v5, v4}, LP/V;->a(LP/a;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, v0}, LP/b;->k(Ljava/util/ArrayList;)V

    .line 26
    .line 27
    .line 28
    iput v2, p0, LP/b;->f:I

    .line 29
    .line 30
    return-void
.end method

.method public final c()V
    .locals 9

    .line 1
    invoke-virtual {p0}, LP/b;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LP/b;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_4

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, LP/a;

    .line 19
    .line 20
    iget v5, v4, LP/a;->a:I

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    iget-object v7, p0, LP/b;->d:LP/V;

    .line 24
    .line 25
    if-eq v5, v6, :cond_3

    .line 26
    .line 27
    const/4 v8, 0x2

    .line 28
    if-eq v5, v8, :cond_2

    .line 29
    .line 30
    const/4 v6, 0x4

    .line 31
    if-eq v5, v6, :cond_1

    .line 32
    .line 33
    const/16 v6, 0x8

    .line 34
    .line 35
    if-eq v5, v6, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v7, v4}, LP/V;->a(LP/a;)V

    .line 39
    .line 40
    .line 41
    iget v5, v4, LP/a;->b:I

    .line 42
    .line 43
    iget v4, v4, LP/a;->c:I

    .line 44
    .line 45
    invoke-virtual {v7, v5, v4}, LP/V;->e(II)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v7, v4}, LP/V;->a(LP/a;)V

    .line 50
    .line 51
    .line 52
    iget v5, v4, LP/a;->b:I

    .line 53
    .line 54
    iget v4, v4, LP/a;->c:I

    .line 55
    .line 56
    invoke-virtual {v7, v5, v4}, LP/V;->c(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v7, v4}, LP/V;->a(LP/a;)V

    .line 61
    .line 62
    .line 63
    iget v5, v4, LP/a;->b:I

    .line 64
    .line 65
    iget v4, v4, LP/a;->c:I

    .line 66
    .line 67
    iget-object v7, v7, LP/V;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    .line 69
    invoke-virtual {v7, v5, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->Q(IIZ)V

    .line 70
    .line 71
    .line 72
    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->l0:Z

    .line 73
    .line 74
    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView;->i0:LP/u0;

    .line 75
    .line 76
    iget v6, v5, LP/u0;->c:I

    .line 77
    .line 78
    add-int/2addr v6, v4

    .line 79
    iput v6, v5, LP/u0;->c:I

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {v7, v4}, LP/V;->a(LP/a;)V

    .line 83
    .line 84
    .line 85
    iget v5, v4, LP/a;->b:I

    .line 86
    .line 87
    iget v4, v4, LP/a;->c:I

    .line 88
    .line 89
    invoke-virtual {v7, v5, v4}, LP/V;->d(II)V

    .line 90
    .line 91
    .line 92
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {p0, v0}, LP/b;->k(Ljava/util/ArrayList;)V

    .line 96
    .line 97
    .line 98
    iput v2, p0, LP/b;->f:I

    .line 99
    .line 100
    return-void
.end method

.method public final d(LP/a;)V
    .locals 12

    .line 1
    iget v0, p1, LP/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_8

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-eq v0, v2, :cond_8

    .line 9
    .line 10
    iget v2, p1, LP/a;->b:I

    .line 11
    .line 12
    invoke-virtual {p0, v2, v0}, LP/b;->l(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p1, LP/a;->b:I

    .line 17
    .line 18
    iget v3, p1, LP/a;->a:I

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x4

    .line 22
    if-eq v3, v4, :cond_1

    .line 23
    .line 24
    if-ne v3, v5, :cond_0

    .line 25
    .line 26
    move v3, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "op should be remove or update."

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    const/4 v3, 0x0

    .line 49
    :goto_0
    move v6, v1

    .line 50
    move v7, v6

    .line 51
    :goto_1
    iget v8, p1, LP/a;->c:I

    .line 52
    .line 53
    iget-object v9, p0, LP/b;->a:Landroidx/core/util/Pools$SimplePool;

    .line 54
    .line 55
    if-ge v6, v8, :cond_6

    .line 56
    .line 57
    iget v8, p1, LP/a;->b:I

    .line 58
    .line 59
    mul-int v10, v3, v6

    .line 60
    .line 61
    add-int/2addr v10, v8

    .line 62
    iget v8, p1, LP/a;->a:I

    .line 63
    .line 64
    invoke-virtual {p0, v10, v8}, LP/b;->l(II)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    iget v10, p1, LP/a;->a:I

    .line 69
    .line 70
    if-eq v10, v4, :cond_3

    .line 71
    .line 72
    if-eq v10, v5, :cond_2

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_2
    add-int/lit8 v11, v0, 0x1

    .line 76
    .line 77
    if-ne v8, v11, :cond_4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    if-ne v8, v0, :cond_4

    .line 81
    .line 82
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_4
    :goto_3
    invoke-virtual {p0, v10, v0, v7}, LP/b;->h(III)LP/a;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0, v2}, LP/b;->e(LP/a;I)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v9, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    iget v0, p1, LP/a;->a:I

    .line 96
    .line 97
    if-ne v0, v5, :cond_5

    .line 98
    .line 99
    add-int/2addr v2, v7

    .line 100
    :cond_5
    move v7, v1

    .line 101
    move v0, v8

    .line 102
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    invoke-interface {v9, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    if-lez v7, :cond_7

    .line 109
    .line 110
    iget p1, p1, LP/a;->a:I

    .line 111
    .line 112
    invoke-virtual {p0, p1, v0, v7}, LP/b;->h(III)LP/a;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p0, p1, v2}, LP/b;->e(LP/a;I)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v9, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_7
    return-void

    .line 123
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    const-string v0, "should not dispatch add or move for pre layout"

    .line 126
    .line 127
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1
.end method

.method public final e(LP/a;I)V
    .locals 3

    .line 1
    iget-object v0, p0, LP/b;->d:LP/V;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LP/V;->a(LP/a;)V

    .line 4
    .line 5
    .line 6
    iget v1, p1, LP/a;->a:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget p1, p1, LP/a;->c:I

    .line 15
    .line 16
    invoke-virtual {v0, p2, p1}, LP/V;->c(II)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "only remove and update ops can be dispatched in first pass"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    iget p1, p1, LP/a;->c:I

    .line 29
    .line 30
    iget-object v0, v0, LP/V;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, p2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->Q(IIZ)V

    .line 34
    .line 35
    .line 36
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l0:Z

    .line 37
    .line 38
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->i0:LP/u0;

    .line 39
    .line 40
    iget v0, p2, LP/u0;->c:I

    .line 41
    .line 42
    add-int/2addr v0, p1

    .line 43
    iput v0, p2, LP/u0;->c:I

    .line 44
    .line 45
    return-void
.end method

.method public final f(II)I
    .locals 6

    .line 1
    iget-object v0, p0, LP/b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :goto_0
    if-ge p2, v1, :cond_6

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, LP/a;

    .line 14
    .line 15
    iget v3, v2, LP/a;->a:I

    .line 16
    .line 17
    const/16 v4, 0x8

    .line 18
    .line 19
    if-ne v3, v4, :cond_2

    .line 20
    .line 21
    iget v3, v2, LP/a;->b:I

    .line 22
    .line 23
    if-ne v3, p1, :cond_0

    .line 24
    .line 25
    iget p1, v2, LP/a;->c:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    if-ge v3, p1, :cond_1

    .line 29
    .line 30
    add-int/lit8 p1, p1, -0x1

    .line 31
    .line 32
    :cond_1
    iget v2, v2, LP/a;->c:I

    .line 33
    .line 34
    if-gt v2, p1, :cond_5

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget v4, v2, LP/a;->b:I

    .line 40
    .line 41
    if-gt v4, p1, :cond_5

    .line 42
    .line 43
    const/4 v5, 0x2

    .line 44
    if-ne v3, v5, :cond_4

    .line 45
    .line 46
    iget v2, v2, LP/a;->c:I

    .line 47
    .line 48
    add-int/2addr v4, v2

    .line 49
    if-ge p1, v4, :cond_3

    .line 50
    .line 51
    const/4 p1, -0x1

    .line 52
    return p1

    .line 53
    :cond_3
    sub-int/2addr p1, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    const/4 v4, 0x1

    .line 56
    if-ne v3, v4, :cond_5

    .line 57
    .line 58
    iget v2, v2, LP/a;->c:I

    .line 59
    .line 60
    add-int/2addr p1, v2

    .line 61
    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_6
    return p1
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, LP/b;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final h(III)LP/a;
    .locals 1

    .line 1
    iget-object v0, p0, LP/b;->a:Landroidx/core/util/Pools$SimplePool;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LP/a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, LP/a;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput p1, v0, LP/a;->a:I

    .line 17
    .line 18
    iput p2, v0, LP/a;->b:I

    .line 19
    .line 20
    iput p3, v0, LP/a;->c:I

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    iput p1, v0, LP/a;->a:I

    .line 24
    .line 25
    iput p2, v0, LP/a;->b:I

    .line 26
    .line 27
    iput p3, v0, LP/a;->c:I

    .line 28
    .line 29
    return-object v0
.end method

.method public final i(LP/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, LP/b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget v0, p1, LP/a;->a:I

    .line 7
    .line 8
    iget-object v1, p0, LP/b;->d:LP/V;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, v2, :cond_3

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v3, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    iget v0, p1, LP/a;->b:I

    .line 24
    .line 25
    iget p1, p1, LP/a;->c:I

    .line 26
    .line 27
    invoke-virtual {v1, v0, p1}, LP/V;->e(II)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Unknown update op type for "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    iget v0, p1, LP/a;->b:I

    .line 52
    .line 53
    iget p1, p1, LP/a;->c:I

    .line 54
    .line 55
    invoke-virtual {v1, v0, p1}, LP/V;->c(II)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    iget v0, p1, LP/a;->b:I

    .line 60
    .line 61
    iget p1, p1, LP/a;->c:I

    .line 62
    .line 63
    iget-object v1, v1, LP/V;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v1, v0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->Q(IIZ)V

    .line 67
    .line 68
    .line 69
    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->l0:Z

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    iget v0, p1, LP/a;->b:I

    .line 73
    .line 74
    iget p1, p1, LP/a;->c:I

    .line 75
    .line 76
    invoke-virtual {v1, v0, p1}, LP/V;->d(II)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final j()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LP/b;->e:LA1/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    iget-object v2, v0, LP/b;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    sub-int/2addr v3, v4

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_1
    const/16 v7, 0x8

    .line 18
    .line 19
    const/4 v8, -0x1

    .line 20
    if-ltz v3, :cond_3

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    check-cast v9, LP/a;

    .line 27
    .line 28
    iget v9, v9, LP/a;->a:I

    .line 29
    .line 30
    if-ne v9, v7, :cond_1

    .line 31
    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    move v6, v4

    .line 36
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move v3, v8

    .line 40
    :goto_2
    const/4 v6, 0x2

    .line 41
    const/4 v9, 0x4

    .line 42
    if-eq v3, v8, :cond_22

    .line 43
    .line 44
    add-int/lit8 v7, v3, 0x1

    .line 45
    .line 46
    iget-object v10, v1, LA1/b;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v10, LP/b;

    .line 49
    .line 50
    iget-object v11, v10, LP/b;->a:Landroidx/core/util/Pools$SimplePool;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    check-cast v12, LP/a;

    .line 57
    .line 58
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    check-cast v13, LP/a;

    .line 63
    .line 64
    iget v14, v13, LP/a;->a:I

    .line 65
    .line 66
    if-eq v14, v4, :cond_1d

    .line 67
    .line 68
    if-eq v14, v6, :cond_b

    .line 69
    .line 70
    if-eq v14, v9, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iget v5, v12, LP/a;->c:I

    .line 74
    .line 75
    iget v6, v13, LP/a;->b:I

    .line 76
    .line 77
    if-ge v5, v6, :cond_5

    .line 78
    .line 79
    add-int/lit8 v6, v6, -0x1

    .line 80
    .line 81
    iput v6, v13, LP/a;->b:I

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_5
    iget v14, v13, LP/a;->c:I

    .line 85
    .line 86
    add-int/2addr v6, v14

    .line 87
    if-ge v5, v6, :cond_6

    .line 88
    .line 89
    add-int/lit8 v14, v14, -0x1

    .line 90
    .line 91
    iput v14, v13, LP/a;->c:I

    .line 92
    .line 93
    iget v5, v12, LP/a;->b:I

    .line 94
    .line 95
    invoke-virtual {v10, v9, v5, v4}, LP/b;->h(III)LP/a;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    goto :goto_4

    .line 100
    :cond_6
    :goto_3
    const/4 v4, 0x0

    .line 101
    :goto_4
    iget v5, v12, LP/a;->b:I

    .line 102
    .line 103
    iget v6, v13, LP/a;->b:I

    .line 104
    .line 105
    if-gt v5, v6, :cond_7

    .line 106
    .line 107
    add-int/lit8 v6, v6, 0x1

    .line 108
    .line 109
    iput v6, v13, LP/a;->b:I

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_7
    iget v14, v13, LP/a;->c:I

    .line 113
    .line 114
    add-int/2addr v6, v14

    .line 115
    if-ge v5, v6, :cond_8

    .line 116
    .line 117
    sub-int/2addr v6, v5

    .line 118
    add-int/lit8 v5, v5, 0x1

    .line 119
    .line 120
    invoke-virtual {v10, v9, v5, v6}, LP/b;->h(III)LP/a;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    iget v5, v13, LP/a;->c:I

    .line 125
    .line 126
    sub-int/2addr v5, v6

    .line 127
    iput v5, v13, LP/a;->c:I

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_8
    :goto_5
    const/4 v8, 0x0

    .line 131
    :goto_6
    invoke-virtual {v2, v7, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget v5, v13, LP/a;->c:I

    .line 135
    .line 136
    if-lez v5, :cond_9

    .line 137
    .line 138
    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    invoke-interface {v11, v13}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :goto_7
    if-eqz v4, :cond_a

    .line 149
    .line 150
    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_a
    if-eqz v8, :cond_0

    .line 154
    .line 155
    invoke-virtual {v2, v3, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_b
    iget v9, v12, LP/a;->b:I

    .line 161
    .line 162
    iget v14, v12, LP/a;->c:I

    .line 163
    .line 164
    if-ge v9, v14, :cond_d

    .line 165
    .line 166
    iget v15, v13, LP/a;->b:I

    .line 167
    .line 168
    if-ne v15, v9, :cond_c

    .line 169
    .line 170
    iget v15, v13, LP/a;->c:I

    .line 171
    .line 172
    sub-int v9, v14, v9

    .line 173
    .line 174
    if-ne v15, v9, :cond_c

    .line 175
    .line 176
    move v5, v4

    .line 177
    :goto_8
    const/4 v9, 0x0

    .line 178
    goto :goto_9

    .line 179
    :cond_c
    const/4 v5, 0x0

    .line 180
    goto :goto_8

    .line 181
    :cond_d
    iget v15, v13, LP/a;->b:I

    .line 182
    .line 183
    add-int/lit8 v5, v14, 0x1

    .line 184
    .line 185
    if-ne v15, v5, :cond_e

    .line 186
    .line 187
    iget v5, v13, LP/a;->c:I

    .line 188
    .line 189
    sub-int/2addr v9, v14

    .line 190
    if-ne v5, v9, :cond_e

    .line 191
    .line 192
    move v5, v4

    .line 193
    move v9, v5

    .line 194
    goto :goto_9

    .line 195
    :cond_e
    move v9, v4

    .line 196
    const/4 v5, 0x0

    .line 197
    :goto_9
    iget v15, v13, LP/a;->b:I

    .line 198
    .line 199
    if-ge v14, v15, :cond_f

    .line 200
    .line 201
    add-int/lit8 v15, v15, -0x1

    .line 202
    .line 203
    iput v15, v13, LP/a;->b:I

    .line 204
    .line 205
    goto :goto_a

    .line 206
    :cond_f
    iget v8, v13, LP/a;->c:I

    .line 207
    .line 208
    add-int/2addr v15, v8

    .line 209
    if-ge v14, v15, :cond_10

    .line 210
    .line 211
    add-int/lit8 v8, v8, -0x1

    .line 212
    .line 213
    iput v8, v13, LP/a;->c:I

    .line 214
    .line 215
    iput v6, v12, LP/a;->a:I

    .line 216
    .line 217
    iput v4, v12, LP/a;->c:I

    .line 218
    .line 219
    iget v3, v13, LP/a;->c:I

    .line 220
    .line 221
    if-nez v3, :cond_0

    .line 222
    .line 223
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    invoke-interface {v11, v13}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_10
    :goto_a
    iget v4, v12, LP/a;->b:I

    .line 232
    .line 233
    iget v8, v13, LP/a;->b:I

    .line 234
    .line 235
    if-gt v4, v8, :cond_11

    .line 236
    .line 237
    add-int/lit8 v8, v8, 0x1

    .line 238
    .line 239
    iput v8, v13, LP/a;->b:I

    .line 240
    .line 241
    goto :goto_b

    .line 242
    :cond_11
    iget v14, v13, LP/a;->c:I

    .line 243
    .line 244
    add-int/2addr v8, v14

    .line 245
    if-ge v4, v8, :cond_12

    .line 246
    .line 247
    sub-int/2addr v8, v4

    .line 248
    add-int/lit8 v4, v4, 0x1

    .line 249
    .line 250
    invoke-virtual {v10, v6, v4, v8}, LP/b;->h(III)LP/a;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    iget v4, v12, LP/a;->b:I

    .line 255
    .line 256
    iget v6, v13, LP/a;->b:I

    .line 257
    .line 258
    sub-int/2addr v4, v6

    .line 259
    iput v4, v13, LP/a;->c:I

    .line 260
    .line 261
    goto :goto_c

    .line 262
    :cond_12
    :goto_b
    const/4 v8, 0x0

    .line 263
    :goto_c
    if-eqz v5, :cond_13

    .line 264
    .line 265
    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    invoke-interface {v11, v12}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_13
    if-eqz v9, :cond_17

    .line 277
    .line 278
    if-eqz v8, :cond_15

    .line 279
    .line 280
    iget v4, v12, LP/a;->b:I

    .line 281
    .line 282
    iget v5, v8, LP/a;->b:I

    .line 283
    .line 284
    if-le v4, v5, :cond_14

    .line 285
    .line 286
    iget v5, v8, LP/a;->c:I

    .line 287
    .line 288
    sub-int/2addr v4, v5

    .line 289
    iput v4, v12, LP/a;->b:I

    .line 290
    .line 291
    :cond_14
    iget v4, v12, LP/a;->c:I

    .line 292
    .line 293
    iget v5, v8, LP/a;->b:I

    .line 294
    .line 295
    if-le v4, v5, :cond_15

    .line 296
    .line 297
    iget v5, v8, LP/a;->c:I

    .line 298
    .line 299
    sub-int/2addr v4, v5

    .line 300
    iput v4, v12, LP/a;->c:I

    .line 301
    .line 302
    :cond_15
    iget v4, v12, LP/a;->b:I

    .line 303
    .line 304
    iget v5, v13, LP/a;->b:I

    .line 305
    .line 306
    if-le v4, v5, :cond_16

    .line 307
    .line 308
    iget v5, v13, LP/a;->c:I

    .line 309
    .line 310
    sub-int/2addr v4, v5

    .line 311
    iput v4, v12, LP/a;->b:I

    .line 312
    .line 313
    :cond_16
    iget v4, v12, LP/a;->c:I

    .line 314
    .line 315
    iget v5, v13, LP/a;->b:I

    .line 316
    .line 317
    if-le v4, v5, :cond_1b

    .line 318
    .line 319
    iget v5, v13, LP/a;->c:I

    .line 320
    .line 321
    sub-int/2addr v4, v5

    .line 322
    iput v4, v12, LP/a;->c:I

    .line 323
    .line 324
    goto :goto_d

    .line 325
    :cond_17
    if-eqz v8, :cond_19

    .line 326
    .line 327
    iget v4, v12, LP/a;->b:I

    .line 328
    .line 329
    iget v5, v8, LP/a;->b:I

    .line 330
    .line 331
    if-lt v4, v5, :cond_18

    .line 332
    .line 333
    iget v5, v8, LP/a;->c:I

    .line 334
    .line 335
    sub-int/2addr v4, v5

    .line 336
    iput v4, v12, LP/a;->b:I

    .line 337
    .line 338
    :cond_18
    iget v4, v12, LP/a;->c:I

    .line 339
    .line 340
    iget v5, v8, LP/a;->b:I

    .line 341
    .line 342
    if-lt v4, v5, :cond_19

    .line 343
    .line 344
    iget v5, v8, LP/a;->c:I

    .line 345
    .line 346
    sub-int/2addr v4, v5

    .line 347
    iput v4, v12, LP/a;->c:I

    .line 348
    .line 349
    :cond_19
    iget v4, v12, LP/a;->b:I

    .line 350
    .line 351
    iget v5, v13, LP/a;->b:I

    .line 352
    .line 353
    if-lt v4, v5, :cond_1a

    .line 354
    .line 355
    iget v5, v13, LP/a;->c:I

    .line 356
    .line 357
    sub-int/2addr v4, v5

    .line 358
    iput v4, v12, LP/a;->b:I

    .line 359
    .line 360
    :cond_1a
    iget v4, v12, LP/a;->c:I

    .line 361
    .line 362
    iget v5, v13, LP/a;->b:I

    .line 363
    .line 364
    if-lt v4, v5, :cond_1b

    .line 365
    .line 366
    iget v5, v13, LP/a;->c:I

    .line 367
    .line 368
    sub-int/2addr v4, v5

    .line 369
    iput v4, v12, LP/a;->c:I

    .line 370
    .line 371
    :cond_1b
    :goto_d
    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    iget v4, v12, LP/a;->b:I

    .line 375
    .line 376
    iget v5, v12, LP/a;->c:I

    .line 377
    .line 378
    if-eq v4, v5, :cond_1c

    .line 379
    .line 380
    invoke-virtual {v2, v7, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    goto :goto_e

    .line 384
    :cond_1c
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    :goto_e
    if-eqz v8, :cond_0

    .line 388
    .line 389
    invoke-virtual {v2, v3, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_0

    .line 393
    .line 394
    :cond_1d
    iget v4, v12, LP/a;->c:I

    .line 395
    .line 396
    iget v5, v13, LP/a;->b:I

    .line 397
    .line 398
    if-ge v4, v5, :cond_1e

    .line 399
    .line 400
    move/from16 v16, v8

    .line 401
    .line 402
    goto :goto_f

    .line 403
    :cond_1e
    const/16 v16, 0x0

    .line 404
    .line 405
    :goto_f
    iget v6, v12, LP/a;->b:I

    .line 406
    .line 407
    if-ge v6, v5, :cond_1f

    .line 408
    .line 409
    add-int/lit8 v16, v16, 0x1

    .line 410
    .line 411
    :cond_1f
    if-gt v5, v6, :cond_20

    .line 412
    .line 413
    iget v5, v13, LP/a;->c:I

    .line 414
    .line 415
    add-int/2addr v6, v5

    .line 416
    iput v6, v12, LP/a;->b:I

    .line 417
    .line 418
    :cond_20
    iget v5, v13, LP/a;->b:I

    .line 419
    .line 420
    if-gt v5, v4, :cond_21

    .line 421
    .line 422
    iget v6, v13, LP/a;->c:I

    .line 423
    .line 424
    add-int/2addr v4, v6

    .line 425
    iput v4, v12, LP/a;->c:I

    .line 426
    .line 427
    :cond_21
    add-int v5, v5, v16

    .line 428
    .line 429
    iput v5, v13, LP/a;->b:I

    .line 430
    .line 431
    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2, v7, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    goto/16 :goto_0

    .line 438
    .line 439
    :cond_22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    const/4 v3, 0x0

    .line 444
    :goto_10
    if-ge v3, v1, :cond_36

    .line 445
    .line 446
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    check-cast v5, LP/a;

    .line 451
    .line 452
    iget v10, v5, LP/a;->a:I

    .line 453
    .line 454
    if-eq v10, v4, :cond_35

    .line 455
    .line 456
    iget-object v11, v0, LP/b;->a:Landroidx/core/util/Pools$SimplePool;

    .line 457
    .line 458
    iget-object v12, v0, LP/b;->d:LP/V;

    .line 459
    .line 460
    if-eq v10, v6, :cond_2c

    .line 461
    .line 462
    if-eq v10, v9, :cond_24

    .line 463
    .line 464
    if-eq v10, v7, :cond_23

    .line 465
    .line 466
    goto/16 :goto_1a

    .line 467
    .line 468
    :cond_23
    invoke-virtual {v0, v5}, LP/b;->i(LP/a;)V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_1a

    .line 472
    .line 473
    :cond_24
    iget v10, v5, LP/a;->b:I

    .line 474
    .line 475
    iget v13, v5, LP/a;->c:I

    .line 476
    .line 477
    add-int/2addr v13, v10

    .line 478
    move v7, v8

    .line 479
    move v14, v10

    .line 480
    const/4 v15, 0x0

    .line 481
    :goto_11
    if-ge v10, v13, :cond_29

    .line 482
    .line 483
    invoke-virtual {v12, v10}, LP/V;->b(I)LP/y0;

    .line 484
    .line 485
    .line 486
    move-result-object v17

    .line 487
    if-nez v17, :cond_27

    .line 488
    .line 489
    invoke-virtual {v0, v10}, LP/b;->a(I)Z

    .line 490
    .line 491
    .line 492
    move-result v17

    .line 493
    if-eqz v17, :cond_25

    .line 494
    .line 495
    goto :goto_12

    .line 496
    :cond_25
    if-ne v7, v4, :cond_26

    .line 497
    .line 498
    invoke-virtual {v0, v9, v14, v15}, LP/b;->h(III)LP/a;

    .line 499
    .line 500
    .line 501
    move-result-object v7

    .line 502
    invoke-virtual {v0, v7}, LP/b;->i(LP/a;)V

    .line 503
    .line 504
    .line 505
    move v14, v10

    .line 506
    const/4 v15, 0x0

    .line 507
    :cond_26
    const/4 v7, 0x0

    .line 508
    goto :goto_13

    .line 509
    :cond_27
    :goto_12
    if-nez v7, :cond_28

    .line 510
    .line 511
    invoke-virtual {v0, v9, v14, v15}, LP/b;->h(III)LP/a;

    .line 512
    .line 513
    .line 514
    move-result-object v7

    .line 515
    invoke-virtual {v0, v7}, LP/b;->d(LP/a;)V

    .line 516
    .line 517
    .line 518
    move v14, v10

    .line 519
    const/4 v15, 0x0

    .line 520
    :cond_28
    move v7, v4

    .line 521
    :goto_13
    add-int/2addr v15, v4

    .line 522
    add-int/lit8 v10, v10, 0x1

    .line 523
    .line 524
    goto :goto_11

    .line 525
    :cond_29
    iget v10, v5, LP/a;->c:I

    .line 526
    .line 527
    if-eq v15, v10, :cond_2a

    .line 528
    .line 529
    invoke-interface {v11, v5}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0, v9, v14, v15}, LP/b;->h(III)LP/a;

    .line 533
    .line 534
    .line 535
    move-result-object v5

    .line 536
    :cond_2a
    if-nez v7, :cond_2b

    .line 537
    .line 538
    invoke-virtual {v0, v5}, LP/b;->d(LP/a;)V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_1a

    .line 542
    .line 543
    :cond_2b
    invoke-virtual {v0, v5}, LP/b;->i(LP/a;)V

    .line 544
    .line 545
    .line 546
    goto :goto_1a

    .line 547
    :cond_2c
    iget v7, v5, LP/a;->b:I

    .line 548
    .line 549
    iget v10, v5, LP/a;->c:I

    .line 550
    .line 551
    add-int/2addr v10, v7

    .line 552
    move v13, v7

    .line 553
    move v15, v8

    .line 554
    const/4 v14, 0x0

    .line 555
    :goto_14
    if-ge v13, v10, :cond_32

    .line 556
    .line 557
    invoke-virtual {v12, v13}, LP/V;->b(I)LP/y0;

    .line 558
    .line 559
    .line 560
    move-result-object v17

    .line 561
    if-nez v17, :cond_2f

    .line 562
    .line 563
    invoke-virtual {v0, v13}, LP/b;->a(I)Z

    .line 564
    .line 565
    .line 566
    move-result v17

    .line 567
    if-eqz v17, :cond_2d

    .line 568
    .line 569
    goto :goto_16

    .line 570
    :cond_2d
    if-ne v15, v4, :cond_2e

    .line 571
    .line 572
    invoke-virtual {v0, v6, v7, v14}, LP/b;->h(III)LP/a;

    .line 573
    .line 574
    .line 575
    move-result-object v15

    .line 576
    invoke-virtual {v0, v15}, LP/b;->i(LP/a;)V

    .line 577
    .line 578
    .line 579
    move v15, v4

    .line 580
    goto :goto_15

    .line 581
    :cond_2e
    const/4 v15, 0x0

    .line 582
    :goto_15
    const/16 v17, 0x0

    .line 583
    .line 584
    goto :goto_18

    .line 585
    :cond_2f
    :goto_16
    if-nez v15, :cond_30

    .line 586
    .line 587
    invoke-virtual {v0, v6, v7, v14}, LP/b;->h(III)LP/a;

    .line 588
    .line 589
    .line 590
    move-result-object v15

    .line 591
    invoke-virtual {v0, v15}, LP/b;->d(LP/a;)V

    .line 592
    .line 593
    .line 594
    move v15, v4

    .line 595
    goto :goto_17

    .line 596
    :cond_30
    const/4 v15, 0x0

    .line 597
    :goto_17
    move/from16 v17, v4

    .line 598
    .line 599
    :goto_18
    if-eqz v15, :cond_31

    .line 600
    .line 601
    sub-int/2addr v13, v14

    .line 602
    sub-int/2addr v10, v14

    .line 603
    move v14, v4

    .line 604
    goto :goto_19

    .line 605
    :cond_31
    add-int/lit8 v14, v14, 0x1

    .line 606
    .line 607
    :goto_19
    add-int/2addr v13, v4

    .line 608
    move/from16 v15, v17

    .line 609
    .line 610
    goto :goto_14

    .line 611
    :cond_32
    iget v10, v5, LP/a;->c:I

    .line 612
    .line 613
    if-eq v14, v10, :cond_33

    .line 614
    .line 615
    invoke-interface {v11, v5}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0, v6, v7, v14}, LP/b;->h(III)LP/a;

    .line 619
    .line 620
    .line 621
    move-result-object v5

    .line 622
    :cond_33
    if-nez v15, :cond_34

    .line 623
    .line 624
    invoke-virtual {v0, v5}, LP/b;->d(LP/a;)V

    .line 625
    .line 626
    .line 627
    goto :goto_1a

    .line 628
    :cond_34
    invoke-virtual {v0, v5}, LP/b;->i(LP/a;)V

    .line 629
    .line 630
    .line 631
    goto :goto_1a

    .line 632
    :cond_35
    invoke-virtual {v0, v5}, LP/b;->i(LP/a;)V

    .line 633
    .line 634
    .line 635
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    .line 636
    .line 637
    const/16 v7, 0x8

    .line 638
    .line 639
    goto/16 :goto_10

    .line 640
    .line 641
    :cond_36
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 642
    .line 643
    .line 644
    return-void
.end method

.method public final k(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, LP/a;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, LP/b;->a:Landroidx/core/util/Pools$SimplePool;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final l(II)I
    .locals 9

    .line 1
    iget-object v0, p0, LP/b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    :goto_0
    const/16 v3, 0x8

    .line 10
    .line 11
    if-ltz v1, :cond_d

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, LP/a;

    .line 18
    .line 19
    iget v5, v4, LP/a;->a:I

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    if-ne v5, v3, :cond_8

    .line 23
    .line 24
    iget v3, v4, LP/a;->b:I

    .line 25
    .line 26
    iget v5, v4, LP/a;->c:I

    .line 27
    .line 28
    if-ge v3, v5, :cond_0

    .line 29
    .line 30
    move v7, v3

    .line 31
    move v8, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v8, v3

    .line 34
    move v7, v5

    .line 35
    :goto_1
    if-lt p1, v7, :cond_6

    .line 36
    .line 37
    if-gt p1, v8, :cond_6

    .line 38
    .line 39
    if-ne v7, v3, :cond_3

    .line 40
    .line 41
    if-ne p2, v2, :cond_1

    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    iput v5, v4, LP/a;->c:I

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    if-ne p2, v6, :cond_2

    .line 49
    .line 50
    add-int/lit8 v5, v5, -0x1

    .line 51
    .line 52
    iput v5, v4, LP/a;->c:I

    .line 53
    .line 54
    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_3
    if-ne p2, v2, :cond_4

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    iput v3, v4, LP/a;->b:I

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    if-ne p2, v6, :cond_5

    .line 65
    .line 66
    add-int/lit8 v3, v3, -0x1

    .line 67
    .line 68
    iput v3, v4, LP/a;->b:I

    .line 69
    .line 70
    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    if-ge p1, v3, :cond_c

    .line 74
    .line 75
    if-ne p2, v2, :cond_7

    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    iput v3, v4, LP/a;->b:I

    .line 80
    .line 81
    add-int/lit8 v5, v5, 0x1

    .line 82
    .line 83
    iput v5, v4, LP/a;->c:I

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_7
    if-ne p2, v6, :cond_c

    .line 87
    .line 88
    add-int/lit8 v3, v3, -0x1

    .line 89
    .line 90
    iput v3, v4, LP/a;->b:I

    .line 91
    .line 92
    add-int/lit8 v5, v5, -0x1

    .line 93
    .line 94
    iput v5, v4, LP/a;->c:I

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_8
    iget v3, v4, LP/a;->b:I

    .line 98
    .line 99
    if-gt v3, p1, :cond_a

    .line 100
    .line 101
    if-ne v5, v2, :cond_9

    .line 102
    .line 103
    iget v3, v4, LP/a;->c:I

    .line 104
    .line 105
    sub-int/2addr p1, v3

    .line 106
    goto :goto_4

    .line 107
    :cond_9
    if-ne v5, v6, :cond_c

    .line 108
    .line 109
    iget v3, v4, LP/a;->c:I

    .line 110
    .line 111
    add-int/2addr p1, v3

    .line 112
    goto :goto_4

    .line 113
    :cond_a
    if-ne p2, v2, :cond_b

    .line 114
    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    iput v3, v4, LP/a;->b:I

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_b
    if-ne p2, v6, :cond_c

    .line 121
    .line 122
    add-int/lit8 v3, v3, -0x1

    .line 123
    .line 124
    iput v3, v4, LP/a;->b:I

    .line 125
    .line 126
    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    sub-int/2addr p2, v2

    .line 134
    :goto_5
    if-ltz p2, :cond_11

    .line 135
    .line 136
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, LP/a;

    .line 141
    .line 142
    iget v2, v1, LP/a;->a:I

    .line 143
    .line 144
    iget-object v4, p0, LP/b;->a:Landroidx/core/util/Pools$SimplePool;

    .line 145
    .line 146
    if-ne v2, v3, :cond_f

    .line 147
    .line 148
    iget v2, v1, LP/a;->c:I

    .line 149
    .line 150
    iget v5, v1, LP/a;->b:I

    .line 151
    .line 152
    if-eq v2, v5, :cond_e

    .line 153
    .line 154
    if-gez v2, :cond_10

    .line 155
    .line 156
    :cond_e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    invoke-interface {v4, v1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_f
    iget v2, v1, LP/a;->c:I

    .line 164
    .line 165
    if-gtz v2, :cond_10

    .line 166
    .line 167
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    invoke-interface {v4, v1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_11
    return p1
.end method
