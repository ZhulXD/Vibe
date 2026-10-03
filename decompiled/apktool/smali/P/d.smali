.class public final LP/d;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:LP/f;


# direct methods
.method public constructor <init>(LP/f;Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LP/d;->e:LP/f;

    .line 5
    .line 6
    iput-object p2, p0, LP/d;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, LP/d;->c:Ljava/util/List;

    .line 9
    .line 10
    iput p4, p0, LP/d;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, LA1/b;

    .line 4
    .line 5
    invoke-direct {v1, v0}, LA1/b;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, LP/d;->b:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, v0, LP/d;->c:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v5, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v6, LP/t;

    .line 31
    .line 32
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    iput v7, v6, LP/t;->a:I

    .line 37
    .line 38
    iput v2, v6, LP/t;->b:I

    .line 39
    .line 40
    iput v7, v6, LP/t;->c:I

    .line 41
    .line 42
    iput v3, v6, LP/t;->d:I

    .line 43
    .line 44
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/2addr v2, v3

    .line 48
    const/4 v3, 0x1

    .line 49
    add-int/2addr v2, v3

    .line 50
    div-int/lit8 v2, v2, 0x2

    .line 51
    .line 52
    mul-int/lit8 v2, v2, 0x2

    .line 53
    .line 54
    add-int/2addr v2, v3

    .line 55
    new-array v6, v2, [I

    .line 56
    .line 57
    div-int/lit8 v8, v2, 0x2

    .line 58
    .line 59
    new-array v2, v2, [I

    .line 60
    .line 61
    new-instance v9, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-nez v10, :cond_1d

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    sub-int/2addr v10, v3

    .line 77
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    check-cast v10, LP/t;

    .line 82
    .line 83
    invoke-virtual {v10}, LP/t;->b()I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    if-lt v11, v3, :cond_16

    .line 88
    .line 89
    invoke-virtual {v10}, LP/t;->a()I

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    if-ge v11, v3, :cond_0

    .line 94
    .line 95
    goto/16 :goto_15

    .line 96
    .line 97
    :cond_0
    invoke-virtual {v10}, LP/t;->b()I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    invoke-virtual {v10}, LP/t;->a()I

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    add-int/2addr v13, v11

    .line 106
    add-int/2addr v13, v3

    .line 107
    div-int/lit8 v13, v13, 0x2

    .line 108
    .line 109
    iget v11, v10, LP/t;->a:I

    .line 110
    .line 111
    add-int v14, v3, v8

    .line 112
    .line 113
    aput v11, v6, v14

    .line 114
    .line 115
    iget v11, v10, LP/t;->b:I

    .line 116
    .line 117
    aput v11, v2, v14

    .line 118
    .line 119
    move v11, v7

    .line 120
    :goto_1
    if-ge v11, v13, :cond_16

    .line 121
    .line 122
    invoke-virtual {v10}, LP/t;->b()I

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    invoke-virtual {v10}, LP/t;->a()I

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    sub-int/2addr v14, v15

    .line 131
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    rem-int/lit8 v14, v14, 0x2

    .line 136
    .line 137
    if-ne v14, v3, :cond_1

    .line 138
    .line 139
    move v14, v3

    .line 140
    goto :goto_2

    .line 141
    :cond_1
    move v14, v7

    .line 142
    :goto_2
    invoke-virtual {v10}, LP/t;->b()I

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    invoke-virtual {v10}, LP/t;->a()I

    .line 147
    .line 148
    .line 149
    move-result v16

    .line 150
    sub-int v15, v15, v16

    .line 151
    .line 152
    neg-int v12, v11

    .line 153
    move v3, v12

    .line 154
    :goto_3
    if-gt v3, v11, :cond_a

    .line 155
    .line 156
    if-eq v3, v12, :cond_4

    .line 157
    .line 158
    if-eq v3, v11, :cond_2

    .line 159
    .line 160
    add-int/lit8 v18, v3, 0x1

    .line 161
    .line 162
    add-int v18, v18, v8

    .line 163
    .line 164
    aget v7, v6, v18

    .line 165
    .line 166
    add-int/lit8 v18, v3, -0x1

    .line 167
    .line 168
    add-int v18, v18, v8

    .line 169
    .line 170
    move/from16 v19, v3

    .line 171
    .line 172
    aget v3, v6, v18

    .line 173
    .line 174
    if-le v7, v3, :cond_3

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_2
    move/from16 v19, v3

    .line 178
    .line 179
    :cond_3
    add-int/lit8 v3, v19, -0x1

    .line 180
    .line 181
    add-int/2addr v3, v8

    .line 182
    aget v3, v6, v3

    .line 183
    .line 184
    add-int/lit8 v7, v3, 0x1

    .line 185
    .line 186
    :goto_4
    move/from16 v18, v8

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_4
    move/from16 v19, v3

    .line 190
    .line 191
    :goto_5
    add-int/lit8 v3, v19, 0x1

    .line 192
    .line 193
    add-int/2addr v3, v8

    .line 194
    aget v3, v6, v3

    .line 195
    .line 196
    move v7, v3

    .line 197
    goto :goto_4

    .line 198
    :goto_6
    iget v8, v10, LP/t;->c:I

    .line 199
    .line 200
    move/from16 v20, v8

    .line 201
    .line 202
    iget v8, v10, LP/t;->a:I

    .line 203
    .line 204
    sub-int v8, v7, v8

    .line 205
    .line 206
    add-int v8, v8, v20

    .line 207
    .line 208
    sub-int v8, v8, v19

    .line 209
    .line 210
    if-eqz v11, :cond_6

    .line 211
    .line 212
    if-eq v7, v3, :cond_5

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_5
    add-int/lit8 v20, v8, -0x1

    .line 216
    .line 217
    move/from16 v23, v20

    .line 218
    .line 219
    move/from16 v20, v7

    .line 220
    .line 221
    move/from16 v7, v23

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_6
    :goto_7
    move/from16 v20, v7

    .line 225
    .line 226
    move v7, v8

    .line 227
    :goto_8
    move/from16 v21, v13

    .line 228
    .line 229
    move v13, v8

    .line 230
    move/from16 v8, v20

    .line 231
    .line 232
    move/from16 v20, v21

    .line 233
    .line 234
    move/from16 v21, v14

    .line 235
    .line 236
    :goto_9
    iget v14, v10, LP/t;->b:I

    .line 237
    .line 238
    if-ge v8, v14, :cond_7

    .line 239
    .line 240
    iget v14, v10, LP/t;->d:I

    .line 241
    .line 242
    if-ge v13, v14, :cond_7

    .line 243
    .line 244
    invoke-virtual {v1, v8, v13}, LA1/b;->k(II)Z

    .line 245
    .line 246
    .line 247
    move-result v14

    .line 248
    if-eqz v14, :cond_7

    .line 249
    .line 250
    add-int/lit8 v8, v8, 0x1

    .line 251
    .line 252
    add-int/lit8 v13, v13, 0x1

    .line 253
    .line 254
    goto :goto_9

    .line 255
    :cond_7
    add-int v14, v19, v18

    .line 256
    .line 257
    aput v8, v6, v14

    .line 258
    .line 259
    if-eqz v21, :cond_9

    .line 260
    .line 261
    sub-int v14, v15, v19

    .line 262
    .line 263
    move/from16 v22, v15

    .line 264
    .line 265
    add-int/lit8 v15, v12, 0x1

    .line 266
    .line 267
    if-lt v14, v15, :cond_8

    .line 268
    .line 269
    add-int/lit8 v15, v11, -0x1

    .line 270
    .line 271
    if-gt v14, v15, :cond_8

    .line 272
    .line 273
    add-int v14, v14, v18

    .line 274
    .line 275
    aget v14, v2, v14

    .line 276
    .line 277
    if-gt v14, v8, :cond_8

    .line 278
    .line 279
    new-instance v14, LP/u;

    .line 280
    .line 281
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 282
    .line 283
    .line 284
    iput v3, v14, LP/u;->a:I

    .line 285
    .line 286
    iput v7, v14, LP/u;->b:I

    .line 287
    .line 288
    iput v8, v14, LP/u;->c:I

    .line 289
    .line 290
    iput v13, v14, LP/u;->d:I

    .line 291
    .line 292
    const/4 v3, 0x0

    .line 293
    iput-boolean v3, v14, LP/u;->e:Z

    .line 294
    .line 295
    goto :goto_c

    .line 296
    :cond_8
    :goto_a
    const/4 v3, 0x0

    .line 297
    goto :goto_b

    .line 298
    :cond_9
    move/from16 v22, v15

    .line 299
    .line 300
    goto :goto_a

    .line 301
    :goto_b
    add-int/lit8 v7, v19, 0x2

    .line 302
    .line 303
    move v8, v7

    .line 304
    move v7, v3

    .line 305
    move v3, v8

    .line 306
    move/from16 v8, v18

    .line 307
    .line 308
    move/from16 v13, v20

    .line 309
    .line 310
    move/from16 v14, v21

    .line 311
    .line 312
    move/from16 v15, v22

    .line 313
    .line 314
    goto/16 :goto_3

    .line 315
    .line 316
    :cond_a
    move v3, v7

    .line 317
    move/from16 v18, v8

    .line 318
    .line 319
    move/from16 v20, v13

    .line 320
    .line 321
    const/4 v14, 0x0

    .line 322
    :goto_c
    if-eqz v14, :cond_b

    .line 323
    .line 324
    move-object v12, v14

    .line 325
    goto/16 :goto_16

    .line 326
    .line 327
    :cond_b
    invoke-virtual {v10}, LP/t;->b()I

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    invoke-virtual {v10}, LP/t;->a()I

    .line 332
    .line 333
    .line 334
    move-result v8

    .line 335
    sub-int/2addr v7, v8

    .line 336
    rem-int/lit8 v7, v7, 0x2

    .line 337
    .line 338
    if-nez v7, :cond_c

    .line 339
    .line 340
    const/4 v7, 0x1

    .line 341
    goto :goto_d

    .line 342
    :cond_c
    move v7, v3

    .line 343
    :goto_d
    invoke-virtual {v10}, LP/t;->b()I

    .line 344
    .line 345
    .line 346
    move-result v8

    .line 347
    invoke-virtual {v10}, LP/t;->a()I

    .line 348
    .line 349
    .line 350
    move-result v13

    .line 351
    sub-int/2addr v8, v13

    .line 352
    move v13, v12

    .line 353
    :goto_e
    if-gt v13, v11, :cond_14

    .line 354
    .line 355
    if-eq v13, v12, :cond_e

    .line 356
    .line 357
    if-eq v13, v11, :cond_d

    .line 358
    .line 359
    add-int/lit8 v14, v13, 0x1

    .line 360
    .line 361
    add-int v14, v14, v18

    .line 362
    .line 363
    aget v14, v2, v14

    .line 364
    .line 365
    add-int/lit8 v15, v13, -0x1

    .line 366
    .line 367
    add-int v15, v15, v18

    .line 368
    .line 369
    aget v15, v2, v15

    .line 370
    .line 371
    if-ge v14, v15, :cond_d

    .line 372
    .line 373
    goto :goto_f

    .line 374
    :cond_d
    add-int/lit8 v14, v13, -0x1

    .line 375
    .line 376
    add-int v14, v14, v18

    .line 377
    .line 378
    aget v14, v2, v14

    .line 379
    .line 380
    add-int/lit8 v15, v14, -0x1

    .line 381
    .line 382
    goto :goto_10

    .line 383
    :cond_e
    :goto_f
    add-int/lit8 v14, v13, 0x1

    .line 384
    .line 385
    add-int v14, v14, v18

    .line 386
    .line 387
    aget v14, v2, v14

    .line 388
    .line 389
    move v15, v14

    .line 390
    :goto_10
    iget v3, v10, LP/t;->d:I

    .line 391
    .line 392
    move/from16 v19, v3

    .line 393
    .line 394
    iget v3, v10, LP/t;->b:I

    .line 395
    .line 396
    sub-int/2addr v3, v15

    .line 397
    sub-int/2addr v3, v13

    .line 398
    sub-int v3, v19, v3

    .line 399
    .line 400
    if-eqz v11, :cond_10

    .line 401
    .line 402
    if-eq v15, v14, :cond_f

    .line 403
    .line 404
    goto :goto_11

    .line 405
    :cond_f
    add-int/lit8 v19, v3, 0x1

    .line 406
    .line 407
    move/from16 v23, v19

    .line 408
    .line 409
    move/from16 v19, v3

    .line 410
    .line 411
    move/from16 v3, v23

    .line 412
    .line 413
    goto :goto_12

    .line 414
    :cond_10
    :goto_11
    move/from16 v19, v3

    .line 415
    .line 416
    :goto_12
    move/from16 v21, v19

    .line 417
    .line 418
    move/from16 v19, v7

    .line 419
    .line 420
    move v7, v15

    .line 421
    move/from16 v15, v21

    .line 422
    .line 423
    move/from16 v21, v8

    .line 424
    .line 425
    :goto_13
    iget v8, v10, LP/t;->a:I

    .line 426
    .line 427
    if-le v7, v8, :cond_11

    .line 428
    .line 429
    iget v8, v10, LP/t;->c:I

    .line 430
    .line 431
    if-le v15, v8, :cond_11

    .line 432
    .line 433
    add-int/lit8 v8, v7, -0x1

    .line 434
    .line 435
    move/from16 v22, v13

    .line 436
    .line 437
    add-int/lit8 v13, v15, -0x1

    .line 438
    .line 439
    invoke-virtual {v1, v8, v13}, LA1/b;->k(II)Z

    .line 440
    .line 441
    .line 442
    move-result v8

    .line 443
    if-eqz v8, :cond_12

    .line 444
    .line 445
    add-int/lit8 v7, v7, -0x1

    .line 446
    .line 447
    add-int/lit8 v15, v15, -0x1

    .line 448
    .line 449
    move/from16 v13, v22

    .line 450
    .line 451
    goto :goto_13

    .line 452
    :cond_11
    move/from16 v22, v13

    .line 453
    .line 454
    :cond_12
    add-int v13, v22, v18

    .line 455
    .line 456
    aput v7, v2, v13

    .line 457
    .line 458
    if-eqz v19, :cond_13

    .line 459
    .line 460
    sub-int v8, v21, v22

    .line 461
    .line 462
    if-lt v8, v12, :cond_13

    .line 463
    .line 464
    if-gt v8, v11, :cond_13

    .line 465
    .line 466
    add-int v8, v8, v18

    .line 467
    .line 468
    aget v8, v6, v8

    .line 469
    .line 470
    if-lt v8, v7, :cond_13

    .line 471
    .line 472
    new-instance v8, LP/u;

    .line 473
    .line 474
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 475
    .line 476
    .line 477
    iput v7, v8, LP/u;->a:I

    .line 478
    .line 479
    iput v15, v8, LP/u;->b:I

    .line 480
    .line 481
    iput v14, v8, LP/u;->c:I

    .line 482
    .line 483
    iput v3, v8, LP/u;->d:I

    .line 484
    .line 485
    const/4 v3, 0x1

    .line 486
    iput-boolean v3, v8, LP/u;->e:Z

    .line 487
    .line 488
    goto :goto_14

    .line 489
    :cond_13
    add-int/lit8 v13, v22, 0x2

    .line 490
    .line 491
    move/from16 v7, v19

    .line 492
    .line 493
    move/from16 v8, v21

    .line 494
    .line 495
    const/4 v3, 0x0

    .line 496
    goto/16 :goto_e

    .line 497
    .line 498
    :cond_14
    const/4 v8, 0x0

    .line 499
    :goto_14
    if-eqz v8, :cond_15

    .line 500
    .line 501
    move-object v12, v8

    .line 502
    goto :goto_16

    .line 503
    :cond_15
    add-int/lit8 v11, v11, 0x1

    .line 504
    .line 505
    move/from16 v8, v18

    .line 506
    .line 507
    move/from16 v13, v20

    .line 508
    .line 509
    const/4 v3, 0x1

    .line 510
    const/4 v7, 0x0

    .line 511
    goto/16 :goto_1

    .line 512
    .line 513
    :cond_16
    :goto_15
    move/from16 v18, v8

    .line 514
    .line 515
    const/4 v12, 0x0

    .line 516
    :goto_16
    if-eqz v12, :cond_1c

    .line 517
    .line 518
    invoke-virtual {v12}, LP/u;->a()I

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    if-lez v3, :cond_1a

    .line 523
    .line 524
    iget v3, v12, LP/u;->d:I

    .line 525
    .line 526
    iget v7, v12, LP/u;->b:I

    .line 527
    .line 528
    sub-int/2addr v3, v7

    .line 529
    iget v8, v12, LP/u;->c:I

    .line 530
    .line 531
    iget v11, v12, LP/u;->a:I

    .line 532
    .line 533
    sub-int/2addr v8, v11

    .line 534
    if-eq v3, v8, :cond_19

    .line 535
    .line 536
    iget-boolean v13, v12, LP/u;->e:Z

    .line 537
    .line 538
    if-eqz v13, :cond_17

    .line 539
    .line 540
    new-instance v3, LP/q;

    .line 541
    .line 542
    invoke-virtual {v12}, LP/u;->a()I

    .line 543
    .line 544
    .line 545
    move-result v8

    .line 546
    invoke-direct {v3, v11, v7, v8}, LP/q;-><init>(III)V

    .line 547
    .line 548
    .line 549
    goto :goto_17

    .line 550
    :cond_17
    if-le v3, v8, :cond_18

    .line 551
    .line 552
    new-instance v3, LP/q;

    .line 553
    .line 554
    add-int/lit8 v7, v7, 0x1

    .line 555
    .line 556
    invoke-virtual {v12}, LP/u;->a()I

    .line 557
    .line 558
    .line 559
    move-result v8

    .line 560
    invoke-direct {v3, v11, v7, v8}, LP/q;-><init>(III)V

    .line 561
    .line 562
    .line 563
    goto :goto_17

    .line 564
    :cond_18
    new-instance v3, LP/q;

    .line 565
    .line 566
    add-int/lit8 v11, v11, 0x1

    .line 567
    .line 568
    invoke-virtual {v12}, LP/u;->a()I

    .line 569
    .line 570
    .line 571
    move-result v8

    .line 572
    invoke-direct {v3, v11, v7, v8}, LP/q;-><init>(III)V

    .line 573
    .line 574
    .line 575
    goto :goto_17

    .line 576
    :cond_19
    new-instance v3, LP/q;

    .line 577
    .line 578
    invoke-direct {v3, v11, v7, v8}, LP/q;-><init>(III)V

    .line 579
    .line 580
    .line 581
    :goto_17
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    :cond_1a
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    if-eqz v3, :cond_1b

    .line 589
    .line 590
    new-instance v3, LP/t;

    .line 591
    .line 592
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 593
    .line 594
    .line 595
    const/16 v17, 0x1

    .line 596
    .line 597
    goto :goto_18

    .line 598
    :cond_1b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    const/16 v17, 0x1

    .line 603
    .line 604
    add-int/lit8 v3, v3, -0x1

    .line 605
    .line 606
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    check-cast v3, LP/t;

    .line 611
    .line 612
    :goto_18
    iget v7, v10, LP/t;->a:I

    .line 613
    .line 614
    iput v7, v3, LP/t;->a:I

    .line 615
    .line 616
    iget v7, v10, LP/t;->c:I

    .line 617
    .line 618
    iput v7, v3, LP/t;->c:I

    .line 619
    .line 620
    iget v7, v12, LP/u;->a:I

    .line 621
    .line 622
    iput v7, v3, LP/t;->b:I

    .line 623
    .line 624
    iget v7, v12, LP/u;->b:I

    .line 625
    .line 626
    iput v7, v3, LP/t;->d:I

    .line 627
    .line 628
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    iget v3, v10, LP/t;->b:I

    .line 632
    .line 633
    iput v3, v10, LP/t;->b:I

    .line 634
    .line 635
    iget v3, v10, LP/t;->d:I

    .line 636
    .line 637
    iput v3, v10, LP/t;->d:I

    .line 638
    .line 639
    iget v3, v12, LP/u;->c:I

    .line 640
    .line 641
    iput v3, v10, LP/t;->a:I

    .line 642
    .line 643
    iget v3, v12, LP/u;->d:I

    .line 644
    .line 645
    iput v3, v10, LP/t;->c:I

    .line 646
    .line 647
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    goto :goto_19

    .line 651
    :cond_1c
    const/16 v17, 0x1

    .line 652
    .line 653
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    :goto_19
    move/from16 v3, v17

    .line 657
    .line 658
    move/from16 v8, v18

    .line 659
    .line 660
    const/4 v7, 0x0

    .line 661
    goto/16 :goto_0

    .line 662
    .line 663
    :cond_1d
    sget-object v3, LP/c;->c:LC1/T;

    .line 664
    .line 665
    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 666
    .line 667
    .line 668
    new-instance v3, LP/r;

    .line 669
    .line 670
    invoke-direct {v3, v1, v4, v6, v2}, LP/r;-><init>(LA1/b;Ljava/util/ArrayList;[I[I)V

    .line 671
    .line 672
    .line 673
    iget-object v1, v0, LP/d;->e:LP/f;

    .line 674
    .line 675
    iget-object v1, v1, LP/f;->c:LP/e;

    .line 676
    .line 677
    new-instance v2, LE0/d;

    .line 678
    .line 679
    const/4 v4, 0x1

    .line 680
    invoke-direct {v2, v4, v0, v3}, LE0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v1, v2}, LP/e;->execute(Ljava/lang/Runnable;)V

    .line 684
    .line 685
    .line 686
    return-void
.end method
