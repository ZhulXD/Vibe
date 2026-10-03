.class public final LX/e;
.super LP/l0;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public a:LX/b;

.field public final b:Landroidx/viewpager2/widget/ViewPager2;

.field public final c:LX/p;

.field public final d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public e:I

.field public f:I

.field public final g:LX/d;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LX/e;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->k:LX/p;

    .line 7
    .line 8
    iput-object p1, p0, LX/e;->c:LX/p;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()LP/g0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    .line 16
    iput-object p1, p0, LX/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 17
    .line 18
    new-instance p1, LX/d;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, LX/e;->g:LX/d;

    .line 24
    .line 25
    invoke-virtual {p0}, LX/e;->e()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6

    .line 1
    iget p1, p0, LX/e;->e:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    iget v2, p0, LX/e;->f:I

    .line 8
    .line 9
    if-eq v2, v1, :cond_3

    .line 10
    .line 11
    :cond_0
    if-ne p2, v1, :cond_3

    .line 12
    .line 13
    iput v1, p0, LX/e;->e:I

    .line 14
    .line 15
    iget p1, p0, LX/e;->i:I

    .line 16
    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    iput p1, p0, LX/e;->h:I

    .line 20
    .line 21
    iput v0, p0, LX/e;->i:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget p1, p0, LX/e;->h:I

    .line 25
    .line 26
    if-ne p1, v0, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, LX/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, LX/e;->h:I

    .line 35
    .line 36
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, LX/e;->d(I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    const/4 v2, 0x4

    .line 41
    const/4 v3, 0x2

    .line 42
    if-eq p1, v1, :cond_4

    .line 43
    .line 44
    if-ne p1, v2, :cond_5

    .line 45
    .line 46
    :cond_4
    if-ne p2, v3, :cond_5

    .line 47
    .line 48
    iget-boolean p1, p0, LX/e;->k:Z

    .line 49
    .line 50
    if-eqz p1, :cond_c

    .line 51
    .line 52
    invoke-virtual {p0, v3}, LX/e;->d(I)V

    .line 53
    .line 54
    .line 55
    iput-boolean v1, p0, LX/e;->j:Z

    .line 56
    .line 57
    return-void

    .line 58
    :cond_5
    iget-object v4, p0, LX/e;->g:LX/d;

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    if-eq p1, v1, :cond_6

    .line 62
    .line 63
    if-ne p1, v2, :cond_9

    .line 64
    .line 65
    :cond_6
    if-nez p2, :cond_9

    .line 66
    .line 67
    invoke-virtual {p0}, LX/e;->f()V

    .line 68
    .line 69
    .line 70
    iget-boolean p1, p0, LX/e;->k:Z

    .line 71
    .line 72
    if-nez p1, :cond_7

    .line 73
    .line 74
    iget p1, v4, LX/d;->a:I

    .line 75
    .line 76
    if-eq p1, v0, :cond_8

    .line 77
    .line 78
    iget-object v1, p0, LX/e;->a:LX/b;

    .line 79
    .line 80
    if-eqz v1, :cond_8

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-virtual {v1, p1, v2, v5}, LX/b;->b(IFI)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_7
    iget p1, v4, LX/d;->c:I

    .line 88
    .line 89
    if-nez p1, :cond_9

    .line 90
    .line 91
    iget p1, p0, LX/e;->h:I

    .line 92
    .line 93
    iget v1, v4, LX/d;->a:I

    .line 94
    .line 95
    if-eq p1, v1, :cond_8

    .line 96
    .line 97
    invoke-virtual {p0, v1}, LX/e;->c(I)V

    .line 98
    .line 99
    .line 100
    :cond_8
    :goto_1
    invoke-virtual {p0, v5}, LX/e;->d(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, LX/e;->e()V

    .line 104
    .line 105
    .line 106
    :cond_9
    iget p1, p0, LX/e;->e:I

    .line 107
    .line 108
    if-ne p1, v3, :cond_c

    .line 109
    .line 110
    if-nez p2, :cond_c

    .line 111
    .line 112
    iget-boolean p1, p0, LX/e;->l:Z

    .line 113
    .line 114
    if-eqz p1, :cond_c

    .line 115
    .line 116
    invoke-virtual {p0}, LX/e;->f()V

    .line 117
    .line 118
    .line 119
    iget p1, v4, LX/d;->c:I

    .line 120
    .line 121
    if-nez p1, :cond_c

    .line 122
    .line 123
    iget p1, p0, LX/e;->i:I

    .line 124
    .line 125
    iget p2, v4, LX/d;->a:I

    .line 126
    .line 127
    if-eq p1, p2, :cond_b

    .line 128
    .line 129
    if-ne p2, v0, :cond_a

    .line 130
    .line 131
    move p2, v5

    .line 132
    :cond_a
    invoke-virtual {p0, p2}, LX/e;->c(I)V

    .line 133
    .line 134
    .line 135
    :cond_b
    invoke-virtual {p0, v5}, LX/e;->d(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, LX/e;->e()V

    .line 139
    .line 140
    .line 141
    :cond_c
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, LX/e;->k:Z

    .line 3
    .line 4
    invoke-virtual {p0}, LX/e;->f()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, LX/e;->j:Z

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iget-object v2, p0, LX/e;->g:LX/d;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iput-boolean v3, p0, LX/e;->j:Z

    .line 16
    .line 17
    if-gtz p3, :cond_2

    .line 18
    .line 19
    if-nez p3, :cond_3

    .line 20
    .line 21
    if-gez p2, :cond_0

    .line 22
    .line 23
    move p2, p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p2, v3

    .line 26
    :goto_0
    iget-object p3, p0, LX/e;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 27
    .line 28
    iget-object p3, p3, Landroidx/viewpager2/widget/ViewPager2;->h:LX/i;

    .line 29
    .line 30
    iget-object p3, p3, LP/g0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-ne p3, p1, :cond_1

    .line 37
    .line 38
    move p3, p1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move p3, v3

    .line 41
    :goto_1
    if-ne p2, p3, :cond_3

    .line 42
    .line 43
    :cond_2
    iget p2, v2, LX/d;->c:I

    .line 44
    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    iget p2, v2, LX/d;->a:I

    .line 48
    .line 49
    add-int/2addr p2, p1

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    iget p2, v2, LX/d;->a:I

    .line 52
    .line 53
    :goto_2
    iput p2, p0, LX/e;->i:I

    .line 54
    .line 55
    iget p3, p0, LX/e;->h:I

    .line 56
    .line 57
    if-eq p3, p2, :cond_6

    .line 58
    .line 59
    invoke-virtual {p0, p2}, LX/e;->c(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_4
    iget p2, p0, LX/e;->e:I

    .line 64
    .line 65
    if-nez p2, :cond_6

    .line 66
    .line 67
    iget p2, v2, LX/d;->a:I

    .line 68
    .line 69
    if-ne p2, v1, :cond_5

    .line 70
    .line 71
    move p2, v3

    .line 72
    :cond_5
    invoke-virtual {p0, p2}, LX/e;->c(I)V

    .line 73
    .line 74
    .line 75
    :cond_6
    :goto_3
    iget p2, v2, LX/d;->a:I

    .line 76
    .line 77
    if-ne p2, v1, :cond_7

    .line 78
    .line 79
    move p2, v3

    .line 80
    :cond_7
    iget p3, v2, LX/d;->b:F

    .line 81
    .line 82
    iget v0, v2, LX/d;->c:I

    .line 83
    .line 84
    iget-object v4, p0, LX/e;->a:LX/b;

    .line 85
    .line 86
    if-eqz v4, :cond_8

    .line 87
    .line 88
    invoke-virtual {v4, p2, p3, v0}, LX/b;->b(IFI)V

    .line 89
    .line 90
    .line 91
    :cond_8
    iget p2, v2, LX/d;->a:I

    .line 92
    .line 93
    iget p3, p0, LX/e;->i:I

    .line 94
    .line 95
    if-eq p2, p3, :cond_9

    .line 96
    .line 97
    if-ne p3, v1, :cond_a

    .line 98
    .line 99
    :cond_9
    iget p2, v2, LX/d;->c:I

    .line 100
    .line 101
    if-nez p2, :cond_a

    .line 102
    .line 103
    iget p2, p0, LX/e;->f:I

    .line 104
    .line 105
    if-eq p2, p1, :cond_a

    .line 106
    .line 107
    invoke-virtual {p0, v3}, LX/e;->d(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, LX/e;->e()V

    .line 111
    .line 112
    .line 113
    :cond_a
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LX/e;->a:LX/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LX/b;->c(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 1
    iget v0, p0, LX/e;->e:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, LX/e;->f:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v0, p0, LX/e;->f:I

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iput p1, p0, LX/e;->f:I

    .line 17
    .line 18
    iget-object v0, p0, LX/e;->a:LX/b;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p1}, LX/b;->a(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LX/e;->e:I

    .line 3
    .line 4
    iput v0, p0, LX/e;->f:I

    .line 5
    .line 6
    iget-object v1, p0, LX/e;->g:LX/d;

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    iput v2, v1, LX/d;->a:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput v3, v1, LX/d;->b:F

    .line 13
    .line 14
    iput v0, v1, LX/d;->c:I

    .line 15
    .line 16
    iput v2, p0, LX/e;->h:I

    .line 17
    .line 18
    iput v2, p0, LX/e;->i:I

    .line 19
    .line 20
    iput-boolean v0, p0, LX/e;->j:Z

    .line 21
    .line 22
    iput-boolean v0, p0, LX/e;->k:Z

    .line 23
    .line 24
    iput-boolean v0, p0, LX/e;->l:Z

    .line 25
    .line 26
    return-void
.end method

.method public final f()V
    .locals 13

    .line 1
    iget-object v0, p0, LX/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, LX/e;->g:LX/d;

    .line 8
    .line 9
    iput v1, v2, LX/d;->a:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, -0x1

    .line 14
    if-ne v1, v5, :cond_0

    .line 15
    .line 16
    iput v5, v2, LX/d;->a:I

    .line 17
    .line 18
    iput v4, v2, LX/d;->b:F

    .line 19
    .line 20
    iput v3, v2, LX/d;->c:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iput v5, v2, LX/d;->a:I

    .line 30
    .line 31
    iput v4, v2, LX/d;->b:F

    .line 32
    .line 33
    iput v3, v2, LX/d;->c:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, LP/h0;

    .line 41
    .line 42
    iget-object v5, v5, LP/h0;->b:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, LP/h0;

    .line 51
    .line 52
    iget-object v6, v6, LP/h0;->b:Landroid/graphics/Rect;

    .line 53
    .line 54
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, LP/h0;

    .line 61
    .line 62
    iget-object v7, v7, LP/h0;->b:Landroid/graphics/Rect;

    .line 63
    .line 64
    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    check-cast v8, LP/h0;

    .line 71
    .line 72
    iget-object v8, v8, LP/h0;->b:Landroid/graphics/Rect;

    .line 73
    .line 74
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 81
    .line 82
    if-eqz v10, :cond_2

    .line 83
    .line 84
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 85
    .line 86
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 87
    .line 88
    add-int/2addr v5, v10

    .line 89
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 90
    .line 91
    add-int/2addr v6, v10

    .line 92
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 93
    .line 94
    add-int/2addr v7, v10

    .line 95
    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 96
    .line 97
    add-int/2addr v8, v9

    .line 98
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    add-int/2addr v9, v7

    .line 103
    add-int/2addr v9, v8

    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    add-int/2addr v8, v5

    .line 109
    add-int/2addr v8, v6

    .line 110
    iget v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 111
    .line 112
    const/4 v10, 0x1

    .line 113
    iget-object v11, p0, LX/e;->c:LX/p;

    .line 114
    .line 115
    if-nez v6, :cond_4

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    sub-int/2addr v1, v5

    .line 122
    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    sub-int/2addr v1, v5

    .line 127
    iget-object v5, p0, LX/e;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 128
    .line 129
    iget-object v5, v5, Landroidx/viewpager2/widget/ViewPager2;->h:LX/i;

    .line 130
    .line 131
    iget-object v5, v5, LP/g0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    .line 133
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-ne v5, v10, :cond_3

    .line 138
    .line 139
    neg-int v1, v1

    .line 140
    :cond_3
    move v9, v8

    .line 141
    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    sub-int/2addr v1, v7

    .line 147
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    sub-int/2addr v1, v5

    .line 152
    :goto_0
    neg-int v1, v1

    .line 153
    iput v1, v2, LX/d;->c:I

    .line 154
    .line 155
    if-gez v1, :cond_12

    .line 156
    .line 157
    new-instance v1, LX/a;

    .line 158
    .line 159
    invoke-virtual {v0}, LP/g0;->v()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_5

    .line 164
    .line 165
    goto/16 :goto_9

    .line 166
    .line 167
    :cond_5
    iget v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 168
    .line 169
    if-nez v4, :cond_6

    .line 170
    .line 171
    move v4, v10

    .line 172
    goto :goto_1

    .line 173
    :cond_6
    move v4, v3

    .line 174
    :goto_1
    const/4 v5, 0x2

    .line 175
    new-array v6, v5, [I

    .line 176
    .line 177
    aput v5, v6, v10

    .line 178
    .line 179
    aput v1, v6, v3

    .line 180
    .line 181
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 182
    .line 183
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    check-cast v5, [[I

    .line 188
    .line 189
    move v6, v3

    .line 190
    :goto_2
    if-ge v6, v1, :cond_b

    .line 191
    .line 192
    invoke-virtual {v0, v6}, LP/g0;->u(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    if-eqz v7, :cond_a

    .line 197
    .line 198
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 203
    .line 204
    if-eqz v9, :cond_7

    .line 205
    .line 206
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_7
    sget-object v8, LX/a;->a:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 210
    .line 211
    :goto_3
    aget-object v9, v5, v6

    .line 212
    .line 213
    if-eqz v4, :cond_8

    .line 214
    .line 215
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 220
    .line 221
    :goto_4
    sub-int/2addr v11, v12

    .line 222
    goto :goto_5

    .line 223
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :goto_5
    aput v11, v9, v3

    .line 231
    .line 232
    aget-object v9, v5, v6

    .line 233
    .line 234
    if-eqz v4, :cond_9

    .line 235
    .line 236
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 241
    .line 242
    :goto_6
    add-int/2addr v7, v8

    .line 243
    goto :goto_7

    .line 244
    :cond_9
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :goto_7
    aput v7, v9, v10

    .line 252
    .line 253
    add-int/lit8 v6, v6, 0x1

    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 257
    .line 258
    const-string v1, "null view contained in the view hierarchy"

    .line 259
    .line 260
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw v0

    .line 264
    :cond_b
    new-instance v4, LC1/T;

    .line 265
    .line 266
    const/16 v6, 0x9

    .line 267
    .line 268
    invoke-direct {v4, v6}, LC1/T;-><init>(I)V

    .line 269
    .line 270
    .line 271
    invoke-static {v5, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 272
    .line 273
    .line 274
    move v4, v10

    .line 275
    :goto_8
    if-ge v4, v1, :cond_d

    .line 276
    .line 277
    add-int/lit8 v6, v4, -0x1

    .line 278
    .line 279
    aget-object v6, v5, v6

    .line 280
    .line 281
    aget v6, v6, v10

    .line 282
    .line 283
    aget-object v7, v5, v4

    .line 284
    .line 285
    aget v7, v7, v3

    .line 286
    .line 287
    if-eq v6, v7, :cond_c

    .line 288
    .line 289
    goto :goto_a

    .line 290
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 291
    .line 292
    goto :goto_8

    .line 293
    :cond_d
    aget-object v4, v5, v3

    .line 294
    .line 295
    aget v6, v4, v10

    .line 296
    .line 297
    aget v4, v4, v3

    .line 298
    .line 299
    sub-int/2addr v6, v4

    .line 300
    if-gtz v4, :cond_f

    .line 301
    .line 302
    sub-int/2addr v1, v10

    .line 303
    aget-object v1, v5, v1

    .line 304
    .line 305
    aget v1, v1, v10

    .line 306
    .line 307
    if-ge v1, v6, :cond_e

    .line 308
    .line 309
    goto :goto_a

    .line 310
    :cond_e
    :goto_9
    invoke-virtual {v0}, LP/g0;->v()I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-gt v1, v10, :cond_11

    .line 315
    .line 316
    :cond_f
    :goto_a
    invoke-virtual {v0}, LP/g0;->v()I

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    :goto_b
    if-ge v3, v1, :cond_11

    .line 321
    .line 322
    invoke-virtual {v0, v3}, LP/g0;->u(I)Landroid/view/View;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-static {v4}, LX/a;->a(Landroid/view/View;)Z

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    if-nez v4, :cond_10

    .line 331
    .line 332
    add-int/lit8 v3, v3, 0x1

    .line 333
    .line 334
    goto :goto_b

    .line 335
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 336
    .line 337
    const-string v1, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    .line 338
    .line 339
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    throw v0

    .line 343
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 344
    .line 345
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 346
    .line 347
    iget v1, v2, LX/d;->c:I

    .line 348
    .line 349
    const-string v2, "Page can only be offset by a positive amount, not by "

    .line 350
    .line 351
    invoke-static {v1, v2}, LE/b;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_12
    if-nez v9, :cond_13

    .line 360
    .line 361
    goto :goto_c

    .line 362
    :cond_13
    int-to-float v0, v1

    .line 363
    int-to-float v1, v9

    .line 364
    div-float v4, v0, v1

    .line 365
    .line 366
    :goto_c
    iput v4, v2, LX/d;->b:F

    .line 367
    .line 368
    return-void
.end method
