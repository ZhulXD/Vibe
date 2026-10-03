.class public final Lw/e;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public a:Lv/e;

.field public b:Z

.field public c:Z

.field public d:Lv/e;

.field public e:Ljava/util/ArrayList;

.field public f:Lx/f;

.field public g:Lw/b;

.field public h:Ljava/util/ArrayList;


# virtual methods
.method public final a(Lw/f;ILjava/util/ArrayList;Lw/k;)V
    .locals 9

    .line 1
    iget-object p1, p1, Lw/f;->d:Lw/m;

    .line 2
    .line 3
    iget-object v0, p1, Lw/m;->c:Lw/k;

    .line 4
    .line 5
    iget-object v1, p1, Lw/m;->i:Lw/f;

    .line 6
    .line 7
    iget-object v2, p1, Lw/m;->h:Lw/f;

    .line 8
    .line 9
    if-nez v0, :cond_a

    .line 10
    .line 11
    iget-object v0, p0, Lw/e;->a:Lv/e;

    .line 12
    .line 13
    iget-object v3, v0, Lv/d;->d:Lw/j;

    .line 14
    .line 15
    if-eq p1, v3, :cond_a

    .line 16
    .line 17
    iget-object v0, v0, Lv/d;->e:Lw/l;

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_6

    .line 22
    .line 23
    :cond_0
    if-nez p4, :cond_1

    .line 24
    .line 25
    new-instance p4, Lw/k;

    .line 26
    .line 27
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p4, Lw/k;->a:Lw/m;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p4, Lw/k;->b:Ljava/util/ArrayList;

    .line 39
    .line 40
    iput-object p1, p4, Lw/k;->a:Lw/m;

    .line 41
    .line 42
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    iput-object p4, p1, Lw/m;->c:Lw/k;

    .line 46
    .line 47
    iget-object v0, p4, Lw/k;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object v0, v2, Lw/f;->k:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v4, 0x0

    .line 59
    move v5, v4

    .line 60
    :cond_2
    :goto_0
    if-ge v5, v3, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    check-cast v6, Lw/d;

    .line 69
    .line 70
    instance-of v7, v6, Lw/f;

    .line 71
    .line 72
    if-eqz v7, :cond_2

    .line 73
    .line 74
    check-cast v6, Lw/f;

    .line 75
    .line 76
    invoke-virtual {p0, v6, p2, p3, p4}, Lw/e;->a(Lw/f;ILjava/util/ArrayList;Lw/k;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    iget-object v0, v1, Lw/f;->k:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    move v5, v4

    .line 87
    :cond_4
    :goto_1
    if-ge v5, v3, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    check-cast v6, Lw/d;

    .line 96
    .line 97
    instance-of v7, v6, Lw/f;

    .line 98
    .line 99
    if-eqz v7, :cond_4

    .line 100
    .line 101
    check-cast v6, Lw/f;

    .line 102
    .line 103
    invoke-virtual {p0, v6, p2, p3, p4}, Lw/e;->a(Lw/f;ILjava/util/ArrayList;Lw/k;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    const/4 v0, 0x1

    .line 108
    if-ne p2, v0, :cond_7

    .line 109
    .line 110
    instance-of v3, p1, Lw/l;

    .line 111
    .line 112
    if-eqz v3, :cond_7

    .line 113
    .line 114
    move-object v3, p1

    .line 115
    check-cast v3, Lw/l;

    .line 116
    .line 117
    iget-object v3, v3, Lw/l;->k:Lw/f;

    .line 118
    .line 119
    iget-object v3, v3, Lw/f;->k:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    move v6, v4

    .line 126
    :cond_6
    :goto_2
    if-ge v6, v5, :cond_7

    .line 127
    .line 128
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    add-int/lit8 v6, v6, 0x1

    .line 133
    .line 134
    check-cast v7, Lw/d;

    .line 135
    .line 136
    instance-of v8, v7, Lw/f;

    .line 137
    .line 138
    if-eqz v8, :cond_6

    .line 139
    .line 140
    check-cast v7, Lw/f;

    .line 141
    .line 142
    invoke-virtual {p0, v7, p2, p3, p4}, Lw/e;->a(Lw/f;ILjava/util/ArrayList;Lw/k;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_7
    iget-object v2, v2, Lw/f;->l:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    move v5, v4

    .line 153
    :goto_3
    if-ge v5, v3, :cond_8

    .line 154
    .line 155
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    add-int/lit8 v5, v5, 0x1

    .line 160
    .line 161
    check-cast v6, Lw/f;

    .line 162
    .line 163
    invoke-virtual {p0, v6, p2, p3, p4}, Lw/e;->a(Lw/f;ILjava/util/ArrayList;Lw/k;)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_8
    iget-object v1, v1, Lw/f;->l:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    move v3, v4

    .line 174
    :goto_4
    if-ge v3, v2, :cond_9

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    add-int/lit8 v3, v3, 0x1

    .line 181
    .line 182
    check-cast v5, Lw/f;

    .line 183
    .line 184
    invoke-virtual {p0, v5, p2, p3, p4}, Lw/e;->a(Lw/f;ILjava/util/ArrayList;Lw/k;)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_9
    if-ne p2, v0, :cond_a

    .line 189
    .line 190
    instance-of v0, p1, Lw/l;

    .line 191
    .line 192
    if-eqz v0, :cond_a

    .line 193
    .line 194
    check-cast p1, Lw/l;

    .line 195
    .line 196
    iget-object p1, p1, Lw/l;->k:Lw/f;

    .line 197
    .line 198
    iget-object p1, p1, Lw/f;->l:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    :goto_5
    if-ge v4, v0, :cond_a

    .line 205
    .line 206
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    add-int/lit8 v4, v4, 0x1

    .line 211
    .line 212
    check-cast v1, Lw/f;

    .line 213
    .line 214
    invoke-virtual {p0, v1, p2, p3, p4}, Lw/e;->a(Lw/f;ILjava/util/ArrayList;Lw/k;)V

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_a
    :goto_6
    return-void
.end method

.method public final b(Lv/e;)V
    .locals 26

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Lv/e;->d0:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, v0, Lv/d;->c0:[I

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    move v5, v4

    .line 13
    :goto_0
    if-ge v5, v3, :cond_30

    .line 14
    .line 15
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    add-int/lit8 v5, v5, 0x1

    .line 20
    .line 21
    move-object v12, v6

    .line 22
    check-cast v12, Lv/d;

    .line 23
    .line 24
    iget-object v6, v12, Lv/d;->c0:[I

    .line 25
    .line 26
    iget-object v7, v12, Lv/d;->F:[Lv/c;

    .line 27
    .line 28
    iget-object v8, v12, Lv/d;->A:Lv/c;

    .line 29
    .line 30
    iget-object v9, v12, Lv/d;->y:Lv/c;

    .line 31
    .line 32
    iget-object v10, v12, Lv/d;->z:Lv/c;

    .line 33
    .line 34
    iget-object v11, v12, Lv/d;->x:Lv/c;

    .line 35
    .line 36
    iget-object v13, v12, Lv/d;->e:Lw/l;

    .line 37
    .line 38
    iget-object v14, v12, Lv/d;->d:Lw/j;

    .line 39
    .line 40
    aget v15, v6, v4

    .line 41
    .line 42
    move/from16 v16, v4

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    aget v6, v6, v4

    .line 46
    .line 47
    iget v4, v12, Lv/d;->V:I

    .line 48
    .line 49
    const/16 v0, 0x8

    .line 50
    .line 51
    if-ne v4, v0, :cond_0

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, v12, Lv/d;->a:Z

    .line 55
    .line 56
    move-object/from16 v0, p1

    .line 57
    .line 58
    move/from16 v4, v16

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget v0, v12, Lv/d;->o:F

    .line 62
    .line 63
    const/high16 v4, 0x3f800000    # 1.0f

    .line 64
    .line 65
    cmpg-float v18, v0, v4

    .line 66
    .line 67
    move/from16 v19, v4

    .line 68
    .line 69
    const/4 v4, 0x3

    .line 70
    move/from16 v20, v0

    .line 71
    .line 72
    const/4 v0, 0x2

    .line 73
    if-gez v18, :cond_1

    .line 74
    .line 75
    if-ne v15, v4, :cond_1

    .line 76
    .line 77
    iput v0, v12, Lv/d;->j:I

    .line 78
    .line 79
    :cond_1
    iget v0, v12, Lv/d;->r:F

    .line 80
    .line 81
    cmpg-float v21, v0, v19

    .line 82
    .line 83
    if-gez v21, :cond_2

    .line 84
    .line 85
    if-ne v6, v4, :cond_2

    .line 86
    .line 87
    const/4 v4, 0x2

    .line 88
    iput v4, v12, Lv/d;->k:I

    .line 89
    .line 90
    :cond_2
    iget v4, v12, Lv/d;->L:F

    .line 91
    .line 92
    const/16 v22, 0x0

    .line 93
    .line 94
    cmpl-float v4, v4, v22

    .line 95
    .line 96
    move/from16 v22, v0

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    if-lez v4, :cond_9

    .line 100
    .line 101
    const/4 v4, 0x3

    .line 102
    if-ne v15, v4, :cond_5

    .line 103
    .line 104
    const/4 v4, 0x2

    .line 105
    if-eq v6, v4, :cond_3

    .line 106
    .line 107
    if-ne v6, v0, :cond_4

    .line 108
    .line 109
    :cond_3
    const/4 v0, 0x3

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    const/4 v0, 0x3

    .line 112
    goto :goto_2

    .line 113
    :goto_1
    iput v0, v12, Lv/d;->j:I

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    move v0, v4

    .line 117
    const/4 v4, 0x2

    .line 118
    :goto_2
    if-ne v6, v0, :cond_7

    .line 119
    .line 120
    if-eq v15, v4, :cond_6

    .line 121
    .line 122
    const/4 v4, 0x1

    .line 123
    if-ne v15, v4, :cond_7

    .line 124
    .line 125
    :cond_6
    iput v0, v12, Lv/d;->k:I

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    if-ne v15, v0, :cond_a

    .line 129
    .line 130
    if-ne v6, v0, :cond_a

    .line 131
    .line 132
    iget v4, v12, Lv/d;->j:I

    .line 133
    .line 134
    if-nez v4, :cond_8

    .line 135
    .line 136
    iput v0, v12, Lv/d;->j:I

    .line 137
    .line 138
    :cond_8
    iget v4, v12, Lv/d;->k:I

    .line 139
    .line 140
    if-nez v4, :cond_a

    .line 141
    .line 142
    iput v0, v12, Lv/d;->k:I

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_9
    const/4 v0, 0x3

    .line 146
    :cond_a
    :goto_3
    if-ne v15, v0, :cond_c

    .line 147
    .line 148
    iget v0, v12, Lv/d;->j:I

    .line 149
    .line 150
    const/4 v4, 0x1

    .line 151
    if-ne v0, v4, :cond_c

    .line 152
    .line 153
    iget-object v0, v11, Lv/c;->d:Lv/c;

    .line 154
    .line 155
    if-eqz v0, :cond_b

    .line 156
    .line 157
    iget-object v0, v10, Lv/c;->d:Lv/c;

    .line 158
    .line 159
    if-nez v0, :cond_c

    .line 160
    .line 161
    :cond_b
    const/4 v15, 0x2

    .line 162
    :cond_c
    const/4 v0, 0x3

    .line 163
    if-ne v6, v0, :cond_e

    .line 164
    .line 165
    iget v0, v12, Lv/d;->k:I

    .line 166
    .line 167
    const/4 v4, 0x1

    .line 168
    if-ne v0, v4, :cond_e

    .line 169
    .line 170
    iget-object v0, v9, Lv/c;->d:Lv/c;

    .line 171
    .line 172
    if-eqz v0, :cond_d

    .line 173
    .line 174
    iget-object v0, v8, Lv/c;->d:Lv/c;

    .line 175
    .line 176
    if-nez v0, :cond_e

    .line 177
    .line 178
    :cond_d
    const/4 v6, 0x2

    .line 179
    :cond_e
    iput v15, v14, Lw/m;->d:I

    .line 180
    .line 181
    iget-object v0, v14, Lw/m;->e:Lw/g;

    .line 182
    .line 183
    iget v4, v12, Lv/d;->j:I

    .line 184
    .line 185
    iput v4, v14, Lw/m;->a:I

    .line 186
    .line 187
    iput v6, v13, Lw/m;->d:I

    .line 188
    .line 189
    iget-object v14, v13, Lw/m;->e:Lw/g;

    .line 190
    .line 191
    move-object/from16 v25, v1

    .line 192
    .line 193
    iget v1, v12, Lv/d;->k:I

    .line 194
    .line 195
    iput v1, v13, Lw/m;->a:I

    .line 196
    .line 197
    const/4 v13, 0x4

    .line 198
    if-eq v15, v13, :cond_f

    .line 199
    .line 200
    const/4 v13, 0x1

    .line 201
    if-eq v15, v13, :cond_f

    .line 202
    .line 203
    const/4 v13, 0x2

    .line 204
    if-ne v15, v13, :cond_11

    .line 205
    .line 206
    :cond_f
    const/4 v13, 0x4

    .line 207
    if-eq v6, v13, :cond_10

    .line 208
    .line 209
    const/4 v13, 0x1

    .line 210
    if-eq v6, v13, :cond_2d

    .line 211
    .line 212
    const/4 v13, 0x2

    .line 213
    if-ne v6, v13, :cond_11

    .line 214
    .line 215
    :cond_10
    move v7, v6

    .line 216
    const/16 v24, 0x1

    .line 217
    .line 218
    goto/16 :goto_f

    .line 219
    .line 220
    :cond_11
    const/high16 v23, 0x3f000000    # 0.5f

    .line 221
    .line 222
    const/4 v8, 0x3

    .line 223
    if-ne v15, v8, :cond_1d

    .line 224
    .line 225
    if-eq v6, v13, :cond_13

    .line 226
    .line 227
    const/4 v10, 0x1

    .line 228
    if-ne v6, v10, :cond_12

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_12
    move v9, v10

    .line 232
    move v10, v6

    .line 233
    move v6, v9

    .line 234
    move v9, v8

    .line 235
    move v8, v13

    .line 236
    goto/16 :goto_8

    .line 237
    .line 238
    :cond_13
    :goto_4
    if-ne v4, v8, :cond_16

    .line 239
    .line 240
    if-ne v6, v13, :cond_14

    .line 241
    .line 242
    const/4 v9, 0x0

    .line 243
    const/4 v11, 0x0

    .line 244
    move v10, v13

    .line 245
    move-object/from16 v7, p0

    .line 246
    .line 247
    move v8, v13

    .line 248
    invoke-virtual/range {v7 .. v12}, Lw/e;->f(IIIILv/d;)V

    .line 249
    .line 250
    .line 251
    :cond_14
    invoke-virtual {v12}, Lv/d;->i()I

    .line 252
    .line 253
    .line 254
    move-result v11

    .line 255
    int-to-float v1, v11

    .line 256
    iget v4, v12, Lv/d;->L:F

    .line 257
    .line 258
    mul-float/2addr v1, v4

    .line 259
    add-float v1, v1, v23

    .line 260
    .line 261
    float-to-int v9, v1

    .line 262
    const/16 v24, 0x1

    .line 263
    .line 264
    move/from16 v10, v24

    .line 265
    .line 266
    move-object/from16 v7, p0

    .line 267
    .line 268
    move/from16 v8, v24

    .line 269
    .line 270
    invoke-virtual/range {v7 .. v12}, Lw/e;->f(IIIILv/d;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v12}, Lv/d;->l()I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    invoke-virtual {v0, v1}, Lw/g;->d(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v12}, Lv/d;->i()I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    invoke-virtual {v14, v0}, Lw/g;->d(I)V

    .line 285
    .line 286
    .line 287
    const/4 v8, 0x1

    .line 288
    iput-boolean v8, v12, Lv/d;->a:Z

    .line 289
    .line 290
    :cond_15
    :goto_5
    move-object/from16 v0, p1

    .line 291
    .line 292
    move/from16 v4, v16

    .line 293
    .line 294
    move-object/from16 v1, v25

    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_16
    const/4 v8, 0x1

    .line 299
    const/4 v10, 0x1

    .line 300
    if-ne v4, v8, :cond_17

    .line 301
    .line 302
    const/4 v9, 0x0

    .line 303
    const/4 v11, 0x0

    .line 304
    move-object/from16 v7, p0

    .line 305
    .line 306
    move v10, v6

    .line 307
    move v8, v13

    .line 308
    invoke-virtual/range {v7 .. v12}, Lw/e;->f(IIIILv/d;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v12}, Lv/d;->l()I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    iput v1, v0, Lw/g;->m:I

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_17
    const/4 v8, 0x2

    .line 319
    if-ne v4, v8, :cond_1b

    .line 320
    .line 321
    aget v8, v2, v16

    .line 322
    .line 323
    if-eq v8, v10, :cond_1a

    .line 324
    .line 325
    const/4 v9, 0x4

    .line 326
    if-ne v8, v9, :cond_18

    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_18
    move v8, v10

    .line 330
    move v10, v6

    .line 331
    move v6, v8

    .line 332
    :cond_19
    move v8, v13

    .line 333
    :goto_6
    const/4 v9, 0x3

    .line 334
    goto :goto_8

    .line 335
    :cond_1a
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lv/d;->l()I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    int-to-float v1, v1

    .line 340
    mul-float v1, v1, v20

    .line 341
    .line 342
    add-float v1, v1, v23

    .line 343
    .line 344
    float-to-int v9, v1

    .line 345
    invoke-virtual {v12}, Lv/d;->i()I

    .line 346
    .line 347
    .line 348
    move-result v11

    .line 349
    move-object/from16 v7, p0

    .line 350
    .line 351
    move v8, v10

    .line 352
    move v10, v6

    .line 353
    invoke-virtual/range {v7 .. v12}, Lw/e;->f(IIIILv/d;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v12}, Lv/d;->l()I

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    invoke-virtual {v0, v1}, Lw/g;->d(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v12}, Lv/d;->i()I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    invoke-virtual {v14, v0}, Lw/g;->d(I)V

    .line 368
    .line 369
    .line 370
    const/4 v8, 0x1

    .line 371
    iput-boolean v8, v12, Lv/d;->a:Z

    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_1b
    move v8, v10

    .line 375
    move v10, v6

    .line 376
    move v6, v8

    .line 377
    const/4 v8, 0x1

    .line 378
    aget-object v9, v7, v16

    .line 379
    .line 380
    iget-object v9, v9, Lv/c;->d:Lv/c;

    .line 381
    .line 382
    if-eqz v9, :cond_1c

    .line 383
    .line 384
    aget-object v9, v7, v8

    .line 385
    .line 386
    iget-object v8, v9, Lv/c;->d:Lv/c;

    .line 387
    .line 388
    if-nez v8, :cond_19

    .line 389
    .line 390
    :cond_1c
    const/4 v9, 0x0

    .line 391
    const/4 v11, 0x0

    .line 392
    move-object/from16 v7, p0

    .line 393
    .line 394
    move v8, v13

    .line 395
    invoke-virtual/range {v7 .. v12}, Lw/e;->f(IIIILv/d;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v12}, Lv/d;->l()I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    invoke-virtual {v0, v1}, Lw/g;->d(I)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v12}, Lv/d;->i()I

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    invoke-virtual {v14, v0}, Lw/g;->d(I)V

    .line 410
    .line 411
    .line 412
    const/4 v4, 0x1

    .line 413
    iput-boolean v4, v12, Lv/d;->a:Z

    .line 414
    .line 415
    goto :goto_5

    .line 416
    :cond_1d
    move v10, v6

    .line 417
    move v8, v13

    .line 418
    const/4 v6, 0x1

    .line 419
    goto :goto_6

    .line 420
    :goto_8
    if-ne v10, v9, :cond_1e

    .line 421
    .line 422
    if-eq v15, v8, :cond_1f

    .line 423
    .line 424
    if-ne v15, v6, :cond_1e

    .line 425
    .line 426
    goto :goto_a

    .line 427
    :cond_1e
    move v13, v8

    .line 428
    move v7, v10

    .line 429
    :goto_9
    move v8, v6

    .line 430
    const/4 v6, 0x1

    .line 431
    goto/16 :goto_d

    .line 432
    .line 433
    :cond_1f
    :goto_a
    if-ne v1, v9, :cond_22

    .line 434
    .line 435
    if-ne v15, v8, :cond_20

    .line 436
    .line 437
    const/4 v9, 0x0

    .line 438
    const/4 v11, 0x0

    .line 439
    move v10, v8

    .line 440
    move-object/from16 v7, p0

    .line 441
    .line 442
    invoke-virtual/range {v7 .. v12}, Lw/e;->f(IIIILv/d;)V

    .line 443
    .line 444
    .line 445
    :cond_20
    invoke-virtual {v12}, Lv/d;->l()I

    .line 446
    .line 447
    .line 448
    move-result v9

    .line 449
    iget v1, v12, Lv/d;->L:F

    .line 450
    .line 451
    iget v4, v12, Lv/d;->M:I

    .line 452
    .line 453
    const/4 v7, -0x1

    .line 454
    if-ne v4, v7, :cond_21

    .line 455
    .line 456
    div-float v1, v19, v1

    .line 457
    .line 458
    :cond_21
    int-to-float v4, v9

    .line 459
    mul-float/2addr v4, v1

    .line 460
    add-float v4, v4, v23

    .line 461
    .line 462
    float-to-int v11, v4

    .line 463
    move v10, v6

    .line 464
    move-object/from16 v7, p0

    .line 465
    .line 466
    move v8, v6

    .line 467
    invoke-virtual/range {v7 .. v12}, Lw/e;->f(IIIILv/d;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v12}, Lv/d;->l()I

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    invoke-virtual {v0, v1}, Lw/g;->d(I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v12}, Lv/d;->i()I

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    invoke-virtual {v14, v0}, Lw/g;->d(I)V

    .line 482
    .line 483
    .line 484
    const/4 v8, 0x1

    .line 485
    iput-boolean v8, v12, Lv/d;->a:Z

    .line 486
    .line 487
    goto/16 :goto_5

    .line 488
    .line 489
    :cond_22
    move v13, v8

    .line 490
    const/4 v8, 0x1

    .line 491
    if-ne v1, v8, :cond_23

    .line 492
    .line 493
    const/4 v9, 0x0

    .line 494
    const/4 v11, 0x0

    .line 495
    move-object/from16 v7, p0

    .line 496
    .line 497
    move v10, v13

    .line 498
    move v8, v15

    .line 499
    invoke-virtual/range {v7 .. v12}, Lw/e;->f(IIIILv/d;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v12}, Lv/d;->i()I

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    iput v0, v14, Lw/g;->m:I

    .line 507
    .line 508
    goto/16 :goto_5

    .line 509
    .line 510
    :cond_23
    move/from16 v17, v8

    .line 511
    .line 512
    move v8, v15

    .line 513
    const/4 v9, 0x2

    .line 514
    if-ne v1, v9, :cond_26

    .line 515
    .line 516
    aget v7, v2, v17

    .line 517
    .line 518
    if-eq v7, v6, :cond_25

    .line 519
    .line 520
    const/4 v9, 0x4

    .line 521
    if-ne v7, v9, :cond_24

    .line 522
    .line 523
    goto :goto_b

    .line 524
    :cond_24
    move v15, v8

    .line 525
    move v7, v10

    .line 526
    const/4 v9, 0x3

    .line 527
    goto :goto_9

    .line 528
    :cond_25
    :goto_b
    invoke-virtual {v12}, Lv/d;->l()I

    .line 529
    .line 530
    .line 531
    move-result v9

    .line 532
    invoke-virtual/range {p1 .. p1}, Lv/d;->i()I

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    int-to-float v1, v1

    .line 537
    mul-float v1, v1, v22

    .line 538
    .line 539
    add-float v1, v1, v23

    .line 540
    .line 541
    float-to-int v11, v1

    .line 542
    move-object/from16 v7, p0

    .line 543
    .line 544
    move v10, v6

    .line 545
    invoke-virtual/range {v7 .. v12}, Lw/e;->f(IIIILv/d;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v12}, Lv/d;->l()I

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    invoke-virtual {v0, v1}, Lw/g;->d(I)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v12}, Lv/d;->i()I

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    invoke-virtual {v14, v0}, Lw/g;->d(I)V

    .line 560
    .line 561
    .line 562
    const/4 v4, 0x1

    .line 563
    iput-boolean v4, v12, Lv/d;->a:Z

    .line 564
    .line 565
    goto/16 :goto_5

    .line 566
    .line 567
    :cond_26
    move v15, v8

    .line 568
    move/from16 v18, v9

    .line 569
    .line 570
    move v8, v6

    .line 571
    aget-object v6, v7, v18

    .line 572
    .line 573
    iget-object v6, v6, Lv/c;->d:Lv/c;

    .line 574
    .line 575
    if-eqz v6, :cond_28

    .line 576
    .line 577
    const/16 v21, 0x3

    .line 578
    .line 579
    aget-object v6, v7, v21

    .line 580
    .line 581
    iget-object v6, v6, Lv/c;->d:Lv/c;

    .line 582
    .line 583
    if-nez v6, :cond_27

    .line 584
    .line 585
    goto :goto_c

    .line 586
    :cond_27
    move v7, v10

    .line 587
    const/4 v6, 0x1

    .line 588
    const/4 v9, 0x3

    .line 589
    goto :goto_d

    .line 590
    :cond_28
    :goto_c
    const/4 v9, 0x0

    .line 591
    const/4 v11, 0x0

    .line 592
    move-object/from16 v7, p0

    .line 593
    .line 594
    move v8, v13

    .line 595
    invoke-virtual/range {v7 .. v12}, Lw/e;->f(IIIILv/d;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v12}, Lv/d;->l()I

    .line 599
    .line 600
    .line 601
    move-result v1

    .line 602
    invoke-virtual {v0, v1}, Lw/g;->d(I)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v12}, Lv/d;->i()I

    .line 606
    .line 607
    .line 608
    move-result v0

    .line 609
    invoke-virtual {v14, v0}, Lw/g;->d(I)V

    .line 610
    .line 611
    .line 612
    const/4 v6, 0x1

    .line 613
    iput-boolean v6, v12, Lv/d;->a:Z

    .line 614
    .line 615
    goto/16 :goto_5

    .line 616
    .line 617
    :goto_d
    if-ne v15, v9, :cond_15

    .line 618
    .line 619
    if-ne v7, v9, :cond_15

    .line 620
    .line 621
    if-eq v4, v6, :cond_2c

    .line 622
    .line 623
    if-ne v1, v6, :cond_29

    .line 624
    .line 625
    goto :goto_e

    .line 626
    :cond_29
    const/4 v9, 0x2

    .line 627
    if-ne v1, v9, :cond_15

    .line 628
    .line 629
    if-ne v4, v9, :cond_15

    .line 630
    .line 631
    aget v1, v2, v16

    .line 632
    .line 633
    if-eq v1, v8, :cond_2a

    .line 634
    .line 635
    if-ne v1, v8, :cond_15

    .line 636
    .line 637
    :cond_2a
    aget v1, v2, v6

    .line 638
    .line 639
    if-eq v1, v8, :cond_2b

    .line 640
    .line 641
    if-ne v1, v8, :cond_15

    .line 642
    .line 643
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lv/d;->l()I

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    int-to-float v1, v1

    .line 648
    mul-float v1, v1, v20

    .line 649
    .line 650
    add-float v1, v1, v23

    .line 651
    .line 652
    float-to-int v9, v1

    .line 653
    invoke-virtual/range {p1 .. p1}, Lv/d;->i()I

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    int-to-float v1, v1

    .line 658
    mul-float v1, v1, v22

    .line 659
    .line 660
    add-float v1, v1, v23

    .line 661
    .line 662
    float-to-int v11, v1

    .line 663
    move v10, v8

    .line 664
    move-object/from16 v7, p0

    .line 665
    .line 666
    invoke-virtual/range {v7 .. v12}, Lw/e;->f(IIIILv/d;)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v12}, Lv/d;->l()I

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    invoke-virtual {v0, v1}, Lw/g;->d(I)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v12}, Lv/d;->i()I

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    invoke-virtual {v14, v0}, Lw/g;->d(I)V

    .line 681
    .line 682
    .line 683
    const/4 v4, 0x1

    .line 684
    iput-boolean v4, v12, Lv/d;->a:Z

    .line 685
    .line 686
    goto/16 :goto_5

    .line 687
    .line 688
    :cond_2c
    :goto_e
    const/4 v9, 0x0

    .line 689
    const/4 v11, 0x0

    .line 690
    move v10, v13

    .line 691
    move-object/from16 v7, p0

    .line 692
    .line 693
    move v8, v13

    .line 694
    invoke-virtual/range {v7 .. v12}, Lw/e;->f(IIIILv/d;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v12}, Lv/d;->l()I

    .line 698
    .line 699
    .line 700
    move-result v1

    .line 701
    iput v1, v0, Lw/g;->m:I

    .line 702
    .line 703
    invoke-virtual {v12}, Lv/d;->i()I

    .line 704
    .line 705
    .line 706
    move-result v0

    .line 707
    iput v0, v14, Lw/g;->m:I

    .line 708
    .line 709
    goto/16 :goto_5

    .line 710
    .line 711
    :cond_2d
    move v7, v6

    .line 712
    move/from16 v24, v13

    .line 713
    .line 714
    :goto_f
    invoke-virtual {v12}, Lv/d;->l()I

    .line 715
    .line 716
    .line 717
    move-result v1

    .line 718
    const/4 v13, 0x4

    .line 719
    if-ne v15, v13, :cond_2e

    .line 720
    .line 721
    invoke-virtual/range {p1 .. p1}, Lv/d;->l()I

    .line 722
    .line 723
    .line 724
    move-result v1

    .line 725
    iget v4, v11, Lv/c;->e:I

    .line 726
    .line 727
    sub-int/2addr v1, v4

    .line 728
    iget v4, v10, Lv/c;->e:I

    .line 729
    .line 730
    sub-int/2addr v1, v4

    .line 731
    move/from16 v15, v24

    .line 732
    .line 733
    :cond_2e
    invoke-virtual {v12}, Lv/d;->i()I

    .line 734
    .line 735
    .line 736
    move-result v4

    .line 737
    if-ne v7, v13, :cond_2f

    .line 738
    .line 739
    invoke-virtual/range {p1 .. p1}, Lv/d;->i()I

    .line 740
    .line 741
    .line 742
    move-result v4

    .line 743
    iget v6, v9, Lv/c;->e:I

    .line 744
    .line 745
    sub-int/2addr v4, v6

    .line 746
    iget v6, v8, Lv/c;->e:I

    .line 747
    .line 748
    sub-int/2addr v4, v6

    .line 749
    move/from16 v10, v24

    .line 750
    .line 751
    move-object/from16 v7, p0

    .line 752
    .line 753
    move v9, v1

    .line 754
    move v11, v4

    .line 755
    move v8, v15

    .line 756
    goto :goto_10

    .line 757
    :cond_2f
    move v10, v7

    .line 758
    move v9, v1

    .line 759
    move v11, v4

    .line 760
    move v8, v15

    .line 761
    move-object/from16 v7, p0

    .line 762
    .line 763
    :goto_10
    invoke-virtual/range {v7 .. v12}, Lw/e;->f(IIIILv/d;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v12}, Lv/d;->l()I

    .line 767
    .line 768
    .line 769
    move-result v1

    .line 770
    invoke-virtual {v0, v1}, Lw/g;->d(I)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v12}, Lv/d;->i()I

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    invoke-virtual {v14, v0}, Lw/g;->d(I)V

    .line 778
    .line 779
    .line 780
    const/4 v4, 0x1

    .line 781
    iput-boolean v4, v12, Lv/d;->a:Z

    .line 782
    .line 783
    goto/16 :goto_5

    .line 784
    .line 785
    :cond_30
    return-void
