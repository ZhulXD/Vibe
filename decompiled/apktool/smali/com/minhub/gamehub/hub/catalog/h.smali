.class public final synthetic Lcom/minhub/gamehub/hub/catalog/h;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/minhub/gamehub/hub/catalog/h;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/minhub/gamehub/hub/catalog/h;->b:I

    .line 4
    .line 5
    const-string v2, "false"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "\""

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const-string v6, "it"

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v7, p1

    .line 17
    .line 18
    check-cast v7, Lx1/a;

    .line 19
    .line 20
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    const/16 v17, 0x77f

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    const/4 v12, 0x0

    .line 32
    const-string v13, "RECT"

    .line 33
    .line 34
    const/4 v14, 0x0

    .line 35
    const/4 v15, 0x0

    .line 36
    invoke-static/range {v7 .. v17}, Lx1/a;->a(Lx1/a;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZI)Lx1/a;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    return-object v1

    .line 41
    :pswitch_0
    move-object/from16 v2, p1

    .line 42
    .line 43
    check-cast v2, Lx1/a;

    .line 44
    .line 45
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v11, 0x0

    .line 49
    const/16 v12, 0x77f

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    const-string v8, "ROUNDED"

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v10, 0x0

    .line 60
    invoke-static/range {v2 .. v12}, Lx1/a;->a(Lx1/a;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZI)Lx1/a;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    return-object v1

    .line 65
    :pswitch_1
    move-object/from16 v1, p1

    .line 66
    .line 67
    check-cast v1, Ljava/io/File;

    .line 68
    .line 69
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    return-object v1

    .line 81
    :pswitch_2
    move-object/from16 v1, p1

    .line 82
    .line 83
    check-cast v1, Ljava/lang/Byte;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    .line 86
    .line 87
    .line 88
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v2, "%02x"

    .line 97
    .line 98
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v2, "format(...)"

    .line 103
    .line 104
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-object v1

    .line 108
    :pswitch_3
    move-object/from16 v1, p1

    .line 109
    .line 110
    check-cast v1, Ljava/io/File;

    .line 111
    .line 112
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_0

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const-string v4, "getName(...)"

    .line 126
    .line 127
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v6, "."

    .line 131
    .line 132
    invoke-static {v2, v6}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_0

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v4, ".minhub.bak"

    .line 146
    .line 147
    invoke-static {v2, v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_0

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 154
    .line 155
    .line 156
    move-result-wide v6

    .line 157
    const-wide/16 v8, 0x1

    .line 158
    .line 159
    cmp-long v2, v8, v6

    .line 160
    .line 161
    if-gtz v2, :cond_0

    .line 162
    .line 163
    const-wide/32 v8, 0x800001

    .line 164
    .line 165
    .line 166
    cmp-long v2, v6, v8

    .line 167
    .line 168
    if-gez v2, :cond_0

    .line 169
    .line 170
    sget-object v2, Ly1/b1;->c:Ljava/util/Set;

    .line 171
    .line 172
    invoke-static {v1}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 177
    .line 178
    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    const-string v4, "toLowerCase(...)"

    .line 183
    .line 184
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-nez v1, :cond_0

    .line 192
    .line 193
    move v3, v5

    .line 194
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    return-object v1

    .line 199
    :pswitch_4
    move-object/from16 v2, p1

    .line 200
    .line 201
    check-cast v2, Lx1/a;

    .line 202
    .line 203
    sget v1, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 204
    .line 205
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const/4 v11, 0x0

    .line 209
    const/16 v12, 0x77f

    .line 210
    .line 211
    const/4 v3, 0x0

    .line 212
    const/4 v4, 0x0

    .line 213
    const/4 v5, 0x0

    .line 214
    const/4 v6, 0x0

    .line 215
    const/4 v7, 0x0

    .line 216
    const-string v8, "ROUNDED"

    .line 217
    .line 218
    const/4 v9, 0x0

    .line 219
    const/4 v10, 0x0

    .line 220
    invoke-static/range {v2 .. v12}, Lx1/a;->a(Lx1/a;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZI)Lx1/a;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    return-object v1

    .line 225
    :pswitch_5
    move-object/from16 v2, p1

    .line 226
    .line 227
    check-cast v2, Lx1/a;

    .line 228
    .line 229
    sget v1, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 230
    .line 231
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const/4 v11, 0x0

    .line 235
    const/16 v12, 0x77f

    .line 236
    .line 237
    const/4 v3, 0x0

    .line 238
    const/4 v4, 0x0

    .line 239
    const/4 v5, 0x0

    .line 240
    const/4 v6, 0x0

    .line 241
    const/4 v7, 0x0

    .line 242
    const-string v8, "CIRCLE"

    .line 243
    .line 244
    const/4 v9, 0x0

    .line 245
    const/4 v10, 0x0

    .line 246
    invoke-static/range {v2 .. v12}, Lx1/a;->a(Lx1/a;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZI)Lx1/a;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    return-object v1

    .line 251
    :pswitch_6
    move-object/from16 v2, p1

    .line 252
    .line 253
    check-cast v2, Lx1/a;

    .line 254
    .line 255
    sget v1, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 256
    .line 257
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    const/4 v11, 0x0

    .line 261
    const/16 v12, 0x77f

    .line 262
    .line 263
    const/4 v3, 0x0

    .line 264
    const/4 v4, 0x0

    .line 265
    const/4 v5, 0x0

    .line 266
    const/4 v6, 0x0

    .line 267
    const/4 v7, 0x0

    .line 268
    const-string v8, "RECT"

    .line 269
    .line 270
    const/4 v9, 0x0

    .line 271
    const/4 v10, 0x0

    .line 272
    invoke-static/range {v2 .. v12}, Lx1/a;->a(Lx1/a;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZI)Lx1/a;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    return-object v1

    .line 277
    :pswitch_7
    move-object/from16 v1, p1

    .line 278
    .line 279
    check-cast v1, Ljava/lang/String;

    .line 280
    .line 281
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v1}, Ly1/L1;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-static {v4, v1, v4}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    return-object v1

    .line 293
    :pswitch_8
    move-object/from16 v1, p1

    .line 294
    .line 295
    check-cast v1, Ljava/lang/String;

    .line 296
    .line 297
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-static {v1}, Ly1/L1;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-static {v4, v1, v4}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    return-object v1

    .line 309
    :pswitch_9
    move-object/from16 v1, p1

    .line 310
    .line 311
    check-cast v1, Ljava/util/Map$Entry;

    .line 312
    .line 313
    const-string v2, "<destruct>"

    .line 314
    .line 315
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    check-cast v2, Ljava/lang/String;

    .line 323
    .line 324
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    move-object v5, v1

    .line 329
    check-cast v5, Ljava/util/List;

    .line 330
    .line 331
    new-instance v9, Lcom/minhub/gamehub/hub/catalog/h;

    .line 332
    .line 333
    const/16 v1, 0x15

    .line 334
    .line 335
    invoke-direct {v9, v1}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 336
    .line 337
    .line 338
    const/16 v10, 0x1e

    .line 339
    .line 340
    const-string v6, ","

    .line 341
    .line 342
    const/4 v7, 0x0

    .line 343
    const/4 v8, 0x0

    .line 344
    invoke-static/range {v5 .. v10}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-static {v2}, Ly1/L1;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    const-string v3, "\":["

    .line 353
    .line 354
    const-string v5, "]"

    .line 355
    .line 356
    invoke-static {v4, v2, v3, v1, v5}, LE/b;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    return-object v1

    .line 361
    :pswitch_a
    move-object/from16 v1, p1

    .line 362
    .line 363
    check-cast v1, Ljava/io/File;

    .line 364
    .line 365
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-eqz v2, :cond_1

    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    const-string v2, "_minhub_boot.html"

    .line 379
    .line 380
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-eqz v1, :cond_1

    .line 385
    .line 386
    move v3, v5

    .line 387
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    return-object v1

    .line 392
    :pswitch_b
    move-object/from16 v1, p1

    .line 393
    .line 394
    check-cast v1, Lkotlin/text/MatchResult;

    .line 395
    .line 396
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    return-object v1

    .line 423
    :pswitch_c
    move-object/from16 v1, p1

    .line 424
    .line 425
    check-cast v1, Lkotlin/text/MatchResult;

    .line 426
    .line 427
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    .line 439
    .line 440
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    return-object v1

    .line 454
    :pswitch_d
    move-object/from16 v1, p1

    .line 455
    .line 456
    check-cast v1, Ljava/io/File;

    .line 457
    .line 458
    invoke-static {v1}, Lcom/bumptech/glide/c;->K(Ljava/io/File;)LS1/b;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    if-eqz v1, :cond_2

    .line 463
    .line 464
    iget-object v1, v1, LS1/b;->a:Ljava/io/File;

    .line 465
    .line 466
    if-eqz v1, :cond_2

    .line 467
    .line 468
    return-object v1

    .line 469
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 470
    .line 471
    const-string v2, "No local entry"

    .line 472
    .line 473
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    throw v1

    .line 477
    :pswitch_e
    if-nez p1, :cond_3

    .line 478
    .line 479
    sget v1, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 480
    .line 481
    const-string v1, "<unused var>"

    .line 482
    .line 483
    const/4 v2, 0x0

    .line 484
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    return-object v2

    .line 488
    :cond_3
    new-instance v1, Ljava/lang/ClassCastException;

    .line 489
    .line 490
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 491
    .line 492
    .line 493
    throw v1

    .line 494
    :pswitch_f
    move-object/from16 v1, p1

    .line 495
    .line 496
    check-cast v1, Lcom/minhub/gamehub/data/Save;

    .line 497
    .line 498
    sget v2, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 499
    .line 500
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 504
    .line 505
    return-object v1

    .line 506
    :pswitch_10
    move-object/from16 v1, p1

    .line 507
    .line 508
    check-cast v1, Lcom/minhub/gamehub/data/Save;

    .line 509
    .line 510
    sget v2, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 511
    .line 512
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 516
    .line 517
    return-object v1

    .line 518
    :pswitch_11
    move-object/from16 v1, p1

    .line 519
    .line 520
    check-cast v1, Ljava/lang/Character;

    .line 521
    .line 522
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    invoke-static {v1}, Lkotlin/time/InstantKt;->d(C)Z

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    return-object v1

    .line 535
    :pswitch_12
    move-object/from16 v1, p1

    .line 536
    .line 537
    check-cast v1, Ljava/lang/Character;

    .line 538
    .line 539
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    invoke-static {v1}, Lkotlin/time/InstantKt;->f(C)Z

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    return-object v1

    .line 552
    :pswitch_13
    move-object/from16 v1, p1

    .line 553
    .line 554
    check-cast v1, Ljava/lang/Character;

    .line 555
    .line 556
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    invoke-static {v1}, Lkotlin/time/InstantKt;->a(C)Z

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    return-object v1

    .line 569
    :pswitch_14
    move-object/from16 v1, p1

    .line 570
    .line 571
    check-cast v1, Ljava/lang/Character;

    .line 572
    .line 573
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    invoke-static {v1}, Lkotlin/time/InstantKt;->c(C)Z

    .line 578
    .line 579
    .line 580
    move-result v1

    .line 581
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    return-object v1

    .line 586
    :pswitch_15
    move-object/from16 v1, p1

    .line 587
    .line 588
    check-cast v1, Ljava/lang/Character;

    .line 589
    .line 590
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    invoke-static {v1}, Lkotlin/time/InstantKt;->e(C)Z

    .line 595
    .line 596
    .line 597
    move-result v1

    .line 598
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    return-object v1

    .line 603
    :pswitch_16
    move-object/from16 v1, p1

    .line 604
    .line 605
    check-cast v1, Ljava/lang/Character;

    .line 606
    .line 607
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    .line 608
    .line 609
    .line 610
    move-result v1

    .line 611
    invoke-static {v1}, Lkotlin/time/InstantKt;->b(C)Z

    .line 612
    .line 613
    .line 614
    move-result v1

    .line 615
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    return-object v1

    .line 620
    :pswitch_17
    move-object/from16 v1, p1

    .line 621
    .line 622
    check-cast v1, Ljava/lang/Integer;

    .line 623
    .line 624
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    invoke-static {v1}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterExtractKt;->c(I)Lkotlin/Unit;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    return-object v1

    .line 633
    :pswitch_18
    move-object/from16 v1, p1

    .line 634
    .line 635
    check-cast v1, Ljava/lang/Integer;

    .line 636
    .line 637
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    invoke-static {v1}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterExtractKt;->a(I)Lkotlin/Unit;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    return-object v1

    .line 646
    :pswitch_19
    move-object/from16 v1, p1

    .line 647
    .line 648
    check-cast v1, Ljava/lang/Integer;

    .line 649
    .line 650
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 651
    .line 652
    .line 653
    move-result v1

    .line 654
    invoke-static {v1}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterExtractKt;->b(I)Lkotlin/Unit;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    return-object v1

    .line 659
    :pswitch_1a
    move-object/from16 v1, p1

    .line 660
    .line 661
    check-cast v1, Ljava/lang/Integer;

    .line 662
    .line 663
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    invoke-static {v1}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->a(I)Lkotlin/Unit;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    return-object v1

    .line 672
    :pswitch_1b
    move-object/from16 v1, p1

    .line 673
    .line 674
    check-cast v1, Ljava/lang/String;

    .line 675
    .line 676
    invoke-static {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogRepository;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    return-object v1

    .line 681
    :pswitch_1c
    move-object/from16 v1, p1

    .line 682
    .line 683
    check-cast v1, Lkotlin/text/MatchResult;

    .line 684
    .line 685
    invoke-static {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->a(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    return-object v1

    .line 690
    nop

    .line 691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
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
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method
