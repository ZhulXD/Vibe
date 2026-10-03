.class public final LS/s;
.super LS/w;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public a:J

.field public b:Z

.field public c:Z

.field public d:LF/f;

.field public final e:LS/F;

.field public f:Ljava/lang/Runnable;

.field public final synthetic g:LS/B;


# direct methods
.method public constructor <init>(LS/B;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LS/s;->g:LS/B;

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, LS/s;->a:J

    .line 9
    .line 10
    new-instance p1, LS/F;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x14

    .line 16
    .line 17
    new-array v1, v0, [J

    .line 18
    .line 19
    iput-object v1, p1, LS/F;->b:Ljava/lang/Object;

    .line 20
    .line 21
    new-array v0, v0, [F

    .line 22
    .line 23
    iput-object v0, p1, LS/F;->c:Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p1, LS/F;->a:I

    .line 27
    .line 28
    const-wide/high16 v2, -0x8000000000000000L

    .line 29
    .line 30
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, LS/s;->e:LS/F;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final e(LS/v;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, LS/s;->c:Z

    .line 3
    .line 4
    return-void
.end method

.method public final g()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LS/s;->d:LF/f;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iget-wide v3, v0, LS/s;->a:J

    .line 14
    .line 15
    long-to-float v3, v3

    .line 16
    iget-object v4, v0, LS/s;->e:LS/F;

    .line 17
    .line 18
    iget v5, v4, LS/F;->a:I

    .line 19
    .line 20
    iget-object v6, v4, LS/F;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v6, [F

    .line 23
    .line 24
    iget-object v7, v4, LS/F;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v7, [J

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    add-int/2addr v5, v8

    .line 30
    const/16 v9, 0x14

    .line 31
    .line 32
    rem-int/2addr v5, v9

    .line 33
    iput v5, v4, LS/F;->a:I

    .line 34
    .line 35
    aput-wide v1, v7, v5

    .line 36
    .line 37
    aput v3, v6, v5

    .line 38
    .line 39
    new-instance v1, LF/f;

    .line 40
    .line 41
    new-instance v2, LF/e;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    iput v3, v2, LF/e;->a:F

    .line 48
    .line 49
    invoke-direct {v1, v2}, LF/f;-><init>(LF/e;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, v0, LS/s;->d:LF/f;

    .line 53
    .line 54
    new-instance v1, LF/g;

    .line 55
    .line 56
    invoke-direct {v1}, LF/g;-><init>()V

    .line 57
    .line 58
    .line 59
    const/high16 v2, 0x3f800000    # 1.0f

    .line 60
    .line 61
    float-to-double v10, v2

    .line 62
    iput-wide v10, v1, LF/g;->b:D

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    iput-boolean v2, v1, LF/g;->c:Z

    .line 66
    .line 67
    const/high16 v5, 0x43480000    # 200.0f

    .line 68
    .line 69
    float-to-double v10, v5

    .line 70
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 71
    .line 72
    .line 73
    move-result-wide v10

    .line 74
    iput-wide v10, v1, LF/g;->a:D

    .line 75
    .line 76
    iput-boolean v2, v1, LF/g;->c:Z

    .line 77
    .line 78
    iget-object v5, v0, LS/s;->d:LF/f;

    .line 79
    .line 80
    iput-object v1, v5, LF/f;->l:LF/g;

    .line 81
    .line 82
    iget-wide v10, v0, LS/s;->a:J

    .line 83
    .line 84
    long-to-float v1, v10

    .line 85
    iput v1, v5, LF/f;->b:F

    .line 86
    .line 87
    iput-boolean v8, v5, LF/f;->c:Z

    .line 88
    .line 89
    iget-object v1, v5, LF/f;->k:Ljava/util/ArrayList;

    .line 90
    .line 91
    iget-boolean v5, v5, LF/f;->e:Z

    .line 92
    .line 93
    if-nez v5, :cond_10

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_1

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_1
    iget-object v1, v0, LS/s;->d:LF/f;

    .line 105
    .line 106
    iget v5, v4, LS/F;->a:I

    .line 107
    .line 108
    const-wide/high16 v10, -0x8000000000000000L

    .line 109
    .line 110
    if-nez v5, :cond_2

    .line 111
    .line 112
    aget-wide v12, v7, v5

    .line 113
    .line 114
    cmp-long v12, v12, v10

    .line 115
    .line 116
    if-nez v12, :cond_2

    .line 117
    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :cond_2
    aget-wide v12, v7, v5

    .line 121
    .line 122
    move-wide v14, v12

    .line 123
    :goto_0
    aget-wide v16, v7, v5

    .line 124
    .line 125
    cmp-long v18, v16, v10

    .line 126
    .line 127
    if-nez v18, :cond_3

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    sub-long v10, v12, v16

    .line 131
    .line 132
    long-to-float v10, v10

    .line 133
    sub-long v14, v16, v14

    .line 134
    .line 135
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    .line 136
    .line 137
    .line 138
    move-result-wide v14

    .line 139
    long-to-float v11, v14

    .line 140
    const/high16 v14, 0x42c80000    # 100.0f

    .line 141
    .line 142
    cmpl-float v10, v10, v14

    .line 143
    .line 144
    if-gtz v10, :cond_7

    .line 145
    .line 146
    const/high16 v10, 0x42200000    # 40.0f

    .line 147
    .line 148
    cmpl-float v10, v11, v10

    .line 149
    .line 150
    if-lez v10, :cond_4

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    if-nez v5, :cond_5

    .line 154
    .line 155
    move v5, v9

    .line 156
    :cond_5
    sub-int/2addr v5, v8

    .line 157
    add-int/lit8 v2, v2, 0x1

    .line 158
    .line 159
    if-lt v2, v9, :cond_6

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_6
    move-wide/from16 v14, v16

    .line 163
    .line 164
    const-wide/high16 v10, -0x8000000000000000L

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_7
    :goto_1
    const/4 v5, 0x2

    .line 168
    if-ge v2, v5, :cond_8

    .line 169
    .line 170
    goto/16 :goto_5

    .line 171
    .line 172
    :cond_8
    const/high16 v10, 0x447a0000    # 1000.0f

    .line 173
    .line 174
    if-ne v2, v5, :cond_b

    .line 175
    .line 176
    iget v2, v4, LS/F;->a:I

    .line 177
    .line 178
    if-nez v2, :cond_9

    .line 179
    .line 180
    const/16 v4, 0x13

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_9
    add-int/lit8 v4, v2, -0x1

    .line 184
    .line 185
    :goto_2
    aget-wide v8, v7, v2

    .line 186
    .line 187
    aget-wide v11, v7, v4

    .line 188
    .line 189
    sub-long/2addr v8, v11

    .line 190
    long-to-float v5, v8

    .line 191
    cmpl-float v7, v5, v3

    .line 192
    .line 193
    if-nez v7, :cond_a

    .line 194
    .line 195
    goto/16 :goto_5

    .line 196
    .line 197
    :cond_a
    aget v2, v6, v2

    .line 198
    .line 199
    aget v3, v6, v4

    .line 200
    .line 201
    sub-float/2addr v2, v3

    .line 202
    div-float/2addr v2, v5

    .line 203
    mul-float v3, v2, v10

    .line 204
    .line 205
    goto/16 :goto_5

    .line 206
    .line 207
    :cond_b
    iget v4, v4, LS/F;->a:I

    .line 208
    .line 209
    sub-int v2, v4, v2

    .line 210
    .line 211
    add-int/lit8 v2, v2, 0x15

    .line 212
    .line 213
    rem-int/2addr v2, v9

    .line 214
    add-int/lit8 v4, v4, 0x15

    .line 215
    .line 216
    rem-int/2addr v4, v9

    .line 217
    aget-wide v11, v7, v2

    .line 218
    .line 219
    aget v5, v6, v2

    .line 220
    .line 221
    add-int/2addr v2, v8

    .line 222
    rem-int/lit8 v8, v2, 0x14

    .line 223
    .line 224
    move v13, v3

    .line 225
    :goto_3
    const/high16 v14, 0x40000000    # 2.0f

    .line 226
    .line 227
    if-eq v8, v4, :cond_e

    .line 228
    .line 229
    aget-wide v15, v7, v8

    .line 230
    .line 231
    move/from16 v17, v3

    .line 232
    .line 233
    move/from16 v18, v4

    .line 234
    .line 235
    sub-long v3, v15, v11

    .line 236
    .line 237
    long-to-float v3, v3

    .line 238
    cmpl-float v4, v3, v17

    .line 239
    .line 240
    if-nez v4, :cond_c

    .line 241
    .line 242
    move/from16 v19, v9

    .line 243
    .line 244
    move/from16 v20, v10

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_c
    aget v4, v6, v8

    .line 248
    .line 249
    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    .line 250
    .line 251
    .line 252
    move-result v11

    .line 253
    float-to-double v11, v11

    .line 254
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 255
    .line 256
    .line 257
    move-result v19

    .line 258
    mul-float v14, v14, v19

    .line 259
    .line 260
    move/from16 v19, v9

    .line 261
    .line 262
    move/from16 v20, v10

    .line 263
    .line 264
    float-to-double v9, v14

    .line 265
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 266
    .line 267
    .line 268
    move-result-wide v9

    .line 269
    mul-double/2addr v9, v11

    .line 270
    double-to-float v9, v9

    .line 271
    sub-float v5, v4, v5

    .line 272
    .line 273
    div-float/2addr v5, v3

    .line 274
    sub-float v3, v5, v9

    .line 275
    .line 276
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    mul-float/2addr v5, v3

    .line 281
    add-float/2addr v5, v13

    .line 282
    if-ne v8, v2, :cond_d

    .line 283
    .line 284
    const/high16 v3, 0x3f000000    # 0.5f

    .line 285
    .line 286
    mul-float/2addr v5, v3

    .line 287
    :cond_d
    move v13, v5

    .line 288
    move v5, v4

    .line 289
    move-wide v11, v15

    .line 290
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 291
    .line 292
    rem-int/lit8 v8, v8, 0x14

    .line 293
    .line 294
    move/from16 v3, v17

    .line 295
    .line 296
    move/from16 v4, v18

    .line 297
    .line 298
    move/from16 v9, v19

    .line 299
    .line 300
    move/from16 v10, v20

    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_e
    move/from16 v20, v10

    .line 304
    .line 305
    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    float-to-double v2, v2

    .line 310
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    mul-float/2addr v4, v14

    .line 315
    float-to-double v4, v4

    .line 316
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 317
    .line 318
    .line 319
    move-result-wide v4

    .line 320
    mul-double/2addr v4, v2

    .line 321
    double-to-float v2, v4

    .line 322
    mul-float v3, v2, v20

    .line 323
    .line 324
    :goto_5
    iput v3, v1, LF/f;->a:F

    .line 325
    .line 326
    iget-object v1, v0, LS/s;->d:LF/f;

    .line 327
    .line 328
    iget-object v2, v0, LS/s;->g:LS/B;

    .line 329
    .line 330
    iget-wide v2, v2, LS/v;->y:J

    .line 331
    .line 332
    const-wide/16 v4, 0x1

    .line 333
    .line 334
    add-long/2addr v2, v4

    .line 335
    long-to-float v2, v2

    .line 336
    iput v2, v1, LF/f;->f:F

    .line 337
    .line 338
    const/high16 v2, -0x40800000    # -1.0f

    .line 339
    .line 340
    iput v2, v1, LF/f;->g:F

    .line 341
    .line 342
    const/high16 v2, 0x40800000    # 4.0f

    .line 343
    .line 344
    iput v2, v1, LF/f;->i:F

    .line 345
    .line 346
    new-instance v2, LS/r;

    .line 347
    .line 348
    invoke-direct {v2, v0}, LS/r;-><init>(LS/s;)V

    .line 349
    .line 350
    .line 351
    iget-object v1, v1, LF/f;->j:Ljava/util/ArrayList;

    .line 352
    .line 353
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    if-nez v3, :cond_f

    .line 358
    .line 359
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    :cond_f
    :goto_6
    return-void

    .line 363
    :cond_10
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 364
    .line 365
    const-string v2, "Error: Update listeners must be added beforethe animation."

    .line 366
    .line 367
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw v1
.end method
