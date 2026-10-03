.class public final LA1/t0;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LA1/t0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, LA1/t0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    iget v0, v1, LA1/t0;->a:I

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, LA1/t0;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Le/y;

    .line 13
    .line 14
    invoke-virtual {v0}, Le/y;->d()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    const-string v0, "c"

    .line 19
    .line 20
    move-object/from16 v3, p1

    .line 21
    .line 22
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "intent"

    .line 26
    .line 27
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v1, LA1/t0;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, LA1/v0;

    .line 33
    .line 34
    iget-object v3, v0, LA1/v0;->b:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v4, v0, LA1/v0;->c:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v5, v0, LA1/v0;->d:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v6, v0, LA1/v0;->e:Ljava/lang/String;

    .line 41
    .line 42
    iget v7, v0, LA1/v0;->f:I

    .line 43
    .line 44
    iget-object v8, v0, LA1/v0;->n:LA1/b;

    .line 45
    .line 46
    iget-object v9, v0, LA1/v0;->q:LA1/L0;

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v10

    .line 52
    sget-object v12, LA1/y0;->b:LA1/y0;

    .line 53
    .line 54
    const-string v0, "intent"

    .line 55
    .line 56
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "expectedSessionId"

    .line 60
    .line 61
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v0, "expectedToken"

    .line 65
    .line 66
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "expectedEngine"

    .line 70
    .line 71
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v0, "expectedProcessName"

    .line 75
    .line 76
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v0, "replay"

    .line 80
    .line 81
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v0, "requestIds"

    .line 85
    .line 86
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    .line 95
    goto/16 :goto_d

    .line 96
    .line 97
    :cond_0
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    const-string v15, "keySet(...)"

    .line 102
    .line 103
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v15, Ljava/util/LinkedHashMap;

    .line 107
    .line 108
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 109
    .line 110
    .line 111
    move-result v16

    .line 112
    invoke-static/range {v16 .. v16}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    const/16 v2, 0x10

    .line 117
    .line 118
    invoke-static {v13, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    invoke-direct {v15, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v13

    .line 133
    if-eqz v13, :cond_1

    .line 134
    .line 135
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    move-object v14, v13

    .line 140
    check-cast v14, Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, v14}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v14

    .line 146
    invoke-interface {v15, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const-string v0, "extras"

    .line 155
    .line 156
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string v0, "expectedSessionId"

    .line 160
    .line 161
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string v0, "expectedToken"

    .line 165
    .line 166
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string v0, "expectedEngine"

    .line 170
    .line 171
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v0, "expectedProcessName"

    .line 175
    .line 176
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v0, "replay"

    .line 180
    .line 181
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string v0, "requestIds"

    .line 185
    .line 186
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v0, "com.minhub.gamehub.action.REQUEST_CLOSE_GAME"

    .line 190
    .line 191
    const-string v13, "com.minhub.gamehub.action.REQUEST_FORCE_CLOSE_GAME"

    .line 192
    .line 193
    const-string v14, "com.minhub.gamehub.action.GAME_SESSION_STATUS"

    .line 194
    .line 195
    const-string v1, "com.minhub.gamehub.action.GAME_SESSION_HEARTBEAT"

    .line 196
    .line 197
    filled-new-array {v0, v13, v14, v1}, [Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-nez v0, :cond_2

    .line 210
    .line 211
    goto/16 :goto_d

    .line 212
    .line 213
    :cond_2
    const-string v0, "sessionId"

    .line 214
    .line 215
    invoke-static {v0, v15}, LA1/D;->b(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    if-nez v1, :cond_3

    .line 220
    .line 221
    goto/16 :goto_d

    .line 222
    .line 223
    :cond_3
    const-string v0, "sessionToken"

    .line 224
    .line 225
    invoke-static {v0, v15}, LA1/D;->b(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    if-nez v13, :cond_4

    .line 230
    .line 231
    goto/16 :goto_d

    .line 232
    .line 233
    :cond_4
    const-string v0, "engine"

    .line 234
    .line 235
    invoke-static {v0, v15}, LA1/D;->b(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v14

    .line 239
    if-nez v14, :cond_5

    .line 240
    .line 241
    goto/16 :goto_d

    .line 242
    .line 243
    :cond_5
    const-string v0, "processName"

    .line 244
    .line 245
    move-object/from16 v16, v8

    .line 246
    .line 247
    invoke-static {v0, v15}, LA1/D;->b(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    if-nez v8, :cond_6

    .line 252
    .line 253
    goto/16 :goto_d

    .line 254
    .line 255
    :cond_6
    const-string v0, "requestId"

    .line 256
    .line 257
    move-wide/from16 v17, v10

    .line 258
    .line 259
    invoke-static {v0, v15}, LA1/D;->b(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    if-nez v10, :cond_7

    .line 264
    .line 265
    goto/16 :goto_d

    .line 266
    .line 267
    :cond_7
    const-string v0, "issuedAt"

    .line 268
    .line 269
    invoke-virtual {v15, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    instance-of v11, v0, Ljava/lang/Long;

    .line 274
    .line 275
    if-eqz v11, :cond_8

    .line 276
    .line 277
    check-cast v0, Ljava/lang/Long;

    .line 278
    .line 279
    goto :goto_1

    .line 280
    :cond_8
    const/4 v0, 0x0

    .line 281
    :goto_1
    if-eqz v0, :cond_20

    .line 282
    .line 283
    move-object/from16 v19, v12

    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 286
    .line 287
    .line 288
    move-result-wide v11

    .line 289
    const-string v0, "messageTimestamp"

    .line 290
    .line 291
    invoke-virtual {v15, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    move-object/from16 v20, v10

    .line 296
    .line 297
    instance-of v10, v0, Ljava/lang/Long;

    .line 298
    .line 299
    if-eqz v10, :cond_9

    .line 300
    .line 301
    check-cast v0, Ljava/lang/Long;

    .line 302
    .line 303
    goto :goto_2

    .line 304
    :cond_9
    const/4 v0, 0x0

    .line 305
    :goto_2
    if-eqz v0, :cond_20

    .line 306
    .line 307
    move-wide/from16 v21, v11

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 310
    .line 311
    .line 312
    move-result-wide v10

    .line 313
    const-string v0, "pid"

    .line 314
    .line 315
    invoke-virtual {v15, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    instance-of v12, v0, Ljava/lang/Integer;

    .line 320
    .line 321
    if-eqz v12, :cond_a

    .line 322
    .line 323
    check-cast v0, Ljava/lang/Integer;

    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_a
    const/4 v0, 0x0

    .line 327
    :goto_3
    if-eqz v0, :cond_20

    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 330
    .line 331
    .line 332
    move-result v12

    .line 333
    const-string v0, "closeResult"

    .line 334
    .line 335
    invoke-static {v0, v15}, LA1/D;->b(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    if-nez v0, :cond_b

    .line 340
    .line 341
    const/16 v25, 0x0

    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_b
    :try_start_0
    sget-object v23, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 345
    .line 346
    invoke-static {v0}, LA1/j;->valueOf(Ljava/lang/String;)LA1/j;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    goto :goto_4

    .line 355
    :catchall_0
    move-exception v0

    .line 356
    sget-object v23, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 357
    .line 358
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v23

    .line 370
    if-eqz v23, :cond_c

    .line 371
    .line 372
    const/4 v0, 0x0

    .line 373
    :cond_c
    check-cast v0, LA1/j;

    .line 374
    .line 375
    if-nez v0, :cond_d

    .line 376
    .line 377
    goto/16 :goto_d

    .line 378
    .line 379
    :cond_d
    move-object/from16 v25, v0

    .line 380
    .line 381
    :goto_5
    if-nez v2, :cond_e

    .line 382
    .line 383
    goto/16 :goto_d

    .line 384
    .line 385
    :cond_e
    const-string v0, "com.minhub.gamehub.action.REQUEST_CLOSE_GAME"

    .line 386
    .line 387
    move-wide/from16 v23, v10

    .line 388
    .line 389
    const-string v10, "com.minhub.gamehub.action.REQUEST_FORCE_CLOSE_GAME"

    .line 390
    .line 391
    const-string v11, "com.minhub.gamehub.action.GAME_SESSION_STATUS"

    .line 392
    .line 393
    move/from16 v26, v7

    .line 394
    .line 395
    const-string v7, "com.minhub.gamehub.action.GAME_SESSION_HEARTBEAT"

    .line 396
    .line 397
    filled-new-array {v0, v10, v11, v7}, [Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-eqz v0, :cond_f

    .line 410
    .line 411
    if-nez v9, :cond_f

    .line 412
    .line 413
    goto/16 :goto_d

    .line 414
    .line 415
    :cond_f
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 416
    .line 417
    const-string v0, "state"

    .line 418
    .line 419
    invoke-static {v0, v15}, LA1/D;->b(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    if-nez v0, :cond_10

    .line 424
    .line 425
    goto/16 :goto_d

    .line 426
    .line 427
    :cond_10
    invoke-static {v0}, LA1/L0;->valueOf(Ljava/lang/String;)LA1/L0;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 435
    goto :goto_6

    .line 436
    :catchall_1
    move-exception v0

    .line 437
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 438
    .line 439
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v7

    .line 451
    if-eqz v7, :cond_11

    .line 452
    .line 453
    const/4 v0, 0x0

    .line 454
    :cond_11
    check-cast v0, LA1/L0;

    .line 455
    .line 456
    if-nez v0, :cond_12

    .line 457
    .line 458
    goto/16 :goto_d

    .line 459
    .line 460
    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 461
    .line 462
    .line 463
    move-result v7

    .line 464
    sparse-switch v7, :sswitch_data_0

    .line 465
    .line 466
    .line 467
    goto/16 :goto_d

    .line 468
    .line 469
    :sswitch_0
    const-string v7, "com.minhub.gamehub.action.GAME_SESSION_HEARTBEAT"

    .line 470
    .line 471
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    if-nez v2, :cond_15

    .line 476
    .line 477
    goto/16 :goto_d

    .line 478
    .line 479
    :sswitch_1
    const-string v7, "com.minhub.gamehub.action.REQUEST_CLOSE_GAME"

    .line 480
    .line 481
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    if-nez v2, :cond_13

    .line 486
    .line 487
    goto/16 :goto_d

    .line 488
    .line 489
    :cond_13
    if-eqz v9, :cond_20

    .line 490
    .line 491
    sget-object v2, LA1/L0;->b:LA1/L0;

    .line 492
    .line 493
    sget-object v7, LA1/L0;->c:LA1/L0;

    .line 494
    .line 495
    filled-new-array {v2, v7}, [LA1/L0;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    if-eqz v2, :cond_20

    .line 508
    .line 509
    sget-object v2, LA1/L0;->d:LA1/L0;

    .line 510
    .line 511
    if-ne v0, v2, :cond_20

    .line 512
    .line 513
    goto :goto_7

    .line 514
    :sswitch_2
    const-string v7, "com.minhub.gamehub.action.REQUEST_FORCE_CLOSE_GAME"

    .line 515
    .line 516
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    if-nez v2, :cond_14

    .line 521
    .line 522
    goto/16 :goto_d

    .line 523
    .line 524
    :cond_14
    sget-object v2, LA1/L0;->d:LA1/L0;

    .line 525
    .line 526
    if-ne v9, v2, :cond_20

    .line 527
    .line 528
    sget-object v2, LA1/L0;->e:LA1/L0;

    .line 529
    .line 530
    if-ne v0, v2, :cond_20

    .line 531
    .line 532
    goto :goto_7

    .line 533
    :sswitch_3
    const-string v7, "com.minhub.gamehub.action.GAME_SESSION_STATUS"

    .line 534
    .line 535
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    if-nez v2, :cond_15

    .line 540
    .line 541
    goto/16 :goto_d

    .line 542
    .line 543
    :cond_15
    if-eqz v9, :cond_20

    .line 544
    .line 545
    if-eq v9, v0, :cond_16

    .line 546
    .line 547
    invoke-static {v9, v0}, Lcom/bumptech/glide/c;->f(LA1/L0;LA1/L0;)Z

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    if-eqz v2, :cond_20

    .line 552
    .line 553
    :cond_16
    :goto_7
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    if-eqz v2, :cond_20

    .line 558
    .line 559
    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    if-eqz v2, :cond_20

    .line 564
    .line 565
    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    if-eqz v2, :cond_20

    .line 570
    .line 571
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    if-eqz v2, :cond_20

    .line 576
    .line 577
    move/from16 v2, v26

    .line 578
    .line 579
    if-eq v12, v2, :cond_17

    .line 580
    .line 581
    goto/16 :goto_d

    .line 582
    .line 583
    :cond_17
    move-wide/from16 v2, v17

    .line 584
    .line 585
    move-wide/from16 v4, v21

    .line 586
    .line 587
    invoke-static {v4, v5, v2, v3}, LA1/D;->a(JJ)Z

    .line 588
    .line 589
    .line 590
    move-result v6

    .line 591
    if-eqz v6, :cond_20

    .line 592
    .line 593
    move-wide/from16 v6, v23

    .line 594
    .line 595
    invoke-static {v6, v7, v2, v3}, LA1/D;->a(JJ)Z

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    if-nez v2, :cond_18

    .line 600
    .line 601
    goto/16 :goto_d

    .line 602
    .line 603
    :cond_18
    monitor-enter v19

    .line 604
    :try_start_2
    const-string v2, "sessionId"

    .line 605
    .line 606
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    const-string v2, "requestId"

    .line 610
    .line 611
    move-object/from16 v3, v20

    .line 612
    .line 613
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    const/4 v9, 0x0

    .line 621
    if-nez v2, :cond_19

    .line 622
    .line 623
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 624
    .line 625
    .line 626
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 627
    if-eqz v2, :cond_1a

    .line 628
    .line 629
    :cond_19
    move-object/from16 v2, v19

    .line 630
    .line 631
    goto :goto_8

    .line 632
    :cond_1a
    move-object/from16 v2, v19

    .line 633
    .line 634
    :try_start_3
    iget-object v10, v2, LA1/y0;->a:Ljava/util/HashSet;

    .line 635
    .line 636
    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 640
    monitor-exit v2

    .line 641
    goto :goto_9

    .line 642
    :catchall_2
    move-exception v0

    .line 643
    goto :goto_c

    .line 644
    :catchall_3
    move-exception v0

    .line 645
    move-object/from16 v2, v19

    .line 646
    .line 647
    goto :goto_c

    .line 648
    :goto_8
    monitor-exit v2

    .line 649
    move v10, v9

    .line 650
    :goto_9
    if-nez v10, :cond_1b

    .line 651
    .line 652
    goto :goto_d

    .line 653
    :cond_1b
    move-object/from16 v2, v16

    .line 654
    .line 655
    iget-object v2, v2, LA1/b;->b:Ljava/lang/Object;

    .line 656
    .line 657
    check-cast v2, Ljava/util/LinkedHashSet;

    .line 658
    .line 659
    const-string v10, "requestId"

    .line 660
    .line 661
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 665
    .line 666
    .line 667
    move-result v10

    .line 668
    if-nez v10, :cond_1e

    .line 669
    .line 670
    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v10

    .line 674
    if-nez v10, :cond_1c

    .line 675
    .line 676
    goto :goto_b

    .line 677
    :cond_1c
    :goto_a
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 678
    .line 679
    .line 680
    move-result v9

    .line 681
    const/16 v10, 0x100

    .line 682
    .line 683
    if-le v9, v10, :cond_1d

    .line 684
    .line 685
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 686
    .line 687
    .line 688
    move-result-object v9

    .line 689
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 693
    .line 694
    .line 695
    goto :goto_a

    .line 696
    :cond_1d
    const/4 v9, 0x1

    .line 697
    :cond_1e
    :goto_b
    if-nez v9, :cond_1f

    .line 698
    .line 699
    goto :goto_d

    .line 700
    :cond_1f
    new-instance v16, LA1/C;

    .line 701
    .line 702
    move-object/from16 v24, v0

    .line 703
    .line 704
    move-object/from16 v17, v1

    .line 705
    .line 706
    move-object/from16 v19, v3

    .line 707
    .line 708
    move-wide/from16 v20, v4

    .line 709
    .line 710
    move-wide/from16 v22, v6

    .line 711
    .line 712
    move-object/from16 v27, v8

    .line 713
    .line 714
    move/from16 v28, v12

    .line 715
    .line 716
    move-object/from16 v18, v13

    .line 717
    .line 718
    move-object/from16 v26, v14

    .line 719
    .line 720
    invoke-direct/range {v16 .. v28}, LA1/C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLA1/L0;LA1/j;Ljava/lang/String;Ljava/lang/String;I)V

    .line 721
    .line 722
    .line 723
    move-object/from16 v13, v16

    .line 724
    .line 725
    goto :goto_e

    .line 726
    :goto_c
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 727
    throw v0

    .line 728
    :cond_20
    :goto_d
    const/4 v13, 0x0

    .line 729
    :goto_e
    if-nez v13, :cond_22

    .line 730
    .line 731
    :cond_21
    move-object/from16 v1, p0

    .line 732
    .line 733
    goto/16 :goto_11

    .line 734
    .line 735
    :cond_22
    iget-object v0, v13, LA1/C;->c:Ljava/lang/String;

    .line 736
    .line 737
    if-eqz v0, :cond_21

    .line 738
    .line 739
    move-object/from16 v1, p0

    .line 740
    .line 741
    iget-object v2, v1, LA1/t0;->b:Ljava/lang/Object;

    .line 742
    .line 743
    check-cast v2, LA1/v0;

    .line 744
    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v3

    .line 749
    const-string v4, "com.minhub.gamehub.action.REQUEST_FORCE_CLOSE_GAME"

    .line 750
    .line 751
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    move-result v3

    .line 755
    iget-boolean v4, v2, LA1/v0;->r:Z

    .line 756
    .line 757
    if-eqz v4, :cond_28

    .line 758
    .line 759
    iget-object v4, v2, LA1/v0;->q:LA1/L0;

    .line 760
    .line 761
    if-eqz v3, :cond_23

    .line 762
    .line 763
    sget-object v5, LA1/L0;->d:LA1/L0;

    .line 764
    .line 765
    goto :goto_f

    .line 766
    :cond_23
    sget-object v5, LA1/L0;->c:LA1/L0;

    .line 767
    .line 768
    :goto_f
    if-eq v4, v5, :cond_24

    .line 769
    .line 770
    goto :goto_11

    .line 771
    :cond_24
    iget-wide v4, v2, LA1/v0;->t:J

    .line 772
    .line 773
    const-wide/16 v6, 0x1

    .line 774
    .line 775
    add-long/2addr v4, v6

    .line 776
    iput-wide v4, v2, LA1/v0;->t:J

    .line 777
    .line 778
    if-eqz v3, :cond_25

    .line 779
    .line 780
    sget-object v6, LA1/L0;->e:LA1/L0;

    .line 781
    .line 782
    goto :goto_10

    .line 783
    :cond_25
    sget-object v6, LA1/L0;->d:LA1/L0;

    .line 784
    .line 785
    :goto_10
    iput-object v6, v2, LA1/v0;->q:LA1/L0;

    .line 786
    .line 787
    iget-object v6, v2, LA1/v0;->o:LA1/d;

    .line 788
    .line 789
    iget-object v7, v2, LA1/v0;->b:Ljava/lang/String;

    .line 790
    .line 791
    sget-object v8, LA1/j;->b:LA1/j;

    .line 792
    .line 793
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 794
    .line 795
    .line 796
    const-string v9, "sessionId"

    .line 797
    .line 798
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    const-string v9, "requestId"

    .line 802
    .line 803
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    const-string v9, "result"

    .line 807
    .line 808
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 812
    .line 813
    .line 814
    move-result v9

    .line 815
    if-nez v9, :cond_27

    .line 816
    .line 817
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 818
    .line 819
    .line 820
    move-result v9

    .line 821
    if-nez v9, :cond_27

    .line 822
    .line 823
    iget-object v9, v6, LA1/d;->c:Ljava/lang/Object;

    .line 824
    .line 825
    check-cast v9, Ljava/util/LinkedHashMap;

    .line 826
    .line 827
    new-instance v10, LA1/i;

    .line 828
    .line 829
    invoke-direct {v10, v7, v0}, LA1/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    iget-object v6, v6, LA1/d;->d:Ljava/lang/Object;

    .line 836
    .line 837
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 838
    .line 839
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    iget-object v0, v2, LA1/v0;->s:LA1/u0;

    .line 843
    .line 844
    if-eqz v0, :cond_26

    .line 845
    .line 846
    iget-object v6, v2, LA1/v0;->p:Landroid/os/Handler;

    .line 847
    .line 848
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 849
    .line 850
    .line 851
    :cond_26
    const-string v0, "com.minhub.gamehub.action.GAME_SESSION_STATUS"

    .line 852
    .line 853
    invoke-virtual {v2, v0, v8}, LA1/v0;->a(Ljava/lang/String;LA1/j;)V

    .line 854
    .line 855
    .line 856
    iget-object v0, v2, LA1/v0;->g:LA1/l;

    .line 857
    .line 858
    new-instance v6, LA1/q0;

    .line 859
    .line 860
    invoke-direct {v6, v2, v4, v5, v3}, LA1/q0;-><init>(LA1/v0;JZ)V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v0, v6}, LA1/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    goto :goto_11

    .line 867
    :cond_27
    const-string v0, "Failed requirement."

    .line 868
    .line 869
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 870
    .line 871
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    throw v2

    .line 875
    :cond_28
    :goto_11
    return-void

    .line 876
    nop

    .line 877
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    :sswitch_data_0
    .sparse-switch
        -0x66616ca7 -> :sswitch_3
        -0x4e52c334 -> :sswitch_2
        0x5ddf6a18 -> :sswitch_1
        0x63fc2415 -> :sswitch_0
    .end sparse-switch
.end method
