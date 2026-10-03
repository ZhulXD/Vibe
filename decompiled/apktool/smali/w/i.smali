.class public final Lw/i;
.super Lw/m;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# virtual methods
.method public final a(Lw/d;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lw/m;->b:Lv/d;

    .line 2
    .line 3
    check-cast p1, Lv/a;

    .line 4
    .line 5
    iget v0, p1, Lv/a;->f0:I

    .line 6
    .line 7
    iget-object v1, p0, Lw/m;->h:Lw/f;

    .line 8
    .line 9
    iget-object v2, v1, Lw/f;->l:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, -0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    move v7, v4

    .line 18
    move v6, v5

    .line 19
    :cond_0
    :goto_0
    if-ge v6, v3, :cond_3

    .line 20
    .line 21
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    add-int/lit8 v6, v6, 0x1

    .line 26
    .line 27
    check-cast v8, Lw/f;

    .line 28
    .line 29
    iget v8, v8, Lw/f;->g:I

    .line 30
    .line 31
    if-eq v7, v4, :cond_1

    .line 32
    .line 33
    if-ge v8, v7, :cond_2

    .line 34
    .line 35
    :cond_1
    move v7, v8

    .line 36
    :cond_2
    if-ge v5, v8, :cond_0

    .line 37
    .line 38
    move v5, v8

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    if-eqz v0, :cond_5

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    if-ne v0, v2, :cond_4

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    iget p1, p1, Lv/a;->h0:I

    .line 47
    .line 48
    add-int/2addr v5, p1

    .line 49
    invoke-virtual {v1, v5}, Lw/f;->d(I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_5
    :goto_1
    iget p1, p1, Lv/a;->h0:I

    .line 54
    .line 55
    add-int/2addr v7, p1

    .line 56
    invoke-virtual {v1, v7}, Lw/f;->d(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final d()V
    .locals 8

    .line 1
    iget-object v0, p0, Lw/m;->b:Lv/d;

    .line 2
    .line 3
    instance-of v1, v0, Lv/a;

    .line 4
    .line 5
    if-eqz v1, :cond_c

    .line 6
    .line 7
    iget-object v1, p0, Lw/m;->h:Lw/f;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v1, Lw/f;->b:Z

    .line 11
    .line 12
    iget-object v3, v1, Lw/f;->l:Ljava/util/ArrayList;

    .line 13
    .line 14
    check-cast v0, Lv/a;

    .line 15
    .line 16
    iget v4, v0, Lv/a;->f0:I

    .line 17
    .line 18
    iget-boolean v5, v0, Lv/a;->g0:Z

    .line 19
    .line 20
    const/16 v6, 0x8

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    if-eqz v4, :cond_9

    .line 24
    .line 25
    if-eq v4, v2, :cond_6

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq v4, v2, :cond_3

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    if-eq v4, v2, :cond_0

    .line 32
    .line 33
    goto/16 :goto_8

    .line 34
    .line 35
    :cond_0
    const/4 v2, 0x7

    .line 36
    iput v2, v1, Lw/f;->e:I

    .line 37
    .line 38
    :goto_0
    iget v2, v0, Lv/i;->e0:I

    .line 39
    .line 40
    if-ge v7, v2, :cond_2

    .line 41
    .line 42
    iget-object v2, v0, Lv/i;->d0:[Lv/d;

    .line 43
    .line 44
    aget-object v2, v2, v7

    .line 45
    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    iget v4, v2, Lv/d;->V:I

    .line 49
    .line 50
    if-ne v4, v6, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object v2, v2, Lv/d;->e:Lw/l;

    .line 54
    .line 55
    iget-object v2, v2, Lw/m;->i:Lw/f;

    .line 56
    .line 57
    iget-object v4, v2, Lw/f;->k:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lw/m;->b:Lv/d;

    .line 69
    .line 70
    iget-object v0, v0, Lv/d;->e:Lw/l;

    .line 71
    .line 72
    iget-object v0, v0, Lw/m;->h:Lw/f;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lw/i;->m(Lw/f;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lw/m;->b:Lv/d;

    .line 78
    .line 79
    iget-object v0, v0, Lv/d;->e:Lw/l;

    .line 80
    .line 81
    iget-object v0, v0, Lw/m;->i:Lw/f;

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lw/i;->m(Lw/f;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    const/4 v2, 0x6

    .line 88
    iput v2, v1, Lw/f;->e:I

    .line 89
    .line 90
    :goto_2
    iget v2, v0, Lv/i;->e0:I

    .line 91
    .line 92
    if-ge v7, v2, :cond_5

    .line 93
    .line 94
    iget-object v2, v0, Lv/i;->d0:[Lv/d;

    .line 95
    .line 96
    aget-object v2, v2, v7

    .line 97
    .line 98
    if-nez v5, :cond_4

    .line 99
    .line 100
    iget v4, v2, Lv/d;->V:I

    .line 101
    .line 102
    if-ne v4, v6, :cond_4

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_4
    iget-object v2, v2, Lv/d;->e:Lw/l;

    .line 106
    .line 107
    iget-object v2, v2, Lw/m;->h:Lw/f;

    .line 108
    .line 109
    iget-object v4, v2, Lw/f;->k:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    iget-object v0, p0, Lw/m;->b:Lv/d;

    .line 121
    .line 122
    iget-object v0, v0, Lv/d;->e:Lw/l;

    .line 123
    .line 124
    iget-object v0, v0, Lw/m;->h:Lw/f;

    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lw/i;->m(Lw/f;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lw/m;->b:Lv/d;

    .line 130
    .line 131
    iget-object v0, v0, Lv/d;->e:Lw/l;

    .line 132
    .line 133
    iget-object v0, v0, Lw/m;->i:Lw/f;

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Lw/i;->m(Lw/f;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_6
    const/4 v2, 0x5

    .line 140
    iput v2, v1, Lw/f;->e:I

    .line 141
    .line 142
    :goto_4
    iget v2, v0, Lv/i;->e0:I

    .line 143
    .line 144
    if-ge v7, v2, :cond_8

    .line 145
    .line 146
    iget-object v2, v0, Lv/i;->d0:[Lv/d;

    .line 147
    .line 148
    aget-object v2, v2, v7

    .line 149
    .line 150
    if-nez v5, :cond_7

    .line 151
    .line 152
    iget v4, v2, Lv/d;->V:I

    .line 153
    .line 154
    if-ne v4, v6, :cond_7

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_7
    iget-object v2, v2, Lv/d;->d:Lw/j;

    .line 158
    .line 159
    iget-object v2, v2, Lw/m;->i:Lw/f;

    .line 160
    .line 161
    iget-object v4, v2, Lw/f;->k:Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_8
    iget-object v0, p0, Lw/m;->b:Lv/d;

    .line 173
    .line 174
    iget-object v0, v0, Lv/d;->d:Lw/j;

    .line 175
    .line 176
    iget-object v0, v0, Lw/m;->h:Lw/f;

    .line 177
    .line 178
    invoke-virtual {p0, v0}, Lw/i;->m(Lw/f;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lw/m;->b:Lv/d;

    .line 182
    .line 183
    iget-object v0, v0, Lv/d;->d:Lw/j;

    .line 184
    .line 185
    iget-object v0, v0, Lw/m;->i:Lw/f;

    .line 186
    .line 187
    invoke-virtual {p0, v0}, Lw/i;->m(Lw/f;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_9
    const/4 v2, 0x4

    .line 192
    iput v2, v1, Lw/f;->e:I

    .line 193
    .line 194
    :goto_6
    iget v2, v0, Lv/i;->e0:I

    .line 195
    .line 196
    if-ge v7, v2, :cond_b

    .line 197
    .line 198
    iget-object v2, v0, Lv/i;->d0:[Lv/d;

    .line 199
    .line 200
    aget-object v2, v2, v7

    .line 201
    .line 202
    if-nez v5, :cond_a

    .line 203
    .line 204
    iget v4, v2, Lv/d;->V:I

    .line 205
    .line 206
    if-ne v4, v6, :cond_a

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_a
    iget-object v2, v2, Lv/d;->d:Lw/j;

    .line 210
    .line 211
    iget-object v2, v2, Lw/m;->h:Lw/f;

    .line 212
    .line 213
    iget-object v4, v2, Lw/f;->k:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_b
    iget-object v0, p0, Lw/m;->b:Lv/d;

    .line 225
    .line 226
    iget-object v0, v0, Lv/d;->d:Lw/j;

    .line 227
    .line 228
    iget-object v0, v0, Lw/m;->h:Lw/f;

    .line 229
    .line 230
    invoke-virtual {p0, v0}, Lw/i;->m(Lw/f;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lw/m;->b:Lv/d;

    .line 234
    .line 235
    iget-object v0, v0, Lv/d;->d:Lw/j;

    .line 236
    .line 237
    iget-object v0, v0, Lw/m;->i:Lw/f;

    .line 238
    .line 239
    invoke-virtual {p0, v0}, Lw/i;->m(Lw/f;)V

    .line 240
    .line 241
    .line 242
    :cond_c
    :goto_8
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lw/m;->b:Lv/d;

    .line 2
    .line 3
    instance-of v1, v0, Lv/a;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lv/a;

    .line 9
    .line 10
    iget v1, v1, Lv/a;->f0:I

    .line 11
    .line 12
    iget-object v2, p0, Lw/m;->h:Lw/f;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v1, v2, Lw/f;->g:I

    .line 21
    .line 22
    iput v1, v0, Lv/d;->O:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :goto_0
    iget v1, v2, Lw/f;->g:I

    .line 26
    .line 27
    iput v1, v0, Lv/d;->N:I

    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lw/m;->c:Lw/k;

    .line 3
    .line 4
    iget-object v0, p0, Lw/m;->h:Lw/f;

    .line 5
    .line 6
    invoke-virtual {v0}, Lw/f;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final m(Lw/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lw/m;->h:Lw/f;

    .line 2
    .line 3
    iget-object v1, v0, Lw/f;->k:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lw/f;->l:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
