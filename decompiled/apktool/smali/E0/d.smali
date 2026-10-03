.class public final LE0/d;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LE0/d;->b:I

    iput-object p2, p0, LE0/d;->d:Ljava/lang/Object;

    iput-object p3, p0, LE0/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LP/G;LP/D;I)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, LE0/d;->b:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE0/d;->d:Ljava/lang/Object;

    iput-object p2, p0, LE0/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LV1/e;LW1/d;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LE0/d;->b:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE0/d;->c:Ljava/lang/Object;

    iput-object p2, p0, LE0/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, LE0/d;->b:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE0/d;->d:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, LE0/d;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LE0/d;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, LE0/d;->d:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v2, v0

    .line 11
    check-cast v2, Li0/c;

    .line 12
    .line 13
    iget-boolean v0, v2, Li0/c;->d:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    :try_start_0
    iget-object v0, v1, LE0/d;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Ljava/lang/Runnable;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    iget-object v2, v2, Li0/c;->c:Li0/d;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x6

    .line 52
    const-string v3, "GlideExecutor"

    .line 53
    .line 54
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    const-string v2, "Request threw uncaught throwable"

    .line 61
    .line 62
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, v1, LE0/d;->d:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Landroidx/biometric/p;

    .line 69
    .line 70
    iget-object v0, v0, Landroidx/biometric/p;->c:Landroidx/biometric/w;

    .line 71
    .line 72
    iget-object v2, v0, Landroidx/biometric/w;->b:Lcom/bumptech/glide/c;

    .line 73
    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    new-instance v2, Landroidx/biometric/t;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v2, v0, Landroidx/biometric/w;->b:Lcom/bumptech/glide/c;

    .line 82
    .line 83
    :cond_2
    iget-object v0, v0, Landroidx/biometric/w;->b:Lcom/bumptech/glide/c;

    .line 84
    .line 85
    iget-object v2, v1, LE0/d;->c:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, Landroidx/biometric/s;

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/c;->A(Landroidx/biometric/s;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_1
    iget-object v0, v1, LE0/d;->d:Ljava/lang/Object;

    .line 94
    .line 95
    move-object v2, v0

    .line 96
    check-cast v2, La2/i;

    .line 97
    .line 98
    iget-object v3, v2, La2/i;->b:LV1/t;

    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    move v4, v0

    .line 102
    :cond_3
    :try_start_1
    iget-object v0, v1, LE0/d;->c:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Ljava/lang/Runnable;

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_1
    move-exception v0

    .line 111
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 112
    .line 113
    invoke-static {v5, v0}, LV1/w;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :goto_1
    invoke-virtual {v2}, La2/i;->d()Ljava/lang/Runnable;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-nez v0, :cond_4

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    iput-object v0, v1, LE0/d;->c:Ljava/lang/Object;

    .line 124
    .line 125
    add-int/lit8 v4, v4, 0x1

    .line 126
    .line 127
    const/16 v0, 0x10

    .line 128
    .line 129
    if-lt v4, v0, :cond_3

    .line 130
    .line 131
    invoke-virtual {v3, v2}, LV1/t;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    invoke-virtual {v3, v2, v1}, LV1/t;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 138
    .line 139
    .line 140
    :goto_2
    return-void

    .line 141
    :pswitch_2
    iget-object v0, v1, LE0/d;->c:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, LV1/e;

    .line 144
    .line 145
    iget-object v2, v1, LE0/d;->d:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v2, LW1/d;

    .line 148
    .line 149
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 150
    .line 151
    invoke-virtual {v0, v2, v3}, LV1/e;->z(LV1/t;Lkotlin/Unit;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_3
    iget-object v0, v1, LE0/d;->c:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, LP/D;

    .line 158
    .line 159
    iget-object v2, v0, LP/D;->e:LP/y0;

    .line 160
    .line 161
    iget-object v3, v1, LE0/d;->d:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v3, LP/G;

    .line 164
    .line 165
    iget-object v4, v3, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 166
    .line 167
    if-eqz v4, :cond_a

    .line 168
    .line 169
    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 170
    .line 171
    if-eqz v4, :cond_a

    .line 172
    .line 173
    iget-boolean v0, v0, LP/D;->k:Z

    .line 174
    .line 175
    if-nez v0, :cond_a

    .line 176
    .line 177
    iget-object v0, v2, LP/y0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    .line 179
    const/4 v4, -0x1

    .line 180
    if-nez v0, :cond_5

    .line 181
    .line 182
    move v0, v4

    .line 183
    goto :goto_3

    .line 184
    :cond_5
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->H(LP/y0;)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    :goto_3
    if-eq v0, v4, :cond_a

    .line 189
    .line 190
    iget-object v0, v3, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 191
    .line 192
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()LP/c0;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-eqz v0, :cond_6

    .line 197
    .line 198
    invoke-virtual {v0}, LP/c0;->f()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_7

    .line 203
    .line 204
    :cond_6
    iget-object v0, v3, LP/G;->p:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    const/4 v5, 0x0

    .line 211
    :goto_4
    if-ge v5, v4, :cond_9

    .line 212
    .line 213
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    check-cast v6, LP/D;

    .line 218
    .line 219
    iget-boolean v6, v6, LP/D;->l:Z

    .line 220
    .line 221
    if-nez v6, :cond_8

    .line 222
    .line 223
    :cond_7
    iget-object v0, v3, LP/G;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_9
    iget-object v0, v3, LP/G;->m:LC1/N0;

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    const-string v0, "viewHolder"

    .line 238
    .line 239
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_a
    :goto_5
    return-void

    .line 243
    :pswitch_4
    iget-object v0, v1, LE0/d;->d:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v0, LP/d;

    .line 246
    .line 247
    iget-object v2, v0, LP/d;->e:LP/f;

    .line 248
    .line 249
    iget v3, v2, LP/f;->g:I

    .line 250
    .line 251
    iget v4, v0, LP/d;->d:I

    .line 252
    .line 253
    if-ne v3, v4, :cond_16

    .line 254
    .line 255
    iget-object v0, v0, LP/d;->c:Ljava/util/List;

    .line 256
    .line 257
    iget-object v3, v1, LE0/d;->c:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v3, LP/r;

    .line 260
    .line 261
    iput-object v0, v2, LP/f;->e:Ljava/util/List;

    .line 262
    .line 263
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iput-object v0, v2, LP/f;->f:Ljava/util/List;

    .line 268
    .line 269
    iget-object v0, v2, LP/f;->a:LA1/b;

    .line 270
    .line 271
    iget-object v4, v3, LP/r;->b:[I

    .line 272
    .line 273
    iget-object v5, v3, LP/r;->a:Ljava/util/ArrayList;

    .line 274
    .line 275
    iget v6, v3, LP/r;->e:I

    .line 276
    .line 277
    iget-object v7, v3, LP/r;->d:LA1/b;

    .line 278
    .line 279
    new-instance v8, LP/g;

    .line 280
    .line 281
    invoke-direct {v8, v0}, LP/g;-><init>(LA1/b;)V

    .line 282
    .line 283
    .line 284
    new-instance v0, Ljava/util/ArrayDeque;

    .line 285
    .line 286
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 287
    .line 288
    .line 289
    iget v9, v3, LP/r;->f:I

    .line 290
    .line 291
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    const/4 v11, 0x1

    .line 296
    sub-int/2addr v10, v11

    .line 297
    move v12, v10

    .line 298
    move v10, v9

    .line 299
    move v9, v6

    .line 300
    :goto_6
    if-ltz v12, :cond_15

    .line 301
    .line 302
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v13

    .line 306
    check-cast v13, LP/q;

    .line 307
    .line 308
    iget v14, v13, LP/q;->a:I

    .line 309
    .line 310
    iget v15, v13, LP/q;->c:I

    .line 311
    .line 312
    move/from16 v16, v11

    .line 313
    .line 314
    add-int v11, v14, v15

    .line 315
    .line 316
    iget v13, v13, LP/q;->b:I

    .line 317
    .line 318
    move-object/from16 v17, v2

    .line 319
    .line 320
    add-int v2, v13, v15

    .line 321
    .line 322
    move-object/from16 v18, v4

    .line 323
    .line 324
    :goto_7
    const/4 v4, 0x0

    .line 325
    if-le v9, v11, :cond_e

    .line 326
    .line 327
    add-int/lit8 v9, v9, -0x1

    .line 328
    .line 329
    aget v19, v18, v9

    .line 330
    .line 331
    and-int/lit8 v20, v19, 0xc

    .line 332
    .line 333
    if-eqz v20, :cond_d

    .line 334
    .line 335
    move-object/from16 v20, v5

    .line 336
    .line 337
    shr-int/lit8 v5, v19, 0x4

    .line 338
    .line 339
    invoke-static {v0, v5, v4}, LP/r;->a(Ljava/util/ArrayDeque;IZ)LP/s;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    if-eqz v4, :cond_c

    .line 344
    .line 345
    iget v4, v4, LP/s;->b:I

    .line 346
    .line 347
    sub-int v4, v6, v4

    .line 348
    .line 349
    add-int/lit8 v4, v4, -0x1

    .line 350
    .line 351
    invoke-virtual {v8, v9, v4}, LP/g;->b(II)V

    .line 352
    .line 353
    .line 354
    and-int/lit8 v19, v19, 0x4

    .line 355
    .line 356
    if-eqz v19, :cond_b

    .line 357
    .line 358
    invoke-virtual {v7, v9, v5}, LA1/b;->l(II)V

    .line 359
    .line 360
    .line 361
    move/from16 v5, v16

    .line 362
    .line 363
    invoke-virtual {v8, v4, v5}, LP/g;->g(II)V

    .line 364
    .line 365
    .line 366
    goto :goto_8

    .line 367
    :cond_b
    move/from16 v5, v16

    .line 368
    .line 369
    :goto_8
    move/from16 v19, v6

    .line 370
    .line 371
    goto :goto_9

    .line 372
    :cond_c
    move/from16 v5, v16

    .line 373
    .line 374
    new-instance v4, LP/s;

    .line 375
    .line 376
    sub-int v16, v6, v9

    .line 377
    .line 378
    move/from16 v19, v6

    .line 379
    .line 380
    add-int/lit8 v6, v16, -0x1

    .line 381
    .line 382
    invoke-direct {v4, v9, v6, v5}, LP/s;-><init>(IIZ)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    :goto_9
    move/from16 v6, v19

    .line 389
    .line 390
    goto :goto_a

    .line 391
    :cond_d
    move-object/from16 v20, v5

    .line 392
    .line 393
    move/from16 v19, v6

    .line 394
    .line 395
    move/from16 v5, v16

    .line 396
    .line 397
    invoke-virtual {v8, v9, v5}, LP/g;->a(II)V

    .line 398
    .line 399
    .line 400
    add-int/lit8 v6, v19, -0x1

    .line 401
    .line 402
    :goto_a
    move-object/from16 v5, v20

    .line 403
    .line 404
    const/16 v16, 0x1

    .line 405
    .line 406
    goto :goto_7

    .line 407
    :cond_e
    move-object/from16 v20, v5

    .line 408
    .line 409
    move/from16 v19, v6

    .line 410
    .line 411
    :goto_b
    if-le v10, v2, :cond_12

    .line 412
    .line 413
    add-int/lit8 v10, v10, -0x1

    .line 414
    .line 415
    iget-object v5, v3, LP/r;->c:[I

    .line 416
    .line 417
    aget v5, v5, v10

    .line 418
    .line 419
    and-int/lit8 v11, v5, 0xc

    .line 420
    .line 421
    if-eqz v11, :cond_10

    .line 422
    .line 423
    shr-int/lit8 v11, v5, 0x4

    .line 424
    .line 425
    move/from16 v21, v2

    .line 426
    .line 427
    const/4 v4, 0x1

    .line 428
    invoke-static {v0, v11, v4}, LP/r;->a(Ljava/util/ArrayDeque;IZ)LP/s;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    if-nez v2, :cond_f

    .line 433
    .line 434
    new-instance v2, LP/s;

    .line 435
    .line 436
    sub-int v5, v6, v9

    .line 437
    .line 438
    const/4 v11, 0x0

    .line 439
    invoke-direct {v2, v10, v5, v11}, LP/s;-><init>(IIZ)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move/from16 v19, v11

    .line 446
    .line 447
    goto :goto_c

    .line 448
    :cond_f
    const/16 v19, 0x0

    .line 449
    .line 450
    iget v2, v2, LP/s;->b:I

    .line 451
    .line 452
    sub-int v2, v6, v2

    .line 453
    .line 454
    sub-int/2addr v2, v4

    .line 455
    invoke-virtual {v8, v2, v9}, LP/g;->b(II)V

    .line 456
    .line 457
    .line 458
    and-int/lit8 v2, v5, 0x4

    .line 459
    .line 460
    if-eqz v2, :cond_11

    .line 461
    .line 462
    invoke-virtual {v7, v11, v10}, LA1/b;->l(II)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v8, v9, v4}, LP/g;->g(II)V

    .line 466
    .line 467
    .line 468
    goto :goto_c

    .line 469
    :cond_10
    move/from16 v21, v2

    .line 470
    .line 471
    move/from16 v19, v4

    .line 472
    .line 473
    const/4 v4, 0x1

    .line 474
    invoke-virtual {v8, v9, v4}, LP/g;->i(II)V

    .line 475
    .line 476
    .line 477
    add-int/lit8 v6, v6, 0x1

    .line 478
    .line 479
    :cond_11
    :goto_c
    move/from16 v4, v19

    .line 480
    .line 481
    move/from16 v2, v21

    .line 482
    .line 483
    goto :goto_b

    .line 484
    :cond_12
    move/from16 v19, v4

    .line 485
    .line 486
    move v5, v13

    .line 487
    move v2, v14

    .line 488
    :goto_d
    if-ge v4, v15, :cond_14

    .line 489
    .line 490
    aget v9, v18, v2

    .line 491
    .line 492
    and-int/lit8 v9, v9, 0xf

    .line 493
    .line 494
    const/4 v10, 0x2

    .line 495
    if-ne v9, v10, :cond_13

    .line 496
    .line 497
    invoke-virtual {v7, v2, v5}, LA1/b;->l(II)V

    .line 498
    .line 499
    .line 500
    const/4 v9, 0x1

    .line 501
    invoke-virtual {v8, v2, v9}, LP/g;->g(II)V

    .line 502
    .line 503
    .line 504
    goto :goto_e

    .line 505
    :cond_13
    const/4 v9, 0x1

    .line 506
    :goto_e
    add-int/lit8 v2, v2, 0x1

    .line 507
    .line 508
    add-int/lit8 v5, v5, 0x1

    .line 509
    .line 510
    add-int/lit8 v4, v4, 0x1

    .line 511
    .line 512
    goto :goto_d

    .line 513
    :cond_14
    const/4 v9, 0x1

    .line 514
    add-int/lit8 v12, v12, -0x1

    .line 515
    .line 516
    move v11, v9

    .line 517
    move v10, v13

    .line 518
    move v9, v14

    .line 519
    move-object/from16 v2, v17

    .line 520
    .line 521
    move-object/from16 v4, v18

    .line 522
    .line 523
    move-object/from16 v5, v20

    .line 524
    .line 525
    goto/16 :goto_6

    .line 526
    .line 527
    :cond_15
    move-object/from16 v17, v2

    .line 528
    .line 529
    invoke-virtual {v8}, LP/g;->c()V

    .line 530
    .line 531
    .line 532
    invoke-virtual/range {v17 .. v17}, LP/f;->a()V

    .line 533
    .line 534
    .line 535
    :cond_16
    return-void

    .line 536
    :pswitch_5
    iget-object v0, v1, LE0/d;->d:Ljava/lang/Object;

    .line 537
    .line 538
    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 539
    .line 540
    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LD/e;

    .line 541
    .line 542
    if-eqz v0, :cond_17

    .line 543
    .line 544
    invoke-virtual {v0}, LD/e;->f()Z

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    if-eqz v0, :cond_17

    .line 549
    .line 550
    iget-object v0, v1, LE0/d;->c:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v0, Landroid/view/View;

    .line 553
    .line 554
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 555
    .line 556
    .line 557
    :cond_17
    return-void

    .line 558
    nop

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
