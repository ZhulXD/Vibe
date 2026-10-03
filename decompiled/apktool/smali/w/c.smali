.class public final Lw/c;
.super Lw/m;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final k:Ljava/util/ArrayList;

.field public l:I


# direct methods
.method public constructor <init>(Lv/d;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lw/m;-><init>(Lv/d;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput p2, p0, Lw/m;->f:I

    .line 12
    .line 13
    iget-object v0, p0, Lw/m;->b:Lv/d;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lv/d;->k(I)Lv/d;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    move-object v0, p2

    .line 21
    move-object p2, v4

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget p2, p0, Lw/m;->f:I

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Lv/d;->k(I)Lv/d;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput-object p2, p0, Lw/m;->b:Lv/d;

    .line 32
    .line 33
    iget v0, p0, Lw/m;->f:I

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x1

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p2, Lv/d;->d:Lw/j;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-ne v0, v2, :cond_2

    .line 43
    .line 44
    iget-object v0, p2, Lv/d;->e:Lw/l;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object v0, v1

    .line 48
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lw/m;->f:I

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Lv/d;->j(I)Lv/d;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    :goto_2
    if-eqz p2, :cond_5

    .line 58
    .line 59
    iget v0, p0, Lw/m;->f:I

    .line 60
    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p2, Lv/d;->d:Lw/j;

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    if-ne v0, v2, :cond_4

    .line 67
    .line 68
    iget-object v0, p2, Lv/d;->e:Lw/l;

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    move-object v0, v1

    .line 72
    :goto_3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget v0, p0, Lw/m;->f:I

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Lv/d;->j(I)Lv/d;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    goto :goto_2

    .line 82
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    const/4 v0, 0x0

    .line 87
    :cond_6
    :goto_4
    if-ge v0, p2, :cond_8

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    check-cast v1, Lw/m;

    .line 96
    .line 97
    iget v3, p0, Lw/m;->f:I

    .line 98
    .line 99
    if-nez v3, :cond_7

    .line 100
    .line 101
    iget-object v1, v1, Lw/m;->b:Lv/d;

    .line 102
    .line 103
    iput-object p0, v1, Lv/d;->b:Lw/c;

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_7
    if-ne v3, v2, :cond_6

    .line 107
    .line 108
    iget-object v1, v1, Lw/m;->b:Lv/d;

    .line 109
    .line 110
    iput-object p0, v1, Lv/d;->c:Lw/c;

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_8
    iget p2, p0, Lw/m;->f:I

    .line 114
    .line 115
    if-nez p2, :cond_9

    .line 116
    .line 117
    iget-object p2, p0, Lw/m;->b:Lv/d;

    .line 118
    .line 119
    iget-object p2, p2, Lv/d;->I:Lv/d;

    .line 120
    .line 121
    check-cast p2, Lv/e;

    .line 122
    .line 123
    iget-boolean p2, p2, Lv/e;->h0:Z

    .line 124
    .line 125
    if-eqz p2, :cond_9

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-le p2, v2, :cond_9

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    sub-int/2addr p2, v2

    .line 138
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Lw/m;

    .line 143
    .line 144
    iget-object p1, p1, Lw/m;->b:Lv/d;

    .line 145
    .line 146
    iput-object p1, p0, Lw/m;->b:Lv/d;

    .line 147
    .line 148
    :cond_9
    iget p1, p0, Lw/m;->f:I

    .line 149
    .line 150
    if-nez p1, :cond_a

    .line 151
    .line 152
    iget-object p1, p0, Lw/m;->b:Lv/d;

    .line 153
    .line 154
    iget p1, p1, Lv/d;->X:I

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_a
    iget-object p1, p0, Lw/m;->b:Lv/d;

    .line 158
    .line 159
    iget p1, p1, Lv/d;->Y:I

    .line 160
    .line 161
    :goto_5
    iput p1, p0, Lw/c;->l:I

    .line 162
    .line 163
    return-void
.end method


# virtual methods
.method public final a(Lw/d;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lw/m;->h:Lw/f;

    .line 4
    .line 5
    iget-boolean v2, v1, Lw/f;->j:Z

    .line 6
    .line 7
    if-eqz v2, :cond_58

    .line 8
    .line 9
    iget-object v2, v0, Lw/m;->i:Lw/f;

    .line 10
    .line 11
    iget-boolean v3, v2, Lw/f;->j:Z

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_33

    .line 16
    .line 17
    :cond_0
    iget-object v3, v0, Lw/m;->b:Lv/d;

    .line 18
    .line 19
    iget-object v3, v3, Lv/d;->I:Lv/d;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    instance-of v5, v3, Lv/e;

    .line 24
    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    check-cast v3, Lv/e;

    .line 28
    .line 29
    iget-boolean v3, v3, Lv/e;->h0:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v3, 0x0

    .line 33
    :goto_0
    iget v5, v2, Lw/f;->g:I

    .line 34
    .line 35
    iget v6, v1, Lw/f;->g:I

    .line 36
    .line 37
    sub-int/2addr v5, v6

    .line 38
    iget-object v6, v0, Lw/c;->k:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    const/4 v8, 0x0

    .line 45
    :goto_1
    const/4 v9, -0x1

    .line 46
    const/16 v10, 0x8

    .line 47
    .line 48
    if-ge v8, v7, :cond_2

    .line 49
    .line 50
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    check-cast v11, Lw/m;

    .line 55
    .line 56
    iget-object v11, v11, Lw/m;->b:Lv/d;

    .line 57
    .line 58
    iget v11, v11, Lv/d;->V:I

    .line 59
    .line 60
    if-ne v11, v10, :cond_3

    .line 61
    .line 62
    add-int/lit8 v8, v8, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move v8, v9

    .line 66
    :cond_3
    add-int/lit8 v11, v7, -0x1

    .line 67
    .line 68
    move v12, v11

    .line 69
    :goto_2
    if-ltz v12, :cond_5

    .line 70
    .line 71
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    check-cast v13, Lw/m;

    .line 76
    .line 77
    iget-object v13, v13, Lw/m;->b:Lv/d;

    .line 78
    .line 79
    iget v13, v13, Lv/d;->V:I

    .line 80
    .line 81
    if-ne v13, v10, :cond_4

    .line 82
    .line 83
    add-int/lit8 v12, v12, -0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move v9, v12

    .line 87
    :cond_5
    const/4 v12, 0x0

    .line 88
    :goto_3
    const/4 v15, 0x2

    .line 89
    const/16 p1, 0x0

    .line 90
    .line 91
    if-ge v12, v15, :cond_14

    .line 92
    .line 93
    move/from16 v19, p1

    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    const/4 v15, 0x0

    .line 97
    const/16 v17, 0x0

    .line 98
    .line 99
    const/16 v18, 0x0

    .line 100
    .line 101
    :goto_4
    if-ge v4, v7, :cond_11

    .line 102
    .line 103
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v20

    .line 107
    move-object/from16 v13, v20

    .line 108
    .line 109
    check-cast v13, Lw/m;

    .line 110
    .line 111
    iget-object v14, v13, Lw/m;->b:Lv/d;

    .line 112
    .line 113
    move/from16 v22, v3

    .line 114
    .line 115
    iget v3, v14, Lv/d;->V:I

    .line 116
    .line 117
    if-ne v3, v10, :cond_6

    .line 118
    .line 119
    move/from16 v24, v12

    .line 120
    .line 121
    goto/16 :goto_a

    .line 122
    .line 123
    :cond_6
    add-int/lit8 v18, v18, 0x1

    .line 124
    .line 125
    if-lez v4, :cond_7

    .line 126
    .line 127
    if-lt v4, v8, :cond_7

    .line 128
    .line 129
    iget-object v3, v13, Lw/m;->h:Lw/f;

    .line 130
    .line 131
    iget v3, v3, Lw/f;->f:I

    .line 132
    .line 133
    add-int/2addr v15, v3

    .line 134
    :cond_7
    iget-object v3, v13, Lw/m;->e:Lw/g;

    .line 135
    .line 136
    iget v10, v3, Lw/f;->g:I

    .line 137
    .line 138
    move/from16 v23, v10

    .line 139
    .line 140
    iget v10, v13, Lw/m;->d:I

    .line 141
    .line 142
    move/from16 v24, v12

    .line 143
    .line 144
    const/4 v12, 0x3

    .line 145
    if-eq v10, v12, :cond_8

    .line 146
    .line 147
    const/4 v10, 0x1

    .line 148
    goto :goto_5

    .line 149
    :cond_8
    const/4 v10, 0x0

    .line 150
    :goto_5
    if-eqz v10, :cond_b

    .line 151
    .line 152
    iget v3, v0, Lw/m;->f:I

    .line 153
    .line 154
    if-nez v3, :cond_9

    .line 155
    .line 156
    iget-object v12, v14, Lv/d;->d:Lw/j;

    .line 157
    .line 158
    iget-object v12, v12, Lw/m;->e:Lw/g;

    .line 159
    .line 160
    iget-boolean v12, v12, Lw/f;->j:Z

    .line 161
    .line 162
    if-nez v12, :cond_9

    .line 163
    .line 164
    goto/16 :goto_33

    .line 165
    .line 166
    :cond_9
    const/4 v12, 0x1

    .line 167
    if-ne v3, v12, :cond_a

    .line 168
    .line 169
    iget-object v3, v14, Lv/d;->e:Lw/l;

    .line 170
    .line 171
    iget-object v3, v3, Lw/m;->e:Lw/g;

    .line 172
    .line 173
    iget-boolean v3, v3, Lw/f;->j:Z

    .line 174
    .line 175
    if-nez v3, :cond_a

    .line 176
    .line 177
    goto/16 :goto_33

    .line 178
    .line 179
    :cond_a
    move/from16 v25, v10

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_b
    move/from16 v25, v10

    .line 183
    .line 184
    const/4 v12, 0x1

    .line 185
    iget v10, v13, Lw/m;->a:I

    .line 186
    .line 187
    if-ne v10, v12, :cond_c

    .line 188
    .line 189
    if-nez v24, :cond_c

    .line 190
    .line 191
    iget v10, v3, Lw/g;->m:I

    .line 192
    .line 193
    add-int/lit8 v17, v17, 0x1

    .line 194
    .line 195
    :goto_6
    const/16 v25, 0x1

    .line 196
    .line 197
    goto :goto_8

    .line 198
    :cond_c
    iget-boolean v3, v3, Lw/f;->j:Z

    .line 199
    .line 200
    if-eqz v3, :cond_d

    .line 201
    .line 202
    move/from16 v10, v23

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_d
    :goto_7
    move/from16 v10, v23

    .line 206
    .line 207
    :goto_8
    if-nez v25, :cond_e

    .line 208
    .line 209
    add-int/lit8 v17, v17, 0x1

    .line 210
    .line 211
    iget-object v3, v14, Lv/d;->Z:[F

    .line 212
    .line 213
    iget v10, v0, Lw/m;->f:I

    .line 214
    .line 215
    aget v3, v3, v10

    .line 216
    .line 217
    cmpl-float v10, v3, p1

    .line 218
    .line 219
    if-ltz v10, :cond_f

    .line 220
    .line 221
    add-float v19, v19, v3

    .line 222
    .line 223
    goto :goto_9

    .line 224
    :cond_e
    add-int/2addr v15, v10

    .line 225
    :cond_f
    :goto_9
    if-ge v4, v11, :cond_10

    .line 226
    .line 227
    if-ge v4, v9, :cond_10

    .line 228
    .line 229
    iget-object v3, v13, Lw/m;->i:Lw/f;

    .line 230
    .line 231
    iget v3, v3, Lw/f;->f:I

    .line 232
    .line 233
    neg-int v3, v3

    .line 234
    add-int/2addr v15, v3

    .line 235
    :cond_10
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 236
    .line 237
    move/from16 v3, v22

    .line 238
    .line 239
    move/from16 v12, v24

    .line 240
    .line 241
    const/16 v10, 0x8

    .line 242
    .line 243
    goto/16 :goto_4

    .line 244
    .line 245
    :cond_11
    move/from16 v22, v3

    .line 246
    .line 247
    move/from16 v24, v12

    .line 248
    .line 249
    if-lt v15, v5, :cond_13

    .line 250
    .line 251
    if-nez v17, :cond_12

    .line 252
    .line 253
    goto :goto_b

    .line 254
    :cond_12
    add-int/lit8 v12, v24, 0x1

    .line 255
    .line 256
    move/from16 v3, v22

    .line 257
    .line 258
    const/16 v10, 0x8

    .line 259
    .line 260
    goto/16 :goto_3

    .line 261
    .line 262
    :cond_13
    :goto_b
    move/from16 v3, v17

    .line 263
    .line 264
    move/from16 v4, v18

    .line 265
    .line 266
    goto :goto_c

    .line 267
    :cond_14
    move/from16 v22, v3

    .line 268
    .line 269
    move/from16 v19, p1

    .line 270
    .line 271
    const/4 v3, 0x0

    .line 272
    const/4 v4, 0x0

    .line 273
    const/4 v15, 0x0

    .line 274
    :goto_c
    iget v1, v1, Lw/f;->g:I

    .line 275
    .line 276
    if-eqz v22, :cond_15

    .line 277
    .line 278
    iget v1, v2, Lw/f;->g:I

    .line 279
    .line 280
    :cond_15
    const/high16 v2, 0x3f000000    # 0.5f

    .line 281
    .line 282
    if-le v15, v5, :cond_17

    .line 283
    .line 284
    const/high16 v10, 0x40000000    # 2.0f

    .line 285
    .line 286
    if-eqz v22, :cond_16

    .line 287
    .line 288
    sub-int v12, v15, v5

    .line 289
    .line 290
    int-to-float v12, v12

    .line 291
    div-float/2addr v12, v10

    .line 292
    add-float/2addr v12, v2

    .line 293
    float-to-int v10, v12

    .line 294
    add-int/2addr v1, v10

    .line 295
    goto :goto_d

    .line 296
    :cond_16
    sub-int v12, v15, v5

    .line 297
    .line 298
    int-to-float v12, v12

    .line 299
    div-float/2addr v12, v10

    .line 300
    add-float/2addr v12, v2

    .line 301
    float-to-int v10, v12

    .line 302
    sub-int/2addr v1, v10

    .line 303
    :cond_17
    :goto_d
    if-lez v3, :cond_28

    .line 304
    .line 305
    sub-int v10, v5, v15

    .line 306
    .line 307
    int-to-float v10, v10

    .line 308
    int-to-float v12, v3

    .line 309
    div-float v12, v10, v12

    .line 310
    .line 311
    add-float/2addr v12, v2

    .line 312
    float-to-int v12, v12

    .line 313
    const/4 v13, 0x0

    .line 314
    const/4 v14, 0x0

    .line 315
    :goto_e
    if-ge v13, v7, :cond_21

    .line 316
    .line 317
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v17

    .line 321
    move/from16 v18, v2

    .line 322
    .line 323
    move-object/from16 v2, v17

    .line 324
    .line 325
    check-cast v2, Lw/m;

    .line 326
    .line 327
    move/from16 v17, v1

    .line 328
    .line 329
    iget-object v1, v2, Lw/m;->b:Lv/d;

    .line 330
    .line 331
    move/from16 v23, v3

    .line 332
    .line 333
    iget-object v3, v2, Lw/m;->e:Lw/g;

    .line 334
    .line 335
    move/from16 v24, v10

    .line 336
    .line 337
    iget v10, v1, Lv/d;->V:I

    .line 338
    .line 339
    move/from16 v25, v12

    .line 340
    .line 341
    const/16 v12, 0x8

    .line 342
    .line 343
    if-ne v10, v12, :cond_19

    .line 344
    .line 345
    :cond_18
    move/from16 v26, v13

    .line 346
    .line 347
    goto/16 :goto_13

    .line 348
    .line 349
    :cond_19
    iget v10, v2, Lw/m;->d:I

    .line 350
    .line 351
    const/4 v12, 0x3

    .line 352
    if-ne v10, v12, :cond_18

    .line 353
    .line 354
    iget-boolean v10, v3, Lw/f;->j:Z

    .line 355
    .line 356
    if-nez v10, :cond_18

    .line 357
    .line 358
    cmpl-float v10, v19, p1

    .line 359
    .line 360
    if-lez v10, :cond_1a

    .line 361
    .line 362
    iget-object v10, v1, Lv/d;->Z:[F

    .line 363
    .line 364
    iget v12, v0, Lw/m;->f:I

    .line 365
    .line 366
    aget v10, v10, v12

    .line 367
    .line 368
    mul-float v10, v10, v24

    .line 369
    .line 370
    div-float v10, v10, v19

    .line 371
    .line 372
    add-float v10, v10, v18

    .line 373
    .line 374
    float-to-int v10, v10

    .line 375
    goto :goto_f

    .line 376
    :cond_1a
    move/from16 v10, v25

    .line 377
    .line 378
    :goto_f
    iget v12, v0, Lw/m;->f:I

    .line 379
    .line 380
    if-nez v12, :cond_1d

    .line 381
    .line 382
    iget v12, v1, Lv/d;->n:I

    .line 383
    .line 384
    iget v1, v1, Lv/d;->m:I

    .line 385
    .line 386
    iget v2, v2, Lw/m;->a:I

    .line 387
    .line 388
    move/from16 v26, v13

    .line 389
    .line 390
    const/4 v13, 0x1

    .line 391
    if-ne v2, v13, :cond_1b

    .line 392
    .line 393
    iget v2, v3, Lw/g;->m:I

    .line 394
    .line 395
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    goto :goto_10

    .line 400
    :cond_1b
    move v2, v10

    .line 401
    :goto_10
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-lez v12, :cond_1c

    .line 406
    .line 407
    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    :cond_1c
    if-eq v1, v10, :cond_20

    .line 412
    .line 413
    goto :goto_12

    .line 414
    :cond_1d
    move/from16 v26, v13

    .line 415
    .line 416
    iget v12, v1, Lv/d;->q:I

    .line 417
    .line 418
    iget v1, v1, Lv/d;->p:I

    .line 419
    .line 420
    iget v2, v2, Lw/m;->a:I

    .line 421
    .line 422
    const/4 v13, 0x1

    .line 423
    if-ne v2, v13, :cond_1e

    .line 424
    .line 425
    iget v2, v3, Lw/g;->m:I

    .line 426
    .line 427
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    goto :goto_11

    .line 432
    :cond_1e
    move v2, v10

    .line 433
    :goto_11
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-lez v12, :cond_1f

    .line 438
    .line 439
    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    :cond_1f
    if-eq v1, v10, :cond_20

    .line 444
    .line 445
    :goto_12
    add-int/lit8 v14, v14, 0x1

    .line 446
    .line 447
    move v10, v1

    .line 448
    :cond_20
    invoke-virtual {v3, v10}, Lw/g;->d(I)V

    .line 449
    .line 450
    .line 451
    :goto_13
    add-int/lit8 v13, v26, 0x1

    .line 452
    .line 453
    move/from16 v1, v17

    .line 454
    .line 455
    move/from16 v2, v18

    .line 456
    .line 457
    move/from16 v3, v23

    .line 458
    .line 459
    move/from16 v10, v24

    .line 460
    .line 461
    move/from16 v12, v25

    .line 462
    .line 463
    goto/16 :goto_e

    .line 464
    .line 465
    :cond_21
    move/from16 v17, v1

    .line 466
    .line 467
    move/from16 v18, v2

    .line 468
    .line 469
    move/from16 v23, v3

    .line 470
    .line 471
    if-lez v14, :cond_25

    .line 472
    .line 473
    sub-int v3, v23, v14

    .line 474
    .line 475
    const/4 v1, 0x0

    .line 476
    const/4 v15, 0x0

    .line 477
    :goto_14
    if-ge v1, v7, :cond_26

    .line 478
    .line 479
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    check-cast v2, Lw/m;

    .line 484
    .line 485
    iget-object v10, v2, Lw/m;->b:Lv/d;

    .line 486
    .line 487
    iget v10, v10, Lv/d;->V:I

    .line 488
    .line 489
    const/16 v12, 0x8

    .line 490
    .line 491
    if-ne v10, v12, :cond_22

    .line 492
    .line 493
    goto :goto_15

    .line 494
    :cond_22
    if-lez v1, :cond_23

    .line 495
    .line 496
    if-lt v1, v8, :cond_23

    .line 497
    .line 498
    iget-object v10, v2, Lw/m;->h:Lw/f;

    .line 499
    .line 500
    iget v10, v10, Lw/f;->f:I

    .line 501
    .line 502
    add-int/2addr v15, v10

    .line 503
    :cond_23
    iget-object v10, v2, Lw/m;->e:Lw/g;

    .line 504
    .line 505
    iget v10, v10, Lw/f;->g:I

    .line 506
    .line 507
    add-int/2addr v15, v10

    .line 508
    if-ge v1, v11, :cond_24

    .line 509
    .line 510
    if-ge v1, v9, :cond_24

    .line 511
    .line 512
    iget-object v2, v2, Lw/m;->i:Lw/f;

    .line 513
    .line 514
    iget v2, v2, Lw/f;->f:I

    .line 515
    .line 516
    neg-int v2, v2

    .line 517
    add-int/2addr v15, v2

    .line 518
    :cond_24
    :goto_15
    add-int/lit8 v1, v1, 0x1

    .line 519
    .line 520
    goto :goto_14

    .line 521
    :cond_25
    move/from16 v3, v23

    .line 522
    .line 523
    :cond_26
    iget v1, v0, Lw/c;->l:I

    .line 524
    .line 525
    const/4 v2, 0x2

    .line 526
    if-ne v1, v2, :cond_27

    .line 527
    .line 528
    if-nez v14, :cond_27

    .line 529
    .line 530
    const/4 v1, 0x0

    .line 531
    iput v1, v0, Lw/c;->l:I

    .line 532
    .line 533
    goto :goto_16

    .line 534
    :cond_27
    const/4 v1, 0x0

    .line 535
    goto :goto_16

    .line 536
    :cond_28
    move/from16 v17, v1

    .line 537
    .line 538
    move/from16 v18, v2

    .line 539
    .line 540
    move/from16 v23, v3

    .line 541
    .line 542
    const/4 v1, 0x0

    .line 543
    const/4 v2, 0x2

    .line 544
    :goto_16
    if-le v15, v5, :cond_29

    .line 545
    .line 546
    iput v2, v0, Lw/c;->l:I

    .line 547
    .line 548
    :cond_29
    if-lez v4, :cond_2a

    .line 549
    .line 550
    if-nez v3, :cond_2a

    .line 551
    .line 552
    if-ne v8, v9, :cond_2a

    .line 553
    .line 554
    iput v2, v0, Lw/c;->l:I

    .line 555
    .line 556
    :cond_2a
    iget v2, v0, Lw/c;->l:I

    .line 557
    .line 558
    const/4 v13, 0x1

    .line 559
    if-ne v2, v13, :cond_3a

    .line 560
    .line 561
    if-le v4, v13, :cond_2b

    .line 562
    .line 563
    sub-int/2addr v5, v15

    .line 564
    sub-int/2addr v4, v13

    .line 565
    div-int/2addr v5, v4

    .line 566
    goto :goto_17

    .line 567
    :cond_2b
    if-ne v4, v13, :cond_2c

    .line 568
    .line 569
    sub-int/2addr v5, v15

    .line 570
    const/16 v16, 0x2

    .line 571
    .line 572
    div-int/lit8 v5, v5, 0x2

    .line 573
    .line 574
    goto :goto_17

    .line 575
    :cond_2c
    move v5, v1

    .line 576
    :goto_17
    if-lez v3, :cond_2d

    .line 577
    .line 578
    move v5, v1

    .line 579
    :cond_2d
    move v4, v1

    .line 580
    move/from16 v1, v17

    .line 581
    .line 582
    :goto_18
    if-ge v4, v7, :cond_58

    .line 583
    .line 584
    if-eqz v22, :cond_2e

    .line 585
    .line 586
    add-int/lit8 v2, v4, 0x1

    .line 587
    .line 588
    sub-int v2, v7, v2

    .line 589
    .line 590
    goto :goto_19

    .line 591
    :cond_2e
    move v2, v4

    .line 592
    :goto_19
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    check-cast v2, Lw/m;

    .line 597
    .line 598
    iget-object v3, v2, Lw/m;->b:Lv/d;

    .line 599
    .line 600
    iget-object v10, v2, Lw/m;->i:Lw/f;

    .line 601
    .line 602
    iget-object v12, v2, Lw/m;->h:Lw/f;

    .line 603
    .line 604
    iget v3, v3, Lv/d;->V:I

    .line 605
    .line 606
    const/16 v13, 0x8

    .line 607
    .line 608
    if-ne v3, v13, :cond_2f

    .line 609
    .line 610
    invoke-virtual {v12, v1}, Lw/f;->d(I)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v10, v1}, Lw/f;->d(I)V

    .line 614
    .line 615
    .line 616
    goto :goto_20

    .line 617
    :cond_2f
    if-lez v4, :cond_31

    .line 618
    .line 619
    if-eqz v22, :cond_30

    .line 620
    .line 621
    sub-int/2addr v1, v5

    .line 622
    goto :goto_1a

    .line 623
    :cond_30
    add-int/2addr v1, v5

    .line 624
    :cond_31
    :goto_1a
    if-lez v4, :cond_33

    .line 625
    .line 626
    if-lt v4, v8, :cond_33

    .line 627
    .line 628
    if-eqz v22, :cond_32

    .line 629
    .line 630
    iget v3, v12, Lw/f;->f:I

    .line 631
    .line 632
    sub-int/2addr v1, v3

    .line 633
    goto :goto_1b

    .line 634
    :cond_32
    iget v3, v12, Lw/f;->f:I

    .line 635
    .line 636
    add-int/2addr v1, v3

    .line 637
    :cond_33
    :goto_1b
    if-eqz v22, :cond_34

    .line 638
    .line 639
    invoke-virtual {v10, v1}, Lw/f;->d(I)V

    .line 640
    .line 641
    .line 642
    goto :goto_1c

    .line 643
    :cond_34
    invoke-virtual {v12, v1}, Lw/f;->d(I)V

    .line 644
    .line 645
    .line 646
    :goto_1c
    iget-object v3, v2, Lw/m;->e:Lw/g;

    .line 647
    .line 648
    iget v13, v3, Lw/f;->g:I

    .line 649
    .line 650
    iget v14, v2, Lw/m;->d:I

    .line 651
    .line 652
    const/4 v15, 0x3

    .line 653
    if-ne v14, v15, :cond_35

    .line 654
    .line 655
    iget v14, v2, Lw/m;->a:I

    .line 656
    .line 657
    const/4 v15, 0x1

    .line 658
    if-ne v14, v15, :cond_35

    .line 659
    .line 660
    iget v13, v3, Lw/g;->m:I

    .line 661
    .line 662
    :cond_35
    if-eqz v22, :cond_36

    .line 663
    .line 664
    sub-int/2addr v1, v13

    .line 665
    goto :goto_1d

    .line 666
    :cond_36
    add-int/2addr v1, v13

    .line 667
    :goto_1d
    if-eqz v22, :cond_37

    .line 668
    .line 669
    invoke-virtual {v12, v1}, Lw/f;->d(I)V

    .line 670
    .line 671
    .line 672
    :goto_1e
    const/4 v13, 0x1

    .line 673
    goto :goto_1f

    .line 674
    :cond_37
    invoke-virtual {v10, v1}, Lw/f;->d(I)V

    .line 675
    .line 676
    .line 677
    goto :goto_1e

    .line 678
    :goto_1f
    iput-boolean v13, v2, Lw/m;->g:Z

    .line 679
    .line 680
    if-ge v4, v11, :cond_39

    .line 681
    .line 682
    if-ge v4, v9, :cond_39

    .line 683
    .line 684
    if-eqz v22, :cond_38

    .line 685
    .line 686
    iget v2, v10, Lw/f;->f:I

    .line 687
    .line 688
    neg-int v2, v2

    .line 689
    sub-int/2addr v1, v2

    .line 690
    goto :goto_20

    .line 691
    :cond_38
    iget v2, v10, Lw/f;->f:I

    .line 692
    .line 693
    neg-int v2, v2

    .line 694
    add-int/2addr v1, v2

    .line 695
    :cond_39
    :goto_20
    add-int/lit8 v4, v4, 0x1

    .line 696
    .line 697
    goto :goto_18

    .line 698
    :cond_3a
    if-nez v2, :cond_47

    .line 699
    .line 700
    sub-int/2addr v5, v15

    .line 701
    const/16 v21, 0x1

    .line 702
    .line 703
    add-int/lit8 v4, v4, 0x1

    .line 704
    .line 705
    div-int/2addr v5, v4

    .line 706
    if-lez v3, :cond_3b

    .line 707
    .line 708
    move v5, v1

    .line 709
    :cond_3b
    move v4, v1

    .line 710
    move/from16 v1, v17

    .line 711
    .line 712
    :goto_21
    if-ge v4, v7, :cond_58

    .line 713
    .line 714
    if-eqz v22, :cond_3c

    .line 715
    .line 716
    add-int/lit8 v2, v4, 0x1

    .line 717
    .line 718
    sub-int v2, v7, v2

    .line 719
    .line 720
    goto :goto_22

    .line 721
    :cond_3c
    move v2, v4

    .line 722
    :goto_22
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v2

    .line 726
    check-cast v2, Lw/m;

    .line 727
    .line 728
    iget-object v3, v2, Lw/m;->b:Lv/d;

    .line 729
    .line 730
    iget-object v10, v2, Lw/m;->i:Lw/f;

    .line 731
    .line 732
    iget-object v12, v2, Lw/m;->h:Lw/f;

    .line 733
    .line 734
    iget v3, v3, Lv/d;->V:I

    .line 735
    .line 736
    const/16 v13, 0x8

    .line 737
    .line 738
    if-ne v3, v13, :cond_3d

    .line 739
    .line 740
    invoke-virtual {v12, v1}, Lw/f;->d(I)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v10, v1}, Lw/f;->d(I)V

    .line 744
    .line 745
    .line 746
    goto :goto_28

    .line 747
    :cond_3d
    if-eqz v22, :cond_3e

    .line 748
    .line 749
    sub-int/2addr v1, v5

    .line 750
    goto :goto_23

    .line 751
    :cond_3e
    add-int/2addr v1, v5

    .line 752
    :goto_23
    if-lez v4, :cond_40

    .line 753
    .line 754
    if-lt v4, v8, :cond_40

    .line 755
    .line 756
    if-eqz v22, :cond_3f

    .line 757
    .line 758
    iget v3, v12, Lw/f;->f:I

    .line 759
    .line 760
    sub-int/2addr v1, v3

    .line 761
    goto :goto_24

    .line 762
    :cond_3f
    iget v3, v12, Lw/f;->f:I

    .line 763
    .line 764
    add-int/2addr v1, v3

    .line 765
    :cond_40
    :goto_24
    if-eqz v22, :cond_41

    .line 766
    .line 767
    invoke-virtual {v10, v1}, Lw/f;->d(I)V

    .line 768
    .line 769
    .line 770
    goto :goto_25

    .line 771
    :cond_41
    invoke-virtual {v12, v1}, Lw/f;->d(I)V

    .line 772
    .line 773
    .line 774
    :goto_25
    iget-object v3, v2, Lw/m;->e:Lw/g;

    .line 775
    .line 776
    iget v13, v3, Lw/f;->g:I

    .line 777
    .line 778
    iget v14, v2, Lw/m;->d:I

    .line 779
    .line 780
    const/4 v15, 0x3

    .line 781
    if-ne v14, v15, :cond_42

    .line 782
    .line 783
    iget v2, v2, Lw/m;->a:I

    .line 784
    .line 785
    const/4 v15, 0x1

    .line 786
    if-ne v2, v15, :cond_42

    .line 787
    .line 788
    iget v2, v3, Lw/g;->m:I

    .line 789
    .line 790
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    .line 791
    .line 792
    .line 793
    move-result v13

    .line 794
    :cond_42
    if-eqz v22, :cond_43

    .line 795
    .line 796
    sub-int/2addr v1, v13

    .line 797
    goto :goto_26

    .line 798
    :cond_43
    add-int/2addr v1, v13

    .line 799
    :goto_26
    if-eqz v22, :cond_44

    .line 800
    .line 801
    invoke-virtual {v12, v1}, Lw/f;->d(I)V

    .line 802
    .line 803
    .line 804
    goto :goto_27

    .line 805
    :cond_44
    invoke-virtual {v10, v1}, Lw/f;->d(I)V

    .line 806
    .line 807
    .line 808
    :goto_27
    if-ge v4, v11, :cond_46

    .line 809
    .line 810
    if-ge v4, v9, :cond_46

    .line 811
    .line 812
    if-eqz v22, :cond_45

    .line 813
    .line 814
    iget v2, v10, Lw/f;->f:I

    .line 815
    .line 816
    neg-int v2, v2

    .line 817
    sub-int/2addr v1, v2

    .line 818
    goto :goto_28

    .line 819
    :cond_45
    iget v2, v10, Lw/f;->f:I

    .line 820
    .line 821
    neg-int v2, v2

    .line 822
    add-int/2addr v1, v2

    .line 823
    :cond_46
    :goto_28
    add-int/lit8 v4, v4, 0x1

    .line 824
    .line 825
    goto :goto_21

    .line 826
    :cond_47
    const/4 v4, 0x2

    .line 827
    if-ne v2, v4, :cond_58

    .line 828
    .line 829
    iget v2, v0, Lw/m;->f:I

    .line 830
    .line 831
    if-nez v2, :cond_48

    .line 832
    .line 833
    iget-object v2, v0, Lw/m;->b:Lv/d;

    .line 834
    .line 835
    iget v2, v2, Lv/d;->S:F

    .line 836
    .line 837
    goto :goto_29

    .line 838
    :cond_48
    iget-object v2, v0, Lw/m;->b:Lv/d;

    .line 839
    .line 840
    iget v2, v2, Lv/d;->T:F

    .line 841
    .line 842
    :goto_29
    if-eqz v22, :cond_49

    .line 843
    .line 844
    const/high16 v4, 0x3f800000    # 1.0f

    .line 845
    .line 846
    sub-float v2, v4, v2

    .line 847
    .line 848
    :cond_49
    sub-int/2addr v5, v15

    .line 849
    int-to-float v4, v5

    .line 850
    mul-float/2addr v4, v2

    .line 851
    add-float v4, v4, v18

    .line 852
    .line 853
    float-to-int v2, v4

    .line 854
    if-ltz v2, :cond_4a

    .line 855
    .line 856
    if-lez v3, :cond_4b

    .line 857
    .line 858
    :cond_4a
    move v2, v1

    .line 859
    :cond_4b
    if-eqz v22, :cond_4c

    .line 860
    .line 861
    sub-int v2, v17, v2

    .line 862
    .line 863
    goto :goto_2a

    .line 864
    :cond_4c
    add-int v2, v17, v2

    .line 865
    .line 866
    :goto_2a
    move v4, v1

    .line 867
    :goto_2b
    if-ge v4, v7, :cond_58

    .line 868
    .line 869
    if-eqz v22, :cond_4d

    .line 870
    .line 871
    add-int/lit8 v1, v4, 0x1

    .line 872
    .line 873
    sub-int v1, v7, v1

    .line 874
    .line 875
    goto :goto_2c

    .line 876
    :cond_4d
    move v1, v4

    .line 877
    :goto_2c
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    check-cast v1, Lw/m;

    .line 882
    .line 883
    iget-object v3, v1, Lw/m;->b:Lv/d;

    .line 884
    .line 885
    iget-object v5, v1, Lw/m;->i:Lw/f;

    .line 886
    .line 887
    iget-object v10, v1, Lw/m;->h:Lw/f;

    .line 888
    .line 889
    iget v3, v3, Lv/d;->V:I

    .line 890
    .line 891
    const/16 v12, 0x8

    .line 892
    .line 893
    if-ne v3, v12, :cond_4e

    .line 894
    .line 895
    invoke-virtual {v10, v2}, Lw/f;->d(I)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v5, v2}, Lw/f;->d(I)V

    .line 899
    .line 900
    .line 901
    const/4 v14, 0x1

    .line 902
    const/4 v15, 0x3

    .line 903
    goto :goto_32

    .line 904
    :cond_4e
    if-lez v4, :cond_50

    .line 905
    .line 906
    if-lt v4, v8, :cond_50

    .line 907
    .line 908
    if-eqz v22, :cond_4f

    .line 909
    .line 910
    iget v3, v10, Lw/f;->f:I

    .line 911
    .line 912
    sub-int/2addr v2, v3

    .line 913
    goto :goto_2d

    .line 914
    :cond_4f
    iget v3, v10, Lw/f;->f:I

    .line 915
    .line 916
    add-int/2addr v2, v3

    .line 917
    :cond_50
    :goto_2d
    if-eqz v22, :cond_51

    .line 918
    .line 919
    invoke-virtual {v5, v2}, Lw/f;->d(I)V

    .line 920
    .line 921
    .line 922
    goto :goto_2e

    .line 923
    :cond_51
    invoke-virtual {v10, v2}, Lw/f;->d(I)V

    .line 924
    .line 925
    .line 926
    :goto_2e
    iget-object v3, v1, Lw/m;->e:Lw/g;

    .line 927
    .line 928
    iget v13, v3, Lw/f;->g:I

    .line 929
    .line 930
    iget v14, v1, Lw/m;->d:I

    .line 931
    .line 932
    const/4 v15, 0x3

    .line 933
    if-ne v14, v15, :cond_52

    .line 934
    .line 935
    iget v1, v1, Lw/m;->a:I

    .line 936
    .line 937
    const/4 v14, 0x1

    .line 938
    if-ne v1, v14, :cond_53

    .line 939
    .line 940
    iget v13, v3, Lw/g;->m:I

    .line 941
    .line 942
    goto :goto_2f

    .line 943
    :cond_52
    const/4 v14, 0x1

    .line 944
    :cond_53
    :goto_2f
    if-eqz v22, :cond_54

    .line 945
    .line 946
    sub-int/2addr v2, v13

    .line 947
    goto :goto_30

    .line 948
    :cond_54
    add-int/2addr v2, v13

    .line 949
    :goto_30
    if-eqz v22, :cond_55

    .line 950
    .line 951
    invoke-virtual {v10, v2}, Lw/f;->d(I)V

    .line 952
    .line 953
    .line 954
    goto :goto_31

    .line 955
    :cond_55
    invoke-virtual {v5, v2}, Lw/f;->d(I)V

    .line 956
    .line 957
    .line 958
    :goto_31
    if-ge v4, v11, :cond_57

    .line 959
    .line 960
    if-ge v4, v9, :cond_57

    .line 961
    .line 962
    if-eqz v22, :cond_56

    .line 963
    .line 964
    iget v1, v5, Lw/f;->f:I

    .line 965
    .line 966
    neg-int v1, v1

    .line 967
    sub-int/2addr v2, v1

    .line 968
    goto :goto_32

    .line 969
    :cond_56
    iget v1, v5, Lw/f;->f:I

    .line 970
    .line 971
    neg-int v1, v1

    .line 972
    add-int/2addr v2, v1

    .line 973
    :cond_57
    :goto_32
    add-int/lit8 v4, v4, 0x1

    .line 974
    .line 975
    goto :goto_2b

    .line 976
    :cond_58
    :goto_33
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

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
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    check-cast v4, Lw/m;

    .line 18
    .line 19
    invoke-virtual {v4}, Lw/m;->d()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v3, 0x1

    .line 28
    if-ge v1, v3, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lw/m;

    .line 36
    .line 37
    iget-object v4, v4, Lw/m;->b:Lv/d;

    .line 38
    .line 39
    sub-int/2addr v1, v3

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lw/m;

    .line 45
    .line 46
    iget-object v0, v0, Lw/m;->b:Lv/d;

    .line 47
    .line 48
    iget v1, p0, Lw/m;->f:I

    .line 49
    .line 50
    iget-object v5, p0, Lw/m;->i:Lw/f;

    .line 51
    .line 52
    iget-object v6, p0, Lw/m;->h:Lw/f;

    .line 53
    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    iget-object v1, v4, Lv/d;->x:Lv/c;

    .line 57
    .line 58
    iget-object v0, v0, Lv/d;->z:Lv/c;

    .line 59
    .line 60
    invoke-static {v1, v2}, Lw/m;->i(Lv/c;I)Lw/f;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v1}, Lv/c;->c()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p0}, Lw/c;->m()Lv/d;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    iget-object v1, v4, Lv/d;->x:Lv/c;

    .line 75
    .line 76
    invoke-virtual {v1}, Lv/c;->c()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    :cond_2
    if-eqz v3, :cond_3

    .line 81
    .line 82
    invoke-static {v6, v3, v1}, Lw/m;->b(Lw/f;Lw/f;I)V

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-static {v0, v2}, Lw/m;->i(Lv/c;I)Lw/f;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0}, Lv/c;->c()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p0}, Lw/c;->n()Lv/d;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    iget-object v0, v2, Lv/d;->z:Lv/c;

    .line 100
    .line 101
    invoke-virtual {v0}, Lv/c;->c()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    :cond_4
    if-eqz v1, :cond_9

    .line 106
    .line 107
    neg-int v0, v0

    .line 108
    invoke-static {v5, v1, v0}, Lw/m;->b(Lw/f;Lw/f;I)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    iget-object v1, v4, Lv/d;->y:Lv/c;

    .line 113
    .line 114
    iget-object v0, v0, Lv/d;->A:Lv/c;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lw/m;->i(Lv/c;I)Lw/f;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1}, Lv/c;->c()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-virtual {p0}, Lw/c;->m()Lv/d;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    if-eqz v4, :cond_6

    .line 129
    .line 130
    iget-object v1, v4, Lv/d;->y:Lv/c;

    .line 131
    .line 132
    invoke-virtual {v1}, Lv/c;->c()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    :cond_6
    if-eqz v2, :cond_7

    .line 137
    .line 138
    invoke-static {v6, v2, v1}, Lw/m;->b(Lw/f;Lw/f;I)V

    .line 139
    .line 140
    .line 141
    :cond_7
    invoke-static {v0, v3}, Lw/m;->i(Lv/c;I)Lw/f;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0}, Lv/c;->c()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-virtual {p0}, Lw/c;->n()Lv/d;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    if-eqz v2, :cond_8

    .line 154
    .line 155
    iget-object v0, v2, Lv/d;->A:Lv/c;

    .line 156
    .line 157
    invoke-virtual {v0}, Lv/c;->c()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    :cond_8
    if-eqz v1, :cond_9

    .line 162
    .line 163
    neg-int v0, v0

    .line 164
    invoke-static {v5, v1, v0}, Lw/m;->b(Lw/f;Lw/f;I)V

    .line 165
    .line 166
    .line 167
    :cond_9
    :goto_1
    iput-object p0, v6, Lw/f;->a:Lw/m;

    .line 168
    .line 169
    iput-object p0, v5, Lw/f;->a:Lw/m;

    .line 170
    .line 171
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lw/m;

    .line 15
    .line 16
    invoke-virtual {v1}, Lw/m;->e()V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lw/m;->c:Lw/k;

    .line 3
    .line 4
    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

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
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    check-cast v3, Lw/m;

    .line 20
    .line 21
    invoke-virtual {v3}, Lw/m;->f()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final j()J
    .locals 8

    .line 1
    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v4, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Lw/m;

    .line 17
    .line 18
    iget-object v6, v5, Lw/m;->h:Lw/f;

    .line 19
    .line 20
    iget v6, v6, Lw/f;->f:I

    .line 21
    .line 22
    int-to-long v6, v6

    .line 23
    add-long/2addr v2, v6

    .line 24
    invoke-virtual {v5}, Lw/m;->j()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    add-long/2addr v6, v2

    .line 29
    iget-object v2, v5, Lw/m;->i:Lw/f;

    .line 30
    .line 31
    iget v2, v2, Lw/f;->f:I

    .line 32
    .line 33
    int-to-long v2, v2

    .line 34
    add-long/2addr v2, v6

    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-wide v2
