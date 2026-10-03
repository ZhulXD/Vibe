.class public final LA1/B;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:LA1/B;

.field public static volatile b:LA1/y;

.field public static volatile c:LA1/A;

.field public static volatile d:LA1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LA1/B;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LA1/B;->a:LA1/B;

    .line 7
    .line 8
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/app/Activity;)LA1/y;
    .locals 14

    .line 1
    new-instance v2, LA1/K0;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v3, "game-session.json"

    .line 10
    .line 11
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v7, "context"

    .line 15
    .line 16
    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 40
    .line 41
    invoke-virtual {p0, v8}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_0

    .line 66
    .line 67
    move-object v0, v8

    .line 68
    :cond_0
    check-cast v0, [Ljava/io/File;

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    goto :goto_1

    .line 90
    :catchall_1
    move-exception v0

    .line 91
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 92
    .line 93
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_2

    .line 106
    .line 107
    move-object v0, v8

    .line 108
    :cond_2
    check-cast v0, [Ljava/io/File;

    .line 109
    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 129
    goto :goto_2

    .line 130
    :catchall_2
    move-exception v0

    .line 131
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 132
    .line 133
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_4

    .line 146
    .line 147
    move-object v0, v8

    .line 148
    :cond_4
    check-cast v0, [Ljava/io/File;

    .line 149
    .line 150
    if-eqz v0, :cond_5

    .line 151
    .line 152
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-eqz v0, :cond_5

    .line 157
    .line 158
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    new-instance v4, Ljava/util/HashSet;

    .line 162
    .line 163
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 164
    .line 165
    .line 166
    new-instance v5, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    const/4 v9, 0x0

    .line 176
    move v0, v9

    .line 177
    :goto_3
    if-ge v0, v6, :cond_8

    .line 178
    .line 179
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    add-int/lit8 v11, v0, 0x1

    .line 184
    .line 185
    move-object v12, v10

    .line 186
    check-cast v12, Ljava/io/File;

    .line 187
    .line 188
    :try_start_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 189
    .line 190
    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 198
    goto :goto_4

    .line 199
    :catchall_3
    move-exception v0

    .line 200
    sget-object v13, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 201
    .line 202
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    if-nez v13, :cond_6

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_6
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    :goto_5
    check-cast v0, Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_7

    .line 228
    .line 229
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    :cond_7
    move v0, v11

    .line 233
    goto :goto_3

    .line 234
    :cond_8
    invoke-direct {v2, v1, v5}, LA1/K0;-><init>(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 235
    .line 236
    .line 237
    new-instance v1, LA1/Y;

    .line 238
    .line 239
    new-instance v3, LA1/g;

    .line 240
    .line 241
    const-string v0, "game-session-token"

    .line 242
    .line 243
    const-string v4, "alias"

    .line 244
    .line 245
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 249
    .line 250
    .line 251
    new-instance v4, LA1/h;

    .line 252
    .line 253
    invoke-direct {v4, p0, v9}, LA1/h;-><init>(Landroid/content/Context;I)V

    .line 254
    .line 255
    .line 256
    new-instance v5, LA1/d;

    .line 257
    .line 258
    invoke-direct {v5, p0, v2}, LA1/d;-><init>(Landroid/content/Context;LA1/K0;)V

    .line 259
    .line 260
    .line 261
    sget-object v6, LV1/H;->b:Lc2/c;

    .line 262
    .line 263
    invoke-direct/range {v1 .. v6}, LA1/Y;-><init>(LA1/K0;LA1/g;LA1/h;LA1/d;LV1/t;)V

    .line 264
    .line 265
    .line 266
    sget-object v2, LV1/a0;->b:LV1/a0;

    .line 267
    .line 268
    sget-object v0, LA1/B;->c:LA1/A;

    .line 269
    .line 270
    if-eqz v0, :cond_9

    .line 271
    .line 272
    goto/16 :goto_a

    .line 273
    .line 274
    :cond_9
    new-instance v0, LV1/q0;

    .line 275
    .line 276
    invoke-direct {v0}, LV1/e0;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-static {v0, v6}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    new-instance v3, La2/e;

    .line 284
    .line 285
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    if-eqz v4, :cond_a

    .line 290
    .line 291
    goto :goto_6

    .line 292
    :cond_a
    new-instance v4, LV1/e0;

    .line 293
    .line 294
    invoke-direct {v4}, LV1/e0;-><init>()V

    .line 295
    .line 296
    .line 297
    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    :goto_6
    invoke-direct {v3, v0}, La2/e;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 302
    .line 303
    .line 304
    new-instance v4, LA1/A;

    .line 305
    .line 306
    invoke-direct {v4, v3, v1}, LA1/A;-><init>(La2/e;LA1/Y;)V

    .line 307
    .line 308
    .line 309
    :try_start_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 310
    .line 311
    const-string v0, "com.minhub.gamehub.action.GAME_SESSION_STATUS"

    .line 312
    .line 313
    const-string v5, "com.minhub.gamehub.action.GAME_SESSION_HEARTBEAT"

    .line 314
    .line 315
    filled-new-array {v0, v5}, [Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    const-string v5, "actions"

    .line 320
    .line 321
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    new-instance v5, Landroid/content/IntentFilter;

    .line 325
    .line 326
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 327
    .line 328
    .line 329
    :goto_7
    const/4 v6, 0x2

    .line 330
    if-ge v9, v6, :cond_b

    .line 331
    .line 332
    aget-object v6, v0, v9

    .line 333
    .line 334
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    add-int/lit8 v9, v9, 0x1

    .line 338
    .line 339
    goto :goto_7

    .line 340
    :cond_b
    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    const-string v0, "receiver"

    .line 344
    .line 345
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string v0, "filter"

    .line 349
    .line 350
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 354
    .line 355
    const/16 v6, 0x21

    .line 356
    .line 357
    if-lt v0, v6, :cond_c

    .line 358
    .line 359
    invoke-static {p0, v4, v5}, LA/a;->v(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 360
    .line 361
    .line 362
    goto :goto_8

    .line 363
    :cond_c
    const-string v0, "com.minhub.gamehub.permission.GAME_SESSION"

    .line 364
    .line 365
    invoke-virtual {p0, v4, v5, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 366
    .line 367
    .line 368
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 369
    .line 370
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 374
    goto :goto_9

    .line 375
    :catchall_4
    move-exception v0

    .line 376
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 377
    .line 378
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    :goto_9
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    if-eqz v5, :cond_d

    .line 391
    .line 392
    move-object v5, v0

    .line 393
    check-cast v5, Lkotlin/Unit;

    .line 394
    .line 395
    sput-object v4, LA1/B;->c:LA1/A;

    .line 396
    .line 397
    iget-object v4, v3, La2/e;->b:Lkotlin/coroutines/CoroutineContext;

    .line 398
    .line 399
    invoke-interface {v4, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    check-cast v4, LV1/b0;

    .line 404
    .line 405
    :cond_d
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    if-eqz v0, :cond_f

    .line 410
    .line 411
    iget-object v0, v3, La2/e;->b:Lkotlin/coroutines/CoroutineContext;

    .line 412
    .line 413
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    check-cast v0, LV1/b0;

    .line 418
    .line 419
    if-eqz v0, :cond_e

    .line 420
    .line 421
    invoke-interface {v0, v8}, LV1/b0;->b(Ljava/util/concurrent/CancellationException;)V

    .line 422
    .line 423
    .line 424
    goto :goto_a

    .line 425
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 426
    .line 427
    new-instance p1, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    const-string v0, "Scope cannot be cancelled because it does not have a job: "

    .line 430
    .line 431
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw p0

    .line 449
    :cond_f
    :goto_a
    new-instance v0, LA1/b;

    .line 450
    .line 451
    const-string v2, "activity"

    .line 452
    .line 453
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 457
    .line 458
    .line 459
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 460
    .line 461
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    iput-object v2, v0, LA1/b;->b:Ljava/lang/Object;

    .line 465
    .line 466
    sput-object v0, LA1/B;->d:LA1/b;

    .line 467
    .line 468
    new-instance p1, LA1/y;

    .line 469
    .line 470
    new-instance v2, LA1/D0;

    .line 471
    .line 472
    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 476
    .line 477
    .line 478
    invoke-direct {p1, v1, v2, v0}, LA1/y;-><init>(LA1/Y;LA1/D0;LA1/b;)V

    .line 479
    .line 480
    .line 481
    return-object p1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Landroid/app/Activity;)LA1/y;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "context"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "activity"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, LA1/B;->b:LA1/y;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object p1, LA1/B;->d:LA1/b;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string v1, "value"

    .line 21
    .line 22
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p1, LA1/b;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    :cond_0
    monitor-exit p0

    .line 33
    return-object v0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "getApplicationContext(...)"

    .line 41
    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2}, LA1/B;->b(Landroid/content/Context;Landroid/app/Activity;)LA1/y;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sput-object p1, LA1/B;->b:LA1/y;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-object p1

    .line 53
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw p1
.end method
