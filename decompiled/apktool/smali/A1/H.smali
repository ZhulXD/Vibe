.class public final synthetic LA1/H;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LA1/H;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LA1/H;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, LA1/H;->d:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, LA1/H;->b:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "it"

    .line 9
    .line 10
    iget-object v6, v0, LA1/H;->d:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v7, v0, LA1/H;->c:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v2, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object v9, v7

    .line 18
    check-cast v9, Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 19
    .line 20
    check-cast v6, LB1/u;

    .line 21
    .line 22
    check-cast v1, LB1/n;

    .line 23
    .line 24
    sget v2, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 25
    .line 26
    const-string v2, "dir"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v10, v6, LB1/u;->e:I

    .line 32
    .line 33
    iget v12, v6, LB1/u;->f:I

    .line 34
    .line 35
    const/high16 v2, -0x40800000    # -1.0f

    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/high16 v3, 0x3f800000    # 1.0f

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/16 v4, 0x13

    .line 48
    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const/16 v6, 0x15

    .line 54
    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const/16 v7, 0x16

    .line 60
    .line 61
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const/16 v8, 0x14

    .line 66
    .line 67
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v14

    .line 71
    const v8, -0x40ca3d71    # -0.71f

    .line 72
    .line 73
    .line 74
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    const v11, 0x3f35c28f    # 0.71f

    .line 79
    .line 80
    .line 81
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    const/4 v13, 0x0

    .line 86
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v15

    .line 90
    const/4 v13, 0x0

    .line 91
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    iget-boolean v5, v9, Lcom/minhub/gamehub/game/GodotGameActivity;->g:Z

    .line 96
    .line 97
    if-eqz v5, :cond_0

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v9}, Lcom/minhub/gamehub/game/GodotGameActivity;->m()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    if-nez v5, :cond_1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    const/4 v5, 0x1

    .line 108
    iput-boolean v5, v9, Lcom/minhub/gamehub/game/GodotGameActivity;->g:Z

    .line 109
    .line 110
    new-instance v5, Ly1/D0;

    .line 111
    .line 112
    const/4 v0, 0x3

    .line 113
    invoke-direct {v5, v9, v0}, Ly1/D0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v5}, Lcom/minhub/gamehub/game/GodotGameActivity;->q(Lkotlin/jvm/functions/Function0;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    packed-switch v0, :pswitch_data_1

    .line 124
    .line 125
    .line 126
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 127
    .line 128
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    :pswitch_0
    invoke-static {v11, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    goto :goto_1

    .line 137
    :pswitch_1
    invoke-static {v8, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    goto :goto_1

    .line 142
    :pswitch_2
    invoke-static {v11, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    goto :goto_1

    .line 147
    :pswitch_3
    invoke-static {v8, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    goto :goto_1

    .line 152
    :pswitch_4
    invoke-static {v3, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    goto :goto_1

    .line 157
    :pswitch_5
    invoke-static {v2, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    goto :goto_1

    .line 162
    :pswitch_6
    invoke-static {v13, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    goto :goto_1

    .line 167
    :pswitch_7
    invoke-static {v13, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    goto :goto_1

    .line 172
    :pswitch_8
    invoke-static {v13, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :goto_1
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Ljava/lang/Number;

    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Ljava/lang/Number;

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    new-instance v8, Ly1/G0;

    .line 197
    .line 198
    invoke-direct/range {v8 .. v13}, Ly1/G0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;IFIF)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v9, v8}, Lcom/minhub/gamehub/game/GodotGameActivity;->q(Lkotlin/jvm/functions/Function0;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    packed-switch v0, :pswitch_data_2

    .line 209
    .line 210
    .line 211
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 212
    .line 213
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :pswitch_9
    invoke-static {v14, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    goto :goto_2

    .line 222
    :pswitch_a
    invoke-static {v14, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    goto :goto_2

    .line 227
    :pswitch_b
    invoke-static {v4, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    goto :goto_2

    .line 232
    :pswitch_c
    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    goto :goto_2

    .line 237
    :pswitch_d
    invoke-static {v7, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    goto :goto_2

    .line 242
    :pswitch_e
    invoke-static {v6, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    goto :goto_2

    .line 247
    :pswitch_f
    invoke-static {v14, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    goto :goto_2

    .line 252
    :pswitch_10
    invoke-static {v4, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    goto :goto_2

    .line 257
    :pswitch_11
    invoke-static {v15, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    :goto_2
    iget-object v1, v9, Lcom/minhub/gamehub/game/GodotGameActivity;->h:Lkotlin/Pair;

    .line 262
    .line 263
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-nez v1, :cond_2

    .line 268
    .line 269
    iget-object v1, v9, Lcom/minhub/gamehub/game/GodotGameActivity;->h:Lkotlin/Pair;

    .line 270
    .line 271
    iput-object v0, v9, Lcom/minhub/gamehub/game/GodotGameActivity;->h:Lkotlin/Pair;

    .line 272
    .line 273
    new-instance v2, LI1/e;

    .line 274
    .line 275
    const/4 v3, 0x4

    .line 276
    invoke-direct {v2, v1, v9, v0, v3}, LI1/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v9, v2}, Lcom/minhub/gamehub/game/GodotGameActivity;->q(Lkotlin/jvm/functions/Function0;)V

    .line 280
    .line 281
    .line 282
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 283
    .line 284
    return-object v0

    .line 285
    :pswitch_12
    check-cast v7, Ly1/x0;

    .line 286
    .line 287
    check-cast v6, Ly1/a1;

    .line 288
    .line 289
    move-object v0, v1

    .line 290
    check-cast v0, Ljava/util/Map;

    .line 291
    .line 292
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    new-instance v1, Ljava/lang/Thread;

    .line 296
    .line 297
    new-instance v2, LC1/A1;

    .line 298
    .line 299
    const/16 v3, 0xd

    .line 300
    .line 301
    invoke-direct {v2, v7, v6, v0, v3}, LC1/A1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 302
    .line 303
    .line 304
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 308
    .line 309
    .line 310
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 311
    .line 312
    return-object v0

    .line 313
    :pswitch_13
    check-cast v7, Lcom/minhub/gamehub/game/GameActivity;

    .line 314
    .line 315
    check-cast v6, Lcom/minhub/gamehub/data/Save;

    .line 316
    .line 317
    move-object v0, v1

    .line 318
    check-cast v0, Ljava/lang/Boolean;

    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    sget v1, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 325
    .line 326
    new-instance v1, Ly1/C;

    .line 327
    .line 328
    invoke-direct {v1, v0, v7, v6}, Ly1/C;-><init>(ZLcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Save;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v7, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 332
    .line 333
    .line 334
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 335
    .line 336
    return-object v0

    .line 337
    :pswitch_14
    check-cast v7, Landroid/webkit/WebView;

    .line 338
    .line 339
    check-cast v6, Lu1/a;

    .line 340
    .line 341
    move-object v0, v1

    .line 342
    check-cast v0, Ljava/util/Map;

    .line 343
    .line 344
    const-string v1, "edits"

    .line 345
    .line 346
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    sget-object v2, Lu1/b;->a:Li1/l;

    .line 350
    .line 351
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    new-instance v1, Li1/n;

    .line 355
    .line 356
    invoke-direct {v1}, Li1/n;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    if-eqz v2, :cond_5

    .line 372
    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    check-cast v2, Ljava/util/Map$Entry;

    .line 378
    .line 379
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    check-cast v3, Ly1/X0;

    .line 384
    .line 385
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    check-cast v2, Li1/s;

    .line 390
    .line 391
    new-instance v4, Li1/n;

    .line 392
    .line 393
    invoke-direct {v4}, Li1/n;-><init>()V

    .line 394
    .line 395
    .line 396
    iget-object v3, v3, Ly1/X0;->a:Ljava/util/List;

    .line 397
    .line 398
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    if-eqz v5, :cond_4

    .line 407
    .line 408
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    check-cast v5, Ljava/lang/String;

    .line 413
    .line 414
    if-nez v5, :cond_3

    .line 415
    .line 416
    sget-object v5, Li1/q;->b:Li1/q;

    .line 417
    .line 418
    goto :goto_5

    .line 419
    :cond_3
    new-instance v8, Li1/s;

    .line 420
    .line 421
    invoke-direct {v8, v5}, Li1/s;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    move-object v5, v8

    .line 425
    :goto_5
    iget-object v8, v4, Li1/n;->b:Ljava/util/ArrayList;

    .line 426
    .line 427
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    goto :goto_4

    .line 431
    :cond_4
    new-instance v3, Li1/n;

    .line 432
    .line 433
    invoke-direct {v3}, Li1/n;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3, v4}, Li1/n;->g(Li1/o;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v3, v2}, Li1/n;->g(Li1/o;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1, v3}, Li1/n;->g(Li1/o;)V

    .line 443
    .line 444
    .line 445
    goto :goto_3

    .line 446
    :cond_5
    sget-object v0, Lu1/b;->a:Li1/l;

    .line 447
    .line 448
    invoke-virtual {v0, v1}, Li1/l;->f(Li1/o;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    const-string v2, "\n            (function(E){\n              try {\n                var k = window.TYRANO && window.TYRANO.kag;\n                if (!k || !k.stat) return -1;\n                var roots = { f: k.stat.f, sf: k.variable && k.variable.sf };\n                function key(s) { var m = /^\\[(\\d+)\\]$/.exec(s); return m ? Number(m[1]) : s; }\n                var n = 0, sys = false;\n                E.forEach(function(e) {\n                  var p = e[0], o = roots[p[0]];\n                  for (var i = 1; i < p.length - 1 && o; i++) o = o[key(p[i])];\n                  if (o && typeof o === \'object\') { o[key(p[p.length - 1])] = e[1]; n++; if (p[0] === \'sf\') sys = true; }\n                });\n                if (sys) { try { k.saveSystemVariable(); } catch (x) {} }\n                return n;\n              } catch (e) { return -1; }\n            })("

    .line 455
    .line 456
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v0, ");\n        "

    .line 463
    .line 464
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    new-instance v1, Ls1/b;

    .line 476
    .line 477
    const/4 v5, 0x1

    .line 478
    invoke-direct {v1, v5, v6}, Ls1/b;-><init>(ILjava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v7, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 482
    .line 483
    .line 484
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 485
    .line 486
    return-object v0

    .line 487
    :pswitch_15
    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 488
    .line 489
    invoke-static {v7, v6, v1}, Lkotlin/sequences/SequencesKt___SequencesKt$minus$1;->a(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    return-object v0

    .line 498
    :pswitch_16
    check-cast v7, Ljava/lang/String;

    .line 499
    .line 500
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 501
    .line 502
    move-object v0, v1

    .line 503
    check-cast v0, Ljava/util/List;

    .line 504
    .line 505
    invoke-static {v7, v6, v0}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Ljava/util/List;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    return-object v0

    .line 510
    :pswitch_17
    check-cast v7, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 511
    .line 512
    check-cast v6, Ljava/lang/String;

    .line 513
    .line 514
    move-object v0, v1

    .line 515
    check-cast v0, Ljava/lang/Integer;

    .line 516
    .line 517
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    invoke-static {v7, v6, v0}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->e(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;Ljava/lang/String;I)Lkotlin/Unit;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    return-object v0

    .line 526
    :pswitch_18
    check-cast v7, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 527
    .line 528
    check-cast v6, Ljava/lang/String;

    .line 529
    .line 530
    move-object v0, v1

    .line 531
    check-cast v0, LC1/X1;

    .line 532
    .line 533
    const-string v1, "state"

    .line 534
    .line 535
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-static {v7}, LS1/d;->p(Landroid/content/Context;)Z

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    iget-object v2, v0, LC1/X1;->d:Ljava/util/List;

    .line 543
    .line 544
    sget-object v4, LC1/X0;->a:Li1/l;

    .line 545
    .line 546
    const-string v4, "draft"

    .line 547
    .line 548
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    const-string v5, "pluginName"

    .line 552
    .line 553
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    if-nez v1, :cond_6

    .line 557
    .line 558
    goto :goto_8

    .line 559
    :cond_6
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    new-instance v1, Ljava/util/ArrayList;

    .line 566
    .line 567
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 568
    .line 569
    .line 570
    move-result v4

    .line 571
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 572
    .line 573
    .line 574
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 579
    .line 580
    .line 581
    move-result v4

    .line 582
    if-eqz v4, :cond_8

    .line 583
    .line 584
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v4

    .line 588
    move-object v7, v4

    .line 589
    check-cast v7, Lcom/minhub/gamehub/data/RpgMakerPluginConfig;

    .line 590
    .line 591
    invoke-virtual {v7}, Lcom/minhub/gamehub/data/RpgMakerPluginConfig;->getName()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v4

    .line 595
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result v4

    .line 599
    if-nez v4, :cond_7

    .line 600
    .line 601
    const/16 v16, 0x1

    .line 602
    .line 603
    goto :goto_7

    .line 604
    :cond_7
    invoke-virtual {v7}, Lcom/minhub/gamehub/data/RpgMakerPluginConfig;->getStatus()Z

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    const/16 v16, 0x1

    .line 609
    .line 610
    xor-int/lit8 v9, v4, 0x1

    .line 611
    .line 612
    const/16 v13, 0x1d

    .line 613
    .line 614
    const/4 v14, 0x0

    .line 615
    const/4 v8, 0x0

    .line 616
    const/4 v10, 0x0

    .line 617
    const/4 v11, 0x0

    .line 618
    const/4 v12, 0x0

    .line 619
    invoke-static/range {v7 .. v14}, Lcom/minhub/gamehub/data/RpgMakerPluginConfig;->copy$default(Lcom/minhub/gamehub/data/RpgMakerPluginConfig;Ljava/lang/String;ZLjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;ILjava/lang/Object;)Lcom/minhub/gamehub/data/RpgMakerPluginConfig;

    .line 620
    .line 621
    .line 622
    move-result-object v7

    .line 623
    :goto_7
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    goto :goto_6

    .line 627
    :cond_8
    move-object v2, v1

    .line 628
    :goto_8
    const/16 v1, 0x17

    .line 629
    .line 630
    invoke-static {v0, v2, v3, v1}, LC1/X1;->a(LC1/X1;Ljava/util/List;Ljava/lang/String;I)LC1/X1;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    return-object v0

    .line 635
    :pswitch_19
    check-cast v7, LA1/Z;

    .line 636
    .line 637
    move-object v3, v6

    .line 638
    check-cast v3, LA1/L0;

    .line 639
    .line 640
    move-object v8, v1

    .line 641
    check-cast v8, LA1/a0;

    .line 642
    .line 643
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    const-wide/16 v4, 0x0

    .line 647
    .line 648
    const/16 v6, 0x7df

    .line 649
    .line 650
    const/4 v2, 0x0

    .line 651
    move-object v1, v7

    .line 652
    invoke-static/range {v1 .. v6}, LA1/Z;->a(LA1/Z;ILA1/L0;JI)LA1/Z;

    .line 653
    .line 654
    .line 655
    move-result-object v11

    .line 656
    const/4 v13, 0x0

    .line 657
    const/16 v14, 0x3b

    .line 658
    .line 659
    const-wide/16 v9, 0x0

    .line 660
    .line 661
    const/4 v12, 0x0

    .line 662
    invoke-static/range {v8 .. v14}, LA1/a0;->a(LA1/a0;JLA1/Z;LA1/o0;LA1/w0;I)LA1/a0;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    return-object v0

    .line 667
    :pswitch_1a
    check-cast v7, Ljava/lang/String;

    .line 668
    .line 669
    check-cast v6, Ljava/lang/String;

    .line 670
    .line 671
    move-object v8, v1

    .line 672
    check-cast v8, LA1/a0;

    .line 673
    .line 674
    const-string v0, "snap"

    .line 675
    .line 676
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    iget-object v0, v8, LA1/a0;->c:LA1/Z;

    .line 680
    .line 681
    if-eqz v0, :cond_9

    .line 682
    .line 683
    iget-object v3, v0, LA1/Z;->a:Ljava/lang/String;

    .line 684
    .line 685
    :cond_9
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move-result v1

    .line 689
    if-eqz v1, :cond_a

    .line 690
    .line 691
    iget-object v1, v0, LA1/Z;->i:Ljava/lang/String;

    .line 692
    .line 693
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    if-eqz v1, :cond_a

    .line 698
    .line 699
    iget-object v0, v0, LA1/Z;->f:LA1/L0;

    .line 700
    .line 701
    sget-object v1, LA1/L0;->b:LA1/L0;

    .line 702
    .line 703
    if-ne v0, v1, :cond_a

    .line 704
    .line 705
    const/4 v13, 0x0

    .line 706
    const/16 v14, 0x3b

    .line 707
    .line 708
    const-wide/16 v9, 0x0

    .line 709
    .line 710
    const/4 v11, 0x0

    .line 711
    const/4 v12, 0x0

    .line 712
    invoke-static/range {v8 .. v14}, LA1/a0;->a(LA1/a0;JLA1/Z;LA1/o0;LA1/w0;I)LA1/a0;

    .line 713
    .line 714
    .line 715
    move-result-object v8

    .line 716
    :cond_a
    return-object v8

    .line 717
    :pswitch_1b
    move-object v3, v7

    .line 718
    check-cast v3, LA1/Z;

    .line 719
    .line 720
    check-cast v6, LA1/o0;

    .line 721
    .line 722
    move-object v0, v1

    .line 723
    check-cast v0, LA1/a0;

    .line 724
    .line 725
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    const/4 v5, 0x0

    .line 729
    move-object v4, v6

    .line 730
    const/16 v6, 0x33

    .line 731
    .line 732
    const-wide/16 v1, 0x0

    .line 733
    .line 734
    invoke-static/range {v0 .. v6}, LA1/a0;->a(LA1/a0;JLA1/Z;LA1/o0;LA1/w0;I)LA1/a0;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    return-object v0

    .line 739
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
