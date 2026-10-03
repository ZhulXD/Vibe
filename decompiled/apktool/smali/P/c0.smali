.class public abstract LP/c0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public a:LP/V;

.field public b:Ljava/util/ArrayList;

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public static b(LP/y0;)V
    .locals 2

    .line 1
    iget v0, p0, LP/y0;->j:I

    .line 2
    .line 3
    invoke-virtual {p0}, LP/y0;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    and-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, LP/y0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->H(LP/y0;)I

    .line 20
    .line 21
    .line 22
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a(LP/y0;LP/y0;LP/b0;LP/b0;)Z
.end method

.method public final c(LP/y0;)V
    .locals 10

    .line 1
    iget-object v0, p0, LP/c0;->a:LP/V;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v0, v0, LP/V;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v1}, LP/y0;->n(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p1, LP/y0;->a:Landroid/view/View;

    .line 12
    .line 13
    iget-object v3, p1, LP/y0;->h:LP/y0;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget-object v3, p1, LP/y0;->i:LP/y0;

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    iput-object v4, p1, LP/y0;->h:LP/y0;

    .line 23
    .line 24
    :cond_0
    iput-object v4, p1, LP/y0;->i:LP/y0;

    .line 25
    .line 26
    iget v3, p1, LP/y0;->j:I

    .line 27
    .line 28
    and-int/lit8 v3, v3, 0x10

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->d:LP/o0;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->j0()V

    .line 37
    .line 38
    .line 39
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->g:LP/i;

    .line 40
    .line 41
    iget-object v5, v4, LP/i;->b:LP/h;

    .line 42
    .line 43
    iget-object v6, v4, LP/i;->a:LP/V;

    .line 44
    .line 45
    iget v7, v4, LP/i;->d:I

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    if-ne v7, v1, :cond_3

    .line 49
    .line 50
    iget-object v1, v4, LP/i;->e:Landroid/view/View;

    .line 51
    .line 52
    if-ne v1, v2, :cond_2

    .line 53
    .line 54
    :goto_0
    move v1, v8

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v0, "Cannot call removeViewIfHidden within removeView(At) for a different view"

    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_3
    const/4 v9, 0x2

    .line 65
    if-eq v7, v9, :cond_7

    .line 66
    .line 67
    :try_start_0
    iput v9, v4, LP/i;->d:I

    .line 68
    .line 69
    iget-object v7, v6, LP/V;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    const/4 v9, -0x1

    .line 76
    if-ne v7, v9, :cond_4

    .line 77
    .line 78
    invoke-virtual {v4, v2}, LP/i;->j(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    :goto_1
    iput v8, v4, LP/i;->d:I

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    goto :goto_3

    .line 86
    :cond_4
    :try_start_1
    invoke-virtual {v5, v7}, LP/h;->d(I)Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eqz v9, :cond_5

    .line 91
    .line 92
    invoke-virtual {v5, v7}, LP/h;->f(I)Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v2}, LP/i;->j(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v7}, LP/V;->h(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    iput v8, v4, LP/i;->d:I

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :goto_2
    if-eqz v1, :cond_6

    .line 106
    .line 107
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LP/y0;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v3, v4}, LP/o0;->l(LP/y0;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v4}, LP/o0;->i(LP/y0;)V

    .line 115
    .line 116
    .line 117
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->C0:Z

    .line 118
    .line 119
    if-eqz v3, :cond_6

    .line 120
    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v4, "after removing animated view: "

    .line 124
    .line 125
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v4, ", "

    .line 132
    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    const-string v4, "RecyclerView"

    .line 144
    .line 145
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :cond_6
    xor-int/lit8 v3, v1, 0x1

    .line 149
    .line 150
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->k0(Z)V

    .line 151
    .line 152
    .line 153
    if-nez v1, :cond_8

    .line 154
    .line 155
    invoke-virtual {p1}, LP/y0;->j()Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_8

    .line 160
    .line 161
    invoke-virtual {v0, v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :goto_3
    iput v8, v4, LP/i;->d:I

    .line 166
    .line 167
    throw p1

    .line 168
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 169
    .line 170
    const-string v0, "Cannot call removeViewIfHidden within removeViewIfHidden"

    .line 171
    .line 172
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1

    .line 176
    :cond_8
    :goto_4
    return-void
.end method

.method public abstract d(LP/y0;)V
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method
