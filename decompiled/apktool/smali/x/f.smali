.class public final Lx/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lv/d;Lw/b;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v3, v1, Lv/d;->z:Lv/c;

    .line 11
    .line 12
    iget-object v4, v1, Lv/d;->x:Lv/c;

    .line 13
    .line 14
    iget-object v5, v1, Lv/d;->g:[I

    .line 15
    .line 16
    iget v6, v1, Lv/d;->V:I

    .line 17
    .line 18
    const/16 v7, 0x8

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    if-ne v6, v7, :cond_1

    .line 22
    .line 23
    iput v8, v2, Lw/b;->e:I

    .line 24
    .line 25
    iput v8, v2, Lw/b;->f:I

    .line 26
    .line 27
    iput v8, v2, Lw/b;->g:I

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget v6, v2, Lw/b;->a:I

    .line 31
    .line 32
    iget v7, v2, Lw/b;->b:I

    .line 33
    .line 34
    iget v9, v2, Lw/b;->c:I

    .line 35
    .line 36
    iget v10, v2, Lw/b;->d:I

    .line 37
    .line 38
    iget v11, v0, Lx/f;->b:I

    .line 39
    .line 40
    iget v12, v0, Lx/f;->c:I

    .line 41
    .line 42
    add-int/2addr v11, v12

    .line 43
    iget v12, v0, Lx/f;->d:I

    .line 44
    .line 45
    iget-object v13, v1, Lv/d;->U:Landroid/view/View;

    .line 46
    .line 47
    invoke-static {v6}, Lu/h;->a(I)I

    .line 48
    .line 49
    .line 50
    move-result v14

    .line 51
    const/4 v15, 0x1

    .line 52
    move/from16 v16, v8

    .line 53
    .line 54
    const/4 v8, 0x2

    .line 55
    if-eqz v14, :cond_c

    .line 56
    .line 57
    if-eq v14, v15, :cond_b

    .line 58
    .line 59
    if-eq v14, v8, :cond_5

    .line 60
    .line 61
    const/4 v9, 0x3

    .line 62
    if-eq v14, v9, :cond_2

    .line 63
    .line 64
    move/from16 v19, v8

    .line 65
    .line 66
    move/from16 v8, v16

    .line 67
    .line 68
    move v9, v8

    .line 69
    goto/16 :goto_8

    .line 70
    .line 71
    :cond_2
    iget v9, v0, Lx/f;->f:I

    .line 72
    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    iget v14, v4, Lv/c;->e:I

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move/from16 v14, v16

    .line 79
    .line 80
    :goto_0
    if-eqz v3, :cond_4

    .line 81
    .line 82
    move/from16 v19, v8

    .line 83
    .line 84
    iget v8, v3, Lv/c;->e:I

    .line 85
    .line 86
    add-int/2addr v14, v8

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    move/from16 v19, v8

    .line 89
    .line 90
    :goto_1
    add-int/2addr v12, v14

    .line 91
    const/4 v8, -0x1

    .line 92
    invoke-static {v9, v12, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    aput v8, v5, v19

    .line 97
    .line 98
    :goto_2
    move/from16 v8, v16

    .line 99
    .line 100
    goto/16 :goto_8

    .line 101
    .line 102
    :cond_5
    move/from16 v19, v8

    .line 103
    .line 104
    iget v8, v0, Lx/f;->f:I

    .line 105
    .line 106
    const/4 v9, -0x2

    .line 107
    invoke-static {v8, v12, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    iget v9, v1, Lv/d;->j:I

    .line 112
    .line 113
    if-ne v9, v15, :cond_6

    .line 114
    .line 115
    move v9, v15

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    move/from16 v9, v16

    .line 118
    .line 119
    :goto_3
    aput v16, v5, v19

    .line 120
    .line 121
    iget-boolean v12, v2, Lw/b;->j:Z

    .line 122
    .line 123
    if-eqz v12, :cond_9

    .line 124
    .line 125
    if-eqz v9, :cond_8

    .line 126
    .line 127
    const/16 v18, 0x3

    .line 128
    .line 129
    aget v12, v5, v18

    .line 130
    .line 131
    if-eqz v12, :cond_8

    .line 132
    .line 133
    aget v12, v5, v16

    .line 134
    .line 135
    invoke-virtual {v1}, Lv/d;->l()I

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    if-ne v12, v14, :cond_7

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_7
    move v12, v15

    .line 143
    goto :goto_5

    .line 144
    :cond_8
    :goto_4
    move/from16 v12, v16

    .line 145
    .line 146
    :goto_5
    if-eqz v9, :cond_a

    .line 147
    .line 148
    if-eqz v12, :cond_9

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_9
    const/high16 v14, 0x40000000    # 2.0f

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_a
    :goto_6
    invoke-virtual {v1}, Lv/d;->l()I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    const/high16 v14, 0x40000000    # 2.0f

    .line 159
    .line 160
    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    goto :goto_2

    .line 165
    :goto_7
    move v9, v8

    .line 166
    move v8, v15

    .line 167
    goto :goto_8

    .line 168
    :cond_b
    move/from16 v19, v8

    .line 169
    .line 170
    const/high16 v14, 0x40000000    # 2.0f

    .line 171
    .line 172
    iget v8, v0, Lx/f;->f:I

    .line 173
    .line 174
    const/4 v9, -0x2

    .line 175
    invoke-static {v8, v12, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    aput v9, v5, v19

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_c
    move/from16 v19, v8

    .line 183
    .line 184
    const/high16 v14, 0x40000000    # 2.0f

    .line 185
    .line 186
    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    aput v9, v5, v19

    .line 191
    .line 192
    move v9, v8

    .line 193
    goto :goto_2

    .line 194
    :goto_8
    invoke-static {v7}, Lu/h;->a(I)I

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    if-eqz v12, :cond_17

    .line 199
    .line 200
    if-eq v12, v15, :cond_16

    .line 201
    .line 202
    move/from16 v10, v19

    .line 203
    .line 204
    if-eq v12, v10, :cond_10

    .line 205
    .line 206
    const/4 v10, 0x3

    .line 207
    if-eq v12, v10, :cond_d

    .line 208
    .line 209
    move v11, v10

    .line 210
    move/from16 v3, v16

    .line 211
    .line 212
    move v4, v3

    .line 213
    goto/16 :goto_10

    .line 214
    .line 215
    :cond_d
    iget v10, v0, Lx/f;->g:I

    .line 216
    .line 217
    if-eqz v4, :cond_e

    .line 218
    .line 219
    iget-object v4, v1, Lv/d;->y:Lv/c;

    .line 220
    .line 221
    iget v4, v4, Lv/c;->e:I

    .line 222
    .line 223
    goto :goto_9

    .line 224
    :cond_e
    move/from16 v4, v16

    .line 225
    .line 226
    :goto_9
    if-eqz v3, :cond_f

    .line 227
    .line 228
    iget-object v3, v1, Lv/d;->A:Lv/c;

    .line 229
    .line 230
    iget v3, v3, Lv/c;->e:I

    .line 231
    .line 232
    add-int/2addr v4, v3

    .line 233
    :cond_f
    add-int/2addr v11, v4

    .line 234
    const/4 v3, -0x1

    .line 235
    invoke-static {v10, v11, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    const/16 v18, 0x3

    .line 240
    .line 241
    aput v3, v5, v18

    .line 242
    .line 243
    move/from16 v3, v16

    .line 244
    .line 245
    move/from16 v11, v18

    .line 246
    .line 247
    goto/16 :goto_10

    .line 248
    .line 249
    :cond_10
    const/16 v18, 0x3

    .line 250
    .line 251
    iget v3, v0, Lx/f;->g:I

    .line 252
    .line 253
    const/4 v4, -0x2

    .line 254
    invoke-static {v3, v11, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    iget v3, v1, Lv/d;->k:I

    .line 259
    .line 260
    if-ne v3, v15, :cond_11

    .line 261
    .line 262
    move v3, v15

    .line 263
    goto :goto_a

    .line 264
    :cond_11
    move/from16 v3, v16

    .line 265
    .line 266
    :goto_a
    aput v16, v5, v18

    .line 267
    .line 268
    iget-boolean v10, v2, Lw/b;->j:Z

    .line 269
    .line 270
    if-eqz v10, :cond_14

    .line 271
    .line 272
    if-eqz v3, :cond_13

    .line 273
    .line 274
    const/16 v19, 0x2

    .line 275
    .line 276
    aget v10, v5, v19

    .line 277
    .line 278
    if-eqz v10, :cond_13

    .line 279
    .line 280
    aget v10, v5, v15

    .line 281
    .line 282
    invoke-virtual {v1}, Lv/d;->i()I

    .line 283
    .line 284
    .line 285
    move-result v11

    .line 286
    if-ne v10, v11, :cond_12

    .line 287
    .line 288
    goto :goto_b

    .line 289
    :cond_12
    move v10, v15

    .line 290
    goto :goto_c

    .line 291
    :cond_13
    :goto_b
    move/from16 v10, v16

    .line 292
    .line 293
    :goto_c
    if-eqz v3, :cond_15

    .line 294
    .line 295
    if-eqz v10, :cond_14

    .line 296
    .line 297
    goto :goto_d

    .line 298
    :cond_14
    const/high16 v14, 0x40000000    # 2.0f

    .line 299
    .line 300
    goto :goto_f

    .line 301
    :cond_15
    :goto_d
    invoke-virtual {v1}, Lv/d;->i()I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    const/high16 v14, 0x40000000    # 2.0f

    .line 306
    .line 307
    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    move/from16 v3, v16

    .line 312
    .line 313
    :goto_e
    const/4 v11, 0x3

    .line 314
    goto :goto_10

    .line 315
    :goto_f
    move v3, v15

    .line 316
    goto :goto_e

    .line 317
    :cond_16
    const/high16 v14, 0x40000000    # 2.0f

    .line 318
    .line 319
    iget v3, v0, Lx/f;->g:I

    .line 320
    .line 321
    const/4 v4, -0x2

    .line 322
    invoke-static {v3, v11, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    const/4 v11, 0x3

    .line 327
    aput v4, v5, v11

    .line 328
    .line 329
    move v4, v3

    .line 330
    move v3, v15

    .line 331
    goto :goto_10

    .line 332
    :cond_17
    const/4 v11, 0x3

    .line 333
    const/high16 v14, 0x40000000    # 2.0f

    .line 334
    .line 335
    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    aput v10, v5, v11

    .line 340
    .line 341
    move/from16 v3, v16

    .line 342
    .line 343
    :goto_10
    if-ne v6, v11, :cond_18

    .line 344
    .line 345
    move v10, v15

    .line 346
    goto :goto_11

    .line 347
    :cond_18
    move/from16 v10, v16

    .line 348
    .line 349
    :goto_11
    if-ne v7, v11, :cond_19

    .line 350
    .line 351
    move v11, v15

    .line 352
    goto :goto_12

    .line 353
    :cond_19
    move/from16 v11, v16

    .line 354
    .line 355
    :goto_12
    const/4 v12, 0x4

    .line 356
    if-eq v7, v12, :cond_1b

    .line 357
    .line 358
    if-ne v7, v15, :cond_1a

    .line 359
    .line 360
    goto :goto_13

    .line 361
    :cond_1a
    move/from16 v7, v16

    .line 362
    .line 363
    goto :goto_14

    .line 364
    :cond_1b
    :goto_13
    move v7, v15

    .line 365
    :goto_14
    if-eq v6, v12, :cond_1d

    .line 366
    .line 367
    if-ne v6, v15, :cond_1c

    .line 368
    .line 369
    goto :goto_15

    .line 370
    :cond_1c
    move/from16 v6, v16

    .line 371
    .line 372
    goto :goto_16

    .line 373
    :cond_1d
    :goto_15
    move v6, v15

    .line 374
    :goto_16
    const/4 v12, 0x0

    .line 375
    if-eqz v10, :cond_1e

    .line 376
    .line 377
    iget v14, v1, Lv/d;->L:F

    .line 378
    .line 379
    cmpl-float v14, v14, v12

    .line 380
    .line 381
    if-lez v14, :cond_1e

    .line 382
    .line 383
    move v14, v15

    .line 384
    goto :goto_17

    .line 385
    :cond_1e
    move/from16 v14, v16

    .line 386
    .line 387
    :goto_17
    if-eqz v11, :cond_1f

    .line 388
    .line 389
    move/from16 v17, v12

    .line 390
    .line 391
    iget v12, v1, Lv/d;->L:F

    .line 392
    .line 393
    cmpl-float v12, v12, v17

    .line 394
    .line 395
    if-lez v12, :cond_1f

    .line 396
    .line 397
    move v12, v15

    .line 398
    goto :goto_18

    .line 399
    :cond_1f
    move/from16 v12, v16

    .line 400
    .line 401
    :goto_18
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 402
    .line 403
    .line 404
    move-result-object v17

    .line 405
    move/from16 v20, v15

    .line 406
    .line 407
    move-object/from16 v15, v17

    .line 408
    .line 409
    check-cast v15, Lx/e;

    .line 410
    .line 411
    iget-boolean v0, v2, Lw/b;->j:Z

    .line 412
    .line 413
    if-nez v0, :cond_22

    .line 414
    .line 415
    if-eqz v10, :cond_22

    .line 416
    .line 417
    iget v0, v1, Lv/d;->j:I

    .line 418
    .line 419
    if-nez v0, :cond_22

    .line 420
    .line 421
    if-eqz v11, :cond_22

    .line 422
    .line 423
    iget v0, v1, Lv/d;->k:I

    .line 424
    .line 425
    if-eqz v0, :cond_20

    .line 426
    .line 427
    goto :goto_1a

    .line 428
    :cond_20
    move/from16 v3, v16

    .line 429
    .line 430
    move v5, v3

    .line 431
    move v11, v5

    .line 432
    :cond_21
    :goto_19
    const/4 v8, -0x1

    .line 433
    goto/16 :goto_21

    .line 434
    .line 435
    :cond_22
    :goto_1a
    instance-of v0, v13, Lx/r;

    .line 436
    .line 437
    if-eqz v0, :cond_23

    .line 438
    .line 439
    instance-of v0, v1, Lv/g;

    .line 440
    .line 441
    if-eqz v0, :cond_23

    .line 442
    .line 443
    move-object v0, v1

    .line 444
    check-cast v0, Lv/g;

    .line 445
    .line 446
    move-object v10, v13

    .line 447
    check-cast v10, Lx/r;

    .line 448
    .line 449
    invoke-virtual {v10, v0, v9, v4}, Lx/r;->h(Lv/g;II)V

    .line 450
    .line 451
    .line 452
    goto :goto_1b

    .line 453
    :cond_23
    invoke-virtual {v13, v9, v4}, Landroid/view/View;->measure(II)V

    .line 454
    .line 455
    .line 456
    :goto_1b
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 461
    .line 462
    .line 463
    move-result v10

    .line 464
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    .line 465
    .line 466
    .line 467
    move-result v11

    .line 468
    if-eqz v8, :cond_24

    .line 469
    .line 470
    aput v0, v5, v16

    .line 471
    .line 472
    const/16 v19, 0x2

    .line 473
    .line 474
    aput v10, v5, v19

    .line 475
    .line 476
    goto :goto_1c

    .line 477
    :cond_24
    const/16 v19, 0x2

    .line 478
    .line 479
    aput v16, v5, v16

    .line 480
    .line 481
    aput v16, v5, v19

    .line 482
    .line 483
    :goto_1c
    if-eqz v3, :cond_25

    .line 484
    .line 485
    aput v10, v5, v20

    .line 486
    .line 487
    const/16 v18, 0x3

    .line 488
    .line 489
    aput v0, v5, v18

    .line 490
    .line 491
    goto :goto_1d

    .line 492
    :cond_25
    const/16 v18, 0x3

    .line 493
    .line 494
    aput v16, v5, v20

    .line 495
    .line 496
    aput v16, v5, v18

    .line 497
    .line 498
    :goto_1d
    iget v3, v1, Lv/d;->m:I

    .line 499
    .line 500
    if-lez v3, :cond_26

    .line 501
    .line 502
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    goto :goto_1e

    .line 507
    :cond_26
    move v3, v0

    .line 508
    :goto_1e
    iget v5, v1, Lv/d;->n:I

    .line 509
    .line 510
    if-lez v5, :cond_27

    .line 511
    .line 512
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    :cond_27
    iget v5, v1, Lv/d;->p:I

    .line 517
    .line 518
    if-lez v5, :cond_28

    .line 519
    .line 520
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    .line 521
    .line 522
    .line 523
    move-result v5

    .line 524
    goto :goto_1f

    .line 525
    :cond_28
    move v5, v10

    .line 526
    :goto_1f
    iget v8, v1, Lv/d;->q:I

    .line 527
    .line 528
    if-lez v8, :cond_29

    .line 529
    .line 530
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    .line 531
    .line 532
    .line 533
    move-result v5

    .line 534
    :cond_29
    const/high16 v8, 0x3f000000    # 0.5f

    .line 535
    .line 536
    if-eqz v14, :cond_2a

    .line 537
    .line 538
    if-eqz v7, :cond_2a

    .line 539
    .line 540
    iget v3, v1, Lv/d;->L:F

    .line 541
    .line 542
    int-to-float v6, v5

    .line 543
    mul-float/2addr v6, v3

    .line 544
    add-float/2addr v6, v8

    .line 545
    float-to-int v3, v6

    .line 546
    goto :goto_20

    .line 547
    :cond_2a
    if-eqz v12, :cond_2b

    .line 548
    .line 549
    if-eqz v6, :cond_2b

    .line 550
    .line 551
    iget v5, v1, Lv/d;->L:F

    .line 552
    .line 553
    int-to-float v6, v3

    .line 554
    div-float/2addr v6, v5

    .line 555
    add-float/2addr v6, v8

    .line 556
    float-to-int v5, v6

    .line 557
    :cond_2b
    :goto_20
    if-ne v0, v3, :cond_2c

    .line 558
    .line 559
    if-eq v10, v5, :cond_21

    .line 560
    .line 561
    :cond_2c
    const/high16 v14, 0x40000000    # 2.0f

    .line 562
    .line 563
    if-eq v0, v3, :cond_2d

    .line 564
    .line 565
    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 566
    .line 567
    .line 568
    move-result v9

    .line 569
    :cond_2d
    if-eq v10, v5, :cond_2e

    .line 570
    .line 571
    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 572
    .line 573
    .line 574
    move-result v4

    .line 575
    :cond_2e
    invoke-virtual {v13, v9, v4}, Landroid/view/View;->measure(II)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 583
    .line 584
    .line 585
    move-result v5

    .line 586
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    .line 587
    .line 588
    .line 589
    move-result v11

    .line 590
    goto/16 :goto_19

    .line 591
    .line 592
    :goto_21
    if-eq v11, v8, :cond_2f

    .line 593
    .line 594
    move/from16 v0, v20

    .line 595
    .line 596
    goto :goto_22

    .line 597
    :cond_2f
    move/from16 v0, v16

    .line 598
    .line 599
    :goto_22
    iget v4, v2, Lw/b;->c:I

    .line 600
    .line 601
    if-ne v3, v4, :cond_31

    .line 602
    .line 603
    iget v4, v2, Lw/b;->d:I

    .line 604
    .line 605
    if-eq v5, v4, :cond_30

    .line 606
    .line 607
    goto :goto_23

    .line 608
    :cond_30
    move/from16 v8, v16

    .line 609
    .line 610
    goto :goto_24

    .line 611
    :cond_31
    :goto_23
    move/from16 v8, v20

    .line 612
    .line 613
    :goto_24
    iput-boolean v8, v2, Lw/b;->i:Z

    .line 614
    .line 615
    iget-boolean v4, v15, Lx/e;->X:Z

    .line 616
    .line 617
    if-eqz v4, :cond_32

    .line 618
    .line 619
    move/from16 v0, v20

    .line 620
    .line 621
    :cond_32
    if-eqz v0, :cond_33

    .line 622
    .line 623
    const/4 v8, -0x1

    .line 624
    if-eq v11, v8, :cond_33

    .line 625
    .line 626
    iget v1, v1, Lv/d;->P:I

    .line 627
    .line 628
    if-eq v1, v11, :cond_33

    .line 629
    .line 630
    move/from16 v1, v20

    .line 631
    .line 632
    iput-boolean v1, v2, Lw/b;->i:Z

    .line 633
    .line 634
    :cond_33
    iput v3, v2, Lw/b;->e:I

    .line 635
    .line 636
    iput v5, v2, Lw/b;->f:I

    .line 637
    .line 638
    iput-boolean v0, v2, Lw/b;->h:Z

    .line 639
    .line 640
    iput v11, v2, Lw/b;->g:I

    .line 641
    .line 642
    return-void
.end method
