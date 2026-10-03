.class public final synthetic LI1/e;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, LI1/e;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LI1/e;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, LI1/e;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, LI1/e;->e:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 41

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LI1/e;->b:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/16 v3, 0x9

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    iget-object v7, v1, LI1/e;->e:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v8, v1, LI1/e;->d:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v9, v1, LI1/e;->c:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v9, Lkotlin/Pair;

    .line 21
    .line 22
    check-cast v8, Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 23
    .line 24
    check-cast v7, Lkotlin/Pair;

    .line 25
    .line 26
    sget v0, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 27
    .line 28
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const-string v3, "key"

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    iget-object v2, v8, Lcom/minhub/gamehub/game/GodotGameActivity;->b:Ly1/V0;

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    filled-new-array {v4, v0, v0, v5, v5}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v2, v3, v4}, Ly1/V0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/lang/Number;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    iget-object v2, v8, Lcom/minhub/gamehub/game/GodotGameActivity;->b:Ly1/V0;

    .line 76
    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 84
    .line 85
    filled-new-array {v4, v0, v0, v5, v5}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v2, v3, v4}, Ly1/V0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/Number;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    iget-object v2, v8, Lcom/minhub/gamehub/game/GodotGameActivity;->b:Ly1/V0;

    .line 105
    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 113
    .line 114
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 115
    .line 116
    filled-new-array {v4, v0, v0, v5, v6}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v2, v3, v4}, Ly1/V0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Ljava/lang/Number;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_3

    .line 134
    .line 135
    iget-object v2, v8, Lcom/minhub/gamehub/game/GodotGameActivity;->b:Ly1/V0;

    .line 136
    .line 137
    if-eqz v2, :cond_3

    .line 138
    .line 139
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 144
    .line 145
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 146
    .line 147
    filled-new-array {v4, v0, v0, v5, v6}, [Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v2, v3, v0}, Ly1/V0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 155
    .line 156
    return-object v0

    .line 157
    :pswitch_0
    check-cast v9, Ly1/a1;

    .line 158
    .line 159
    check-cast v8, Ljava/util/List;

    .line 160
    .line 161
    check-cast v7, Ly1/x0;

    .line 162
    .line 163
    if-eqz v9, :cond_6

    .line 164
    .line 165
    if-nez v8, :cond_4

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_5

    .line 173
    .line 174
    const v0, 0x7f120176

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v0}, Ly1/x0;->g(I)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_5
    iget-object v0, v7, Ly1/x0;->a:Landroid/app/Activity;

    .line 182
    .line 183
    iget-object v2, v9, Ly1/a1;->a:Ljava/io/File;

    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    const v4, 0x7f120183

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const-string v2, "getString(...)"

    .line 201
    .line 202
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance v2, LA1/H;

    .line 206
    .line 207
    invoke-direct {v2, v3, v7, v9}, LA1/H;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7, v0, v8, v5, v2}, Ly1/x0;->d(Ljava/lang/String;Ljava/util/List;Lkotlin/Pair;Lkotlin/jvm/functions/Function1;)V

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_6
    :goto_0
    const v0, 0x7f120184

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7, v0}, Ly1/x0;->g(I)V

    .line 218
    .line 219
    .line 220
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 221
    .line 222
    return-object v0

    .line 223
    :pswitch_1
    check-cast v9, Ljava/util/List;

    .line 224
    .line 225
    check-cast v8, Ly1/x0;

    .line 226
    .line 227
    check-cast v7, Ljava/io/File;

    .line 228
    .line 229
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_9

    .line 234
    .line 235
    if-eq v0, v4, :cond_8

    .line 236
    .line 237
    const/4 v0, 0x3

    .line 238
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    new-instance v3, Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    .line 250
    .line 251
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v10

    .line 259
    if-eqz v10, :cond_7

    .line 260
    .line 261
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    check-cast v10, Ljava/io/File;

    .line 266
    .line 267
    invoke-static {v10, v7}, Lkotlin/io/FilesKt;->relativeTo(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    new-instance v12, Ljava/util/Date;

    .line 276
    .line 277
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    .line 278
    .line 279
    .line 280
    move-result-wide v13

    .line 281
    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    new-instance v12, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v11, "\n"

    .line 297
    .line 298
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_7
    new-array v0, v6, [Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    check-cast v0, [Ljava/lang/String;

    .line 319
    .line 320
    new-instance v3, LO0/b;

    .line 321
    .line 322
    iget-object v4, v8, Ly1/x0;->a:Landroid/app/Activity;

    .line 323
    .line 324
    invoke-direct {v3, v4, v6}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 325
    .line 326
    .line 327
    iget-object v4, v3, Le/f;->c:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v4, Le/b;

    .line 330
    .line 331
    const v7, 0x7f12017e

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3, v7}, LO0/b;->j(I)V

    .line 335
    .line 336
    .line 337
    check-cast v0, [Ljava/lang/CharSequence;

    .line 338
    .line 339
    new-instance v7, LC1/o0;

    .line 340
    .line 341
    invoke-direct {v7, v2, v8, v9}, LC1/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    iput-object v0, v4, Le/b;->q:[Ljava/lang/CharSequence;

    .line 345
    .line 346
    iput-object v7, v4, Le/b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 347
    .line 348
    const/high16 v0, 0x1040000

    .line 349
    .line 350
    invoke-virtual {v3, v0, v5}, LO0/b;->f(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 351
    .line 352
    .line 353
    new-instance v0, Ly1/m0;

    .line 354
    .line 355
    invoke-direct {v0, v8, v6}, Ly1/m0;-><init>(Ly1/x0;I)V

    .line 356
    .line 357
    .line 358
    iput-object v0, v4, Le/b;->o:Landroid/content/DialogInterface$OnDismissListener;

    .line 359
    .line 360
    invoke-virtual {v3}, Le/f;->e()Le/g;

    .line 361
    .line 362
    .line 363
    goto :goto_3

    .line 364
    :cond_8
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    check-cast v0, Ljava/io/File;

    .line 369
    .line 370
    new-instance v2, Ljava/lang/Thread;

    .line 371
    .line 372
    new-instance v3, Ly1/l0;

    .line 373
    .line 374
    invoke-direct {v3, v8, v0, v4}, Ly1/l0;-><init>(Ly1/x0;Ljava/io/File;I)V

    .line 375
    .line 376
    .line 377
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 381
    .line 382
    .line 383
    goto :goto_3

    .line 384
    :cond_9
    const v0, 0x7f120177

    .line 385
    .line 386
    .line 387
    invoke-virtual {v8, v0}, Ly1/x0;->g(I)V

    .line 388
    .line 389
    .line 390
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 391
    .line 392
    return-object v0

    .line 393
    :pswitch_2
    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 394
    .line 395
    check-cast v8, Landroid/view/WindowManager;

    .line 396
    .line 397
    check-cast v7, Landroid/webkit/WebView;

    .line 398
    .line 399
    invoke-static {v9, v8, v7}, Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;->e(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/WindowManager;Landroid/webkit/WebView;)Lkotlin/Unit;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    return-object v0

    .line 404
    :pswitch_3
    check-cast v9, LI1/h;

    .line 405
    .line 406
    check-cast v8, LI1/c;

    .line 407
    .line 408
    move-object v12, v7

    .line 409
    check-cast v12, Ljava/lang/String;

    .line 410
    .line 411
    invoke-virtual {v8}, LI1/c;->a()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    iget-object v7, v8, LI1/c;->b:Ljava/lang/String;

    .line 416
    .line 417
    iget-object v10, v8, LI1/c;->a:Ljava/lang/String;

    .line 418
    .line 419
    new-instance v11, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    const-string v0, ".json"

    .line 428
    .line 429
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v11

    .line 436
    invoke-virtual {v9, v11}, LI1/h;->a(Ljava/lang/String;)Ljava/io/File;

    .line 437
    .line 438
    .line 439
    move-result-object v11

    .line 440
    invoke-static {v11}, Landroidx/core/view/accessibility/a;->k(Ljava/io/File;)Ljava/nio/file/Path;

    .line 441
    .line 442
    .line 443
    move-result-object v13

    .line 444
    new-array v14, v4, [Ljava/nio/file/LinkOption;

    .line 445
    .line 446
    invoke-static {}, LA/a;->m()Ljava/nio/file/LinkOption;

    .line 447
    .line 448
    .line 449
    move-result-object v15

    .line 450
    aput-object v15, v14, v6

    .line 451
    .line 452
    invoke-static {v13, v14}, LA/a;->B(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 453
    .line 454
    .line 455
    move-result v13

    .line 456
    const-string v14, "selection"

    .line 457
    .line 458
    const-string v15, "identity"

    .line 459
    .line 460
    move/from16 v16, v13

    .line 461
    .line 462
    const-string v13, "lastKnownGood"

    .line 463
    .line 464
    const-string v4, "profile"

    .line 465
    .line 466
    const-string v2, "core"

    .line 467
    .line 468
    const-string v3, "detectedEngineVersion"

    .line 469
    .line 470
    const-string v5, "engine"

    .line 471
    .line 472
    const-string v6, "mode"

    .line 473
    .line 474
    const-string v1, "patches"

    .line 475
    .line 476
    move-object/from16 v20, v0

    .line 477
    .line 478
    const-string v0, "canonicalContentPath"

    .line 479
    .line 480
    move-object/from16 v21, v9

    .line 481
    .line 482
    const-string v9, "gameId"

    .line 483
    .line 484
    move-object/from16 v22, v12

    .line 485
    .line 486
    const-string v12, "schema"

    .line 487
    .line 488
    move-object/from16 v23, v14

    .line 489
    .line 490
    const-string v14, "Failed requirement."

    .line 491
    .line 492
    if-eqz v16, :cond_2e

    .line 493
    .line 494
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    .line 495
    .line 496
    .line 497
    move-result v16

    .line 498
    if-eqz v16, :cond_2d

    .line 499
    .line 500
    invoke-virtual {v11}, Ljava/io/File;->length()J

    .line 501
    .line 502
    .line 503
    move-result-wide v20

    .line 504
    const-wide/32 v24, 0x10000

    .line 505
    .line 506
    .line 507
    cmp-long v16, v20, v24

    .line 508
    .line 509
    if-gtz v16, :cond_2c

    .line 510
    .line 511
    move-object/from16 v24, v8

    .line 512
    .line 513
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 514
    .line 515
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 516
    .line 517
    .line 518
    move-object/from16 v16, v15

    .line 519
    .line 520
    new-instance v15, Ljava/io/FileInputStream;

    .line 521
    .line 522
    invoke-direct {v15, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 523
    .line 524
    .line 525
    const/16 v11, 0x1000

    .line 526
    .line 527
    :try_start_0
    new-array v11, v11, [B

    .line 528
    .line 529
    move-object/from16 v25, v13

    .line 530
    .line 531
    :goto_4
    invoke-virtual {v15, v11}, Ljava/io/FileInputStream;->read([B)I

    .line 532
    .line 533
    .line 534
    move-result v13

    .line 535
    if-ltz v13, :cond_b

    .line 536
    .line 537
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 538
    .line 539
    .line 540
    move-result v20

    .line 541
    move-object/from16 v26, v4

    .line 542
    .line 543
    add-int v4, v20, v13

    .line 544
    .line 545
    move-object/from16 v27, v2

    .line 546
    .line 547
    const/high16 v2, 0x10000

    .line 548
    .line 549
    if-gt v4, v2, :cond_a

    .line 550
    .line 551
    const/4 v4, 0x0

    .line 552
    invoke-virtual {v8, v11, v4, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 553
    .line 554
    .line 555
    move-object/from16 v4, v26

    .line 556
    .line 557
    move-object/from16 v2, v27

    .line 558
    .line 559
    goto :goto_4

    .line 560
    :catchall_0
    move-exception v0

    .line 561
    move-object v1, v0

    .line 562
    goto/16 :goto_12

    .line 563
    .line 564
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 565
    .line 566
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    throw v0

    .line 570
    :cond_b
    move-object/from16 v27, v2

    .line 571
    .line 572
    move-object/from16 v26, v4

    .line 573
    .line 574
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    .line 576
    const/4 v2, 0x0

    .line 577
    invoke-static {v15, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 578
    .line 579
    .line 580
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 581
    .line 582
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 587
    .line 588
    invoke-virtual {v2, v4}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-virtual {v2, v4}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 601
    .line 602
    .line 603
    move-result-object v4

    .line 604
    invoke-virtual {v2, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    const-string v4, "toString(...)"

    .line 613
    .line 614
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    const/4 v4, 0x0

    .line 618
    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 619
    .line 620
    .line 621
    move-result v8

    .line 622
    const/16 v11, 0xa

    .line 623
    .line 624
    if-ge v4, v8, :cond_1a

    .line 625
    .line 626
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 627
    .line 628
    .line 629
    move-result v8

    .line 630
    const/16 v13, 0x9

    .line 631
    .line 632
    if-eq v8, v13, :cond_19

    .line 633
    .line 634
    if-eq v8, v11, :cond_19

    .line 635
    .line 636
    const/16 v11, 0xd

    .line 637
    .line 638
    if-eq v8, v11, :cond_19

    .line 639
    .line 640
    const/16 v11, 0x20

    .line 641
    .line 642
    if-eq v8, v11, :cond_19

    .line 643
    .line 644
    const/16 v15, 0x22

    .line 645
    .line 646
    if-eq v8, v15, :cond_f

    .line 647
    .line 648
    const/16 v11, 0x2c

    .line 649
    .line 650
    if-eq v8, v11, :cond_19

    .line 651
    .line 652
    const/16 v11, 0x3a

    .line 653
    .line 654
    if-eq v8, v11, :cond_19

    .line 655
    .line 656
    const/16 v11, 0x5b

    .line 657
    .line 658
    if-eq v8, v11, :cond_19

    .line 659
    .line 660
    const/16 v11, 0x5d

    .line 661
    .line 662
    if-eq v8, v11, :cond_19

    .line 663
    .line 664
    const/16 v11, 0x7b

    .line 665
    .line 666
    if-eq v8, v11, :cond_19

    .line 667
    .line 668
    const/16 v11, 0x7d

    .line 669
    .line 670
    if-eq v8, v11, :cond_19

    .line 671
    .line 672
    move v8, v4

    .line 673
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 674
    .line 675
    .line 676
    move-result v11

    .line 677
    if-ge v8, v11, :cond_c

    .line 678
    .line 679
    const-string v11, " \t\r\n{}[]:,\""

    .line 680
    .line 681
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 682
    .line 683
    .line 684
    move-result v15

    .line 685
    invoke-static {v11, v15}, Lkotlin/text/StringsKt;->o(Ljava/lang/CharSequence;C)Z

    .line 686
    .line 687
    .line 688
    move-result v11

    .line 689
    if-nez v11, :cond_c

    .line 690
    .line 691
    add-int/lit8 v8, v8, 0x1

    .line 692
    .line 693
    goto :goto_6

    .line 694
    :cond_c
    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v4

    .line 698
    const-string v11, "substring(...)"

    .line 699
    .line 700
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    const-string v11, "false"

    .line 704
    .line 705
    const-string v15, "null"

    .line 706
    .line 707
    const-string v13, "true"

    .line 708
    .line 709
    filled-new-array {v13, v11, v15}, [Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v11

    .line 713
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 714
    .line 715
    .line 716
    move-result-object v11

    .line 717
    invoke-interface {v11, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    move-result v11

    .line 721
    if-nez v11, :cond_e

    .line 722
    .line 723
    sget-object v11, LI1/h;->c:Lkotlin/text/Regex;

    .line 724
    .line 725
    invoke-virtual {v11, v4}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 726
    .line 727
    .line 728
    move-result v4

    .line 729
    if-eqz v4, :cond_d

    .line 730
    .line 731
    goto :goto_7

    .line 732
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 733
    .line 734
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    throw v0

    .line 738
    :cond_e
    :goto_7
    move v4, v8

    .line 739
    goto :goto_5

    .line 740
    :cond_f
    add-int/lit8 v4, v4, 0x1

    .line 741
    .line 742
    :goto_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 743
    .line 744
    .line 745
    move-result v8

    .line 746
    if-ge v4, v8, :cond_17

    .line 747
    .line 748
    add-int/lit8 v8, v4, 0x1

    .line 749
    .line 750
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 751
    .line 752
    .line 753
    move-result v13

    .line 754
    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 755
    .line 756
    .line 757
    move-result v20

    .line 758
    if-ltz v20, :cond_16

    .line 759
    .line 760
    if-ne v13, v15, :cond_10

    .line 761
    .line 762
    move v4, v8

    .line 763
    const/4 v8, 0x1

    .line 764
    goto/16 :goto_b

    .line 765
    .line 766
    :cond_10
    const/16 v11, 0x5c

    .line 767
    .line 768
    if-ne v13, v11, :cond_15

    .line 769
    .line 770
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 771
    .line 772
    .line 773
    move-result v13

    .line 774
    if-ge v8, v13, :cond_14

    .line 775
    .line 776
    add-int/lit8 v4, v4, 0x2

    .line 777
    .line 778
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 779
    .line 780
    .line 781
    move-result v8

    .line 782
    if-eq v8, v15, :cond_12

    .line 783
    .line 784
    const/16 v13, 0x2f

    .line 785
    .line 786
    if-eq v8, v13, :cond_12

    .line 787
    .line 788
    if-eq v8, v11, :cond_12

    .line 789
    .line 790
    const/16 v11, 0x62

    .line 791
    .line 792
    if-eq v8, v11, :cond_12

    .line 793
    .line 794
    const/16 v11, 0x66

    .line 795
    .line 796
    if-eq v8, v11, :cond_12

    .line 797
    .line 798
    const/16 v11, 0x6e

    .line 799
    .line 800
    if-eq v8, v11, :cond_12

    .line 801
    .line 802
    const/16 v11, 0x72

    .line 803
    .line 804
    if-eq v8, v11, :cond_12

    .line 805
    .line 806
    const/16 v11, 0x74

    .line 807
    .line 808
    if-eq v8, v11, :cond_12

    .line 809
    .line 810
    const/16 v11, 0x75

    .line 811
    .line 812
    if-ne v8, v11, :cond_13

    .line 813
    .line 814
    const/4 v8, 0x0

    .line 815
    :goto_9
    const/4 v13, 0x4

    .line 816
    if-ge v8, v13, :cond_12

    .line 817
    .line 818
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 819
    .line 820
    .line 821
    move-result v11

    .line 822
    if-ge v4, v11, :cond_11

    .line 823
    .line 824
    const-string v11, "0123456789abcdefABCDEF"

    .line 825
    .line 826
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 827
    .line 828
    .line 829
    move-result v13

    .line 830
    invoke-static {v11, v13}, Lkotlin/text/StringsKt;->o(Ljava/lang/CharSequence;C)Z

    .line 831
    .line 832
    .line 833
    move-result v11

    .line 834
    if-eqz v11, :cond_11

    .line 835
    .line 836
    add-int/lit8 v4, v4, 0x1

    .line 837
    .line 838
    add-int/lit8 v8, v8, 0x1

    .line 839
    .line 840
    goto :goto_9

    .line 841
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 842
    .line 843
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    throw v0

    .line 847
    :cond_12
    :goto_a
    const/16 v11, 0x20

    .line 848
    .line 849
    goto :goto_8

    .line 850
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 851
    .line 852
    const-string v1, "Invalid JSON escape"

    .line 853
    .line 854
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    throw v0

    .line 858
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 859
    .line 860
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    throw v0

    .line 864
    :cond_15
    move v4, v8

    .line 865
    goto :goto_a

    .line 866
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 867
    .line 868
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    throw v0

    .line 872
    :cond_17
    const/4 v8, 0x0

    .line 873
    :goto_b
    if-eqz v8, :cond_18

    .line 874
    .line 875
    goto/16 :goto_5

    .line 876
    .line 877
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 878
    .line 879
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    throw v0

    .line 883
    :cond_19
    add-int/lit8 v4, v4, 0x1

    .line 884
    .line 885
    goto/16 :goto_5

    .line 886
    .line 887
    :cond_1a
    new-instance v4, Lp1/a;

    .line 888
    .line 889
    new-instance v8, Ljava/io/StringReader;

    .line 890
    .line 891
    invoke-direct {v8, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    invoke-direct {v4, v8}, Lp1/a;-><init>(Ljava/io/StringReader;)V

    .line 895
    .line 896
    .line 897
    const/4 v2, 0x0

    .line 898
    :try_start_1
    iput-boolean v2, v4, Lp1/a;->c:Z

    .line 899
    .line 900
    invoke-static {v4, v2}, LI1/h;->d(Lp1/a;I)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v2

    .line 904
    invoke-virtual {v4}, Lp1/a;->v()I

    .line 905
    .line 906
    .line 907
    move-result v8

    .line 908
    if-ne v8, v11, :cond_2b

    .line 909
    .line 910
    instance-of v8, v2, Ljava/util/Map;

    .line 911
    .line 912
    if-eqz v8, :cond_1b

    .line 913
    .line 914
    check-cast v2, Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 915
    .line 916
    goto :goto_c

    .line 917
    :catchall_1
    move-exception v0

    .line 918
    move-object v1, v0

    .line 919
    goto/16 :goto_11

    .line 920
    .line 921
    :cond_1b
    const/4 v2, 0x0

    .line 922
    :goto_c
    if-eqz v2, :cond_2a

    .line 923
    .line 924
    const/4 v8, 0x0

    .line 925
    invoke-static {v4, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 926
    .line 927
    .line 928
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 929
    .line 930
    .line 931
    move-result-object v4

    .line 932
    const-string v36, "patches"

    .line 933
    .line 934
    const-string v37, "lastKnownGood"

    .line 935
    .line 936
    const-string v28, "schema"

    .line 937
    .line 938
    const-string v29, "gameId"

    .line 939
    .line 940
    const-string v30, "canonicalContentPath"

    .line 941
    .line 942
    const-string v31, "mode"

    .line 943
    .line 944
    const-string v32, "engine"

    .line 945
    .line 946
    const-string v33, "detectedEngineVersion"

    .line 947
    .line 948
    const-string v34, "core"

    .line 949
    .line 950
    const-string v35, "profile"

    .line 951
    .line 952
    filled-new-array/range {v28 .. v37}, [Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v8

    .line 956
    invoke-static {v8}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 957
    .line 958
    .line 959
    move-result-object v8

    .line 960
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 961
    .line 962
    .line 963
    move-result v4

    .line 964
    if-eqz v4, :cond_29

    .line 965
    .line 966
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    move-result-object v4

    .line 970
    new-instance v8, LI1/f;

    .line 971
    .line 972
    const-string v11, "1"

    .line 973
    .line 974
    invoke-direct {v8, v11}, LI1/f;-><init>(Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 978
    .line 979
    .line 980
    move-result v4

    .line 981
    if-eqz v4, :cond_28

    .line 982
    .line 983
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object v4

    .line 987
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 988
    .line 989
    .line 990
    move-result v4

    .line 991
    if-eqz v4, :cond_27

    .line 992
    .line 993
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 998
    .line 999
    .line 1000
    move-result v0

    .line 1001
    if-eqz v0, :cond_26

    .line 1002
    .line 1003
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    instance-of v1, v0, Ljava/util/List;

    .line 1008
    .line 1009
    if-eqz v1, :cond_1c

    .line 1010
    .line 1011
    check-cast v0, Ljava/util/List;

    .line 1012
    .line 1013
    goto :goto_d

    .line 1014
    :cond_1c
    const/4 v0, 0x0

    .line 1015
    :goto_d
    if-eqz v0, :cond_25

    .line 1016
    .line 1017
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v1

    .line 1021
    const-string v4, "null cannot be cast to non-null type kotlin.String"

    .line 1022
    .line 1023
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1024
    .line 1025
    .line 1026
    check-cast v1, Ljava/lang/String;

    .line 1027
    .line 1028
    invoke-static {v1}, LI1/i;->valueOf(Ljava/lang/String;)LI1/i;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v7

    .line 1032
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v1

    .line 1036
    if-eqz v1, :cond_1e

    .line 1037
    .line 1038
    instance-of v4, v1, Ljava/lang/String;

    .line 1039
    .line 1040
    if-eqz v4, :cond_1d

    .line 1041
    .line 1042
    goto :goto_e

    .line 1043
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1044
    .line 1045
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1046
    .line 1047
    .line 1048
    throw v0

    .line 1049
    :cond_1e
    :goto_e
    move-object v8, v1

    .line 1050
    check-cast v8, Ljava/lang/String;

    .line 1051
    .line 1052
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v1

    .line 1056
    if-eqz v1, :cond_20

    .line 1057
    .line 1058
    instance-of v3, v1, Ljava/lang/String;

    .line 1059
    .line 1060
    if-eqz v3, :cond_1f

    .line 1061
    .line 1062
    goto :goto_f

    .line 1063
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1064
    .line 1065
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1066
    .line 1067
    .line 1068
    throw v0

    .line 1069
    :cond_20
    :goto_f
    move-object v9, v1

    .line 1070
    check-cast v9, Ljava/lang/String;

    .line 1071
    .line 1072
    move-object/from16 v4, v27

    .line 1073
    .line 1074
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v1

    .line 1078
    invoke-static {v1}, LI1/h;->b(Ljava/lang/Object;)LI1/b;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v10

    .line 1082
    move-object/from16 v13, v26

    .line 1083
    .line 1084
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v1

    .line 1088
    invoke-static {v1}, LI1/h;->b(Ljava/lang/Object;)LI1/b;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v11

    .line 1092
    new-instance v12, Ljava/util/ArrayList;

    .line 1093
    .line 1094
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 1095
    .line 1096
    .line 1097
    move-result v1

    .line 1098
    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1099
    .line 1100
    .line 1101
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v0

    .line 1105
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1106
    .line 1107
    .line 1108
    move-result v1

    .line 1109
    if-eqz v1, :cond_22

    .line 1110
    .line 1111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v1

    .line 1115
    invoke-static {v1}, LI1/h;->b(Ljava/lang/Object;)LI1/b;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v1

    .line 1119
    if-eqz v1, :cond_21

    .line 1120
    .line 1121
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    .line 1123
    .line 1124
    goto :goto_10

    .line 1125
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1126
    .line 1127
    const-string v1, "Required value was null."

    .line 1128
    .line 1129
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    throw v0

    .line 1133
    :cond_22
    new-instance v6, LI1/j;

    .line 1134
    .line 1135
    invoke-direct/range {v6 .. v12}, LI1/j;-><init>(LI1/i;Ljava/lang/String;Ljava/lang/String;LI1/b;LI1/b;Ljava/util/List;)V

    .line 1136
    .line 1137
    .line 1138
    move-object/from16 v8, v25

    .line 1139
    .line 1140
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v0

    .line 1144
    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    .line 1145
    .line 1146
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1147
    .line 1148
    .line 1149
    check-cast v0, Ljava/lang/Boolean;

    .line 1150
    .line 1151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1152
    .line 1153
    .line 1154
    move-object/from16 v0, v16

    .line 1155
    .line 1156
    move-object/from16 v15, v24

    .line 1157
    .line 1158
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1159
    .line 1160
    .line 1161
    move-object/from16 v0, v23

    .line 1162
    .line 1163
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 1167
    .line 1168
    .line 1169
    move-result v0

    .line 1170
    if-eqz v0, :cond_24

    .line 1171
    .line 1172
    const/4 v1, 0x1

    .line 1173
    if-ne v0, v1, :cond_23

    .line 1174
    .line 1175
    sget-object v0, LI1/a;->d:LI1/a;

    .line 1176
    .line 1177
    goto/16 :goto_14

    .line 1178
    .line 1179
    :cond_23
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 1180
    .line 1181
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 1182
    .line 1183
    .line 1184
    throw v0

    .line 1185
    :cond_24
    sget-object v0, LI1/a;->c:LI1/a;

    .line 1186
    .line 1187
    goto/16 :goto_14

    .line 1188
    .line 1189
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1190
    .line 1191
    const-string v1, "Expected patches"

    .line 1192
    .line 1193
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1194
    .line 1195
    .line 1196
    throw v0

    .line 1197
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1198
    .line 1199
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1200
    .line 1201
    .line 1202
    throw v0

    .line 1203
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1204
    .line 1205
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    throw v0

    .line 1209
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1210
    .line 1211
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1212
    .line 1213
    .line 1214
    throw v0

    .line 1215
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1216
    .line 1217
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    throw v0

    .line 1221
    :cond_2a
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1222
    .line 1223
    const-string v1, "Expected object"

    .line 1224
    .line 1225
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1226
    .line 1227
    .line 1228
    throw v0

    .line 1229
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1230
    .line 1231
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1232
    .line 1233
    .line 1234
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1235
    :goto_11
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1236
    :catchall_2
    move-exception v0

    .line 1237
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1238
    .line 1239
    .line 1240
    throw v0

    .line 1241
    :goto_12
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1242
    :catchall_3
    move-exception v0

    .line 1243
    invoke-static {v15, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1244
    .line 1245
    .line 1246
    throw v0

    .line 1247
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1248
    .line 1249
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1250
    .line 1251
    .line 1252
    throw v0

    .line 1253
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1254
    .line 1255
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    throw v0

    .line 1259
    :cond_2e
    move-object/from16 v16, v15

    .line 1260
    .line 1261
    move-object v15, v8

    .line 1262
    move-object v8, v13

    .line 1263
    move-object v13, v4

    .line 1264
    move-object v4, v2

    .line 1265
    const/high16 v2, 0x10000

    .line 1266
    .line 1267
    invoke-static {v11}, Landroidx/core/view/accessibility/a;->k(Ljava/io/File;)Ljava/nio/file/Path;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v11

    .line 1271
    move-object/from16 v25, v8

    .line 1272
    .line 1273
    const/4 v2, 0x1

    .line 1274
    new-array v8, v2, [Ljava/nio/file/LinkOption;

    .line 1275
    .line 1276
    invoke-static {}, LA/a;->m()Ljava/nio/file/LinkOption;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v2

    .line 1280
    const/16 v19, 0x0

    .line 1281
    .line 1282
    aput-object v2, v8, v19

    .line 1283
    .line 1284
    invoke-static {v11, v8}, LA/a;->D(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 1285
    .line 1286
    .line 1287
    move-result v2

    .line 1288
    if-eqz v2, :cond_32

    .line 1289
    .line 1290
    move-object v2, v10

    .line 1291
    new-instance v10, LI1/j;

    .line 1292
    .line 1293
    sget-object v11, LI1/i;->b:LI1/i;

    .line 1294
    .line 1295
    move-object/from16 v8, v16

    .line 1296
    .line 1297
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v16

    .line 1301
    move-object/from16 v26, v13

    .line 1302
    .line 1303
    const/4 v13, 0x0

    .line 1304
    move-object/from16 v17, v14

    .line 1305
    .line 1306
    const/4 v14, 0x0

    .line 1307
    move-object/from16 v24, v15

    .line 1308
    .line 1309
    const/4 v15, 0x0

    .line 1310
    move-object/from16 v18, v3

    .line 1311
    .line 1312
    move-object/from16 v27, v4

    .line 1313
    .line 1314
    move-object v4, v8

    .line 1315
    move-object v3, v12

    .line 1316
    move-object/from16 v40, v17

    .line 1317
    .line 1318
    move-object/from16 v12, v22

    .line 1319
    .line 1320
    move-object/from16 v8, v24

    .line 1321
    .line 1322
    move-object/from16 v38, v25

    .line 1323
    .line 1324
    move-object/from16 v39, v26

    .line 1325
    .line 1326
    move-object/from16 v17, v1

    .line 1327
    .line 1328
    move-object/from16 v1, v23

    .line 1329
    .line 1330
    invoke-direct/range {v10 .. v16}, LI1/j;-><init>(LI1/i;Ljava/lang/String;Ljava/lang/String;LI1/b;LI1/b;Ljava/util/List;)V

    .line 1331
    .line 1332
    .line 1333
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    .line 1335
    .line 1336
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1337
    .line 1338
    .line 1339
    move-object/from16 v1, v21

    .line 1340
    .line 1341
    iget-object v4, v1, LI1/h;->b:Ljava/io/File;

    .line 1342
    .line 1343
    move-object/from16 v16, v14

    .line 1344
    .line 1345
    new-instance v14, Li1/m;

    .line 1346
    .line 1347
    invoke-direct {v14}, Li1/m;-><init>()V

    .line 1348
    .line 1349
    .line 1350
    move-object/from16 v19, v15

    .line 1351
    .line 1352
    const/4 v15, 0x1

    .line 1353
    iput-boolean v15, v14, Li1/m;->g:Z

    .line 1354
    .line 1355
    invoke-virtual {v14}, Li1/m;->a()Li1/l;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v14

    .line 1359
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v15

    .line 1363
    invoke-static {v3, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v28

    .line 1367
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v29

    .line 1371
    invoke-static {v0, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v30

    .line 1375
    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v0

    .line 1379
    invoke-static {v6, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v31

    .line 1383
    invoke-static {v5, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v32

    .line 1387
    move-object/from16 v0, v18

    .line 1388
    .line 1389
    invoke-static {v0, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v33

    .line 1393
    invoke-static/range {v16 .. v16}, LI1/h;->c(LI1/b;)Ljava/util/Map;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v0

    .line 1397
    move-object/from16 v2, v27

    .line 1398
    .line 1399
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v34

    .line 1403
    invoke-static/range {v19 .. v19}, LI1/h;->c(LI1/b;)Ljava/util/Map;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v0

    .line 1407
    move-object/from16 v13, v39

    .line 1408
    .line 1409
    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v35

    .line 1413
    iget-object v0, v10, LI1/j;->f:Ljava/lang/Object;

    .line 1414
    .line 1415
    check-cast v0, Ljava/util/List;

    .line 1416
    .line 1417
    new-instance v2, Ljava/util/ArrayList;

    .line 1418
    .line 1419
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 1420
    .line 1421
    .line 1422
    move-result v3

    .line 1423
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1424
    .line 1425
    .line 1426
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v0

    .line 1430
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1431
    .line 1432
    .line 1433
    move-result v3

    .line 1434
    if-eqz v3, :cond_2f

    .line 1435
    .line 1436
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v3

    .line 1440
    check-cast v3, LI1/b;

    .line 1441
    .line 1442
    invoke-static {v3}, LI1/h;->c(LI1/b;)Ljava/util/Map;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v3

    .line 1446
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1447
    .line 1448
    .line 1449
    goto :goto_13

    .line 1450
    :cond_2f
    move-object/from16 v3, v17

    .line 1451
    .line 1452
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v36

    .line 1456
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1457
    .line 1458
    move-object/from16 v2, v38

    .line 1459
    .line 1460
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v37

    .line 1464
    filled-new-array/range {v28 .. v37}, [Lkotlin/Pair;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v0

    .line 1468
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v0

    .line 1472
    invoke-virtual {v14, v0}, Li1/l;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v0

    .line 1476
    const-string v2, "toJson(...)"

    .line 1477
    .line 1478
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1479
    .line 1480
    .line 1481
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1482
    .line 1483
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 1484
    .line 1485
    .line 1486
    move-result-object v0

    .line 1487
    const-string v2, "getBytes(...)"

    .line 1488
    .line 1489
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1490
    .line 1491
    .line 1492
    array-length v2, v0

    .line 1493
    const/high16 v3, 0x10000

    .line 1494
    .line 1495
    if-gt v2, v3, :cond_31

    .line 1496
    .line 1497
    invoke-virtual {v8}, LI1/c;->a()Ljava/lang/String;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v2

    .line 1501
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1502
    .line 1503
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    .line 1508
    .line 1509
    move-object/from16 v2, v20

    .line 1510
    .line 1511
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    .line 1513
    .line 1514
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v2

    .line 1518
    invoke-virtual {v1, v2}, LI1/h;->a(Ljava/lang/String;)Ljava/io/File;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v2

    .line 1522
    const-string v3, "lock-"

    .line 1523
    .line 1524
    const-string v5, ".tmp"

    .line 1525
    .line 1526
    invoke-static {v3, v5, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v3

    .line 1530
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v5

    .line 1534
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v5

    .line 1538
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1539
    .line 1540
    .line 1541
    move-result v4

    .line 1542
    if-eqz v4, :cond_30

    .line 1543
    .line 1544
    new-instance v4, Ljava/io/FileOutputStream;

    .line 1545
    .line 1546
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1547
    .line 1548
    .line 1549
    :try_start_6
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v0

    .line 1556
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 1557
    .line 1558
    .line 1559
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1560
    .line 1561
    const/4 v8, 0x0

    .line 1562
    :try_start_7
    invoke-static {v4, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1563
    .line 1564
    .line 1565
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v0

    .line 1569
    const-string v4, "getName(...)"

    .line 1570
    .line 1571
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1572
    .line 1573
    .line 1574
    invoke-virtual {v1, v0}, LI1/h;->a(Ljava/lang/String;)Ljava/io/File;

    .line 1575
    .line 1576
    .line 1577
    iget-object v0, v1, LI1/h;->a:LI1/d;

    .line 1578
    .line 1579
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1580
    .line 1581
    .line 1582
    invoke-virtual {v0, v3, v2}, LI1/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1586
    .line 1587
    .line 1588
    sget-object v0, LI1/a;->b:LI1/a;

    .line 1589
    .line 1590
    :goto_14
    return-object v0

    .line 1591
    :catchall_4
    move-exception v0

    .line 1592
    goto :goto_15

    .line 1593
    :catchall_5
    move-exception v0

    .line 1594
    move-object v1, v0

    .line 1595
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 1596
    :catchall_6
    move-exception v0

    .line 1597
    :try_start_9
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1598
    .line 1599
    .line 1600
    throw v0

    .line 1601
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1602
    .line 1603
    move-object/from16 v1, v40

    .line 1604
    .line 1605
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1606
    .line 1607
    .line 1608
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1609
    :goto_15
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1610
    .line 1611
    .line 1612
    throw v0

    .line 1613
    :cond_31
    move-object/from16 v1, v40

    .line 1614
    .line 1615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1616
    .line 1617
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1618
    .line 1619
    .line 1620
    throw v0

    .line 1621
    :cond_32
    move-object v1, v14

    .line 1622
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1623
    .line 1624
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1625
    .line 1626
    .line 1627
    throw v0

    .line 1628
    nop

    .line 1629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