.end method

.method public final c()V
    .locals 12

    .line 1
    iget-object v0, p0, Lw/e;->a:Lv/e;

    .line 2
    .line 3
    iget-object v1, p0, Lw/e;->h:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, p0, Lw/e;->e:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lw/e;->d:Lv/e;

    .line 11
    .line 12
    iget-object v4, v3, Lv/d;->d:Lw/j;

    .line 13
    .line 14
    invoke-virtual {v4}, Lw/j;->f()V

    .line 15
    .line 16
    .line 17
    iget-object v4, v3, Lv/d;->e:Lw/l;

    .line 18
    .line 19
    invoke-virtual {v4}, Lw/l;->f()V

    .line 20
    .line 21
    .line 22
    iget-object v5, v3, Lv/d;->d:Lw/j;

    .line 23
    .line 24
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget-object v4, v3, Lv/e;->d0:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    move v8, v7

    .line 39
    :cond_0
    :goto_0
    const/4 v9, 0x1

    .line 40
    if-ge v8, v5, :cond_8

    .line 41
    .line 42
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    add-int/lit8 v8, v8, 0x1

    .line 47
    .line 48
    check-cast v10, Lv/d;

    .line 49
    .line 50
    instance-of v11, v10, Lv/h;

    .line 51
    .line 52
    if-eqz v11, :cond_1

    .line 53
    .line 54
    new-instance v9, Lw/h;

    .line 55
    .line 56
    invoke-direct {v9, v10}, Lw/m;-><init>(Lv/d;)V

    .line 57
    .line 58
    .line 59
    iget-object v11, v10, Lv/d;->d:Lw/j;

    .line 60
    .line 61
    invoke-virtual {v11}, Lw/j;->f()V

    .line 62
    .line 63
    .line 64
    iget-object v11, v10, Lv/d;->e:Lw/l;

    .line 65
    .line 66
    invoke-virtual {v11}, Lw/l;->f()V

    .line 67
    .line 68
    .line 69
    check-cast v10, Lv/h;

    .line 70
    .line 71
    iget v10, v10, Lv/h;->h0:I

    .line 72
    .line 73
    iput v10, v9, Lw/m;->f:I

    .line 74
    .line 75
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v10}, Lv/d;->q()Z

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    if-eqz v11, :cond_4

    .line 84
    .line 85
    iget-object v11, v10, Lv/d;->b:Lw/c;

    .line 86
    .line 87
    if-nez v11, :cond_2

    .line 88
    .line 89
    new-instance v11, Lw/c;

    .line 90
    .line 91
    invoke-direct {v11, v10, v7}, Lw/c;-><init>(Lv/d;I)V

    .line 92
    .line 93
    .line 94
    iput-object v11, v10, Lv/d;->b:Lw/c;

    .line 95
    .line 96
    :cond_2
    if-nez v6, :cond_3

    .line 97
    .line 98
    new-instance v6, Ljava/util/HashSet;

    .line 99
    .line 100
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-object v11, v10, Lv/d;->b:Lw/c;

    .line 104
    .line 105
    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    iget-object v11, v10, Lv/d;->d:Lw/j;

    .line 110
    .line 111
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :goto_1
    invoke-virtual {v10}, Lv/d;->r()Z

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    if-eqz v11, :cond_7

    .line 119
    .line 120
    iget-object v11, v10, Lv/d;->c:Lw/c;

    .line 121
    .line 122
    if-nez v11, :cond_5

    .line 123
    .line 124
    new-instance v11, Lw/c;

    .line 125
    .line 126
    invoke-direct {v11, v10, v9}, Lw/c;-><init>(Lv/d;I)V

    .line 127
    .line 128
    .line 129
    iput-object v11, v10, Lv/d;->c:Lw/c;

    .line 130
    .line 131
    :cond_5
    if-nez v6, :cond_6

    .line 132
    .line 133
    new-instance v6, Ljava/util/HashSet;

    .line 134
    .line 135
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 136
    .line 137
    .line 138
    :cond_6
    iget-object v9, v10, Lv/d;->c:Lw/c;

    .line 139
    .line 140
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    iget-object v9, v10, Lv/d;->e:Lw/l;

    .line 145
    .line 146
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    :goto_2
    instance-of v9, v10, Lv/i;

    .line 150
    .line 151
    if-eqz v9, :cond_0

    .line 152
    .line 153
    new-instance v9, Lw/i;

    .line 154
    .line 155
    invoke-direct {v9, v10}, Lw/m;-><init>(Lv/d;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_8
    if-eqz v6, :cond_9

    .line 163
    .line 164
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 165
    .line 166
    .line 167
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    move v5, v7

    .line 172
    :goto_3
    if-ge v5, v4, :cond_a

    .line 173
    .line 174
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    add-int/lit8 v5, v5, 0x1

    .line 179
    .line 180
    check-cast v6, Lw/m;

    .line 181
    .line 182
    invoke-virtual {v6}, Lw/m;->f()V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    move v5, v7

    .line 191
    :goto_4
    if-ge v5, v4, :cond_c

    .line 192
    .line 193
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    add-int/lit8 v5, v5, 0x1

    .line 198
    .line 199
    check-cast v6, Lw/m;

    .line 200
    .line 201
    iget-object v8, v6, Lw/m;->b:Lv/d;

    .line 202
    .line 203
    if-ne v8, v3, :cond_b

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_b
    invoke-virtual {v6}, Lw/m;->d()V

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 211
    .line 212
    .line 213
    iget-object v2, v0, Lv/d;->d:Lw/j;

    .line 214
    .line 215
    invoke-virtual {p0, v2, v7, v1}, Lw/e;->e(Lw/m;ILjava/util/ArrayList;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, v0, Lv/d;->e:Lw/l;

    .line 219
    .line 220
    invoke-virtual {p0, v0, v9, v1}, Lw/e;->e(Lw/m;ILjava/util/ArrayList;)V

    .line 221
    .line 222
    .line 223
    iput-boolean v7, p0, Lw/e;->b:Z

    .line 224
    .line 225
    return-void
.end method

.method public final d(Lv/e;I)I
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lw/e;->h:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    move-wide v8, v5

    .line 17
    :goto_0
    if-ge v7, v4, :cond_d

    .line 18
    .line 19
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v10

    .line 23
    check-cast v10, Lw/k;

    .line 24
    .line 25
    iget-object v10, v10, Lw/k;->a:Lw/m;

    .line 26
    .line 27
    instance-of v11, v10, Lw/c;

    .line 28
    .line 29
    if-eqz v11, :cond_0

    .line 30
    .line 31
    move-object v11, v10

    .line 32
    check-cast v11, Lw/c;

    .line 33
    .line 34
    iget v11, v11, Lw/m;->f:I

    .line 35
    .line 36
    if-eq v11, v2, :cond_2

    .line 37
    .line 38
    :goto_1
    move-object/from16 v17, v3

    .line 39
    .line 40
    move/from16 v18, v4

    .line 41
    .line 42
    move-wide v0, v5

    .line 43
    goto/16 :goto_8

    .line 44
    .line 45
    :cond_0
    if-nez v2, :cond_1

    .line 46
    .line 47
    instance-of v11, v10, Lw/j;

    .line 48
    .line 49
    if-nez v11, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    instance-of v11, v10, Lw/l;

    .line 53
    .line 54
    if-nez v11, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    if-nez v2, :cond_3

    .line 58
    .line 59
    iget-object v11, v0, Lv/d;->d:Lw/j;

    .line 60
    .line 61
    :goto_2
    iget-object v11, v11, Lw/m;->h:Lw/f;

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    iget-object v11, v0, Lv/d;->e:Lw/l;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_3
    if-nez v2, :cond_4

    .line 68
    .line 69
    iget-object v12, v0, Lv/d;->d:Lw/j;

    .line 70
    .line 71
    :goto_4
    iget-object v12, v12, Lw/m;->i:Lw/f;

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_4
    iget-object v12, v0, Lv/d;->e:Lw/l;

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :goto_5
    iget-object v13, v10, Lw/m;->h:Lw/f;

    .line 78
    .line 79
    iget-object v14, v10, Lw/m;->i:Lw/f;

    .line 80
    .line 81
    iget-object v15, v13, Lw/f;->l:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    iget-object v15, v14, Lw/f;->l:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    invoke-virtual {v10}, Lw/m;->j()J

    .line 94
    .line 95
    .line 96
    move-result-wide v15

    .line 97
    if-eqz v11, :cond_a

    .line 98
    .line 99
    if-eqz v12, :cond_a

    .line 100
    .line 101
    invoke-static {v13, v5, v6}, Lw/k;->b(Lw/f;J)J

    .line 102
    .line 103
    .line 104
    move-result-wide v11

    .line 105
    invoke-static {v14, v5, v6}, Lw/k;->a(Lw/f;J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    sub-long/2addr v11, v15

    .line 110
    iget v5, v14, Lw/f;->f:I

    .line 111
    .line 112
    neg-int v6, v5

    .line 113
    move-object/from16 v17, v3

    .line 114
    .line 115
    move/from16 v18, v4

    .line 116
    .line 117
    int-to-long v3, v6

    .line 118
    cmp-long v3, v11, v3

    .line 119
    .line 120
    if-ltz v3, :cond_5

    .line 121
    .line 122
    int-to-long v3, v5

    .line 123
    add-long/2addr v11, v3

    .line 124
    :cond_5
    neg-long v0, v0

    .line 125
    sub-long/2addr v0, v15

    .line 126
    iget v3, v13, Lw/f;->f:I

    .line 127
    .line 128
    int-to-long v3, v3

    .line 129
    sub-long/2addr v0, v3

    .line 130
    cmp-long v5, v0, v3

    .line 131
    .line 132
    if-ltz v5, :cond_6

    .line 133
    .line 134
    sub-long/2addr v0, v3

    .line 135
    :cond_6
    iget-object v3, v10, Lw/m;->b:Lv/d;

    .line 136
    .line 137
    if-nez v2, :cond_7

    .line 138
    .line 139
    iget v3, v3, Lv/d;->S:F

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_7
    const/4 v4, 0x1

    .line 143
    if-ne v2, v4, :cond_8

    .line 144
    .line 145
    iget v3, v3, Lv/d;->T:F

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    const/high16 v3, -0x40800000    # -1.0f

    .line 152
    .line 153
    :goto_6
    const/4 v4, 0x0

    .line 154
    cmpl-float v4, v3, v4

    .line 155
    .line 156
    const/high16 v5, 0x3f800000    # 1.0f

    .line 157
    .line 158
    if-lez v4, :cond_9

    .line 159
    .line 160
    long-to-float v0, v0

    .line 161
    div-float/2addr v0, v3

    .line 162
    long-to-float v1, v11

    .line 163
    sub-float v4, v5, v3

    .line 164
    .line 165
    div-float/2addr v1, v4

    .line 166
    add-float/2addr v1, v0

    .line 167
    float-to-long v0, v1

    .line 168
    goto :goto_7

    .line 169
    :cond_9
    const-wide/16 v0, 0x0

    .line 170
    .line 171
    :goto_7
    long-to-float v0, v0

    .line 172
    mul-float v1, v0, v3

    .line 173
    .line 174
    const/high16 v4, 0x3f000000    # 0.5f

    .line 175
    .line 176
    add-float/2addr v1, v4

    .line 177
    float-to-long v10, v1

    .line 178
    sub-float/2addr v5, v3

    .line 179
    mul-float/2addr v5, v0

    .line 180
    add-float/2addr v5, v4

    .line 181
    float-to-long v0, v5

    .line 182
    add-long/2addr v10, v15

    .line 183
    add-long/2addr v10, v0

    .line 184
    iget v0, v13, Lw/f;->f:I

    .line 185
    .line 186
    int-to-long v0, v0

    .line 187
    add-long/2addr v0, v10

    .line 188
    iget v3, v14, Lw/f;->f:I

    .line 189
    .line 190
    int-to-long v3, v3

    .line 191
    sub-long/2addr v0, v3

    .line 192
    goto :goto_8

    .line 193
    :cond_a
    move-object/from16 v17, v3

    .line 194
    .line 195
    move/from16 v18, v4

    .line 196
    .line 197
    if-eqz v11, :cond_b

    .line 198
    .line 199
    iget v0, v13, Lw/f;->f:I

    .line 200
    .line 201
    int-to-long v0, v0

    .line 202
    invoke-static {v13, v0, v1}, Lw/k;->b(Lw/f;J)J

    .line 203
    .line 204
    .line 205
    move-result-wide v0

    .line 206
    iget v3, v13, Lw/f;->f:I

    .line 207
    .line 208
    int-to-long v3, v3

    .line 209
    add-long/2addr v3, v15

    .line 210
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 211
    .line 212
    .line 213
    move-result-wide v0

    .line 214
    goto :goto_8

    .line 215
    :cond_b
    if-eqz v12, :cond_c

    .line 216
    .line 217
    iget v0, v14, Lw/f;->f:I

    .line 218
    .line 219
    int-to-long v0, v0

    .line 220
    invoke-static {v14, v0, v1}, Lw/k;->a(Lw/f;J)J

    .line 221
    .line 222
    .line 223
    move-result-wide v0

    .line 224
    iget v3, v14, Lw/f;->f:I

    .line 225
    .line 226
    neg-int v3, v3

    .line 227
    int-to-long v3, v3

    .line 228
    add-long/2addr v3, v15

    .line 229
    neg-long v0, v0

    .line 230
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 231
    .line 232
    .line 233
    move-result-wide v0

    .line 234
    goto :goto_8

    .line 235
    :cond_c
    iget v0, v13, Lw/f;->f:I

    .line 236
    .line 237
    int-to-long v0, v0

    .line 238
    invoke-virtual {v10}, Lw/m;->j()J

    .line 239
    .line 240
    .line 241
    move-result-wide v3

    .line 242
    add-long/2addr v3, v0

    .line 243
    iget v0, v14, Lw/f;->f:I

    .line 244
    .line 245
    int-to-long v0, v0

    .line 246
    sub-long v0, v3, v0

    .line 247
    .line 248
    :goto_8
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 249
    .line 250
    .line 251
    move-result-wide v8

    .line 252
    add-int/lit8 v7, v7, 0x1

    .line 253
    .line 254
    move-object/from16 v1, p0

    .line 255
    .line 256
    move-object/from16 v0, p1

    .line 257
    .line 258
    move-object/from16 v3, v17

    .line 259
    .line 260
    move/from16 v4, v18

    .line 261
    .line 262
    const-wide/16 v5, 0x0

    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_d
    long-to-int v0, v8

    .line 267
    return v0
.end method

.method public final e(Lw/m;ILjava/util/ArrayList;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lw/m;->h:Lw/f;

    .line 2
    .line 3
    iget-object v1, p1, Lw/m;->i:Lw/f;

    .line 4
    .line 5
    iget-object v0, v0, Lw/f;->k:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 14
    if-ge v4, v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    add-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    check-cast v6, Lw/d;

    .line 23
    .line 24
    instance-of v7, v6, Lw/f;

    .line 25
    .line 26
    if-eqz v7, :cond_1

    .line 27
    .line 28
    check-cast v6, Lw/f;

    .line 29
    .line 30
    invoke-virtual {p0, v6, p2, p3, v5}, Lw/e;->a(Lw/f;ILjava/util/ArrayList;Lw/k;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    instance-of v7, v6, Lw/m;

    .line 35
    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    check-cast v6, Lw/m;

    .line 39
    .line 40
    iget-object v6, v6, Lw/m;->h:Lw/f;

    .line 41
    .line 42
    invoke-virtual {p0, v6, p2, p3, v5}, Lw/e;->a(Lw/f;ILjava/util/ArrayList;Lw/k;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, v1, Lw/f;->k:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    move v2, v3

    .line 53
    :cond_3
    :goto_1
    if-ge v2, v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    check-cast v4, Lw/d;

    .line 62
    .line 63
    instance-of v6, v4, Lw/f;

    .line 64
    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    check-cast v4, Lw/f;

    .line 68
    .line 69
    invoke-virtual {p0, v4, p2, p3, v5}, Lw/e;->a(Lw/f;ILjava/util/ArrayList;Lw/k;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    instance-of v6, v4, Lw/m;

    .line 74
    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    check-cast v4, Lw/m;

    .line 78
    .line 79
    iget-object v4, v4, Lw/m;->i:Lw/f;

    .line 80
    .line 81
    invoke-virtual {p0, v4, p2, p3, v5}, Lw/e;->a(Lw/f;ILjava/util/ArrayList;Lw/k;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    const/4 v0, 0x1

    .line 86
    if-ne p2, v0, :cond_7

    .line 87
    .line 88
    check-cast p1, Lw/l;

    .line 89
    .line 90
    iget-object p1, p1, Lw/l;->k:Lw/f;

    .line 91
    .line 92
    iget-object p1, p1, Lw/f;->k:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    :cond_6
    :goto_2
    if-ge v3, v0, :cond_7

    .line 99
    .line 100
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    check-cast v1, Lw/d;

    .line 107
    .line 108
    instance-of v2, v1, Lw/f;

    .line 109
    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    check-cast v1, Lw/f;

    .line 113
    .line 114
    invoke-virtual {p0, v1, p2, p3, v5}, Lw/e;->a(Lw/f;ILjava/util/ArrayList;Lw/k;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_7
    return-void
.end method

.method public final f(IIIILv/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw/e;->g:Lw/b;

    .line 2
    .line 3
    iput p1, v0, Lw/b;->a:I

    .line 4
    .line 5
    iput p3, v0, Lw/b;->b:I

    .line 6
    .line 7
    iput p2, v0, Lw/b;->c:I

    .line 8
    .line 9
    iput p4, v0, Lw/b;->d:I

    .line 10
    .line 11
    iget-object p1, p0, Lw/e;->f:Lx/f;

    .line 12
    .line 13
    invoke-virtual {p1, p5, v0}, Lx/f;->a(Lv/d;Lw/b;)V

    .line 14
    .line 15
    .line 16
    iget p1, v0, Lw/b;->e:I

    .line 17
    .line 18
    invoke-virtual {p5, p1}, Lv/d;->y(I)V

    .line 19
    .line 20
    .line 21
    iget p1, v0, Lw/b;->f:I

    .line 22
    .line 23
    invoke-virtual {p5, p1}, Lv/d;->v(I)V

    .line 24
    .line 25
    .line 26
    iget-boolean p1, v0, Lw/b;->h:Z

    .line 27
    .line 28
    iput-boolean p1, p5, Lv/d;->w:Z

    .line 29
    .line 30
    iget p1, v0, Lw/b;->g:I

    .line 31
    .line 32
    iput p1, p5, Lv/d;->P:I

    .line 33
    .line 34
    if-lez p1, :cond_0

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    iput-boolean p1, p5, Lv/d;->w:Z

    .line 40
    .line 41
    return-void
.end method

.method public final g()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lw/e;->a:Lv/e;

    .line 4
    .line 5
    iget-object v6, v1, Lv/e;->d0:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v7

    .line 11
    const/4 v8, 0x0

    .line 12
    move v1, v8

    .line 13
    :goto_0
    if-ge v1, v7, :cond_b

    .line 14
    .line 15
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    add-int/lit8 v9, v1, 0x1

    .line 20
    .line 21
    move-object v5, v2

    .line 22
    check-cast v5, Lv/d;

    .line 23
    .line 24
    iget-boolean v1, v5, Lv/d;->a:Z

    .line 25
    .line 26
    iget-object v2, v5, Lv/d;->d:Lw/j;

    .line 27
    .line 28
    iget-object v10, v5, Lv/d;->e:Lw/l;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    :goto_1
    move v1, v9

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, v5, Lv/d;->c0:[I

    .line 35
    .line 36
    aget v11, v1, v8

    .line 37
    .line 38
    const/4 v12, 0x1

    .line 39
    aget v13, v1, v12

    .line 40
    .line 41
    iget v1, v5, Lv/d;->j:I

    .line 42
    .line 43
    iget v3, v5, Lv/d;->k:I

    .line 44
    .line 45
    const/4 v14, 0x3

    .line 46
    const/4 v4, 0x2

    .line 47
    if-eq v11, v4, :cond_2

    .line 48
    .line 49
    if-ne v11, v14, :cond_1

    .line 50
    .line 51
    if-ne v1, v12, :cond_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    move v1, v8

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    :goto_2
    move v1, v12

    .line 57
    :goto_3
    if-eq v13, v4, :cond_4

    .line 58
    .line 59
    if-ne v13, v14, :cond_3

    .line 60
    .line 61
    if-ne v3, v12, :cond_3

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_3
    move v3, v8

    .line 65
    goto :goto_5

    .line 66
    :cond_4
    :goto_4
    move v3, v12

    .line 67
    :goto_5
    iget-object v15, v2, Lw/m;->e:Lw/g;

    .line 68
    .line 69
    iget-object v2, v2, Lw/m;->e:Lw/g;

    .line 70
    .line 71
    iget-boolean v4, v15, Lw/f;->j:Z

    .line 72
    .line 73
    iget-object v8, v10, Lw/m;->e:Lw/g;

    .line 74
    .line 75
    iget-object v14, v10, Lw/m;->e:Lw/g;

    .line 76
    .line 77
    iget-boolean v12, v8, Lw/f;->j:Z

    .line 78
    .line 79
    move/from16 v17, v1

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    if-eqz v4, :cond_5

    .line 83
    .line 84
    if-eqz v12, :cond_5

    .line 85
    .line 86
    iget v2, v15, Lw/f;->g:I

    .line 87
    .line 88
    iget v4, v8, Lw/f;->g:I

    .line 89
    .line 90
    move v3, v1

    .line 91
    invoke-virtual/range {v0 .. v5}, Lw/e;->f(IIIILv/d;)V

    .line 92
    .line 93
    .line 94
    const/4 v0, 0x1

    .line 95
    iput-boolean v0, v5, Lv/d;->a:Z

    .line 96
    .line 97
    goto :goto_6

    .line 98
    :cond_5
    if-eqz v4, :cond_7

    .line 99
    .line 100
    if-eqz v3, :cond_7

    .line 101
    .line 102
    iget v2, v15, Lw/f;->g:I

    .line 103
    .line 104
    iget v4, v8, Lw/f;->g:I

    .line 105
    .line 106
    const/4 v3, 0x2

    .line 107
    move-object/from16 v0, p0

    .line 108
    .line 109
    invoke-virtual/range {v0 .. v5}, Lw/e;->f(IIIILv/d;)V

    .line 110
    .line 111
    .line 112
    const/4 v0, 0x3

    .line 113
    if-ne v13, v0, :cond_6

    .line 114
    .line 115
    invoke-virtual {v5}, Lv/d;->i()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iput v0, v14, Lw/g;->m:I

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_6
    invoke-virtual {v5}, Lv/d;->i()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-virtual {v14, v0}, Lw/g;->d(I)V

    .line 127
    .line 128
    .line 129
    const/4 v0, 0x1

    .line 130
    iput-boolean v0, v5, Lv/d;->a:Z

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_7
    const/16 v16, 0x2

    .line 134
    .line 135
    if-eqz v12, :cond_9

    .line 136
    .line 137
    if-eqz v17, :cond_9

    .line 138
    .line 139
    iget v0, v15, Lw/f;->g:I

    .line 140
    .line 141
    iget v4, v8, Lw/f;->g:I

    .line 142
    .line 143
    move v3, v1

    .line 144
    move-object v8, v2

    .line 145
    move/from16 v1, v16

    .line 146
    .line 147
    move v2, v0

    .line 148
    move-object/from16 v0, p0

    .line 149
    .line 150
    invoke-virtual/range {v0 .. v5}, Lw/e;->f(IIIILv/d;)V

    .line 151
    .line 152
    .line 153
    const/4 v0, 0x3

    .line 154
    if-ne v11, v0, :cond_8

    .line 155
    .line 156
    invoke-virtual {v5}, Lv/d;->l()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    iput v0, v8, Lw/g;->m:I

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_8
    invoke-virtual {v5}, Lv/d;->l()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-virtual {v8, v0}, Lw/g;->d(I)V

    .line 168
    .line 169
    .line 170
    const/4 v0, 0x1

    .line 171
    iput-boolean v0, v5, Lv/d;->a:Z

    .line 172
    .line 173
    :cond_9
    :goto_6
    iget-boolean v0, v5, Lv/d;->a:Z

    .line 174
    .line 175
    if-eqz v0, :cond_a

    .line 176
    .line 177
    iget-object v0, v10, Lw/l;->l:Lw/a;

    .line 178
    .line 179
    if-eqz v0, :cond_a

    .line 180
    .line 181
    iget v1, v5, Lv/d;->P:I

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Lw/g;->d(I)V

    .line 184
    .line 185
    .line 186
    :cond_a
    const/4 v8, 0x0

    .line 187
    move-object/from16 v0, p0

    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :cond_b
    return-void
.end method
