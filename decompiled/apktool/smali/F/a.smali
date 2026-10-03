.class public final LF/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:LF/b;


# direct methods
.method public constructor <init>(LF/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LF/a;->a:LF/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LF/a;->a:LF/b;

    .line 4
    .line 5
    iget-object v1, v1, LF/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LA1/b;

    .line 8
    .line 9
    iget-object v1, v1, LA1/b;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, LF/c;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-object v4, v1, LF/c;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    const/4 v8, 0x0

    .line 24
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    if-ge v8, v9, :cond_10

    .line 29
    .line 30
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    check-cast v9, LF/f;

    .line 35
    .line 36
    if-nez v9, :cond_1

    .line 37
    .line 38
    :cond_0
    :goto_1
    move-wide/from16 v16, v2

    .line 39
    .line 40
    move-wide/from16 v18, v5

    .line 41
    .line 42
    move v15, v8

    .line 43
    goto/16 :goto_8

    .line 44
    .line 45
    :cond_1
    iget-object v11, v1, LF/c;->a:Lq/j;

    .line 46
    .line 47
    invoke-virtual {v11, v9}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    check-cast v12, Ljava/lang/Long;

    .line 52
    .line 53
    if-nez v12, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v12

    .line 60
    cmp-long v12, v12, v5

    .line 61
    .line 62
    if-gez v12, :cond_0

    .line 63
    .line 64
    invoke-virtual {v11, v9}, Lq/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :goto_2
    iget-wide v11, v9, LF/f;->h:J

    .line 68
    .line 69
    const-wide/16 v13, 0x0

    .line 70
    .line 71
    cmp-long v15, v11, v13

    .line 72
    .line 73
    if-nez v15, :cond_3

    .line 74
    .line 75
    iput-wide v2, v9, LF/f;->h:J

    .line 76
    .line 77
    iget v10, v9, LF/f;->b:F

    .line 78
    .line 79
    invoke-virtual {v9, v10}, LF/f;->b(F)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    sub-long v20, v2, v11

    .line 84
    .line 85
    iput-wide v2, v9, LF/f;->h:J

    .line 86
    .line 87
    iget v11, v9, LF/f;->m:F

    .line 88
    .line 89
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    .line 90
    .line 91
    .line 92
    cmpl-float v11, v11, v12

    .line 93
    .line 94
    if-eqz v11, :cond_4

    .line 95
    .line 96
    iget-object v11, v9, LF/f;->l:LF/g;

    .line 97
    .line 98
    iget-wide v13, v11, LF/g;->i:D

    .line 99
    .line 100
    iget v13, v9, LF/f;->b:F

    .line 101
    .line 102
    float-to-double v13, v13

    .line 103
    iget v15, v9, LF/f;->a:F

    .line 104
    .line 105
    move-object/from16 v22, v11

    .line 106
    .line 107
    float-to-double v10, v15

    .line 108
    const-wide/16 v15, 0x2

    .line 109
    .line 110
    div-long v35, v20, v15

    .line 111
    .line 112
    move-wide/from16 v25, v10

    .line 113
    .line 114
    move-wide/from16 v23, v13

    .line 115
    .line 116
    move-wide/from16 v27, v35

    .line 117
    .line 118
    invoke-virtual/range {v22 .. v28}, LF/g;->a(DDJ)LF/d;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    iget-object v11, v9, LF/f;->l:LF/g;

    .line 123
    .line 124
    iget v13, v9, LF/f;->m:F

    .line 125
    .line 126
    float-to-double v13, v13

    .line 127
    iput-wide v13, v11, LF/g;->i:D

    .line 128
    .line 129
    iput v12, v9, LF/f;->m:F

    .line 130
    .line 131
    iget v12, v10, LF/d;->a:F

    .line 132
    .line 133
    float-to-double v12, v12

    .line 134
    iget v10, v10, LF/d;->b:F

    .line 135
    .line 136
    float-to-double v14, v10

    .line 137
    move-object/from16 v30, v11

    .line 138
    .line 139
    move-wide/from16 v31, v12

    .line 140
    .line 141
    move-wide/from16 v33, v14

    .line 142
    .line 143
    invoke-virtual/range {v30 .. v36}, LF/g;->a(DDJ)LF/d;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    iget v11, v10, LF/d;->a:F

    .line 148
    .line 149
    iput v11, v9, LF/f;->b:F

    .line 150
    .line 151
    iget v10, v10, LF/d;->b:F

    .line 152
    .line 153
    iput v10, v9, LF/f;->a:F

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_4
    iget-object v15, v9, LF/f;->l:LF/g;

    .line 157
    .line 158
    iget v10, v9, LF/f;->b:F

    .line 159
    .line 160
    float-to-double v10, v10

    .line 161
    iget v12, v9, LF/f;->a:F

    .line 162
    .line 163
    float-to-double v12, v12

    .line 164
    move-wide/from16 v16, v10

    .line 165
    .line 166
    move-wide/from16 v18, v12

    .line 167
    .line 168
    invoke-virtual/range {v15 .. v21}, LF/g;->a(DDJ)LF/d;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    iget v11, v10, LF/d;->a:F

    .line 173
    .line 174
    iput v11, v9, LF/f;->b:F

    .line 175
    .line 176
    iget v10, v10, LF/d;->b:F

    .line 177
    .line 178
    iput v10, v9, LF/f;->a:F

    .line 179
    .line 180
    :goto_3
    iget v10, v9, LF/f;->b:F

    .line 181
    .line 182
    iget v11, v9, LF/f;->g:F

    .line 183
    .line 184
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    iput v10, v9, LF/f;->b:F

    .line 189
    .line 190
    iget v11, v9, LF/f;->f:F

    .line 191
    .line 192
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    iput v10, v9, LF/f;->b:F

    .line 197
    .line 198
    iget v11, v9, LF/f;->a:F

    .line 199
    .line 200
    iget-object v12, v9, LF/f;->l:LF/g;

    .line 201
    .line 202
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    float-to-double v13, v11

    .line 210
    move v15, v8

    .line 211
    iget-wide v7, v12, LF/g;->e:D

    .line 212
    .line 213
    cmpg-double v7, v13, v7

    .line 214
    .line 215
    if-gez v7, :cond_5

    .line 216
    .line 217
    iget-wide v7, v12, LF/g;->i:D

    .line 218
    .line 219
    double-to-float v7, v7

    .line 220
    sub-float/2addr v10, v7

    .line 221
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    float-to-double v7, v7

    .line 226
    iget-wide v12, v12, LF/g;->d:D

    .line 227
    .line 228
    cmpg-double v7, v7, v12

    .line 229
    .line 230
    if-gez v7, :cond_5

    .line 231
    .line 232
    iget-object v7, v9, LF/f;->l:LF/g;

    .line 233
    .line 234
    iget-wide v7, v7, LF/g;->i:D

    .line 235
    .line 236
    double-to-float v7, v7

    .line 237
    iput v7, v9, LF/f;->b:F

    .line 238
    .line 239
    const/4 v7, 0x0

    .line 240
    iput v7, v9, LF/f;->a:F

    .line 241
    .line 242
    const/4 v7, 0x1

    .line 243
    goto :goto_4

    .line 244
    :cond_5
    const/4 v7, 0x0

    .line 245
    :goto_4
    iget v8, v9, LF/f;->b:F

    .line 246
    .line 247
    iget v10, v9, LF/f;->f:F

    .line 248
    .line 249
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    iput v8, v9, LF/f;->b:F

    .line 254
    .line 255
    iget v10, v9, LF/f;->g:F

    .line 256
    .line 257
    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    iput v8, v9, LF/f;->b:F

    .line 262
    .line 263
    invoke-virtual {v9, v8}, LF/f;->b(F)V

    .line 264
    .line 265
    .line 266
    if-eqz v7, :cond_e

    .line 267
    .line 268
    iget-object v7, v9, LF/f;->j:Ljava/util/ArrayList;

    .line 269
    .line 270
    const/4 v11, 0x0

    .line 271
    iput-boolean v11, v9, LF/f;->e:Z

    .line 272
    .line 273
    sget-object v8, LF/c;->f:Ljava/lang/ThreadLocal;

    .line 274
    .line 275
    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    if-nez v10, :cond_6

    .line 280
    .line 281
    new-instance v10, LF/c;

    .line 282
    .line 283
    invoke-direct {v10}, LF/c;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v8, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :cond_6
    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    check-cast v8, LF/c;

    .line 294
    .line 295
    iget-object v10, v8, LF/c;->a:Lq/j;

    .line 296
    .line 297
    invoke-virtual {v10, v9}, Lq/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    iget-object v10, v8, LF/c;->b:Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 303
    .line 304
    .line 305
    move-result v12

    .line 306
    const/4 v13, 0x0

    .line 307
    if-ltz v12, :cond_7

    .line 308
    .line 309
    invoke-virtual {v10, v12, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    const/4 v10, 0x1

    .line 313
    iput-boolean v10, v8, LF/c;->e:Z

    .line 314
    .line 315
    :cond_7
    const-wide/16 v11, 0x0

    .line 316
    .line 317
    iput-wide v11, v9, LF/f;->h:J

    .line 318
    .line 319
    const/4 v11, 0x0

    .line 320
    iput-boolean v11, v9, LF/f;->c:Z

    .line 321
    .line 322
    const/4 v8, 0x0

    .line 323
    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 324
    .line 325
    .line 326
    move-result v10

    .line 327
    if-ge v8, v10, :cond_c

    .line 328
    .line 329
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    if-eqz v10, :cond_a

    .line 334
    .line 335
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v10

    .line 339
    check-cast v10, LS/r;

    .line 340
    .line 341
    iget v12, v9, LF/f;->b:F

    .line 342
    .line 343
    iget-object v10, v10, LS/r;->a:LS/s;

    .line 344
    .line 345
    iget-object v14, v10, LS/s;->g:LS/B;

    .line 346
    .line 347
    const/high16 v16, 0x3f800000    # 1.0f

    .line 348
    .line 349
    cmpg-float v12, v12, v16

    .line 350
    .line 351
    sget-object v11, LS/u;->c:LS/u;

    .line 352
    .line 353
    if-gez v12, :cond_9

    .line 354
    .line 355
    move-wide/from16 v16, v2

    .line 356
    .line 357
    iget-wide v2, v14, LS/v;->y:J

    .line 358
    .line 359
    const/4 v12, 0x0

    .line 360
    invoke-virtual {v14, v12}, LS/B;->P(I)LS/v;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    iget-object v12, v0, LS/v;->t:LS/v;

    .line 365
    .line 366
    iput-object v13, v0, LS/v;->t:LS/v;

    .line 367
    .line 368
    move-wide/from16 v18, v5

    .line 369
    .line 370
    iget-wide v5, v10, LS/s;->a:J

    .line 371
    .line 372
    move v0, v8

    .line 373
    move-object/from16 p2, v9

    .line 374
    .line 375
    const-wide/16 v8, -0x1

    .line 376
    .line 377
    invoke-virtual {v14, v8, v9, v5, v6}, LS/B;->F(JJ)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v14, v2, v3, v8, v9}, LS/B;->F(JJ)V

    .line 381
    .line 382
    .line 383
    iput-wide v2, v10, LS/s;->a:J

    .line 384
    .line 385
    iget-object v2, v10, LS/s;->f:Ljava/lang/Runnable;

    .line 386
    .line 387
    if-eqz v2, :cond_8

    .line 388
    .line 389
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 390
    .line 391
    .line 392
    :cond_8
    iget-object v2, v14, LS/v;->v:Ljava/util/ArrayList;

    .line 393
    .line 394
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 395
    .line 396
    .line 397
    if-eqz v12, :cond_b

    .line 398
    .line 399
    const/4 v10, 0x1

    .line 400
    invoke-virtual {v12, v12, v11, v10}, LS/v;->y(LS/v;LS/u;Z)V

    .line 401
    .line 402
    .line 403
    goto :goto_6

    .line 404
    :cond_9
    move-wide/from16 v16, v2

    .line 405
    .line 406
    move-wide/from16 v18, v5

    .line 407
    .line 408
    move v0, v8

    .line 409
    move-object/from16 p2, v9

    .line 410
    .line 411
    const/4 v8, 0x0

    .line 412
    const/4 v10, 0x1

    .line 413
    invoke-virtual {v14, v14, v11, v8}, LS/v;->y(LS/v;LS/u;Z)V

    .line 414
    .line 415
    .line 416
    goto :goto_6

    .line 417
    :cond_a
    move-wide/from16 v16, v2

    .line 418
    .line 419
    move-wide/from16 v18, v5

    .line 420
    .line 421
    move v0, v8

    .line 422
    move-object/from16 p2, v9

    .line 423
    .line 424
    :cond_b
    const/4 v10, 0x1

    .line 425
    :goto_6
    add-int/lit8 v8, v0, 0x1

    .line 426
    .line 427
    move-object/from16 v0, p0

    .line 428
    .line 429
    move-object/from16 v9, p2

    .line 430
    .line 431
    move-wide/from16 v2, v16

    .line 432
    .line 433
    move-wide/from16 v5, v18

    .line 434
    .line 435
    goto :goto_5

    .line 436
    :cond_c
    move-wide/from16 v16, v2

    .line 437
    .line 438
    move-wide/from16 v18, v5

    .line 439
    .line 440
    const/4 v10, 0x1

    .line 441
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    sub-int/2addr v0, v10

    .line 446
    :goto_7
    if-ltz v0, :cond_f

    .line 447
    .line 448
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    if-nez v2, :cond_d

    .line 453
    .line 454
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    :cond_d
    add-int/lit8 v0, v0, -0x1

    .line 458
    .line 459
    goto :goto_7

    .line 460
    :cond_e
    move-wide/from16 v16, v2

    .line 461
    .line 462
    move-wide/from16 v18, v5

    .line 463
    .line 464
    :cond_f
    :goto_8
    add-int/lit8 v8, v15, 0x1

    .line 465
    .line 466
    move-object/from16 v0, p0

    .line 467
    .line 468
    move-wide/from16 v2, v16

    .line 469
    .line 470
    move-wide/from16 v5, v18

    .line 471
    .line 472
    goto/16 :goto_0

    .line 473
    .line 474
    :cond_10
    iget-boolean v0, v1, LF/c;->e:Z

    .line 475
    .line 476
    if-eqz v0, :cond_13

    .line 477
    .line 478
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    const/16 v29, 0x1

    .line 483
    .line 484
    add-int/lit8 v0, v0, -0x1

    .line 485
    .line 486
    :goto_9
    if-ltz v0, :cond_12

    .line 487
    .line 488
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    if-nez v2, :cond_11

    .line 493
    .line 494
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    :cond_11
    add-int/lit8 v0, v0, -0x1

    .line 498
    .line 499
    goto :goto_9

    .line 500
    :cond_12
    const/4 v11, 0x0

    .line 501
    iput-boolean v11, v1, LF/c;->e:Z

    .line 502
    .line 503
    :cond_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-lez v0, :cond_15

    .line 508
    .line 509
    iget-object v0, v1, LF/c;->d:LF/b;

    .line 510
    .line 511
    if-nez v0, :cond_14

    .line 512
    .line 513
    new-instance v0, LF/b;

    .line 514
    .line 515
    iget-object v2, v1, LF/c;->c:LA1/b;

    .line 516
    .line 517
    invoke-direct {v0, v2}, LF/b;-><init>(LA1/b;)V

    .line 518
    .line 519
    .line 520
    iput-object v0, v1, LF/c;->d:LF/b;

    .line 521
    .line 522
    :cond_14
    iget-object v0, v1, LF/c;->d:LF/b;

    .line 523
    .line 524
    iget-object v1, v0, LF/b;->d:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v1, Landroid/view/Choreographer;

    .line 527
    .line 528
    iget-object v0, v0, LF/b;->e:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v0, LF/a;

    .line 531
    .line 532
    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 533
    .line 534
    .line 535
    :cond_15
    return-void
.end method
