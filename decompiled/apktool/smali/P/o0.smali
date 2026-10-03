.class public final LP/o0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:LP/n0;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LP/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, LP/o0;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, LP/o0;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, LP/o0;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, LP/o0;->d:Ljava/util/List;

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    iput p1, p0, LP/o0;->e:I

    .line 31
    .line 32
    iput p1, p0, LP/o0;->f:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(LP/y0;Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->l(LP/y0;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, LP/y0;->a:Landroid/view/View;

    .line 5
    .line 6
    iget-object v1, p0, LP/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->p0:LP/A0;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-object v2, v2, LP/A0;->b:LP/z0;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v2, v2, LP/z0;->b:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v2, v3

    .line 27
    :goto_0
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    if-eqz p2, :cond_5

    .line 31
    .line 32
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->p:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-gtz v2, :cond_4

    .line 39
    .line 40
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->n:LP/W;

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    invoke-virtual {p2, p1}, LP/W;->j(LP/y0;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->i0:LP/u0;

    .line 48
    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->h:LA1/d;

    .line 52
    .line 53
    invoke-virtual {p2, p1}, LA1/d;->E(LP/y0;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->C0:Z

    .line 57
    .line 58
    if-eqz p2, :cond_5

    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "dispatchViewRecycled: "

    .line 63
    .line 64
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const-string v1, "RecyclerView"

    .line 75
    .line 76
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const/4 p1, 0x0

    .line 81
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance p1, Ljava/lang/ClassCastException;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_5
    :goto_1
    iput-object v3, p1, LP/y0;->s:LP/W;

    .line 95
    .line 96
    iput-object v3, p1, LP/y0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    .line 98
    invoke-virtual {p0}, LP/o0;->c()LP/n0;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget v1, p1, LP/y0;->f:I

    .line 106
    .line 107
    invoke-virtual {p2, v1}, LP/n0;->a(I)LP/m0;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iget-object v2, v2, LP/m0;->a:Ljava/util/ArrayList;

    .line 112
    .line 113
    iget-object p2, p2, LP/n0;->a:Landroid/util/SparseArray;

    .line 114
    .line 115
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    check-cast p2, LP/m0;

    .line 120
    .line 121
    iget p2, p2, LP/m0;->b:I

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-gt p2, v1, :cond_6

    .line 128
    .line 129
    invoke-static {v0}, Lcom/bumptech/glide/c;->e(Landroid/view/View;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_6
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    .line 134
    .line 135
    if-eqz p2, :cond_8

    .line 136
    .line 137
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-nez p2, :cond_7

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    const-string p2, "this scrap item already exists"

    .line 147
    .line 148
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_8
    :goto_2
    invoke-virtual {p1}, LP/y0;->m()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final b(I)I
    .locals 4

    .line 1
    iget-object v0, p0, LP/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-ltz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->i0:LP/u0;

    .line 6
    .line 7
    invoke-virtual {v1}, LP/u0;->b()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge p1, v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->i0:LP/u0;

    .line 14
    .line 15
    iget-boolean v1, v1, LP/u0;->g:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LP/b;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p1, v1}, LP/b;->f(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    const-string v2, "invalid position "

    .line 31
    .line 32
    const-string v3, ". State item count is "

    .line 33
    .line 34
    invoke-static {p1, v2, v3}, LE/b;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->i0:LP/u0;

    .line 39
    .line 40
    invoke-virtual {v2}, LP/u0;->b()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1
.end method

.method public final c()LP/n0;
    .locals 2

    .line 1
    iget-object v0, p0, LP/o0;->g:LP/n0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, LP/n0;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, LP/n0;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, v0, LP/n0;->b:I

    .line 19
    .line 20
    new-instance v1, Ljava/util/IdentityHashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, LP/n0;->c:Ljava/util/Set;

    .line 30
    .line 31
    iput-object v0, p0, LP/o0;->g:LP/n0;

    .line 32
    .line 33
    invoke-virtual {p0}, LP/o0;->d()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, LP/o0;->g:LP/n0;

    .line 37
    .line 38
    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, LP/o0;->g:LP/n0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, LP/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->n:LP/W;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, LP/n0;->c:Ljava/util/Set;

    .line 16
    .line 17
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final e(LP/W;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, LP/o0;->g:LP/n0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, LP/n0;->a:Landroid/util/SparseArray;

    .line 6
    .line 7
    iget-object v0, v0, LP/n0;->c:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    move p2, p1

    .line 22
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ge p2, v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, LP/m0;

    .line 37
    .line 38
    iget-object v0, v0, LP/m0;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    move v2, p1

    .line 41
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ge v2, v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, LP/y0;

    .line 52
    .line 53
    iget-object v3, v3, LP/y0;->a:Landroid/view/View;

    .line 54
    .line 55
    invoke-static {v3}, Lcom/bumptech/glide/c;->e(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, LP/o0;->c:Ljava/util/ArrayList;

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
    if-ltz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, LP/o0;->g(I)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, LP/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:LP/y;

    .line 27
    .line 28
    iget-object v1, v0, LP/y;->c:[I

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    iput v1, v0, LP/y;->d:I

    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final g(I)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->C0:Z

    .line 2
    .line 3
    const-string v1, "RecyclerView"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Recycling cached view at index "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, LP/o0;->c:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, LP/y0;

    .line 31
    .line 32
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->C0:Z

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v4, "CachedViewHolder to be recycled: "

    .line 39
    .line 40
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    const/4 v1, 0x1

    .line 54
    invoke-virtual {p0, v2, v1}, LP/o0;->a(LP/y0;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final h(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LP/y0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, LP/y0;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, LP/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, LP/y0;->i()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, v0, LP/y0;->n:LP/o0;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, LP/o0;->l(LP/y0;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0}, LP/y0;->p()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget p1, v0, LP/y0;->j:I

    .line 36
    .line 37
    and-int/lit8 p1, p1, -0x21

    .line 38
    .line 39
    iput p1, v0, LP/y0;->j:I

    .line 40
    .line 41
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, LP/o0;->i(LP/y0;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->N:LP/c0;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, LP/y0;->g()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->N:LP/c0;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, LP/c0;->d(LP/y0;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method public final i(LP/y0;)V
    .locals 12

    .line 1
    iget-object v0, p0, LP/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:LP/y;

    .line 4
    .line 5
    invoke-virtual {p1}, LP/y0;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p1, LP/y0;->a:Landroid/view/View;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-nez v2, :cond_14

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_c

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, LP/y0;->j()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_13

    .line 28
    .line 29
    invoke-virtual {p1}, LP/y0;->o()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_12

    .line 34
    .line 35
    iget v2, p1, LP/y0;->j:I

    .line 36
    .line 37
    and-int/lit8 v2, v2, 0x10

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    move v2, v5

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v2, v4

    .line 50
    :goto_0
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->n:LP/W;

    .line 51
    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v6, p1}, LP/W;->h(LP/y0;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    move v6, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v6, v4

    .line 65
    :goto_1
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    .line 66
    .line 67
    iget-object v8, p0, LP/o0;->c:Ljava/util/ArrayList;

    .line 68
    .line 69
    if-eqz v7, :cond_4

    .line 70
    .line 71
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-nez v7, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v3, "cached view received recycle internal? "

    .line 83
    .line 84
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v2}, LE/b;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v1

    .line 98
    :cond_4
    :goto_2
    if-nez v6, :cond_7

    .line 99
    .line 100
    invoke-virtual {p1}, LP/y0;->g()Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_5

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->C0:Z

    .line 108
    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v5, "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists"

    .line 114
    .line 115
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const-string v5, "RecyclerView"

    .line 130
    .line 131
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_6
    move v5, v4

    .line 135
    goto/16 :goto_b

    .line 136
    .line 137
    :cond_7
    :goto_3
    iget v6, p0, LP/o0;->f:I

    .line 138
    .line 139
    if-lez v6, :cond_f

    .line 140
    .line 141
    iget v6, p1, LP/y0;->j:I

    .line 142
    .line 143
    and-int/lit16 v6, v6, 0x20e

    .line 144
    .line 145
    if-eqz v6, :cond_8

    .line 146
    .line 147
    goto :goto_8

    .line 148
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    iget v7, p0, LP/o0;->f:I

    .line 153
    .line 154
    if-lt v6, v7, :cond_9

    .line 155
    .line 156
    if-lez v6, :cond_9

    .line 157
    .line 158
    invoke-virtual {p0, v4}, LP/o0;->g(I)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v6, v6, -0x1

    .line 162
    .line 163
    :cond_9
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 164
    .line 165
    if-eqz v7, :cond_e

    .line 166
    .line 167
    if-lez v6, :cond_e

    .line 168
    .line 169
    iget v7, p1, LP/y0;->c:I

    .line 170
    .line 171
    iget-object v9, v1, LP/y;->c:[I

    .line 172
    .line 173
    if-eqz v9, :cond_b

    .line 174
    .line 175
    iget v9, v1, LP/y;->d:I

    .line 176
    .line 177
    mul-int/lit8 v9, v9, 0x2

    .line 178
    .line 179
    move v10, v4

    .line 180
    :goto_4
    if-ge v10, v9, :cond_b

    .line 181
    .line 182
    iget-object v11, v1, LP/y;->c:[I

    .line 183
    .line 184
    aget v11, v11, v10

    .line 185
    .line 186
    if-ne v11, v7, :cond_a

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_a
    add-int/lit8 v10, v10, 0x2

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_b
    add-int/lit8 v6, v6, -0x1

    .line 193
    .line 194
    :goto_5
    if-ltz v6, :cond_d

    .line 195
    .line 196
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    check-cast v7, LP/y0;

    .line 201
    .line 202
    iget v7, v7, LP/y0;->c:I

    .line 203
    .line 204
    iget-object v9, v1, LP/y;->c:[I

    .line 205
    .line 206
    if-eqz v9, :cond_d

    .line 207
    .line 208
    iget v9, v1, LP/y;->d:I

    .line 209
    .line 210
    mul-int/lit8 v9, v9, 0x2

    .line 211
    .line 212
    move v10, v4

    .line 213
    :goto_6
    if-ge v10, v9, :cond_d

    .line 214
    .line 215
    iget-object v11, v1, LP/y;->c:[I

    .line 216
    .line 217
    aget v11, v11, v10

    .line 218
    .line 219
    if-ne v11, v7, :cond_c

    .line 220
    .line 221
    add-int/lit8 v6, v6, -0x1

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_c
    add-int/lit8 v10, v10, 0x2

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_d
    add-int/2addr v6, v5

    .line 228
    :cond_e
    :goto_7
    invoke-virtual {v8, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    move v1, v5

    .line 232
    goto :goto_9

    .line 233
    :cond_f
    :goto_8
    move v1, v4

    .line 234
    :goto_9
    if-nez v1, :cond_10

    .line 235
    .line 236
    invoke-virtual {p0, p1, v5}, LP/o0;->a(LP/y0;Z)V

    .line 237
    .line 238
    .line 239
    :goto_a
    move v4, v1

    .line 240
    goto :goto_b

    .line 241
    :cond_10
    move v5, v4

    .line 242
    goto :goto_a

    .line 243
    :goto_b
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h:LA1/d;

    .line 244
    .line 245
    invoke-virtual {v0, p1}, LA1/d;->E(LP/y0;)V

    .line 246
    .line 247
    .line 248
    if-nez v4, :cond_11

    .line 249
    .line 250
    if-nez v5, :cond_11

    .line 251
    .line 252
    if-eqz v2, :cond_11

    .line 253
    .line 254
    invoke-static {v3}, Lcom/bumptech/glide/c;->e(Landroid/view/View;)V

    .line 255
    .line 256
    .line 257
    const/4 v0, 0x0

    .line 258
    iput-object v0, p1, LP/y0;->s:LP/W;

    .line 259
    .line 260
    iput-object v0, p1, LP/y0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 261
    .line 262
    :cond_11
    return-void

    .line 263
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 264
    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v2, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    .line 268
    .line 269
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v0, v1}, LE/b;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw p1

    .line 280
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 281
    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v3, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    .line 285
    .line 286
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-static {v0, v2}, LE/b;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v1

    .line 300
    :cond_14
    :goto_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 301
    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string v6, "Scrapped or attached views may not be recycled. isScrap:"

    .line 305
    .line 306
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1}, LP/y0;->i()Z

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string p1, " isAttached:"

    .line 317
    .line 318
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    if-eqz p1, :cond_15

    .line 326
    .line 327
    move v4, v5

    .line 328
    :cond_15
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    throw v1
.end method

.method public final j(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LP/y0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, LP/y0;->j:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0xc

    .line 8
    .line 9
    iget-object v1, p0, LP/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, LP/y0;->k()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->N:LP/c0;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, LP/y0;->c()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v0, LP/p;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    iget-boolean v0, v0, LP/p;->g:Z

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, LP/y0;->f()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, LP/o0;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, LP/o0;->b:Ljava/util/ArrayList;

    .line 57
    .line 58
    :cond_2
    iput-object p0, p1, LP/y0;->n:LP/o0;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p1, LP/y0;->o:Z

    .line 62
    .line 63
    iget-object v0, p0, LP/o0;->b:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    :goto_0
    invoke-virtual {p1}, LP/y0;->f()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    invoke-virtual {p1}, LP/y0;->h()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_5

    .line 80
    .line 81
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->n:LP/W;

    .line 82
    .line 83
    iget-boolean v0, v0, LP/W;->b:Z

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    .line 93
    .line 94
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v0}, LE/b;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_5
    :goto_1
    iput-object p0, p1, LP/y0;->n:LP/o0;

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p1, LP/y0;->o:Z

    .line 109
    .line 110
    iget-object v0, p0, LP/o0;->a:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final k(IJ)LP/y0;
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, LP/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->i0:LP/u0;

    .line 8
    .line 9
    if-ltz v0, :cond_58

    .line 10
    .line 11
    invoke-virtual {v3}, LP/u0;->b()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ge v0, v4, :cond_58

    .line 16
    .line 17
    iget-boolean v4, v3, LP/u0;->g:Z

    .line 18
    .line 19
    const/16 v5, 0x20

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    if-eqz v4, :cond_6

    .line 23
    .line 24
    iget-object v4, v1, LP/o0;->b:Ljava/util/ArrayList;

    .line 25
    .line 26
    if-eqz v4, :cond_4

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    move v9, v8

    .line 36
    :goto_0
    if-ge v9, v4, :cond_2

    .line 37
    .line 38
    iget-object v10, v1, LP/o0;->b:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    check-cast v10, LP/y0;

    .line 45
    .line 46
    invoke-virtual {v10}, LP/y0;->p()Z

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-nez v11, :cond_1

    .line 51
    .line 52
    invoke-virtual {v10}, LP/y0;->b()I

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    if-ne v11, v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {v10, v5}, LP/y0;->a(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->n:LP/W;

    .line 66
    .line 67
    iget-boolean v9, v9, LP/W;->b:Z

    .line 68
    .line 69
    if-eqz v9, :cond_4

    .line 70
    .line 71
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->f:LP/b;

    .line 72
    .line 73
    invoke-virtual {v9, v0, v8}, LP/b;->f(II)I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-lez v9, :cond_4

    .line 78
    .line 79
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->n:LP/W;

    .line 80
    .line 81
    invoke-virtual {v10}, LP/W;->a()I

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    if-ge v9, v10, :cond_4

    .line 86
    .line 87
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->n:LP/W;

    .line 88
    .line 89
    invoke-virtual {v10, v9}, LP/W;->b(I)J

    .line 90
    .line 91
    .line 92
    move-result-wide v9

    .line 93
    move v11, v8

    .line 94
    :goto_1
    if-ge v11, v4, :cond_4

    .line 95
    .line 96
    iget-object v12, v1, LP/o0;->b:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    check-cast v12, LP/y0;

    .line 103
    .line 104
    invoke-virtual {v12}, LP/y0;->p()Z

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    if-nez v13, :cond_3

    .line 109
    .line 110
    iget-wide v13, v12, LP/y0;->e:J

    .line 111
    .line 112
    cmp-long v13, v13, v9

    .line 113
    .line 114
    if-nez v13, :cond_3

    .line 115
    .line 116
    invoke-virtual {v12, v5}, LP/y0;->a(I)V

    .line 117
    .line 118
    .line 119
    move-object v10, v12

    .line 120
    goto :goto_3

    .line 121
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    :goto_2
    const/4 v10, 0x0

    .line 125
    :goto_3
    if-eqz v10, :cond_5

    .line 126
    .line 127
    const/4 v4, 0x1

    .line 128
    goto :goto_4

    .line 129
    :cond_5
    move v4, v8

    .line 130
    goto :goto_4

    .line 131
    :cond_6
    move v4, v8

    .line 132
    const/4 v10, 0x0

    .line 133
    :goto_4
    iget-object v9, v1, LP/o0;->a:Ljava/util/ArrayList;

    .line 134
    .line 135
    iget-object v11, v1, LP/o0;->c:Ljava/util/ArrayList;

    .line 136
    .line 137
    const-string v12, "RecyclerView"

    .line 138
    .line 139
    if-nez v10, :cond_1f

    .line 140
    .line 141
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    move v13, v8

    .line 146
    :goto_5
    if-ge v13, v10, :cond_9

    .line 147
    .line 148
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v14

    .line 152
    check-cast v14, LP/y0;

    .line 153
    .line 154
    invoke-virtual {v14}, LP/y0;->p()Z

    .line 155
    .line 156
    .line 157
    move-result v15

    .line 158
    if-nez v15, :cond_8

    .line 159
    .line 160
    invoke-virtual {v14}, LP/y0;->b()I

    .line 161
    .line 162
    .line 163
    move-result v15

    .line 164
    if-ne v15, v0, :cond_8

    .line 165
    .line 166
    invoke-virtual {v14}, LP/y0;->f()Z

    .line 167
    .line 168
    .line 169
    move-result v15

    .line 170
    if-nez v15, :cond_8

    .line 171
    .line 172
    iget-boolean v15, v3, LP/u0;->g:Z

    .line 173
    .line 174
    if-nez v15, :cond_7

    .line 175
    .line 176
    invoke-virtual {v14}, LP/y0;->h()Z

    .line 177
    .line 178
    .line 179
    move-result v15

    .line 180
    if-nez v15, :cond_8

    .line 181
    .line 182
    :cond_7
    invoke-virtual {v14, v5}, LP/y0;->a(I)V

    .line 183
    .line 184
    .line 185
    move-object v10, v14

    .line 186
    const/16 v17, 0x1

    .line 187
    .line 188
    goto/16 :goto_b

    .line 189
    .line 190
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_9
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->g:LP/i;

    .line 194
    .line 195
    iget-object v10, v10, LP/i;->c:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    move v14, v8

    .line 202
    :goto_6
    if-ge v14, v13, :cond_b

    .line 203
    .line 204
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v15

    .line 208
    check-cast v15, Landroid/view/View;

    .line 209
    .line 210
    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LP/y0;

    .line 211
    .line 212
    .line 213
    move-result-object v16

    .line 214
    const/16 v17, 0x1

    .line 215
    .line 216
    invoke-virtual/range {v16 .. v16}, LP/y0;->b()I

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-ne v7, v0, :cond_a

    .line 221
    .line 222
    invoke-virtual/range {v16 .. v16}, LP/y0;->f()Z

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    if-nez v7, :cond_a

    .line 227
    .line 228
    invoke-virtual/range {v16 .. v16}, LP/y0;->h()Z

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    if-nez v7, :cond_a

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_b
    const/16 v17, 0x1

    .line 239
    .line 240
    const/4 v15, 0x0

    .line 241
    :goto_7
    if-eqz v15, :cond_11

    .line 242
    .line 243
    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LP/y0;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->g:LP/i;

    .line 248
    .line 249
    iget-object v13, v10, LP/i;->b:LP/h;

    .line 250
    .line 251
    iget-object v14, v10, LP/i;->a:LP/V;

    .line 252
    .line 253
    iget-object v14, v14, LP/V;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 254
    .line 255
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 256
    .line 257
    .line 258
    move-result v14

    .line 259
    if-ltz v14, :cond_10

    .line 260
    .line 261
    invoke-virtual {v13, v14}, LP/h;->d(I)Z

    .line 262
    .line 263
    .line 264
    move-result v16

    .line 265
    if-eqz v16, :cond_f

    .line 266
    .line 267
    invoke-virtual {v13, v14}, LP/h;->a(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v10, v15}, LP/i;->j(Landroid/view/View;)V

    .line 271
    .line 272
    .line 273
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->g:LP/i;

    .line 274
    .line 275
    iget-object v13, v10, LP/i;->b:LP/h;

    .line 276
    .line 277
    iget-object v10, v10, LP/i;->a:LP/V;

    .line 278
    .line 279
    iget-object v10, v10, LP/V;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 280
    .line 281
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 282
    .line 283
    .line 284
    move-result v10

    .line 285
    const/4 v14, -0x1

    .line 286
    if-ne v10, v14, :cond_c

    .line 287
    .line 288
    :goto_8
    move v10, v14

    .line 289
    goto :goto_9

    .line 290
    :cond_c
    invoke-virtual {v13, v10}, LP/h;->d(I)Z

    .line 291
    .line 292
    .line 293
    move-result v16

    .line 294
    if-eqz v16, :cond_d

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_d
    invoke-virtual {v13, v10}, LP/h;->b(I)I

    .line 298
    .line 299
    .line 300
    move-result v13

    .line 301
    sub-int/2addr v10, v13

    .line 302
    :goto_9
    if-eq v10, v14, :cond_e

    .line 303
    .line 304
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->g:LP/i;

    .line 305
    .line 306
    invoke-virtual {v13, v10}, LP/i;->c(I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v15}, LP/o0;->j(Landroid/view/View;)V

    .line 310
    .line 311
    .line 312
    const/16 v10, 0x2020

    .line 313
    .line 314
    invoke-virtual {v7, v10}, LP/y0;->a(I)V

    .line 315
    .line 316
    .line 317
    move-object v10, v7

    .line 318
    goto/16 :goto_b

    .line 319
    .line 320
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 321
    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v4, "layout index should not be -1 after unhiding a view:"

    .line 325
    .line 326
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-static {v2, v3}, LE/b;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v0

    .line 340
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    .line 341
    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    const-string v3, "trying to unhide a view that was not hidden"

    .line 345
    .line 346
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    throw v0

    .line 360
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 361
    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    const-string v3, "view is not a child, cannot hide "

    .line 365
    .line 366
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw v0

    .line 380
    :cond_11
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 381
    .line 382
    .line 383
    move-result v7

    .line 384
    move v10, v8

    .line 385
    :goto_a
    if-ge v10, v7, :cond_14

    .line 386
    .line 387
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v13

    .line 391
    check-cast v13, LP/y0;

    .line 392
    .line 393
    invoke-virtual {v13}, LP/y0;->f()Z

    .line 394
    .line 395
    .line 396
    move-result v14

    .line 397
    if-nez v14, :cond_13

    .line 398
    .line 399
    invoke-virtual {v13}, LP/y0;->b()I

    .line 400
    .line 401
    .line 402
    move-result v14

    .line 403
    if-ne v14, v0, :cond_13

    .line 404
    .line 405
    invoke-virtual {v13}, LP/y0;->d()Z

    .line 406
    .line 407
    .line 408
    move-result v14

    .line 409
    if-nez v14, :cond_13

    .line 410
    .line 411
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->C0:Z

    .line 415
    .line 416
    if-eqz v7, :cond_12

    .line 417
    .line 418
    new-instance v7, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    const-string v10, "getScrapOrHiddenOrCachedHolderForPosition("

    .line 421
    .line 422
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    const-string v10, ") found match in cache: "

    .line 429
    .line 430
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v7

    .line 440
    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    :cond_12
    move-object v10, v13

    .line 444
    goto :goto_b

    .line 445
    :cond_13
    add-int/lit8 v10, v10, 0x1

    .line 446
    .line 447
    goto :goto_a

    .line 448
    :cond_14
    const/4 v10, 0x0

    .line 449
    :goto_b
    if-eqz v10, :cond_20

    .line 450
    .line 451
    invoke-virtual {v10}, LP/y0;->h()Z

    .line 452
    .line 453
    .line 454
    move-result v7

    .line 455
    if-eqz v7, :cond_17

    .line 456
    .line 457
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    .line 458
    .line 459
    if-eqz v7, :cond_16

    .line 460
    .line 461
    iget-boolean v7, v3, LP/u0;->g:Z

    .line 462
    .line 463
    if-eqz v7, :cond_15

    .line 464
    .line 465
    goto :goto_c

    .line 466
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 467
    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    const-string v4, "should not receive a removed view unless it is pre layout"

    .line 471
    .line 472
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-static {v2, v3}, LE/b;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    throw v0

    .line 483
    :cond_16
    :goto_c
    iget-boolean v7, v3, LP/u0;->g:Z

    .line 484
    .line 485
    goto :goto_d

    .line 486
    :cond_17
    iget v7, v10, LP/y0;->c:I

    .line 487
    .line 488
    if-ltz v7, :cond_1e

    .line 489
    .line 490
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->n:LP/W;

    .line 491
    .line 492
    invoke-virtual {v13}, LP/W;->a()I

    .line 493
    .line 494
    .line 495
    move-result v13

    .line 496
    if-ge v7, v13, :cond_1e

    .line 497
    .line 498
    iget-boolean v7, v3, LP/u0;->g:Z

    .line 499
    .line 500
    if-nez v7, :cond_19

    .line 501
    .line 502
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->n:LP/W;

    .line 503
    .line 504
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    iget v7, v10, LP/y0;->f:I

    .line 508
    .line 509
    if-eqz v7, :cond_19

    .line 510
    .line 511
    :cond_18
    move v7, v8

    .line 512
    goto :goto_d

    .line 513
    :cond_19
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->n:LP/W;

    .line 514
    .line 515
    iget-boolean v13, v7, LP/W;->b:Z

    .line 516
    .line 517
    if-eqz v13, :cond_1a

    .line 518
    .line 519
    iget-wide v13, v10, LP/y0;->e:J

    .line 520
    .line 521
    iget v15, v10, LP/y0;->c:I

    .line 522
    .line 523
    invoke-virtual {v7, v15}, LP/W;->b(I)J

    .line 524
    .line 525
    .line 526
    move-result-wide v15

    .line 527
    cmp-long v7, v13, v15

    .line 528
    .line 529
    if-nez v7, :cond_18

    .line 530
    .line 531
    :cond_1a
    move/from16 v7, v17

    .line 532
    .line 533
    :goto_d
    if-nez v7, :cond_1d

    .line 534
    .line 535
    const/4 v7, 0x4

    .line 536
    invoke-virtual {v10, v7}, LP/y0;->a(I)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v10}, LP/y0;->i()Z

    .line 540
    .line 541
    .line 542
    move-result v7

    .line 543
    if-eqz v7, :cond_1b

    .line 544
    .line 545
    iget-object v7, v10, LP/y0;->a:Landroid/view/View;

    .line 546
    .line 547
    invoke-virtual {v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 548
    .line 549
    .line 550
    iget-object v7, v10, LP/y0;->n:LP/o0;

    .line 551
    .line 552
    invoke-virtual {v7, v10}, LP/o0;->l(LP/y0;)V

    .line 553
    .line 554
    .line 555
    goto :goto_e

    .line 556
    :cond_1b
    invoke-virtual {v10}, LP/y0;->p()Z

    .line 557
    .line 558
    .line 559
    move-result v7

    .line 560
    if-eqz v7, :cond_1c

    .line 561
    .line 562
    iget v7, v10, LP/y0;->j:I

    .line 563
    .line 564
    and-int/lit8 v7, v7, -0x21

    .line 565
    .line 566
    iput v7, v10, LP/y0;->j:I

    .line 567
    .line 568
    :cond_1c
    :goto_e
    invoke-virtual {v1, v10}, LP/o0;->i(LP/y0;)V

    .line 569
    .line 570
    .line 571
    const/4 v10, 0x0

    .line 572
    goto :goto_f

    .line 573
    :cond_1d
    move/from16 v4, v17

    .line 574
    .line 575
    goto :goto_f

    .line 576
    :cond_1e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 577
    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    .line 579
    .line 580
    const-string v4, "Inconsistency detected. Invalid view holder adapter position"

    .line 581
    .line 582
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-static {v2, v3}, LE/b;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    throw v0

    .line 596
    :cond_1f
    const/16 v17, 0x1

    .line 597
    .line 598
    :cond_20
    :goto_f
    const-wide/16 v18, 0x0

    .line 599
    .line 600
    const-wide v20, 0x7fffffffffffffffL

    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    if-nez v10, :cond_36

    .line 606
    .line 607
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->f:LP/b;

    .line 608
    .line 609
    invoke-virtual {v7, v0, v8}, LP/b;->f(II)I

    .line 610
    .line 611
    .line 612
    move-result v7

    .line 613
    if-ltz v7, :cond_35

    .line 614
    .line 615
    const-wide/16 v22, 0x3

    .line 616
    .line 617
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->n:LP/W;

    .line 618
    .line 619
    invoke-virtual {v13}, LP/W;->a()I

    .line 620
    .line 621
    .line 622
    move-result v13

    .line 623
    if-ge v7, v13, :cond_35

    .line 624
    .line 625
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->n:LP/W;

    .line 626
    .line 627
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 628
    .line 629
    .line 630
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->n:LP/W;

    .line 631
    .line 632
    iget-boolean v14, v13, LP/W;->b:Z

    .line 633
    .line 634
    if-eqz v14, :cond_28

    .line 635
    .line 636
    invoke-virtual {v13, v7}, LP/W;->b(I)J

    .line 637
    .line 638
    .line 639
    move-result-wide v13

    .line 640
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 641
    .line 642
    .line 643
    move-result v10

    .line 644
    add-int/lit8 v10, v10, -0x1

    .line 645
    .line 646
    :goto_10
    if-ltz v10, :cond_24

    .line 647
    .line 648
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v24

    .line 652
    const-wide/16 v25, 0x4

    .line 653
    .line 654
    move-object/from16 v15, v24

    .line 655
    .line 656
    check-cast v15, LP/y0;

    .line 657
    .line 658
    move/from16 v24, v7

    .line 659
    .line 660
    iget-wide v6, v15, LP/y0;->e:J

    .line 661
    .line 662
    iget-object v8, v15, LP/y0;->a:Landroid/view/View;

    .line 663
    .line 664
    cmp-long v6, v6, v13

    .line 665
    .line 666
    if-nez v6, :cond_23

    .line 667
    .line 668
    invoke-virtual {v15}, LP/y0;->p()Z

    .line 669
    .line 670
    .line 671
    move-result v6

    .line 672
    if-nez v6, :cond_23

    .line 673
    .line 674
    iget v6, v15, LP/y0;->f:I

    .line 675
    .line 676
    if-nez v6, :cond_22

    .line 677
    .line 678
    invoke-virtual {v15, v5}, LP/y0;->a(I)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v15}, LP/y0;->h()Z

    .line 682
    .line 683
    .line 684
    move-result v5

    .line 685
    if-eqz v5, :cond_21

    .line 686
    .line 687
    iget-boolean v5, v3, LP/u0;->g:Z

    .line 688
    .line 689
    if-nez v5, :cond_21

    .line 690
    .line 691
    iget v5, v15, LP/y0;->j:I

    .line 692
    .line 693
    and-int/lit8 v5, v5, -0xf

    .line 694
    .line 695
    or-int/lit8 v5, v5, 0x2

    .line 696
    .line 697
    iput v5, v15, LP/y0;->j:I

    .line 698
    .line 699
    :cond_21
    move-object v10, v15

    .line 700
    goto :goto_12

    .line 701
    :cond_22
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    const/4 v6, 0x0

    .line 705
    invoke-virtual {v2, v8, v6}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 706
    .line 707
    .line 708
    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LP/y0;

    .line 709
    .line 710
    .line 711
    move-result-object v7

    .line 712
    const/4 v8, 0x0

    .line 713
    iput-object v8, v7, LP/y0;->n:LP/o0;

    .line 714
    .line 715
    iput-boolean v6, v7, LP/y0;->o:Z

    .line 716
    .line 717
    iget v6, v7, LP/y0;->j:I

    .line 718
    .line 719
    and-int/lit8 v6, v6, -0x21

    .line 720
    .line 721
    iput v6, v7, LP/y0;->j:I

    .line 722
    .line 723
    invoke-virtual {v1, v7}, LP/o0;->i(LP/y0;)V

    .line 724
    .line 725
    .line 726
    :cond_23
    add-int/lit8 v10, v10, -0x1

    .line 727
    .line 728
    move/from16 v7, v24

    .line 729
    .line 730
    const/4 v8, 0x0

    .line 731
    goto :goto_10

    .line 732
    :cond_24
    move/from16 v24, v7

    .line 733
    .line 734
    const-wide/16 v25, 0x4

    .line 735
    .line 736
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 737
    .line 738
    .line 739
    move-result v5

    .line 740
    add-int/lit8 v5, v5, -0x1

    .line 741
    .line 742
    :goto_11
    if-ltz v5, :cond_26

    .line 743
    .line 744
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v6

    .line 748
    check-cast v6, LP/y0;

    .line 749
    .line 750
    iget-wide v7, v6, LP/y0;->e:J

    .line 751
    .line 752
    cmp-long v7, v7, v13

    .line 753
    .line 754
    if-nez v7, :cond_27

    .line 755
    .line 756
    invoke-virtual {v6}, LP/y0;->d()Z

    .line 757
    .line 758
    .line 759
    move-result v7

    .line 760
    if-nez v7, :cond_27

    .line 761
    .line 762
    iget v7, v6, LP/y0;->f:I

    .line 763
    .line 764
    if-nez v7, :cond_25

    .line 765
    .line 766
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-object v10, v6

    .line 770
    goto :goto_12

    .line 771
    :cond_25
    invoke-virtual {v1, v5}, LP/o0;->g(I)V

    .line 772
    .line 773
    .line 774
    :cond_26
    const/4 v10, 0x0

    .line 775
    goto :goto_12

    .line 776
    :cond_27
    add-int/lit8 v5, v5, -0x1

    .line 777
    .line 778
    goto :goto_11

    .line 779
    :goto_12
    if-eqz v10, :cond_29

    .line 780
    .line 781
    move/from16 v5, v24

    .line 782
    .line 783
    iput v5, v10, LP/y0;->c:I

    .line 784
    .line 785
    move/from16 v4, v17

    .line 786
    .line 787
    goto :goto_13

    .line 788
    :cond_28
    const-wide/16 v25, 0x4

    .line 789
    .line 790
    :cond_29
    :goto_13
    if-nez v10, :cond_2e

    .line 791
    .line 792
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->C0:Z

    .line 793
    .line 794
    if-eqz v5, :cond_2a

    .line 795
    .line 796
    new-instance v5, Ljava/lang/StringBuilder;

    .line 797
    .line 798
    const-string v6, "tryGetViewHolderForPositionByDeadline("

    .line 799
    .line 800
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    const-string v6, ") fetching from shared pool"

    .line 807
    .line 808
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v5

    .line 815
    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    .line 817
    .line 818
    :cond_2a
    invoke-virtual {v1}, LP/o0;->c()LP/n0;

    .line 819
    .line 820
    .line 821
    move-result-object v5

    .line 822
    iget-object v5, v5, LP/n0;->a:Landroid/util/SparseArray;

    .line 823
    .line 824
    const/4 v6, 0x0

    .line 825
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object v5

    .line 829
    check-cast v5, LP/m0;

    .line 830
    .line 831
    if-eqz v5, :cond_2c

    .line 832
    .line 833
    iget-object v5, v5, LP/m0;->a:Ljava/util/ArrayList;

    .line 834
    .line 835
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 836
    .line 837
    .line 838
    move-result v6

    .line 839
    if-nez v6, :cond_2c

    .line 840
    .line 841
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 842
    .line 843
    .line 844
    move-result v6

    .line 845
    add-int/lit8 v6, v6, -0x1

    .line 846
    .line 847
    :goto_14
    if-ltz v6, :cond_2c

    .line 848
    .line 849
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v7

    .line 853
    check-cast v7, LP/y0;

    .line 854
    .line 855
    invoke-virtual {v7}, LP/y0;->d()Z

    .line 856
    .line 857
    .line 858
    move-result v7

    .line 859
    if-nez v7, :cond_2b

    .line 860
    .line 861
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object v5

    .line 865
    check-cast v5, LP/y0;

    .line 866
    .line 867
    goto :goto_15

    .line 868
    :cond_2b
    add-int/lit8 v6, v6, -0x1

    .line 869
    .line 870
    goto :goto_14

    .line 871
    :cond_2c
    const/4 v5, 0x0

    .line 872
    :goto_15
    if-eqz v5, :cond_2d

    .line 873
    .line 874
    invoke-virtual {v5}, LP/y0;->m()V

    .line 875
    .line 876
    .line 877
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    .line 878
    .line 879
    :cond_2d
    move-object v10, v5

    .line 880
    :cond_2e
    if-nez v10, :cond_37

    .line 881
    .line 882
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 883
    .line 884
    .line 885
    move-result-wide v5

    .line 886
    cmp-long v7, p2, v20

    .line 887
    .line 888
    if-eqz v7, :cond_31

    .line 889
    .line 890
    iget-object v7, v1, LP/o0;->g:LP/n0;

    .line 891
    .line 892
    const/4 v8, 0x0

    .line 893
    invoke-virtual {v7, v8}, LP/n0;->a(I)LP/m0;

    .line 894
    .line 895
    .line 896
    move-result-object v7

    .line 897
    iget-wide v7, v7, LP/m0;->c:J

    .line 898
    .line 899
    cmp-long v9, v7, v18

    .line 900
    .line 901
    if-eqz v9, :cond_30

    .line 902
    .line 903
    add-long/2addr v7, v5

    .line 904
    cmp-long v7, v7, p2

    .line 905
    .line 906
    if-gez v7, :cond_2f

    .line 907
    .line 908
    goto :goto_16

    .line 909
    :cond_2f
    const/4 v7, 0x0

    .line 910
    goto :goto_17

    .line 911
    :cond_30
    :goto_16
    move/from16 v7, v17

    .line 912
    .line 913
    :goto_17
    if-nez v7, :cond_31

    .line 914
    .line 915
    const/16 v16, 0x0

    .line 916
    .line 917
    return-object v16

    .line 918
    :cond_31
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->n:LP/W;

    .line 919
    .line 920
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 921
    .line 922
    .line 923
    :try_start_0
    const-string v8, "RV CreateView"

    .line 924
    .line 925
    invoke-static {v8}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v7, v2}, LP/W;->f(Landroid/view/ViewGroup;)LP/y0;

    .line 929
    .line 930
    .line 931
    move-result-object v10

    .line 932
    iget-object v7, v10, LP/y0;->a:Landroid/view/View;

    .line 933
    .line 934
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 935
    .line 936
    .line 937
    move-result-object v8

    .line 938
    if-nez v8, :cond_34

    .line 939
    .line 940
    const/4 v8, 0x0

    .line 941
    iput v8, v10, LP/y0;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    .line 943
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 944
    .line 945
    .line 946
    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 947
    .line 948
    if-eqz v8, :cond_32

    .line 949
    .line 950
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 951
    .line 952
    .line 953
    move-result-object v7

    .line 954
    if-eqz v7, :cond_32

    .line 955
    .line 956
    new-instance v8, Ljava/lang/ref/WeakReference;

    .line 957
    .line 958
    invoke-direct {v8, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 959
    .line 960
    .line 961
    iput-object v8, v10, LP/y0;->b:Ljava/lang/ref/WeakReference;

    .line 962
    .line 963
    :cond_32
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 964
    .line 965
    .line 966
    move-result-wide v7

    .line 967
    iget-object v9, v1, LP/o0;->g:LP/n0;

    .line 968
    .line 969
    sub-long/2addr v7, v5

    .line 970
    const/4 v6, 0x0

    .line 971
    invoke-virtual {v9, v6}, LP/n0;->a(I)LP/m0;

    .line 972
    .line 973
    .line 974
    move-result-object v5

    .line 975
    iget-wide v13, v5, LP/m0;->c:J

    .line 976
    .line 977
    cmp-long v6, v13, v18

    .line 978
    .line 979
    if-nez v6, :cond_33

    .line 980
    .line 981
    goto :goto_18

    .line 982
    :cond_33
    div-long v13, v13, v25

    .line 983
    .line 984
    mul-long v13, v13, v22

    .line 985
    .line 986
    div-long v7, v7, v25

    .line 987
    .line 988
    add-long/2addr v7, v13

    .line 989
    :goto_18
    iput-wide v7, v5, LP/m0;->c:J

    .line 990
    .line 991
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->C0:Z

    .line 992
    .line 993
    if-eqz v5, :cond_37

    .line 994
    .line 995
    const-string v5, "tryGetViewHolderForPositionByDeadline created new ViewHolder"

    .line 996
    .line 997
    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    .line 999
    .line 1000
    goto :goto_1a

    .line 1001
    :catchall_0
    move-exception v0

    .line 1002
    goto :goto_19

    .line 1003
    :cond_34
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1004
    .line 1005
    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    .line 1006
    .line 1007
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1011
    :goto_19
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 1012
    .line 1013
    .line 1014
    throw v0

    .line 1015
    :cond_35
    move v5, v7

    .line 1016
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    .line 1017
    .line 1018
    const-string v6, "(offset:"

    .line 1019
    .line 1020
    const-string v7, ").state:"

    .line 1021
    .line 1022
    const-string v8, "Inconsistency detected. Invalid item position "

    .line 1023
    .line 1024
    invoke-static {v8, v0, v5, v6, v7}, LE/b;->p(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    invoke-virtual {v3}, LP/u0;->b()I

    .line 1029
    .line 1030
    .line 1031
    move-result v3

    .line 1032
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v2

    .line 1039
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v0

    .line 1046
    invoke-direct {v4, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1047
    .line 1048
    .line 1049
    throw v4

    .line 1050
    :cond_36
    const-wide/16 v22, 0x3

    .line 1051
    .line 1052
    const-wide/16 v25, 0x4

    .line 1053
    .line 1054
    :cond_37
    :goto_1a
    iget-object v5, v10, LP/y0;->a:Landroid/view/View;

    .line 1055
    .line 1056
    if-eqz v4, :cond_39

    .line 1057
    .line 1058
    iget-boolean v6, v3, LP/u0;->g:Z

    .line 1059
    .line 1060
    if-nez v6, :cond_39

    .line 1061
    .line 1062
    iget v6, v10, LP/y0;->j:I

    .line 1063
    .line 1064
    and-int/lit16 v7, v6, 0x2000

    .line 1065
    .line 1066
    if-eqz v7, :cond_38

    .line 1067
    .line 1068
    move/from16 v7, v17

    .line 1069
    .line 1070
    goto :goto_1b

    .line 1071
    :cond_38
    const/4 v7, 0x0

    .line 1072
    :goto_1b
    if-eqz v7, :cond_39

    .line 1073
    .line 1074
    and-int/lit16 v6, v6, -0x2001

    .line 1075
    .line 1076
    iput v6, v10, LP/y0;->j:I

    .line 1077
    .line 1078
    iget-boolean v6, v3, LP/u0;->j:Z

    .line 1079
    .line 1080
    if-eqz v6, :cond_39

    .line 1081
    .line 1082
    invoke-static {v10}, LP/c0;->b(LP/y0;)V

    .line 1083
    .line 1084
    .line 1085
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->N:LP/c0;

    .line 1086
    .line 1087
    invoke-virtual {v10}, LP/y0;->c()Ljava/util/List;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1091
    .line 1092
    .line 1093
    new-instance v6, LP/b0;

    .line 1094
    .line 1095
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v6, v10}, LP/b0;->a(LP/y0;)V

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v2, v10, v6}, Landroidx/recyclerview/widget/RecyclerView;->X(LP/y0;LP/b0;)V

    .line 1102
    .line 1103
    .line 1104
    :cond_39
    iget-boolean v6, v3, LP/u0;->g:Z

    .line 1105
    .line 1106
    if-eqz v6, :cond_3a

    .line 1107
    .line 1108
    invoke-virtual {v10}, LP/y0;->e()Z

    .line 1109
    .line 1110
    .line 1111
    move-result v6

    .line 1112
    if-eqz v6, :cond_3a

    .line 1113
    .line 1114
    iput v0, v10, LP/y0;->g:I

    .line 1115
    .line 1116
    goto :goto_1d

    .line 1117
    :cond_3a
    invoke-virtual {v10}, LP/y0;->e()Z

    .line 1118
    .line 1119
    .line 1120
    move-result v6

    .line 1121
    if-eqz v6, :cond_3d

    .line 1122
    .line 1123
    iget v6, v10, LP/y0;->j:I

    .line 1124
    .line 1125
    and-int/lit8 v6, v6, 0x2

    .line 1126
    .line 1127
    if-eqz v6, :cond_3b

    .line 1128
    .line 1129
    move/from16 v6, v17

    .line 1130
    .line 1131
    goto :goto_1c

    .line 1132
    :cond_3b
    const/4 v6, 0x0

    .line 1133
    :goto_1c
    if-nez v6, :cond_3d

    .line 1134
    .line 1135
    invoke-virtual {v10}, LP/y0;->f()Z

    .line 1136
    .line 1137
    .line 1138
    move-result v6

    .line 1139
    if-eqz v6, :cond_3c

    .line 1140
    .line 1141
    goto :goto_1e

    .line 1142
    :cond_3c
    :goto_1d
    move/from16 v9, v17

    .line 1143
    .line 1144
    const/4 v6, 0x0

    .line 1145
    const/4 v8, 0x0

    .line 1146
    goto/16 :goto_28

    .line 1147
    .line 1148
    :cond_3d
    :goto_1e
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    .line 1149
    .line 1150
    if-eqz v6, :cond_3f

    .line 1151
    .line 1152
    invoke-virtual {v10}, LP/y0;->h()Z

    .line 1153
    .line 1154
    .line 1155
    move-result v6

    .line 1156
    if-nez v6, :cond_3e

    .line 1157
    .line 1158
    goto :goto_1f

    .line 1159
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1160
    .line 1161
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1162
    .line 1163
    const-string v4, "Removed holder should be bound and it should come here only in pre-layout. Holder: "

    .line 1164
    .line 1165
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    invoke-static {v2, v3}, LE/b;->k(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v2

    .line 1175
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1176
    .line 1177
    .line 1178
    throw v0

    .line 1179
    :cond_3f
    :goto_1f
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->f:LP/b;

    .line 1180
    .line 1181
    const/4 v8, 0x0

    .line 1182
    invoke-virtual {v6, v0, v8}, LP/b;->f(II)I

    .line 1183
    .line 1184
    .line 1185
    move-result v6

    .line 1186
    const/4 v7, 0x0

    .line 1187
    iput-object v7, v10, LP/y0;->s:LP/W;

    .line 1188
    .line 1189
    iput-object v2, v10, LP/y0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1190
    .line 1191
    iget v7, v10, LP/y0;->f:I

    .line 1192
    .line 1193
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1194
    .line 1195
    .line 1196
    move-result-wide v11

    .line 1197
    cmp-long v9, p2, v20

    .line 1198
    .line 1199
    if-eqz v9, :cond_41

    .line 1200
    .line 1201
    iget-object v9, v1, LP/o0;->g:LP/n0;

    .line 1202
    .line 1203
    invoke-virtual {v9, v7}, LP/n0;->a(I)LP/m0;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v7

    .line 1207
    iget-wide v13, v7, LP/m0;->d:J

    .line 1208
    .line 1209
    cmp-long v7, v13, v18

    .line 1210
    .line 1211
    if-eqz v7, :cond_41

    .line 1212
    .line 1213
    add-long/2addr v13, v11

    .line 1214
    cmp-long v7, v13, p2

    .line 1215
    .line 1216
    if-gez v7, :cond_40

    .line 1217
    .line 1218
    goto :goto_20

    .line 1219
    :cond_40
    move v6, v8

    .line 1220
    move/from16 v9, v17

    .line 1221
    .line 1222
    goto/16 :goto_28

    .line 1223
    .line 1224
    :cond_41
    :goto_20
    invoke-virtual {v10}, LP/y0;->j()Z

    .line 1225
    .line 1226
    .line 1227
    move-result v7

    .line 1228
    if-eqz v7, :cond_42

    .line 1229
    .line 1230
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1231
    .line 1232
    .line 1233
    move-result v7

    .line 1234
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v9

    .line 1238
    invoke-static {v2, v5, v7, v9}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1239
    .line 1240
    .line 1241
    move/from16 v7, v17

    .line 1242
    .line 1243
    goto :goto_21

    .line 1244
    :cond_42
    move v7, v8

    .line 1245
    :goto_21
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->n:LP/W;

    .line 1246
    .line 1247
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1248
    .line 1249
    .line 1250
    iget-object v13, v10, LP/y0;->s:LP/W;

    .line 1251
    .line 1252
    if-nez v13, :cond_43

    .line 1253
    .line 1254
    move/from16 v13, v17

    .line 1255
    .line 1256
    goto :goto_22

    .line 1257
    :cond_43
    move v13, v8

    .line 1258
    :goto_22
    if-eqz v13, :cond_45

    .line 1259
    .line 1260
    iput v6, v10, LP/y0;->c:I

    .line 1261
    .line 1262
    iget-boolean v14, v9, LP/W;->b:Z

    .line 1263
    .line 1264
    if-eqz v14, :cond_44

    .line 1265
    .line 1266
    invoke-virtual {v9, v6}, LP/W;->b(I)J

    .line 1267
    .line 1268
    .line 1269
    move-result-wide v14

    .line 1270
    iput-wide v14, v10, LP/y0;->e:J

    .line 1271
    .line 1272
    :cond_44
    iget v14, v10, LP/y0;->j:I

    .line 1273
    .line 1274
    and-int/lit16 v14, v14, -0x208

    .line 1275
    .line 1276
    or-int/lit8 v14, v14, 0x1

    .line 1277
    .line 1278
    iput v14, v10, LP/y0;->j:I

    .line 1279
    .line 1280
    const-string v14, "RV OnBindView"

    .line 1281
    .line 1282
    invoke-static {v14}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    :cond_45
    iput-object v9, v10, LP/y0;->s:LP/W;

    .line 1286
    .line 1287
    sget-boolean v14, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    .line 1288
    .line 1289
    if-eqz v14, :cond_49

    .line 1290
    .line 1291
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v14

    .line 1295
    if-nez v14, :cond_47

    .line 1296
    .line 1297
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    .line 1298
    .line 1299
    .line 1300
    move-result v14

    .line 1301
    invoke-virtual {v10}, LP/y0;->j()Z

    .line 1302
    .line 1303
    .line 1304
    move-result v15

    .line 1305
    if-ne v14, v15, :cond_46

    .line 1306
    .line 1307
    goto :goto_23

    .line 1308
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1309
    .line 1310
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    const-string v3, "Temp-detached state out of sync with reality. holder.isTmpDetached(): "

    .line 1313
    .line 1314
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v10}, LP/y0;->j()Z

    .line 1318
    .line 1319
    .line 1320
    move-result v3

    .line 1321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    .line 1324
    const-string v3, ", attached to window: "

    .line 1325
    .line 1326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    .line 1328
    .line 1329
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    .line 1330
    .line 1331
    .line 1332
    move-result v3

    .line 1333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1334
    .line 1335
    .line 1336
    const-string v3, ", holder: "

    .line 1337
    .line 1338
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v2

    .line 1348
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1349
    .line 1350
    .line 1351
    throw v0

    .line 1352
    :cond_47
    :goto_23
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v14

    .line 1356
    if-nez v14, :cond_49

    .line 1357
    .line 1358
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    .line 1359
    .line 1360
    .line 1361
    move-result v14

    .line 1362
    if-nez v14, :cond_48

    .line 1363
    .line 1364
    goto :goto_24

    .line 1365
    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1366
    .line 1367
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1368
    .line 1369
    const-string v3, "Attempting to bind attached holder with no parent (AKA temp detached): "

    .line 1370
    .line 1371
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v2

    .line 1381
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1382
    .line 1383
    .line 1384
    throw v0

    .line 1385
    :cond_49
    :goto_24
    invoke-virtual {v10}, LP/y0;->c()Ljava/util/List;

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v9, v10, v6}, LP/W;->e(LP/y0;I)V

    .line 1389
    .line 1390
    .line 1391
    if-eqz v13, :cond_4c

    .line 1392
    .line 1393
    iget-object v6, v10, LP/y0;->k:Ljava/util/ArrayList;

    .line 1394
    .line 1395
    if-eqz v6, :cond_4a

    .line 1396
    .line 1397
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1398
    .line 1399
    .line 1400
    :cond_4a
    iget v6, v10, LP/y0;->j:I

    .line 1401
    .line 1402
    and-int/lit16 v6, v6, -0x401

    .line 1403
    .line 1404
    iput v6, v10, LP/y0;->j:I

    .line 1405
    .line 1406
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v6

    .line 1410
    instance-of v9, v6, LP/h0;

    .line 1411
    .line 1412
    if-eqz v9, :cond_4b

    .line 1413
    .line 1414
    check-cast v6, LP/h0;

    .line 1415
    .line 1416
    move/from16 v9, v17

    .line 1417
    .line 1418
    iput-boolean v9, v6, LP/h0;->c:Z

    .line 1419
    .line 1420
    :cond_4b
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 1421
    .line 1422
    .line 1423
    :cond_4c
    if-eqz v7, :cond_4d

    .line 1424
    .line 1425
    invoke-static {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    .line 1426
    .line 1427
    .line 1428
    :cond_4d
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1429
    .line 1430
    .line 1431
    move-result-wide v6

    .line 1432
    iget-object v9, v1, LP/o0;->g:LP/n0;

    .line 1433
    .line 1434
    iget v13, v10, LP/y0;->f:I

    .line 1435
    .line 1436
    sub-long/2addr v6, v11

    .line 1437
    invoke-virtual {v9, v13}, LP/n0;->a(I)LP/m0;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v9

    .line 1441
    iget-wide v11, v9, LP/m0;->d:J

    .line 1442
    .line 1443
    cmp-long v13, v11, v18

    .line 1444
    .line 1445
    if-nez v13, :cond_4e

    .line 1446
    .line 1447
    goto :goto_25

    .line 1448
    :cond_4e
    div-long v11, v11, v25

    .line 1449
    .line 1450
    mul-long v11, v11, v22

    .line 1451
    .line 1452
    div-long v6, v6, v25

    .line 1453
    .line 1454
    add-long/2addr v6, v11

    .line 1455
    :goto_25
    iput-wide v6, v9, LP/m0;->d:J

    .line 1456
    .line 1457
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->C:Landroid/view/accessibility/AccessibilityManager;

    .line 1458
    .line 1459
    if-eqz v6, :cond_4f

    .line 1460
    .line 1461
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 1462
    .line 1463
    .line 1464
    move-result v6

    .line 1465
    if-eqz v6, :cond_4f

    .line 1466
    .line 1467
    const/4 v6, 0x1

    .line 1468
    goto :goto_26

    .line 1469
    :cond_4f
    move v6, v8

    .line 1470
    :goto_26
    if-eqz v6, :cond_53

    .line 1471
    .line 1472
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    .line 1473
    .line 1474
    .line 1475
    move-result v6

    .line 1476
    const/4 v9, 0x1

    .line 1477
    if-nez v6, :cond_50

    .line 1478
    .line 1479
    invoke-static {v5, v9}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1480
    .line 1481
    .line 1482
    :cond_50
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->p0:LP/A0;

    .line 1483
    .line 1484
    if-nez v6, :cond_51

    .line 1485
    .line 1486
    goto :goto_27

    .line 1487
    :cond_51
    iget-object v6, v6, LP/A0;->b:LP/z0;

    .line 1488
    .line 1489
    if-eqz v6, :cond_52

    .line 1490
    .line 1491
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegate(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v7

    .line 1495
    if-eqz v7, :cond_52

    .line 1496
    .line 1497
    if-eq v7, v6, :cond_52

    .line 1498
    .line 1499
    iget-object v11, v6, LP/z0;->b:Ljava/util/WeakHashMap;

    .line 1500
    .line 1501
    invoke-virtual {v11, v5, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    .line 1503
    .line 1504
    :cond_52
    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 1505
    .line 1506
    .line 1507
    goto :goto_27

    .line 1508
    :cond_53
    const/4 v9, 0x1

    .line 1509
    :goto_27
    iget-boolean v3, v3, LP/u0;->g:Z

    .line 1510
    .line 1511
    if-eqz v3, :cond_54

    .line 1512
    .line 1513
    iput v0, v10, LP/y0;->g:I

    .line 1514
    .line 1515
    :cond_54
    move v6, v9

    .line 1516
    :goto_28
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v0

    .line 1520
    if-nez v0, :cond_55

    .line 1521
    .line 1522
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v0

    .line 1526
    check-cast v0, LP/h0;

    .line 1527
    .line 1528
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1529
    .line 1530
    .line 1531
    goto :goto_29

    .line 1532
    :cond_55
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 1533
    .line 1534
    .line 1535
    move-result v3

    .line 1536
    if-nez v3, :cond_56

    .line 1537
    .line 1538
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v0

    .line 1542
    check-cast v0, LP/h0;

    .line 1543
    .line 1544
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1545
    .line 1546
    .line 1547
    goto :goto_29

    .line 1548
    :cond_56
    check-cast v0, LP/h0;

    .line 1549
    .line 1550
    :goto_29
    iput-object v10, v0, LP/h0;->a:LP/y0;

    .line 1551
    .line 1552
    if-eqz v4, :cond_57

    .line 1553
    .line 1554
    if-eqz v6, :cond_57

    .line 1555
    .line 1556
    move v7, v9

    .line 1557
    goto :goto_2a

    .line 1558
    :cond_57
    move v7, v8

    .line 1559
    :goto_2a
    iput-boolean v7, v0, LP/h0;->d:Z

    .line 1560
    .line 1561
    return-object v10

    .line 1562
    :cond_58
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    .line 1563
    .line 1564
    const-string v5, "("

    .line 1565
    .line 1566
    const-string v6, "). Item count:"

    .line 1567
    .line 1568
    const-string v7, "Invalid item position "

    .line 1569
    .line 1570
    invoke-static {v7, v0, v0, v5, v6}, LE/b;->p(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v0

    .line 1574
    invoke-virtual {v3}, LP/u0;->b()I

    .line 1575
    .line 1576
    .line 1577
    move-result v3

    .line 1578
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1579
    .line 1580
    .line 1581
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v2

    .line 1585
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    .line 1587
    .line 1588
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v0

    .line 1592
    invoke-direct {v4, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1593
    .line 1594
    .line 1595
    throw v4
.end method

.method public final l(LP/y0;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, LP/y0;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LP/o0;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, LP/o0;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p1, LP/y0;->n:LP/o0;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p1, LP/y0;->o:Z

    .line 21
    .line 22
    iget v0, p1, LP/y0;->j:I

    .line 23
    .line 24
    and-int/lit8 v0, v0, -0x21

    .line 25
    .line 26
    iput v0, p1, LP/y0;->j:I

    .line 27
    .line 28
    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, LP/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:LP/g0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, v0, LP/g0;->j:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, LP/o0;->e:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    iput v1, p0, LP/o0;->f:I

    .line 15
    .line 16
    iget-object v0, p0, LP/o0;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    :goto_1
    if-ltz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v3, p0, LP/o0;->f:I

    .line 31
    .line 32
    if-le v2, v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v1}, LP/o0;->g(I)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    return-void
.end method