.end method

.method public final k()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

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
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lw/m;

    .line 16
    .line 17
    invoke-virtual {v4}, Lw/m;->k()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public final m()Lv/d;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lw/m;

    .line 15
    .line 16
    iget-object v1, v1, Lw/m;->b:Lv/d;

    .line 17
    .line 18
    iget v2, v1, Lv/d;->V:I

    .line 19
    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public final n()Lv/d;
    .locals 5

    .line 1
    iget-object v0, p0, Lw/c;->k:Ljava/util/ArrayList;

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
    if-ltz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lw/m;

    .line 16
    .line 17
    iget-object v2, v2, Lw/m;->b:Lv/d;

    .line 18
    .line 19
    iget v3, v2, Lv/d;->V:I

    .line 20
    .line 21
    const/16 v4, 0x8

    .line 22
    .line 23
    if-eq v3, v4, :cond_0

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lw/m;->f:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "horizontal : "

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "vertical : "

    .line 9
    .line 10
    :goto_0
    const-string v1, "ChainRun "

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lw/c;->k:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_1
    if-ge v3, v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    check-cast v4, Lw/m;

    .line 32
    .line 33
    const-string v5, "<"

    .line 34
    .line 35
    invoke-static {v0, v5}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v4, "> "

    .line 55
    .line 56
    invoke-static {v0, v4}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    return-object v0
.end method
