.class public final LT0/h;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lj/C;


# instance fields
.field public b:LG0/b;

.field public c:Z

.field public d:I


# virtual methods
.method public final a(Lj/p;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Lj/s;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final e(Landroid/os/Parcelable;)V
    .locals 7

    .line 1
    instance-of v0, p1, LT0/g;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, LT0/h;->b:LG0/b;

    .line 6
    .line 7
    check-cast p1, LT0/g;

    .line 8
    .line 9
    iget v1, p1, LT0/g;->b:I

    .line 10
    .line 11
    iget-object v2, v0, LT0/f;->F:Lj/p;

    .line 12
    .line 13
    iget-object v2, v2, Lj/p;->f:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    if-ge v4, v2, :cond_1

    .line 22
    .line 23
    iget-object v5, v0, LT0/f;->F:Lj/p;

    .line 24
    .line 25
    invoke-virtual {v5, v4}, Lj/p;->getItem(I)Landroid/view/MenuItem;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ne v1, v6, :cond_0

    .line 34
    .line 35
    iput v1, v0, LT0/f;->h:I

    .line 36
    .line 37
    iput v4, v0, LT0/f;->i:I

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    iget-object v0, p0, LT0/h;->b:LG0/b;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object p1, p1, LT0/g;->c:LR0/i;

    .line 54
    .line 55
    new-instance v1, Landroid/util/SparseArray;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 62
    .line 63
    .line 64
    move v2, v3

    .line 65
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-ge v2, v4, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, LD0/c;

    .line 80
    .line 81
    if-eqz v5, :cond_2

    .line 82
    .line 83
    new-instance v6, LD0/a;

    .line 84
    .line 85
    invoke-direct {v6, v0, v5}, LD0/a;-><init>(Landroid/content/Context;LD0/c;)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_2
    const/4 v6, 0x0

    .line 90
    :goto_3
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    iget-object p1, p0, LT0/h;->b:LG0/b;

    .line 97
    .line 98
    iget-object v0, p1, LT0/f;->t:Landroid/util/SparseArray;

    .line 99
    .line 100
    move v2, v3

    .line 101
    :goto_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-ge v2, v4, :cond_5

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-gez v5, :cond_4

    .line 116
    .line 117
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    check-cast v5, LD0/a;

    .line 122
    .line 123
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_5
    iget-object p1, p1, LT0/f;->g:[LT0/d;

    .line 130
    .line 131
    if-eqz p1, :cond_7

    .line 132
    .line 133
    array-length v1, p1

    .line 134
    :goto_5
    if-ge v3, v1, :cond_7

    .line 135
    .line 136
    aget-object v2, p1, v3

    .line 137
    .line 138
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, LD0/a;

    .line 147
    .line 148
    if-eqz v4, :cond_6

    .line 149
    .line 150
    invoke-virtual {v2, v4}, LT0/d;->setBadge(LD0/a;)V

    .line 151
    .line 152
    .line 153
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_7
    return-void
.end method

.method public final g(Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, LT0/h;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, LT0/h;->b:LG0/b;

    .line 10
    .line 11
    invoke-virtual {p1}, LT0/f;->b()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object p1, p0, LT0/h;->b:LG0/b;

    .line 16
    .line 17
    iget-object v0, p1, LT0/f;->F:Lj/p;

    .line 18
    .line 19
    if-eqz v0, :cond_9

    .line 20
    .line 21
    iget-object v1, p1, LT0/f;->g:[LT0/d;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_2
    iget-object v0, v0, Lj/p;->f:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p1, LT0/f;->g:[LT0/d;

    .line 34
    .line 35
    array-length v1, v1

    .line 36
    if-eq v0, v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p1}, LT0/f;->b()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    iget v1, p1, LT0/f;->h:I

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    move v3, v2

    .line 46
    :goto_0
    if-ge v3, v0, :cond_5

    .line 47
    .line 48
    iget-object v4, p1, LT0/f;->F:Lj/p;

    .line 49
    .line 50
    invoke-virtual {v4, v3}, Lj/p;->getItem(I)Landroid/view/MenuItem;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_4

    .line 59
    .line 60
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    iput v4, p1, LT0/f;->h:I

    .line 65
    .line 66
    iput v3, p1, LT0/f;->i:I

    .line 67
    .line 68
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    iget v3, p1, LT0/f;->h:I

    .line 72
    .line 73
    if-eq v1, v3, :cond_6

    .line 74
    .line 75
    iget-object v1, p1, LT0/f;->b:LS/a;

    .line 76
    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    invoke-static {p1, v1}, LS/z;->a(Landroid/view/ViewGroup;LS/v;)V

    .line 80
    .line 81
    .line 82
    :cond_6
    iget v1, p1, LT0/f;->f:I

    .line 83
    .line 84
    iget-object v3, p1, LT0/f;->F:Lj/p;

    .line 85
    .line 86
    invoke-virtual {v3}, Lj/p;->l()Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    const/4 v4, -0x1

    .line 95
    const/4 v5, 0x1

    .line 96
    if-ne v1, v4, :cond_7

    .line 97
    .line 98
    const/4 v1, 0x3

    .line 99
    if-le v3, v1, :cond_8

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_7
    if-nez v1, :cond_8

    .line 103
    .line 104
    :goto_1
    move v1, v5

    .line 105
    goto :goto_2

    .line 106
    :cond_8
    move v1, v2

    .line 107
    :goto_2
    move v3, v2

    .line 108
    :goto_3
    if-ge v3, v0, :cond_9

    .line 109
    .line 110
    iget-object v4, p1, LT0/f;->E:LT0/h;

    .line 111
    .line 112
    iput-boolean v5, v4, LT0/h;->c:Z

    .line 113
    .line 114
    iget-object v4, p1, LT0/f;->g:[LT0/d;

    .line 115
    .line 116
    aget-object v4, v4, v3

    .line 117
    .line 118
    iget v6, p1, LT0/f;->f:I

    .line 119
    .line 120
    invoke-virtual {v4, v6}, LT0/d;->setLabelVisibilityMode(I)V

    .line 121
    .line 122
    .line 123
    iget-object v4, p1, LT0/f;->g:[LT0/d;

    .line 124
    .line 125
    aget-object v4, v4, v3

    .line 126
    .line 127
    invoke-virtual {v4, v1}, LT0/d;->setShifting(Z)V

    .line 128
    .line 129
    .line 130
    iget-object v4, p1, LT0/f;->g:[LT0/d;

    .line 131
    .line 132
    aget-object v4, v4, v3

    .line 133
    .line 134
    iget-object v6, p1, LT0/f;->F:Lj/p;

    .line 135
    .line 136
    invoke-virtual {v6, v3}, Lj/p;->getItem(I)Landroid/view/MenuItem;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    check-cast v6, Lj/s;

    .line 141
    .line 142
    invoke-virtual {v4, v6}, LT0/d;->b(Lj/s;)V

    .line 143
    .line 144
    .line 145
    iget-object v4, p1, LT0/f;->E:LT0/h;

    .line 146
    .line 147
    iput-boolean v2, v4, LT0/h;->c:Z

    .line 148
    .line 149
    add-int/lit8 v3, v3, 0x1

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_9
    :goto_4
    return-void
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, LT0/h;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final h(Landroid/content/Context;Lj/p;)V
    .locals 0

    .line 1
    iget-object p1, p0, LT0/h;->b:LG0/b;

    .line 2
    .line 3
    iput-object p2, p1, LT0/f;->F:Lj/p;

    .line 4
    .line 5
    return-void
.end method

.method public final i()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final j()Landroid/os/Parcelable;
    .locals 6

    .line 1
    new-instance v0, LT0/g;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LT0/h;->b:LG0/b;

    .line 7
    .line 8
    invoke-virtual {v1}, LT0/f;->getSelectedItemId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput v1, v0, LT0/g;->b:I

    .line 13
    .line 14
    iget-object v1, p0, LT0/h;->b:LG0/b;

    .line 15
    .line 16
    invoke-virtual {v1}, LT0/f;->getBadgeDrawables()Landroid/util/SparseArray;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, LR0/i;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ge v3, v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, LD0/a;

    .line 41
    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    iget-object v5, v5, LD0/a;->f:LD0/d;

    .line 45
    .line 46
    iget-object v5, v5, LD0/d;->a:LD0/c;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 v5, 0x0

    .line 50
    :goto_1
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iput-object v2, v0, LT0/g;->c:LR0/i;

    .line 57
    .line 58
    return-object v0
.end method

.method public final k(Lj/s;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final m(Lj/I;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
