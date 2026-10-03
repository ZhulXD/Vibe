.class public final Lf0/G;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lf0/g;
.implements Lcom/bumptech/glide/load/data/d;


# instance fields
.field public final b:Lf0/j;

.field public final c:Lf0/h;

.field public d:I

.field public e:I

.field public f:Ld0/f;

.field public g:Ljava/util/List;

.field public h:I

.field public volatile i:Lj0/p;

.field public j:Ljava/io/File;

.field public k:Lf0/H;


# direct methods
.method public constructor <init>(Lf0/h;Lf0/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lf0/G;->e:I

    .line 6
    .line 7
    iput-object p1, p0, Lf0/G;->c:Lf0/h;

    .line 8
    .line 9
    iput-object p2, p0, Lf0/G;->b:Lf0/j;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "Failed to find any load path from "

    .line 4
    .line 5
    iget-object v2, v1, Lf0/G;->c:Lf0/h;

    .line 6
    .line 7
    invoke-virtual {v2}, Lf0/h;->a()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    const/16 v17, 0x0

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    iget-object v3, v1, Lf0/G;->c:Lf0/h;

    .line 22
    .line 23
    iget-object v5, v3, Lf0/h;->c:Lcom/bumptech/glide/e;

    .line 24
    .line 25
    invoke-virtual {v5}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/i;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget-object v6, v3, Lf0/h;->d:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget-object v7, v3, Lf0/h;->g:Ljava/lang/Class;

    .line 36
    .line 37
    iget-object v3, v3, Lf0/h;->k:Ljava/lang/Class;

    .line 38
    .line 39
    iget-object v8, v5, Lcom/bumptech/glide/i;->h:LA1/d;

    .line 40
    .line 41
    iget-object v9, v8, LA1/d;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v9, Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    check-cast v9, Ly0/l;

    .line 51
    .line 52
    if-nez v9, :cond_1

    .line 53
    .line 54
    new-instance v9, Ly0/l;

    .line 55
    .line 56
    invoke-direct {v9, v6, v7, v3}, Ly0/l;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iput-object v6, v9, Ly0/l;->a:Ljava/lang/Class;

    .line 61
    .line 62
    iput-object v7, v9, Ly0/l;->b:Ljava/lang/Class;

    .line 63
    .line 64
    iput-object v3, v9, Ly0/l;->c:Ljava/lang/Class;

    .line 65
    .line 66
    :goto_0
    iget-object v11, v8, LA1/d;->d:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v11, Lq/e;

    .line 69
    .line 70
    monitor-enter v11

    .line 71
    :try_start_0
    iget-object v12, v8, LA1/d;->d:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v12, Lq/e;

    .line 74
    .line 75
    invoke-virtual {v12, v9}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    check-cast v12, Ljava/util/List;

    .line 80
    .line 81
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 82
    iget-object v8, v8, LA1/d;->c:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v8, Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    .line 86
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    if-nez v12, :cond_5

    .line 90
    .line 91
    new-instance v12, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v8, v5, Lcom/bumptech/glide/i;->a:Lj0/t;

    .line 97
    .line 98
    monitor-enter v8

    .line 99
    :try_start_1
    iget-object v9, v8, Lj0/t;->a:Lj0/y;

    .line 100
    .line 101
    invoke-virtual {v9, v6}, Lj0/y;->c(Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    monitor-exit v8

    .line 106
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    const/4 v11, 0x0

    .line 111
    :cond_2
    if-ge v11, v8, :cond_4

    .line 112
    .line 113
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    add-int/lit8 v11, v11, 0x1

    .line 118
    .line 119
    check-cast v13, Ljava/lang/Class;

    .line 120
    .line 121
    iget-object v14, v5, Lcom/bumptech/glide/i;->c:LA1/d;

    .line 122
    .line 123
    invoke-virtual {v14, v13, v7}, LA1/d;->o(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    const/4 v15, 0x0

    .line 132
    :goto_1
    if-ge v15, v14, :cond_2

    .line 133
    .line 134
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v16

    .line 138
    add-int/lit8 v15, v15, 0x1

    .line 139
    .line 140
    const/16 v17, 0x0

    .line 141
    .line 142
    move-object/from16 v4, v16

    .line 143
    .line 144
    check-cast v4, Ljava/lang/Class;

    .line 145
    .line 146
    iget-object v10, v5, Lcom/bumptech/glide/i;->f:LY/c;

    .line 147
    .line 148
    invoke-virtual {v10, v4, v3}, LY/c;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    if-nez v10, :cond_3

    .line 157
    .line 158
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    if-nez v10, :cond_3

    .line 163
    .line 164
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    :cond_3
    const/4 v10, 0x0

    .line 168
    goto :goto_1

    .line 169
    :cond_4
    const/16 v17, 0x0

    .line 170
    .line 171
    iget-object v4, v5, Lcom/bumptech/glide/i;->h:LA1/d;

    .line 172
    .line 173
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    iget-object v8, v4, LA1/d;->d:Ljava/lang/Object;

    .line 178
    .line 179
    move-object v9, v8

    .line 180
    check-cast v9, Lq/e;

    .line 181
    .line 182
    monitor-enter v9

    .line 183
    :try_start_2
    iget-object v4, v4, LA1/d;->d:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v4, Lq/e;

    .line 186
    .line 187
    new-instance v8, Ly0/l;

    .line 188
    .line 189
    invoke-direct {v8, v6, v7, v3}, Ly0/l;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v8, v5}, Lq/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    monitor-exit v9

    .line 196
    goto :goto_2

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    throw v0

    .line 200
    :catchall_1
    move-exception v0

    .line 201
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    throw v0

    .line 203
    :cond_5
    const/16 v17, 0x0

    .line 204
    .line 205
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_7

    .line 210
    .line 211
    const-class v2, Ljava/io/File;

    .line 212
    .line 213
    iget-object v3, v1, Lf0/G;->c:Lf0/h;

    .line 214
    .line 215
    iget-object v3, v3, Lf0/h;->k:Ljava/lang/Class;

    .line 216
    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_6

    .line 222
    .line 223
    goto/16 :goto_5

    .line 224
    .line 225
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 226
    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, v1, Lf0/G;->c:Lf0/h;

    .line 233
    .line 234
    iget-object v0, v0, Lf0/h;->d:Ljava/lang/Object;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v0, " to "

    .line 244
    .line 245
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget-object v0, v1, Lf0/G;->c:Lf0/h;

    .line 249
    .line 250
    iget-object v0, v0, Lf0/h;->k:Ljava/lang/Class;

    .line 251
    .line 252
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v2

    .line 263
    :cond_7
    :goto_3
    iget-object v0, v1, Lf0/G;->g:Ljava/util/List;

    .line 264
    .line 265
    const/4 v3, 0x1

    .line 266
    if-eqz v0, :cond_a

    .line 267
    .line 268
    iget v4, v1, Lf0/G;->h:I

    .line 269
    .line 270
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-ge v4, v0, :cond_a

    .line 275
    .line 276
    const/4 v0, 0x0

    .line 277
    iput-object v0, v1, Lf0/G;->i:Lj0/p;

    .line 278
    .line 279
    move/from16 v4, v17

    .line 280
    .line 281
    :cond_8
    :goto_4
    if-nez v4, :cond_9

    .line 282
    .line 283
    iget v0, v1, Lf0/G;->h:I

    .line 284
    .line 285
    iget-object v2, v1, Lf0/G;->g:Ljava/util/List;

    .line 286
    .line 287
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-ge v0, v2, :cond_9

    .line 292
    .line 293
    iget-object v0, v1, Lf0/G;->g:Ljava/util/List;

    .line 294
    .line 295
    iget v2, v1, Lf0/G;->h:I

    .line 296
    .line 297
    add-int/lit8 v5, v2, 0x1

    .line 298
    .line 299
    iput v5, v1, Lf0/G;->h:I

    .line 300
    .line 301
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Lj0/q;

    .line 306
    .line 307
    iget-object v2, v1, Lf0/G;->j:Ljava/io/File;

    .line 308
    .line 309
    iget-object v5, v1, Lf0/G;->c:Lf0/h;

    .line 310
    .line 311
    iget v6, v5, Lf0/h;->e:I

    .line 312
    .line 313
    iget v7, v5, Lf0/h;->f:I

    .line 314
    .line 315
    iget-object v5, v5, Lf0/h;->i:Ld0/i;

    .line 316
    .line 317
    invoke-interface {v0, v2, v6, v7, v5}, Lj0/q;->a(Ljava/lang/Object;IILd0/i;)Lj0/p;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iput-object v0, v1, Lf0/G;->i:Lj0/p;

    .line 322
    .line 323
    iget-object v0, v1, Lf0/G;->i:Lj0/p;

    .line 324
    .line 325
    if-eqz v0, :cond_8

    .line 326
    .line 327
    iget-object v0, v1, Lf0/G;->c:Lf0/h;

    .line 328
    .line 329
    iget-object v2, v1, Lf0/G;->i:Lj0/p;

    .line 330
    .line 331
    iget-object v2, v2, Lj0/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 332
    .line 333
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-virtual {v0, v2}, Lf0/h;->c(Ljava/lang/Class;)Lf0/D;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    if-eqz v0, :cond_8

    .line 342
    .line 343
    iget-object v0, v1, Lf0/G;->i:Lj0/p;

    .line 344
    .line 345
    iget-object v0, v0, Lj0/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 346
    .line 347
    iget-object v2, v1, Lf0/G;->c:Lf0/h;

    .line 348
    .line 349
    iget-object v2, v2, Lf0/h;->o:Lcom/bumptech/glide/g;

    .line 350
    .line 351
    invoke-interface {v0, v2, v1}, Lcom/bumptech/glide/load/data/e;->f(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V

    .line 352
    .line 353
    .line 354
    move v4, v3

    .line 355
    goto :goto_4

    .line 356
    :cond_9
    return v4

    .line 357
    :cond_a
    const/4 v0, 0x0

    .line 358
    iget v4, v1, Lf0/G;->e:I

    .line 359
    .line 360
    add-int/2addr v4, v3

    .line 361
    iput v4, v1, Lf0/G;->e:I

    .line 362
    .line 363
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    if-lt v4, v5, :cond_c

    .line 368
    .line 369
    iget v4, v1, Lf0/G;->d:I

    .line 370
    .line 371
    add-int/2addr v4, v3

    .line 372
    iput v4, v1, Lf0/G;->d:I

    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-lt v4, v3, :cond_b

    .line 379
    .line 380
    :goto_5
    return v17

    .line 381
    :cond_b
    move/from16 v3, v17

    .line 382
    .line 383
    iput v3, v1, Lf0/G;->e:I

    .line 384
    .line 385
    :cond_c
    iget v3, v1, Lf0/G;->d:I

    .line 386
    .line 387
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    move-object/from16 v20, v3

    .line 392
    .line 393
    check-cast v20, Ld0/f;

    .line 394
    .line 395
    iget v3, v1, Lf0/G;->e:I

    .line 396
    .line 397
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    check-cast v3, Ljava/lang/Class;

    .line 402
    .line 403
    iget-object v4, v1, Lf0/G;->c:Lf0/h;

    .line 404
    .line 405
    invoke-virtual {v4, v3}, Lf0/h;->e(Ljava/lang/Class;)Ld0/m;

    .line 406
    .line 407
    .line 408
    move-result-object v24

    .line 409
    new-instance v18, Lf0/H;

    .line 410
    .line 411
    iget-object v4, v1, Lf0/G;->c:Lf0/h;

    .line 412
    .line 413
    iget-object v5, v4, Lf0/h;->c:Lcom/bumptech/glide/e;

    .line 414
    .line 415
    iget-object v5, v5, Lcom/bumptech/glide/e;->a:Lg0/g;

    .line 416
    .line 417
    iget-object v6, v4, Lf0/h;->n:Ld0/f;

    .line 418
    .line 419
    iget v7, v4, Lf0/h;->e:I

    .line 420
    .line 421
    iget v8, v4, Lf0/h;->f:I

    .line 422
    .line 423
    iget-object v9, v4, Lf0/h;->i:Ld0/i;

    .line 424
    .line 425
    move-object/from16 v25, v3

    .line 426
    .line 427
    move-object/from16 v19, v5

    .line 428
    .line 429
    move-object/from16 v21, v6

    .line 430
    .line 431
    move/from16 v22, v7

    .line 432
    .line 433
    move/from16 v23, v8

    .line 434
    .line 435
    move-object/from16 v26, v9

    .line 436
    .line 437
    invoke-direct/range {v18 .. v26}, Lf0/H;-><init>(Lg0/g;Ld0/f;Ld0/f;IILd0/m;Ljava/lang/Class;Ld0/i;)V

    .line 438
    .line 439
    .line 440
    move-object/from16 v5, v18

    .line 441
    .line 442
    move-object/from16 v3, v20

    .line 443
    .line 444
    iput-object v5, v1, Lf0/G;->k:Lf0/H;

    .line 445
    .line 446
    iget-object v4, v4, Lf0/h;->h:Lf0/q;

    .line 447
    .line 448
    invoke-virtual {v4}, Lf0/q;->a()Lh0/a;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    iget-object v5, v1, Lf0/G;->k:Lf0/H;

    .line 453
    .line 454
    invoke-interface {v4, v5}, Lh0/a;->h(Ld0/f;)Ljava/io/File;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    iput-object v4, v1, Lf0/G;->j:Ljava/io/File;

    .line 459
    .line 460
    if-eqz v4, :cond_d

    .line 461
    .line 462
    iput-object v3, v1, Lf0/G;->f:Ld0/f;

    .line 463
    .line 464
    iget-object v3, v1, Lf0/G;->c:Lf0/h;

    .line 465
    .line 466
    iget-object v3, v3, Lf0/h;->c:Lcom/bumptech/glide/e;

    .line 467
    .line 468
    invoke-virtual {v3}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/i;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/i;->f(Ljava/lang/Object;)Ljava/util/List;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    iput-object v3, v1, Lf0/G;->g:Ljava/util/List;

    .line 477
    .line 478
    const/4 v3, 0x0

    .line 479
    iput v3, v1, Lf0/G;->h:I

    .line 480
    .line 481
    goto :goto_6

    .line 482
    :cond_d
    const/4 v3, 0x0

    .line 483
    :goto_6
    move/from16 v17, v3

    .line 484
    .line 485
    goto/16 :goto_3

    .line 486
    .line 487
    :catchall_2
    move-exception v0

    .line 488
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 489
    throw v0
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf0/G;->b:Lf0/j;

    .line 2
    .line 3
    iget-object v1, p0, Lf0/G;->k:Lf0/H;

    .line 4
    .line 5
    iget-object v2, p0, Lf0/G;->i:Lj0/p;

    .line 6
    .line 7
    iget-object v2, v2, Lj0/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    invoke-virtual {v0, v1, p1, v2, v3}, Lf0/j;->a(Ld0/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/G;->i:Lj0/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lj0/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf0/G;->b:Lf0/j;

    .line 2
    .line 3
    iget-object v1, p0, Lf0/G;->f:Ld0/f;

    .line 4
    .line 5
    iget-object v2, p0, Lf0/G;->i:Lj0/p;

    .line 6
    .line 7
    iget-object v3, v2, Lj0/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    iget-object v5, p0, Lf0/G;->k:Lf0/H;

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    invoke-virtual/range {v0 .. v5}, Lf0/j;->c(Ld0/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILd0/f;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
