.class public final synthetic LC1/n;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LC1/n;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LC1/n;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, LC1/n;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, LC1/n;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p5, p0, LC1/n;->f:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LC1/n;->b:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, v1, LC1/n;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcom/minhub/gamehub/game/GameActivity;

    .line 12
    .line 13
    iget-object v3, v1, LC1/n;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v4, v1, LC1/n;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, Ly1/p0;

    .line 20
    .line 21
    iget-object v5, v1, LC1/n;->f:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v5, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-static {v2, v5, v0, v3, v4}, Lcom/minhub/gamehub/game/GameActivity;->r(ILandroid/os/Handler;Lcom/minhub/gamehub/game/GameActivity;Ljava/lang/String;Ly1/p0;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object v0, v1, LC1/n;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lcom/minhub/gamehub/game/GameActivity;

    .line 32
    .line 33
    iget-object v2, v1, LC1/n;->d:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, LQ1/d;

    .line 36
    .line 37
    iget-object v3, v1, LC1/n;->e:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Landroid/webkit/WebView;

    .line 40
    .line 41
    iget-object v4, v1, LC1/n;->f:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v4, Ljava/lang/String;

    .line 44
    .line 45
    sget v5, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    new-instance v2, LC1/A1;

    .line 54
    .line 55
    const/16 v5, 0xc

    .line 56
    .line 57
    invoke-direct {v2, v0, v4, v3, v5}, LC1/A1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void

    .line 64
    :pswitch_1
    iget-object v0, v1, LC1/n;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Landroid/app/Activity;

    .line 67
    .line 68
    iget-object v2, v1, LC1/n;->d:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v2, Ljava/lang/String;

    .line 71
    .line 72
    iget-object v3, v1, LC1/n;->e:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    .line 76
    iget-object v4, v1, LC1/n;->f:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v4, Landroid/widget/EditText;

    .line 79
    .line 80
    invoke-static {v0, v2, v3, v4}, Lorg/godotengine/godot/utils/DialogUtils$Companion;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_2
    iget-object v0, v1, LC1/n;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Landroid/app/Activity;

    .line 87
    .line 88
    iget-object v2, v1, LC1/n;->d:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v2, Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, v1, LC1/n;->e:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v3, Ljava/lang/String;

    .line 95
    .line 96
    iget-object v4, v1, LC1/n;->f:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v4, Ljava/lang/Runnable;

    .line 99
    .line 100
    invoke-static {v0, v2, v3, v4}, Lorg/godotengine/godot/Godot;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_3
    iget-object v0, v1, LC1/n;->c:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v0, Landroid/content/Context;

    .line 107
    .line 108
    iget-object v2, v1, LC1/n;->d:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v2, Ljava/lang/String;

    .line 111
    .line 112
    iget-object v3, v1, LC1/n;->e:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v3, [Ljava/lang/String;

    .line 115
    .line 116
    iget-object v4, v1, LC1/n;->f:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v4, Ljava/util/concurrent/CountDownLatch;

    .line 119
    .line 120
    invoke-static {v0, v2, v3, v4}, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :pswitch_4
    iget-object v0, v1, LC1/n;->c:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v0, Landroid/content/Context;

    .line 127
    .line 128
    iget-object v2, v1, LC1/n;->d:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v2, Ljava/lang/String;

    .line 131
    .line 132
    iget-object v3, v1, LC1/n;->e:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v3, [Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;

    .line 135
    .line 136
    iget-object v4, v1, LC1/n;->f:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v4, Ljava/util/concurrent/CountDownLatch;

    .line 139
    .line 140
    invoke-static {v0, v2, v3, v4}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Ljava/util/concurrent/CountDownLatch;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :pswitch_5
    iget-object v0, v1, LC1/n;->c:Ljava/lang/Object;

    .line 145
    .line 146
    move-object v3, v0

    .line 147
    check-cast v3, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;

    .line 148
    .line 149
    iget-object v0, v1, LC1/n;->d:Ljava/lang/Object;

    .line 150
    .line 151
    move-object v4, v0

    .line 152
    check-cast v4, LD1/j;

    .line 153
    .line 154
    iget-object v0, v1, LC1/n;->e:Ljava/lang/Object;

    .line 155
    .line 156
    move-object v5, v0

    .line 157
    check-cast v5, Ljava/lang/String;

    .line 158
    .line 159
    iget-object v0, v1, LC1/n;->f:Ljava/lang/Object;

    .line 160
    .line 161
    move-object v11, v0

    .line 162
    check-cast v11, Ljava/io/File;

    .line 163
    .line 164
    sget v0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->o:I

    .line 165
    .line 166
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    sget-object v12, LD1/d;->c:LD1/d;

    .line 170
    .line 171
    const/4 v13, 0x1

    .line 172
    const/4 v14, 0x2

    .line 173
    const/4 v15, 0x0

    .line 174
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 175
    .line 176
    invoke-virtual {v3, v15}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 177
    .line 178
    .line 179
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 180
    if-nez v6, :cond_1

    .line 181
    .line 182
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 183
    .line 184
    .line 185
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    move v5, v2

    .line 189
    goto/16 :goto_c

    .line 190
    .line 191
    :cond_1
    :goto_0
    :try_start_2
    const-string v7, "games"

    .line 192
    .line 193
    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 201
    .line 202
    .line 203
    sget-object v6, Lz1/e;->a:Lkotlin/text/Regex;

    .line 204
    .line 205
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v0, v11}, Lz1/e;->f(Ljava/io/File;Ljava/io/File;)Z

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    if-eqz v6, :cond_12

    .line 213
    .line 214
    invoke-static {v11}, Lkotlin/io/FilesKt;->walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    new-instance v8, LA1/e;

    .line 219
    .line 220
    const/16 v9, 0x13

    .line 221
    .line 222
    invoke-direct {v8, v9}, LA1/e;-><init>(I)V

    .line 223
    .line 224
    .line 225
    invoke-static {v6, v8}, Lkotlin/sequences/SequencesKt;->q(Lkotlin/io/FileTreeWalk;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-static {v6}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    new-instance v8, LC1/w1;

    .line 234
    .line 235
    invoke-direct {v8, v2, v11}, LC1/w1;-><init>(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    const-string v8, "archives"

    .line 243
    .line 244
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    new-instance v8, LC1/T;

    .line 248
    .line 249
    const/16 v9, 0xe

    .line 250
    .line 251
    invoke-direct {v8, v9}, LC1/T;-><init>(I)V

    .line 252
    .line 253
    .line 254
    new-instance v9, LC1/w1;

    .line 255
    .line 256
    const/4 v10, 0x6

    .line 257
    invoke-direct {v9, v10, v8}, LC1/w1;-><init>(ILjava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v6, v9}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 265
    .line 266
    .line 267
    move-result v8

    .line 268
    if-nez v8, :cond_11

    .line 269
    .line 270
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    const-wide/16 v9, 0x0

    .line 275
    .line 276
    move-wide/from16 v16, v9

    .line 277
    .line 278
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v18

    .line 282
    const-wide v19, 0x7fffffffffffffffL

    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    if-eqz v18, :cond_4

    .line 288
    .line 289
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v18

    .line 293
    check-cast v18, Ljava/io/File;

    .line 294
    .line 295
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    .line 296
    .line 297
    .line 298
    move-result-wide v21

    .line 299
    sub-long v23, v19, v21

    .line 300
    .line 301
    cmp-long v18, v9, v23

    .line 302
    .line 303
    if-lez v18, :cond_3

    .line 304
    .line 305
    move-wide/from16 v9, v19

    .line 306
    .line 307
    goto :goto_2

    .line 308
    :cond_3
    add-long v9, v9, v21

    .line 309
    .line 310
    :goto_2
    cmp-long v18, v21, v16

    .line 311
    .line 312
    if-lez v18, :cond_2

    .line 313
    .line 314
    move-wide/from16 v16, v21

    .line 315
    .line 316
    goto :goto_1

    .line 317
    :cond_4
    const-wide v21, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    cmp-long v8, v9, v21

    .line 323
    .line 324
    if-lez v8, :cond_5

    .line 325
    .line 326
    move-wide/from16 v9, v19

    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_5
    int-to-long v7, v14

    .line 330
    mul-long/2addr v9, v7

    .line 331
    :goto_3
    const/4 v7, 0x3

    .line 332
    int-to-long v7, v7

    .line 333
    mul-long v16, v16, v7

    .line 334
    .line 335
    sub-long v7, v19, v16

    .line 336
    .line 337
    cmp-long v7, v9, v7

    .line 338
    .line 339
    if-lez v7, :cond_6

    .line 340
    .line 341
    goto :goto_4

    .line 342
    :cond_6
    add-long v19, v9, v16

    .line 343
    .line 344
    :goto_4
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    .line 345
    .line 346
    .line 347
    move-result-wide v7

    .line 348
    cmp-long v9, v7, v19

    .line 349
    .line 350
    if-ltz v9, :cond_10

    .line 351
    .line 352
    new-instance v7, Ljava/io/File;

    .line 353
    .line 354
    invoke-static {v5}, LC1/O;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 359
    .line 360
    .line 361
    move-result-wide v9

    .line 362
    new-instance v15, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v8, "_installed_"

    .line 371
    .line 372
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v8

    .line 382
    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 386
    .line 387
    .line 388
    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 389
    :try_start_3
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v8

    .line 393
    if-nez v8, :cond_f

    .line 394
    .line 395
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 396
    .line 397
    .line 398
    move-result-object v8

    .line 399
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_f

    .line 404
    .line 405
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-eqz v0, :cond_e

    .line 410
    .line 411
    invoke-virtual {v4, v2}, LD1/j;->b(I)V

    .line 412
    .line 413
    .line 414
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v3, v4, v6, v7}, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->o(LD1/j;Ljava/util/List;Ljava/io/File;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v4, v2}, LD1/j;->a(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 421
    .line 422
    .line 423
    :try_start_4
    invoke-virtual {v4, v13}, LD1/j;->b(I)V

    .line 424
    .line 425
    .line 426
    invoke-static {v4}, La/a;->a(LD1/j;)V

    .line 427
    .line 428
    .line 429
    sget-object v0, Lz1/e;->a:Lkotlin/text/Regex;

    .line 430
    .line 431
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    invoke-static {v7}, Lz1/e;->e(Ljava/io/File;)V

    .line 435
    .line 436
    .line 437
    invoke-static {v4}, La/a;->a(LD1/j;)V

    .line 438
    .line 439
    .line 440
    invoke-static {v11, v6}, Lz1/e;->b(Ljava/io/File;Ljava/util/List;)Ljava/io/File;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    invoke-static {v0, v7}, Lz1/e;->c(Ljava/io/File;Ljava/io/File;)V

    .line 448
    .line 449
    .line 450
    invoke-static {v4}, La/a;->a(LD1/j;)V

    .line 451
    .line 452
    .line 453
    sget-object v0, Lz1/g;->a:Lkotlin/text/Regex;

    .line 454
    .line 455
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    invoke-static {v7}, Lz1/g;->a(Ljava/io/File;)Z

    .line 459
    .line 460
    .line 461
    new-instance v0, Ljava/io/File;

    .line 462
    .line 463
    const-string v8, "startup.tjs"

    .line 464
    .line 465
    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-eqz v0, :cond_d

    .line 473
    .line 474
    const v0, 0x7f1201cc

    .line 475
    .line 476
    .line 477
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    const-string v8, "getString(...)"

    .line 482
    .line 483
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    const/16 v8, 0x50

    .line 487
    .line 488
    invoke-virtual {v4, v8, v0}, LD1/j;->c(ILjava/lang/String;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v4, v13}, LD1/j;->a(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 492
    .line 493
    .line 494
    :try_start_5
    invoke-virtual {v4, v14}, LD1/j;->b(I)V

    .line 495
    .line 496
    .line 497
    invoke-static {v4}, La/a;->a(LD1/j;)V

    .line 498
    .line 499
    .line 500
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 501
    .line 502
    .line 503
    const/4 v9, 0x4

    .line 504
    const/4 v10, 0x0

    .line 505
    move-object v0, v6

    .line 506
    move-object v6, v7

    .line 507
    const/4 v7, 0x0

    .line 508
    const/4 v8, 0x1

    .line 509
    :try_start_6
    invoke-static/range {v5 .. v10}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->buildImportedGameFromDirectory$default(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ZILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 510
    .line 511
    .line 512
    move-result-object v7

    .line 513
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    check-cast v0, Ljava/io/File;

    .line 521
    .line 522
    if-eqz v0, :cond_7

    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    if-eqz v0, :cond_7

    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    if-nez v0, :cond_8

    .line 535
    .line 536
    goto :goto_6

    .line 537
    :catchall_1
    move-exception v0

    .line 538
    :goto_5
    move-object v15, v6

    .line 539
    move v5, v14

    .line 540
    goto/16 :goto_c

    .line 541
    .line 542
    :cond_7
    :goto_6
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v3, v7, v6, v5, v0}, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->r(Lcom/minhub/gamehub/data/Game;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/minhub/gamehub/data/Game;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    invoke-static {v4}, La/a;->a(LD1/j;)V

    .line 554
    .line 555
    .line 556
    iget-object v5, v4, LD1/j;->b:LD1/b;

    .line 557
    .line 558
    iget-object v5, v5, LD1/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 559
    .line 560
    sget-object v7, LD1/a;->b:LD1/a;

    .line 561
    .line 562
    sget-object v8, LD1/a;->d:LD1/a;

    .line 563
    .line 564
    :cond_9
    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v9

    .line 568
    if-eqz v9, :cond_a

    .line 569
    .line 570
    move v5, v13

    .line 571
    goto :goto_7

    .line 572
    :cond_a
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 576
    if-eq v9, v7, :cond_9

    .line 577
    .line 578
    move v5, v2

    .line 579
    :goto_7
    if-eqz v5, :cond_c

    .line 580
    .line 581
    :try_start_7
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 582
    .line 583
    .line 584
    move-result-object v5

    .line 585
    const-string v7, "getApplicationContext(...)"

    .line 586
    .line 587
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-static {v5, v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->commitImportedGame(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;)J

    .line 591
    .line 592
    .line 593
    move-result-wide v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 594
    long-to-int v0, v7

    .line 595
    :try_start_8
    sget-object v12, LD1/d;->b:LD1/d;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 596
    .line 597
    :try_start_9
    invoke-static {v4, v11, v12, v2}, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->n(LD1/j;Ljava/io/File;LD1/d;Z)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v4, v14}, LD1/j;->a(I)V

    .line 601
    .line 602
    .line 603
    const v5, 0x7f1201d0

    .line 604
    .line 605
    .line 606
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v5

    .line 610
    const-string v6, "getString(...)"

    .line 611
    .line 612
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v4, v0, v5}, LD1/j;->f(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 616
    .line 617
    .line 618
    goto/16 :goto_10

    .line 619
    .line 620
    :catchall_2
    move-exception v0

    .line 621
    move v5, v14

    .line 622
    :goto_8
    const/4 v15, 0x0

    .line 623
    goto/16 :goto_c

    .line 624
    .line 625
    :catchall_3
    move-exception v0

    .line 626
    :try_start_a
    iget-object v5, v4, LD1/j;->b:LD1/b;

    .line 627
    .line 628
    iget-object v5, v5, LD1/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 629
    .line 630
    sget-object v7, LD1/a;->d:LD1/a;

    .line 631
    .line 632
    sget-object v8, LD1/a;->c:LD1/a;

    .line 633
    .line 634
    :goto_9
    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v9

    .line 638
    if-nez v9, :cond_b

    .line 639
    .line 640
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v9

    .line 644
    if-ne v9, v7, :cond_b

    .line 645
    .line 646
    goto :goto_9

    .line 647
    :cond_b
    throw v0

    .line 648
    :cond_c
    new-instance v0, LT1/b;

    .line 649
    .line 650
    invoke-direct {v0}, LT1/b;-><init>()V

    .line 651
    .line 652
    .line 653
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 654
    :catchall_4
    move-exception v0

    .line 655
    move-object v6, v7

    .line 656
    goto :goto_5

    .line 657
    :catchall_5
    move-exception v0

    .line 658
    move-object v6, v7

    .line 659
    :goto_a
    move-object v15, v6

    .line 660
    move v5, v13

    .line 661
    goto/16 :goto_c

    .line 662
    .line 663
    :cond_d
    move-object v6, v7

    .line 664
    :try_start_b
    new-instance v0, Ljava/io/IOException;

    .line 665
    .line 666
    const v5, 0x7f1201c3

    .line 667
    .line 668
    .line 669
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v5

    .line 673
    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 677
    :catchall_6
    move-exception v0

    .line 678
    goto :goto_a

    .line 679
    :catchall_7
    move-exception v0

    .line 680
    move-object v6, v7

    .line 681
    :goto_b
    move v5, v2

    .line 682
    move-object v15, v6

    .line 683
    goto :goto_c

    .line 684
    :cond_e
    move-object v6, v7

    .line 685
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    .line 686
    .line 687
    const v5, 0x7f1201c1

    .line 688
    .line 689
    .line 690
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v5

    .line 694
    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    throw v0

    .line 698
    :catchall_8
    move-exception v0

    .line 699
    goto :goto_b

    .line 700
    :cond_f
    move-object v6, v7

    .line 701
    new-instance v0, Ljava/io/IOException;

    .line 702
    .line 703
    const v5, 0x7f1201c1

    .line 704
    .line 705
    .line 706
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v5

    .line 710
    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 714
    :catchall_9
    move-exception v0

    .line 715
    move v5, v2

    .line 716
    goto :goto_8

    .line 717
    :cond_10
    :try_start_d
    new-instance v0, Ljava/io/IOException;

    .line 718
    .line 719
    sub-long v19, v19, v7

    .line 720
    .line 721
    invoke-static/range {v19 .. v20}, LC1/O;->e(J)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v5

    .line 725
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v5

    .line 729
    const v6, 0x7f1201c2

    .line 730
    .line 731
    .line 732
    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v5

    .line 736
    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    throw v0

    .line 740
    :cond_11
    sget-object v12, LD1/d;->d:LD1/d;

    .line 741
    .line 742
    new-instance v0, Ljava/io/IOException;

    .line 743
    .line 744
    const v5, 0x7f1201c0

    .line 745
    .line 746
    .line 747
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v5

    .line 751
    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    throw v0

    .line 755
    :cond_12
    sget-object v12, LD1/d;->d:LD1/d;

    .line 756
    .line 757
    new-instance v0, Ljava/io/IOException;

    .line 758
    .line 759
    const v5, 0x7f1201c1

    .line 760
    .line 761
    .line 762
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v5

    .line 766
    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 770
    :goto_c
    iget-object v6, v4, LD1/j;->b:LD1/b;

    .line 771
    .line 772
    invoke-virtual {v6}, LD1/b;->a()Z

    .line 773
    .line 774
    .line 775
    move-result v6

    .line 776
    if-eqz v6, :cond_13

    .line 777
    .line 778
    if-eqz v15, :cond_13

    .line 779
    .line 780
    invoke-static {v15}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 781
    .line 782
    .line 783
    :cond_13
    instance-of v6, v0, LT1/i;

    .line 784
    .line 785
    if-nez v6, :cond_14

    .line 786
    .line 787
    instance-of v6, v0, LT1/m;

    .line 788
    .line 789
    if-eqz v6, :cond_15

    .line 790
    .line 791
    :cond_14
    sget-object v12, LD1/d;->d:LD1/d;

    .line 792
    .line 793
    :cond_15
    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    move-result v6

    .line 797
    invoke-static {v4, v11, v12, v6}, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->n(LD1/j;Ljava/io/File;LD1/d;Z)V

    .line 798
    .line 799
    .line 800
    instance-of v6, v0, LT1/b;

    .line 801
    .line 802
    if-nez v6, :cond_18

    .line 803
    .line 804
    iget-object v6, v4, LD1/j;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 805
    .line 806
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 807
    .line 808
    .line 809
    move-result v6

    .line 810
    if-eqz v6, :cond_16

    .line 811
    .line 812
    goto :goto_d

    .line 813
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v6

    .line 817
    if-nez v6, :cond_17

    .line 818
    .line 819
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 820
    .line 821
    .line 822
    move-result-object v6

    .line 823
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v6

    .line 827
    :cond_17
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v6

    .line 831
    const v7, 0x7f1201c5

    .line 832
    .line 833
    .line 834
    invoke-virtual {v3, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v3

    .line 838
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 839
    .line 840
    .line 841
    goto :goto_e

    .line 842
    :cond_18
    :goto_d
    const v6, 0x7f1201bd

    .line 843
    .line 844
    .line 845
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v3

    .line 849
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 850
    .line 851
    .line 852
    :goto_e
    const-string v6, "status"

    .line 853
    .line 854
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    iget-object v6, v4, LD1/j;->c:Ljava/lang/Object;

    .line 858
    .line 859
    monitor-enter v6

    .line 860
    :try_start_e
    iget-object v7, v4, LD1/j;->e:LD1/g;

    .line 861
    .line 862
    sget-object v8, LD1/g;->b:LD1/g;

    .line 863
    .line 864
    if-eq v7, v8, :cond_19

    .line 865
    .line 866
    goto :goto_f

    .line 867
    :cond_19
    sget-object v7, LD1/g;->d:LD1/g;

    .line 868
    .line 869
    iput-object v7, v4, LD1/j;->e:LD1/g;

    .line 870
    .line 871
    iget-object v7, v4, LD1/j;->d:Ljava/util/ArrayList;

    .line 872
    .line 873
    invoke-static {v5, v2, v14}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 874
    .line 875
    .line 876
    move-result v2

    .line 877
    sget-object v5, LD1/i;->e:LD1/i;

    .line 878
    .line 879
    invoke-virtual {v7, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    iput-object v3, v4, LD1/j;->g:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 883
    .line 884
    move v2, v13

    .line 885
    :goto_f
    monitor-exit v6

    .line 886
    if-eqz v2, :cond_1a

    .line 887
    .line 888
    invoke-virtual {v4}, LD1/j;->d()V

    .line 889
    .line 890
    .line 891
    :cond_1a
    instance-of v2, v0, Ljava/lang/Error;

    .line 892
    .line 893
    if-nez v2, :cond_1b

    .line 894
    .line 895
    :goto_10
    return-void

    .line 896
    :cond_1b
    throw v0

    .line 897
    :catchall_a
    move-exception v0

    .line 898
    monitor-exit v6

    .line 899
    throw v0

    .line 900
    :pswitch_6
    iget-object v0, v1, LC1/n;->c:Ljava/lang/Object;

    .line 901
    .line 902
    check-cast v0, Ljava/util/List;

    .line 903
    .line 904
    iget-object v3, v1, LC1/n;->d:Ljava/lang/Object;

    .line 905
    .line 906
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 907
    .line 908
    iget-object v4, v1, LC1/n;->e:Ljava/lang/Object;

    .line 909
    .line 910
    check-cast v4, Landroidx/core/widget/NestedScrollView;

    .line 911
    .line 912
    iget-object v5, v1, LC1/n;->f:Ljava/lang/Object;

    .line 913
    .line 914
    check-cast v5, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 915
    .line 916
    sget v6, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 917
    .line 918
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 919
    .line 920
    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 921
    .line 922
    .line 923
    move-result v0

    .line 924
    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 925
    .line 926
    .line 927
    move-result v0

    .line 928
    invoke-virtual {v5}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 929
    .line 930
    .line 931
    move-result-object v3

    .line 932
    const v5, 0x7f0700a0

    .line 933
    .line 934
    .line 935
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 936
    .line 937
    .line 938
    move-result v3

    .line 939
    mul-int/2addr v3, v0

    .line 940
    invoke-virtual {v4, v2, v3}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 941
    .line 942
    .line 943
    return-void

    .line 944
    nop

    .line 945
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
