.class public final LS/y;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public b:LS/v;

.field public c:Landroid/view/ViewGroup;


# virtual methods
.method public final onPreDraw()Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LS/y;->b:LS/v;

    .line 4
    .line 5
    iget-object v2, v0, LS/y;->c:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 15
    .line 16
    .line 17
    sget-object v3, LS/z;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v7, 0x1

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    move v9, v7

    .line 27
    goto/16 :goto_10

    .line 28
    .line 29
    :cond_0
    invoke-static {}, LS/z;->b()Lq/e;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3, v2}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/util/ArrayList;

    .line 38
    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    new-instance v4, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2, v4}, Lq/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_1
    const/4 v6, 0x0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-lez v6, :cond_1

    .line 56
    .line 57
    new-instance v6, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v4, LS/x;

    .line 66
    .line 67
    invoke-direct {v4, v0, v3}, LS/x;-><init>(LS/y;Lq/e;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v4}, LS/v;->a(LS/t;)V

    .line 71
    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-virtual {v1, v2, v3}, LS/v;->i(Landroid/view/ViewGroup;Z)V

    .line 75
    .line 76
    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    move v8, v3

    .line 84
    :goto_1
    if-ge v8, v4, :cond_3

    .line 85
    .line 86
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    add-int/lit8 v8, v8, 0x1

    .line 91
    .line 92
    check-cast v9, LS/v;

    .line 93
    .line 94
    invoke-virtual {v9, v2}, LS/v;->D(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v4, v1, LS/v;->l:Ljava/util/ArrayList;

    .line 104
    .line 105
    new-instance v4, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object v4, v1, LS/v;->m:Ljava/util/ArrayList;

    .line 111
    .line 112
    iget-object v4, v1, LS/v;->h:LN1/w;

    .line 113
    .line 114
    iget-object v6, v1, LS/v;->i:LN1/w;

    .line 115
    .line 116
    new-instance v8, Lq/e;

    .line 117
    .line 118
    iget-object v9, v4, LN1/w;->a:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v9, Lq/e;

    .line 121
    .line 122
    invoke-direct {v8, v9}, Lq/e;-><init>(Lq/e;)V

    .line 123
    .line 124
    .line 125
    new-instance v9, Lq/e;

    .line 126
    .line 127
    iget-object v10, v6, LN1/w;->a:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v10, Lq/e;

    .line 130
    .line 131
    invoke-direct {v9, v10}, Lq/e;-><init>(Lq/e;)V

    .line 132
    .line 133
    .line 134
    move v10, v3

    .line 135
    :goto_2
    iget-object v11, v1, LS/v;->k:[I

    .line 136
    .line 137
    array-length v12, v11

    .line 138
    if-ge v10, v12, :cond_f

    .line 139
    .line 140
    aget v11, v11, v10

    .line 141
    .line 142
    if-eq v11, v7, :cond_c

    .line 143
    .line 144
    const/4 v12, 0x2

    .line 145
    if-eq v11, v12, :cond_a

    .line 146
    .line 147
    const/4 v12, 0x3

    .line 148
    if-eq v11, v12, :cond_8

    .line 149
    .line 150
    const/4 v12, 0x4

    .line 151
    if-eq v11, v12, :cond_4

    .line 152
    .line 153
    move-object v5, v6

    .line 154
    move/from16 v18, v7

    .line 155
    .line 156
    goto/16 :goto_9

    .line 157
    .line 158
    :cond_4
    iget-object v11, v4, LN1/w;->c:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v11, Lq/g;

    .line 161
    .line 162
    iget-object v12, v6, LN1/w;->c:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v12, Lq/g;

    .line 165
    .line 166
    invoke-virtual {v11}, Lq/g;->g()I

    .line 167
    .line 168
    .line 169
    move-result v13

    .line 170
    move v14, v3

    .line 171
    :goto_3
    if-ge v14, v13, :cond_7

    .line 172
    .line 173
    invoke-virtual {v11, v14}, Lq/g;->h(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v15

    .line 177
    check-cast v15, Landroid/view/View;

    .line 178
    .line 179
    if-eqz v15, :cond_6

    .line 180
    .line 181
    invoke-virtual {v1, v15}, LS/v;->w(Landroid/view/View;)Z

    .line 182
    .line 183
    .line 184
    move-result v16

    .line 185
    if-eqz v16, :cond_6

    .line 186
    .line 187
    move-object/from16 v17, v6

    .line 188
    .line 189
    invoke-virtual {v11, v14}, Lq/g;->d(I)J

    .line 190
    .line 191
    .line 192
    move-result-wide v5

    .line 193
    invoke-virtual {v12, v5, v6}, Lq/g;->b(J)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    check-cast v5, Landroid/view/View;

    .line 198
    .line 199
    if-eqz v5, :cond_5

    .line 200
    .line 201
    invoke-virtual {v1, v5}, LS/v;->w(Landroid/view/View;)Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eqz v6, :cond_5

    .line 206
    .line 207
    invoke-virtual {v8, v15}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    check-cast v6, LS/E;

    .line 212
    .line 213
    invoke-virtual {v9, v5}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v18

    .line 217
    move-object/from16 v3, v18

    .line 218
    .line 219
    check-cast v3, LS/E;

    .line 220
    .line 221
    if-eqz v6, :cond_5

    .line 222
    .line 223
    if-eqz v3, :cond_5

    .line 224
    .line 225
    move/from16 v18, v7

    .line 226
    .line 227
    iget-object v7, v1, LS/v;->l:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    iget-object v6, v1, LS/v;->m:Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8, v15}, Lq/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9, v5}, Lq/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_5
    :goto_4
    move/from16 v18, v7

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_6
    move-object/from16 v17, v6

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 251
    .line 252
    move-object/from16 v6, v17

    .line 253
    .line 254
    move/from16 v7, v18

    .line 255
    .line 256
    const/4 v3, 0x0

    .line 257
    goto :goto_3

    .line 258
    :cond_7
    move/from16 v18, v7

    .line 259
    .line 260
    move-object v5, v6

    .line 261
    goto/16 :goto_9

    .line 262
    .line 263
    :cond_8
    move-object/from16 v17, v6

    .line 264
    .line 265
    move/from16 v18, v7

    .line 266
    .line 267
    iget-object v3, v4, LN1/w;->b:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v3, Landroid/util/SparseArray;

    .line 270
    .line 271
    move-object/from16 v5, v17

    .line 272
    .line 273
    iget-object v6, v5, LN1/w;->b:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v6, Landroid/util/SparseArray;

    .line 276
    .line 277
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    const/4 v11, 0x0

    .line 282
    :goto_6
    if-ge v11, v7, :cond_e

    .line 283
    .line 284
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v12

    .line 288
    check-cast v12, Landroid/view/View;

    .line 289
    .line 290
    if-eqz v12, :cond_9

    .line 291
    .line 292
    invoke-virtual {v1, v12}, LS/v;->w(Landroid/view/View;)Z

    .line 293
    .line 294
    .line 295
    move-result v13

    .line 296
    if-eqz v13, :cond_9

    .line 297
    .line 298
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->keyAt(I)I

    .line 299
    .line 300
    .line 301
    move-result v13

    .line 302
    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v13

    .line 306
    check-cast v13, Landroid/view/View;

    .line 307
    .line 308
    if-eqz v13, :cond_9

    .line 309
    .line 310
    invoke-virtual {v1, v13}, LS/v;->w(Landroid/view/View;)Z

    .line 311
    .line 312
    .line 313
    move-result v14

    .line 314
    if-eqz v14, :cond_9

    .line 315
    .line 316
    invoke-virtual {v8, v12}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v14

    .line 320
    check-cast v14, LS/E;

    .line 321
    .line 322
    invoke-virtual {v9, v13}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v15

    .line 326
    check-cast v15, LS/E;

    .line 327
    .line 328
    if-eqz v14, :cond_9

    .line 329
    .line 330
    if-eqz v15, :cond_9

    .line 331
    .line 332
    iget-object v0, v1, LS/v;->l:Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    iget-object v0, v1, LS/v;->m:Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    invoke-virtual {v8, v12}, Lq/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v9, v13}, Lq/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 349
    .line 350
    move-object/from16 v0, p0

    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_a
    move-object v5, v6

    .line 354
    move/from16 v18, v7

    .line 355
    .line 356
    iget-object v0, v4, LN1/w;->d:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v0, Lq/e;

    .line 359
    .line 360
    iget-object v3, v5, LN1/w;->d:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v3, Lq/e;

    .line 363
    .line 364
    iget v6, v0, Lq/j;->d:I

    .line 365
    .line 366
    const/4 v7, 0x0

    .line 367
    :goto_7
    if-ge v7, v6, :cond_e

    .line 368
    .line 369
    invoke-virtual {v0, v7}, Lq/j;->j(I)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v11

    .line 373
    check-cast v11, Landroid/view/View;

    .line 374
    .line 375
    if-eqz v11, :cond_b

    .line 376
    .line 377
    invoke-virtual {v1, v11}, LS/v;->w(Landroid/view/View;)Z

    .line 378
    .line 379
    .line 380
    move-result v12

    .line 381
    if-eqz v12, :cond_b

    .line 382
    .line 383
    invoke-virtual {v0, v7}, Lq/j;->f(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v12

    .line 387
    invoke-virtual {v3, v12}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v12

    .line 391
    check-cast v12, Landroid/view/View;

    .line 392
    .line 393
    if-eqz v12, :cond_b

    .line 394
    .line 395
    invoke-virtual {v1, v12}, LS/v;->w(Landroid/view/View;)Z

    .line 396
    .line 397
    .line 398
    move-result v13

    .line 399
    if-eqz v13, :cond_b

    .line 400
    .line 401
    invoke-virtual {v8, v11}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v13

    .line 405
    check-cast v13, LS/E;

    .line 406
    .line 407
    invoke-virtual {v9, v12}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v14

    .line 411
    check-cast v14, LS/E;

    .line 412
    .line 413
    if-eqz v13, :cond_b

    .line 414
    .line 415
    if-eqz v14, :cond_b

    .line 416
    .line 417
    iget-object v15, v1, LS/v;->l:Ljava/util/ArrayList;

    .line 418
    .line 419
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    iget-object v13, v1, LS/v;->m:Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    invoke-virtual {v8, v11}, Lq/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v9, v12}, Lq/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 434
    .line 435
    goto :goto_7

    .line 436
    :cond_c
    move-object v5, v6

    .line 437
    move/from16 v18, v7

    .line 438
    .line 439
    iget v0, v8, Lq/j;->d:I

    .line 440
    .line 441
    add-int/lit8 v0, v0, -0x1

    .line 442
    .line 443
    :goto_8
    if-ltz v0, :cond_e

    .line 444
    .line 445
    invoke-virtual {v8, v0}, Lq/j;->f(I)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    check-cast v3, Landroid/view/View;

    .line 450
    .line 451
    if-eqz v3, :cond_d

    .line 452
    .line 453
    invoke-virtual {v1, v3}, LS/v;->w(Landroid/view/View;)Z

    .line 454
    .line 455
    .line 456
    move-result v6

    .line 457
    if-eqz v6, :cond_d

    .line 458
    .line 459
    invoke-virtual {v9, v3}, Lq/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    check-cast v3, LS/E;

    .line 464
    .line 465
    if-eqz v3, :cond_d

    .line 466
    .line 467
    iget-object v6, v3, LS/E;->b:Landroid/view/View;

    .line 468
    .line 469
    invoke-virtual {v1, v6}, LS/v;->w(Landroid/view/View;)Z

    .line 470
    .line 471
    .line 472
    move-result v6

    .line 473
    if-eqz v6, :cond_d

    .line 474
    .line 475
    invoke-virtual {v8, v0}, Lq/j;->h(I)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    check-cast v6, LS/E;

    .line 480
    .line 481
    iget-object v7, v1, LS/v;->l:Ljava/util/ArrayList;

    .line 482
    .line 483
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    iget-object v6, v1, LS/v;->m:Ljava/util/ArrayList;

    .line 487
    .line 488
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    :cond_d
    add-int/lit8 v0, v0, -0x1

    .line 492
    .line 493
    goto :goto_8

    .line 494
    :cond_e
    :goto_9
    add-int/lit8 v10, v10, 0x1

    .line 495
    .line 496
    move-object/from16 v0, p0

    .line 497
    .line 498
    move-object v6, v5

    .line 499
    move/from16 v7, v18

    .line 500
    .line 501
    const/4 v3, 0x0

    .line 502
    goto/16 :goto_2

    .line 503
    .line 504
    :cond_f
    move/from16 v18, v7

    .line 505
    .line 506
    const/4 v0, 0x0

    .line 507
    :goto_a
    iget v3, v8, Lq/j;->d:I

    .line 508
    .line 509
    if-ge v0, v3, :cond_11

    .line 510
    .line 511
    invoke-virtual {v8, v0}, Lq/j;->j(I)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    check-cast v3, LS/E;

    .line 516
    .line 517
    iget-object v4, v3, LS/E;->b:Landroid/view/View;

    .line 518
    .line 519
    invoke-virtual {v1, v4}, LS/v;->w(Landroid/view/View;)Z

    .line 520
    .line 521
    .line 522
    move-result v4

    .line 523
    if-eqz v4, :cond_10

    .line 524
    .line 525
    iget-object v4, v1, LS/v;->l:Ljava/util/ArrayList;

    .line 526
    .line 527
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    iget-object v3, v1, LS/v;->m:Ljava/util/ArrayList;

    .line 531
    .line 532
    const/4 v4, 0x0

    .line 533
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 537
    .line 538
    goto :goto_a

    .line 539
    :cond_11
    const/4 v0, 0x0

    .line 540
    :goto_b
    iget v3, v9, Lq/j;->d:I

    .line 541
    .line 542
    if-ge v0, v3, :cond_13

    .line 543
    .line 544
    invoke-virtual {v9, v0}, Lq/j;->j(I)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    check-cast v3, LS/E;

    .line 549
    .line 550
    iget-object v4, v3, LS/E;->b:Landroid/view/View;

    .line 551
    .line 552
    invoke-virtual {v1, v4}, LS/v;->w(Landroid/view/View;)Z

    .line 553
    .line 554
    .line 555
    move-result v4

    .line 556
    if-eqz v4, :cond_12

    .line 557
    .line 558
    iget-object v4, v1, LS/v;->m:Ljava/util/ArrayList;

    .line 559
    .line 560
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    iget-object v3, v1, LS/v;->l:Ljava/util/ArrayList;

    .line 564
    .line 565
    const/4 v4, 0x0

    .line 566
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    goto :goto_c

    .line 570
    :cond_12
    const/4 v4, 0x0

    .line 571
    :goto_c
    add-int/lit8 v0, v0, 0x1

    .line 572
    .line 573
    goto :goto_b

    .line 574
    :cond_13
    invoke-static {}, LS/v;->q()Lq/e;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    iget v3, v0, Lq/j;->d:I

    .line 579
    .line 580
    invoke-virtual {v2}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 581
    .line 582
    .line 583
    move-result-object v4

    .line 584
    add-int/lit8 v3, v3, -0x1

    .line 585
    .line 586
    :goto_d
    if-ltz v3, :cond_1b

    .line 587
    .line 588
    invoke-virtual {v0, v3}, Lq/j;->f(I)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    check-cast v5, Landroid/animation/Animator;

    .line 593
    .line 594
    if-eqz v5, :cond_16

    .line 595
    .line 596
    invoke-virtual {v0, v5}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v6

    .line 600
    check-cast v6, LS/p;

    .line 601
    .line 602
    if-eqz v6, :cond_16

    .line 603
    .line 604
    iget-object v7, v6, LS/p;->e:LS/v;

    .line 605
    .line 606
    iget-object v8, v6, LS/p;->a:Landroid/view/View;

    .line 607
    .line 608
    if-eqz v8, :cond_16

    .line 609
    .line 610
    iget-object v9, v6, LS/p;->d:Landroid/view/WindowId;

    .line 611
    .line 612
    invoke-virtual {v4, v9}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v9

    .line 616
    if-eqz v9, :cond_16

    .line 617
    .line 618
    iget-object v6, v6, LS/p;->c:LS/E;

    .line 619
    .line 620
    move/from16 v9, v18

    .line 621
    .line 622
    invoke-virtual {v1, v8, v9}, LS/v;->s(Landroid/view/View;Z)LS/E;

    .line 623
    .line 624
    .line 625
    move-result-object v10

    .line 626
    invoke-virtual {v1, v8, v9}, LS/v;->o(Landroid/view/View;Z)LS/E;

    .line 627
    .line 628
    .line 629
    move-result-object v11

    .line 630
    if-nez v10, :cond_14

    .line 631
    .line 632
    if-nez v11, :cond_14

    .line 633
    .line 634
    iget-object v9, v1, LS/v;->i:LN1/w;

    .line 635
    .line 636
    iget-object v9, v9, LN1/w;->a:Ljava/lang/Object;

    .line 637
    .line 638
    check-cast v9, Lq/e;

    .line 639
    .line 640
    invoke-virtual {v9, v8}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v8

    .line 644
    move-object v11, v8

    .line 645
    check-cast v11, LS/E;

    .line 646
    .line 647
    :cond_14
    if-nez v10, :cond_15

    .line 648
    .line 649
    if-eqz v11, :cond_16

    .line 650
    .line 651
    :cond_15
    invoke-virtual {v7, v6, v11}, LS/v;->v(LS/E;LS/E;)Z

    .line 652
    .line 653
    .line 654
    move-result v6

    .line 655
    if-eqz v6, :cond_16

    .line 656
    .line 657
    invoke-virtual {v7}, LS/v;->p()LS/v;

    .line 658
    .line 659
    .line 660
    move-result-object v6

    .line 661
    iget-object v8, v7, LS/v;->o:Ljava/util/ArrayList;

    .line 662
    .line 663
    iget-object v6, v6, LS/v;->z:LS/s;

    .line 664
    .line 665
    if-eqz v6, :cond_17

    .line 666
    .line 667
    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    invoke-virtual {v0, v5}, Lq/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 677
    .line 678
    .line 679
    move-result v5

    .line 680
    if-nez v5, :cond_16

    .line 681
    .line 682
    sget-object v5, LS/u;->d:LS/u;

    .line 683
    .line 684
    const/4 v6, 0x0

    .line 685
    invoke-virtual {v7, v7, v5, v6}, LS/v;->y(LS/v;LS/u;Z)V

    .line 686
    .line 687
    .line 688
    iget-boolean v5, v7, LS/v;->s:Z

    .line 689
    .line 690
    if-nez v5, :cond_1a

    .line 691
    .line 692
    const/4 v9, 0x1

    .line 693
    iput-boolean v9, v7, LS/v;->s:Z

    .line 694
    .line 695
    sget-object v5, LS/u;->c:LS/u;

    .line 696
    .line 697
    invoke-virtual {v7, v7, v5, v6}, LS/v;->y(LS/v;LS/u;Z)V

    .line 698
    .line 699
    .line 700
    goto :goto_f

    .line 701
    :cond_16
    const/4 v6, 0x0

    .line 702
    goto :goto_f

    .line 703
    :cond_17
    const/4 v6, 0x0

    .line 704
    invoke-virtual {v5}, Landroid/animation/Animator;->isRunning()Z

    .line 705
    .line 706
    .line 707
    move-result v7

    .line 708
    if-nez v7, :cond_19

    .line 709
    .line 710
    invoke-virtual {v5}, Landroid/animation/Animator;->isStarted()Z

    .line 711
    .line 712
    .line 713
    move-result v7

    .line 714
    if-eqz v7, :cond_18

    .line 715
    .line 716
    goto :goto_e

    .line 717
    :cond_18
    invoke-virtual {v0, v5}, Lq/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    goto :goto_f

    .line 721
    :cond_19
    :goto_e
    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 722
    .line 723
    .line 724
    :cond_1a
    :goto_f
    add-int/lit8 v3, v3, -0x1

    .line 725
    .line 726
    const/16 v18, 0x1

    .line 727
    .line 728
    goto/16 :goto_d

    .line 729
    .line 730
    :cond_1b
    iget-object v3, v1, LS/v;->h:LN1/w;

    .line 731
    .line 732
    iget-object v4, v1, LS/v;->i:LN1/w;

    .line 733
    .line 734
    iget-object v5, v1, LS/v;->l:Ljava/util/ArrayList;

    .line 735
    .line 736
    iget-object v6, v1, LS/v;->m:Ljava/util/ArrayList;

    .line 737
    .line 738
    invoke-virtual/range {v1 .. v6}, LS/v;->m(Landroid/view/ViewGroup;LN1/w;LN1/w;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 739
    .line 740
    .line 741
    iget-object v0, v1, LS/v;->z:LS/s;

    .line 742
    .line 743
    if-nez v0, :cond_1c

    .line 744
    .line 745
    invoke-virtual {v1}, LS/v;->E()V

    .line 746
    .line 747
    .line 748
    const/16 v18, 0x1

    .line 749
    .line 750
    return v18

    .line 751
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 752
    .line 753
    const/16 v2, 0x22

    .line 754
    .line 755
    if-lt v0, v2, :cond_1e

    .line 756
    .line 757
    invoke-virtual {v1}, LS/v;->A()V

    .line 758
    .line 759
    .line 760
    iget-object v0, v1, LS/v;->z:LS/s;

    .line 761
    .line 762
    iget-object v2, v0, LS/s;->g:LS/B;

    .line 763
    .line 764
    iget-wide v3, v2, LS/v;->y:J

    .line 765
    .line 766
    const-wide/16 v5, 0x0

    .line 767
    .line 768
    cmp-long v3, v3, v5

    .line 769
    .line 770
    if-nez v3, :cond_1d

    .line 771
    .line 772
    const-wide/16 v5, 0x1

    .line 773
    .line 774
    :cond_1d
    iget-wide v3, v0, LS/s;->a:J

    .line 775
    .line 776
    invoke-virtual {v2, v5, v6, v3, v4}, LS/B;->F(JJ)V

    .line 777
    .line 778
    .line 779
    iput-wide v5, v0, LS/s;->a:J

    .line 780
    .line 781
    iget-object v0, v1, LS/v;->z:LS/s;

    .line 782
    .line 783
    const/4 v9, 0x1

    .line 784
    iput-boolean v9, v0, LS/s;->b:Z

    .line 785
    .line 786
    return v9

    .line 787
    :cond_1e
    const/4 v9, 0x1

    .line 788
    :goto_10
    return v9
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, LS/y;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, LS/z;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-static {}, LS/z;->b()Lq/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-lez v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-ge v2, v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    check-cast v3, LS/v;

    .line 50
    .line 51
    invoke-virtual {v3, p1}, LS/v;->D(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, LS/y;->b:LS/v;

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-virtual {p1, v0}, LS/v;->j(Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
