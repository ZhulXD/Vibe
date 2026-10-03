.class public final LN1/n;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:Ljava/lang/String;

.field public final l:LN1/o;

.field public final m:LN1/l;

.field public final n:Ljava/lang/String;

.field public final o:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJJLjava/lang/String;LN1/o;LN1/l;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sha256"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LN1/n;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, LN1/n;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, LN1/n;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, LN1/n;->d:Ljava/lang/String;

    .line 6
    iput-wide p5, p0, LN1/n;->e:J

    .line 7
    iput-wide p7, p0, LN1/n;->f:J

    .line 8
    iput-wide p9, p0, LN1/n;->g:J

    .line 9
    iput-wide p11, p0, LN1/n;->h:J

    .line 10
    iput-wide p13, p0, LN1/n;->i:J

    move-wide/from16 p1, p15

    .line 11
    iput-wide p1, p0, LN1/n;->j:J

    move-object/from16 p1, p17

    .line 12
    iput-object p1, p0, LN1/n;->k:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 13
    iput-object p1, p0, LN1/n;->l:LN1/o;

    move-object/from16 p1, p19

    .line 14
    iput-object p1, p0, LN1/n;->m:LN1/l;

    move-object/from16 p1, p20

    .line 15
    iput-object p1, p0, LN1/n;->n:Ljava/lang/String;

    move/from16 p1, p21

    .line 16
    iput p1, p0, LN1/n;->o:I

    return-void
.end method


# virtual methods
.method public final a(LN1/p;J)LN1/u;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "policy"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v3, v1, LN1/p;->b:Ljava/lang/String;

    .line 16
    .line 17
    const-string v4, "value"

    .line 18
    .line 19
    iget-object v5, v0, LN1/n;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const-string v6, "error"

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    sget-object v1, LN1/t;->b:LN1/t;

    .line 33
    .line 34
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, LN1/u;

    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v3, v1}, LN1/u;-><init>(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_8

    .line 47
    .line 48
    :cond_0
    :try_start_0
    new-instance v4, Ljava/net/URI;

    .line 49
    .line 50
    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    .line 52
    .line 53
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URI;->isAbsolute()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_13

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const-string v7, "https"

    .line 64
    .line 65
    const/4 v8, 0x1

    .line 66
    invoke-static {v5, v7, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_1

    .line 71
    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :cond_1
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-eqz v5, :cond_2

    .line 79
    .line 80
    sget-object v1, LN1/t;->e:LN1/t;

    .line 81
    .line 82
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v3, LN1/u;

    .line 86
    .line 87
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v3, v1}, LN1/u;-><init>(Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_8

    .line 95
    .line 96
    :cond_2
    invoke-virtual {v4}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    if-eqz v5, :cond_3

    .line 101
    .line 102
    sget-object v1, LN1/t;->f:LN1/t;

    .line 103
    .line 104
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance v3, LN1/u;

    .line 108
    .line 109
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-direct {v3, v1}, LN1/u;-><init>(Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_8

    .line 117
    .line 118
    :cond_3
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    if-eqz v5, :cond_12

    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    iget-object v1, v1, LN1/p;->a:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v5, v1, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_12

    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    const/4 v5, -0x1

    .line 141
    if-eq v1, v5, :cond_4

    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    const/16 v5, 0x1bb

    .line 148
    .line 149
    if-eq v1, v5, :cond_4

    .line 150
    .line 151
    goto/16 :goto_6

    .line 152
    .line 153
    :cond_4
    invoke-virtual {v4}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-nez v1, :cond_5

    .line 158
    .line 159
    sget-object v1, LN1/t;->h:LN1/t;

    .line 160
    .line 161
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v3, LN1/u;

    .line 165
    .line 166
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-direct {v3, v1}, LN1/u;-><init>(Ljava/util/List;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_8

    .line 174
    .line 175
    :cond_5
    const/4 v5, 0x0

    .line 176
    move v7, v5

    .line 177
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    const/16 v10, 0x5c

    .line 182
    .line 183
    if-ge v7, v9, :cond_8

    .line 184
    .line 185
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    invoke-static {v9}, Ljava/lang/Character;->isISOControl(C)Z

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    if-nez v11, :cond_7

    .line 194
    .line 195
    if-ne v9, v10, :cond_6

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_7
    :goto_1
    sget-object v1, LN1/t;->h:LN1/t;

    .line 202
    .line 203
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-instance v3, LN1/u;

    .line 207
    .line 208
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-direct {v3, v1}, LN1/u;-><init>(Ljava/util/List;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_8

    .line 216
    .line 217
    :cond_8
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    move v4, v5

    .line 225
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    if-ge v4, v7, :cond_b

    .line 230
    .line 231
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    invoke-static {v7}, Ljava/lang/Character;->isISOControl(C)Z

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    if-nez v9, :cond_a

    .line 240
    .line 241
    if-ne v7, v10, :cond_9

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_a
    :goto_3
    sget-object v1, LN1/t;->h:LN1/t;

    .line 248
    .line 249
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    new-instance v3, LN1/u;

    .line 253
    .line 254
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-direct {v3, v1}, LN1/u;-><init>(Ljava/util/List;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_8

    .line 262
    .line 263
    :cond_b
    new-array v4, v8, [C

    .line 264
    .line 265
    const/16 v7, 0x2f

    .line 266
    .line 267
    aput-char v7, v4, v5

    .line 268
    .line 269
    invoke-static {v1, v4}, Lkotlin/text/StringsKt;->I(Ljava/lang/CharSequence;[C)Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    if-eqz v8, :cond_c

    .line 274
    .line 275
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_c

    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_c
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    if-eqz v4, :cond_f

    .line 291
    .line 292
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    check-cast v4, Ljava/lang/String;

    .line 297
    .line 298
    const-string v5, "."

    .line 299
    .line 300
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    if-nez v5, :cond_e

    .line 305
    .line 306
    const-string v5, ".."

    .line 307
    .line 308
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-eqz v4, :cond_d

    .line 313
    .line 314
    :cond_e
    sget-object v1, LN1/t;->h:LN1/t;

    .line 315
    .line 316
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    new-instance v3, LN1/u;

    .line 320
    .line 321
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-direct {v3, v1}, LN1/u;-><init>(Ljava/util/List;)V

    .line 326
    .line 327
    .line 328
    goto/16 :goto_8

    .line 329
    .line 330
    :cond_f
    :goto_4
    const-string v9, "/"

    .line 331
    .line 332
    const/4 v12, 0x0

    .line 333
    const/16 v13, 0x3e

    .line 334
    .line 335
    const/4 v10, 0x0

    .line 336
    const/4 v11, 0x0

    .line 337
    invoke-static/range {v8 .. v13}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-static {v3, v7}, Lkotlin/text/StringsKt;->s(Ljava/lang/CharSequence;C)Z

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    if-eqz v4, :cond_10

    .line 346
    .line 347
    goto :goto_5

    .line 348
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v3, "/"

    .line 357
    .line 358
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    :goto_5
    invoke-static {v1, v3}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-nez v1, :cond_11

    .line 370
    .line 371
    sget-object v1, LN1/t;->h:LN1/t;

    .line 372
    .line 373
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    new-instance v3, LN1/u;

    .line 377
    .line 378
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-direct {v3, v1}, LN1/u;-><init>(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 383
    .line 384
    .line 385
    goto :goto_8

    .line 386
    :cond_11
    new-instance v3, LN1/u;

    .line 387
    .line 388
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-direct {v3, v1}, LN1/u;-><init>(Ljava/util/List;)V

    .line 393
    .line 394
    .line 395
    goto :goto_8

    .line 396
    :cond_12
    :goto_6
    :try_start_2
    sget-object v1, LN1/t;->g:LN1/t;

    .line 397
    .line 398
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    new-instance v3, LN1/u;

    .line 402
    .line 403
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-direct {v3, v1}, LN1/u;-><init>(Ljava/util/List;)V

    .line 408
    .line 409
    .line 410
    goto :goto_8

    .line 411
    :cond_13
    :goto_7
    sget-object v1, LN1/t;->d:LN1/t;

    .line 412
    .line 413
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    new-instance v3, LN1/u;

    .line 417
    .line 418
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-direct {v3, v1}, LN1/u;-><init>(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 423
    .line 424
    .line 425
    goto :goto_8

    .line 426
    :catch_0
    sget-object v1, LN1/t;->c:LN1/t;

    .line 427
    .line 428
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    new-instance v3, LN1/u;

    .line 432
    .line 433
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-direct {v3, v1}, LN1/u;-><init>(Ljava/util/List;)V

    .line 438
    .line 439
    .line 440
    goto :goto_8

    .line 441
    :catch_1
    sget-object v1, LN1/t;->c:LN1/t;

    .line 442
    .line 443
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    new-instance v3, LN1/u;

    .line 447
    .line 448
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    invoke-direct {v3, v1}, LN1/u;-><init>(Ljava/util/List;)V

    .line 453
    .line 454
    .line 455
    :goto_8
    iget-object v1, v3, LN1/u;->a:Ljava/util/List;

    .line 456
    .line 457
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->c(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 458
    .line 459
    .line 460
    iget-object v1, v0, LN1/n;->b:Ljava/lang/String;

    .line 461
    .line 462
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    iget-object v4, v0, LN1/n;->c:Ljava/lang/String;

    .line 467
    .line 468
    if-nez v3, :cond_14

    .line 469
    .line 470
    iget-object v3, v0, LN1/n;->d:Ljava/lang/String;

    .line 471
    .line 472
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    if-nez v3, :cond_14

    .line 477
    .line 478
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 479
    .line 480
    .line 481
    move-result v3

    .line 482
    if-eqz v3, :cond_15

    .line 483
    .line 484
    :cond_14
    sget-object v3, LN1/t;->i:LN1/t;

    .line 485
    .line 486
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    :cond_15
    new-instance v3, Lkotlin/text/Regex;

    .line 490
    .line 491
    const-string v5, "[0-9a-f]{64}"

    .line 492
    .line 493
    invoke-direct {v3, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v3, v4}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 497
    .line 498
    .line 499
    move-result v3

    .line 500
    if-nez v3, :cond_16

    .line 501
    .line 502
    sget-object v3, LN1/t;->j:LN1/t;

    .line 503
    .line 504
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 508
    .line 509
    .line 510
    move-result v3

    .line 511
    const/16 v4, 0x7f

    .line 512
    .line 513
    const-string v5, "}"

    .line 514
    .line 515
    const-string v6, "[A-Za-z0-9][A-Za-z0-9.+-]{0,"

    .line 516
    .line 517
    const/16 v7, 0x80

    .line 518
    .line 519
    if-gt v3, v7, :cond_17

    .line 520
    .line 521
    new-instance v3, Lkotlin/text/Regex;

    .line 522
    .line 523
    invoke-static {v4, v6, v5}, LE/b;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v7

    .line 527
    invoke-direct {v3, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v3, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    if-nez v1, :cond_18

    .line 535
    .line 536
    :cond_17
    sget-object v1, LN1/t;->o:LN1/t;

    .line 537
    .line 538
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    :cond_18
    iget-wide v7, v0, LN1/n;->e:J

    .line 542
    .line 543
    const-wide/16 v9, 0x0

    .line 544
    .line 545
    cmp-long v1, v7, v9

    .line 546
    .line 547
    if-ltz v1, :cond_19

    .line 548
    .line 549
    const-wide v11, 0x7fffffffffffffffL

    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    cmp-long v1, v7, v11

    .line 555
    .line 556
    if-lez v1, :cond_1a

    .line 557
    .line 558
    :cond_19
    sget-object v1, LN1/t;->p:LN1/t;

    .line 559
    .line 560
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    :cond_1a
    iget-wide v7, v0, LN1/n;->f:J

    .line 564
    .line 565
    cmp-long v1, v7, v9

    .line 566
    .line 567
    iget-wide v11, v0, LN1/n;->g:J

    .line 568
    .line 569
    const-wide v13, 0x3bb2cc3d800L

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    if-ltz v1, :cond_1b

    .line 575
    .line 576
    cmp-long v1, v11, v9

    .line 577
    .line 578
    if-ltz v1, :cond_1b

    .line 579
    .line 580
    cmp-long v1, v7, v13

    .line 581
    .line 582
    if-gtz v1, :cond_1b

    .line 583
    .line 584
    cmp-long v1, v11, v13

    .line 585
    .line 586
    if-lez v1, :cond_1c

    .line 587
    .line 588
    :cond_1b
    sget-object v1, LN1/t;->q:LN1/t;

    .line 589
    .line 590
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    :cond_1c
    cmp-long v1, v11, v7

    .line 594
    .line 595
    if-gtz v1, :cond_1d

    .line 596
    .line 597
    sget-object v1, LN1/t;->r:LN1/t;

    .line 598
    .line 599
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    :cond_1d
    sub-long v15, v11, v7

    .line 603
    .line 604
    const-wide v17, 0x1cf7c5800L

    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    cmp-long v1, v15, v17

    .line 610
    .line 611
    if-lez v1, :cond_1e

    .line 612
    .line 613
    sget-object v1, LN1/t;->r:LN1/t;

    .line 614
    .line 615
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    :cond_1e
    cmp-long v1, p2, v9

    .line 619
    .line 620
    if-ltz v1, :cond_1f

    .line 621
    .line 622
    cmp-long v1, p2, v13

    .line 623
    .line 624
    if-lez v1, :cond_20

    .line 625
    .line 626
    :cond_1f
    sget-object v1, LN1/t;->q:LN1/t;

    .line 627
    .line 628
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    :cond_20
    cmp-long v1, p2, v7

    .line 632
    .line 633
    if-gez v1, :cond_21

    .line 634
    .line 635
    sget-object v1, LN1/t;->t:LN1/t;

    .line 636
    .line 637
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    :cond_21
    cmp-long v1, p2, v11

    .line 641
    .line 642
    if-ltz v1, :cond_22

    .line 643
    .line 644
    sget-object v1, LN1/t;->s:LN1/t;

    .line 645
    .line 646
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    :cond_22
    iget-wide v7, v0, LN1/n;->h:J

    .line 650
    .line 651
    cmp-long v1, v7, v9

    .line 652
    .line 653
    iget-wide v11, v0, LN1/n;->j:J

    .line 654
    .line 655
    iget-wide v13, v0, LN1/n;->i:J

    .line 656
    .line 657
    if-ltz v1, :cond_23

    .line 658
    .line 659
    cmp-long v1, v13, v9

    .line 660
    .line 661
    if-ltz v1, :cond_23

    .line 662
    .line 663
    cmp-long v1, v11, v9

    .line 664
    .line 665
    if-gez v1, :cond_24

    .line 666
    .line 667
    :cond_23
    sget-object v1, LN1/t;->k:LN1/t;

    .line 668
    .line 669
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    :cond_24
    const-wide/32 v9, 0x40000

    .line 673
    .line 674
    .line 675
    cmp-long v1, v7, v9

    .line 676
    .line 677
    if-lez v1, :cond_25

    .line 678
    .line 679
    sget-object v1, LN1/t;->l:LN1/t;

    .line 680
    .line 681
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    :cond_25
    const-wide/32 v7, 0x2000000

    .line 685
    .line 686
    .line 687
    cmp-long v1, v13, v7

    .line 688
    .line 689
    if-lez v1, :cond_26

    .line 690
    .line 691
    sget-object v1, LN1/t;->m:LN1/t;

    .line 692
    .line 693
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    :cond_26
    cmp-long v1, v11, v7

    .line 697
    .line 698
    if-lez v1, :cond_27

    .line 699
    .line 700
    sget-object v1, LN1/t;->n:LN1/t;

    .line 701
    .line 702
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    :cond_27
    iget-object v1, v0, LN1/n;->m:LN1/l;

    .line 706
    .line 707
    if-eqz v1, :cond_28

    .line 708
    .line 709
    iget-object v1, v1, LN1/l;->b:Ljava/lang/String;

    .line 710
    .line 711
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 712
    .line 713
    .line 714
    move-result v1

    .line 715
    if-eqz v1, :cond_28

    .line 716
    .line 717
    sget-object v1, LN1/t;->u:LN1/t;

    .line 718
    .line 719
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    :cond_28
    new-instance v1, Lkotlin/text/Regex;

    .line 723
    .line 724
    invoke-static {v4, v6, v5}, LE/b;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v3

    .line 728
    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    iget-object v3, v0, LN1/n;->k:Ljava/lang/String;

    .line 732
    .line 733
    if-eqz v3, :cond_29

    .line 734
    .line 735
    invoke-virtual {v1, v3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 736
    .line 737
    .line 738
    move-result v3

    .line 739
    if-nez v3, :cond_29

    .line 740
    .line 741
    sget-object v3, LN1/t;->o:LN1/t;

    .line 742
    .line 743
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    :cond_29
    iget-object v3, v0, LN1/n;->l:LN1/o;

    .line 747
    .line 748
    if-eqz v3, :cond_2b

    .line 749
    .line 750
    iget-object v4, v3, LN1/o;->a:Ljava/lang/String;

    .line 751
    .line 752
    invoke-virtual {v1, v4}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    if-eqz v1, :cond_2a

    .line 757
    .line 758
    iget-object v1, v3, LN1/o;->b:Ljava/lang/String;

    .line 759
    .line 760
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 761
    .line 762
    .line 763
    move-result v1

    .line 764
    if-eqz v1, :cond_2b

    .line 765
    .line 766
    :cond_2a
    sget-object v1, LN1/t;->u:LN1/t;

    .line 767
    .line 768
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    :cond_2b
    new-instance v1, LN1/u;

    .line 772
    .line 773
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 774
    .line 775
    .line 776
    move-result-object v2

    .line 777
    invoke-direct {v1, v2}, LN1/u;-><init>(Ljava/util/List;)V

    .line 778
    .line 779
    .line 780
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, LN1/n;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, LN1/n;

    .line 12
    .line 13
    iget-object v1, p0, LN1/n;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, LN1/n;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, LN1/n;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, LN1/n;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, LN1/n;->c:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, LN1/n;->c:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, LN1/n;->d:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, LN1/n;->d:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-wide v3, p0, LN1/n;->e:J

    .line 58
    .line 59
    iget-wide v5, p1, LN1/n;->e:J

    .line 60
    .line 61
    cmp-long v1, v3, v5

    .line 62
    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    return v2

    .line 66
    :cond_6
    iget-wide v3, p0, LN1/n;->f:J

    .line 67
    .line 68
    iget-wide v5, p1, LN1/n;->f:J

    .line 69
    .line 70
    cmp-long v1, v3, v5

    .line 71
    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-wide v3, p0, LN1/n;->g:J

    .line 76
    .line 77
    iget-wide v5, p1, LN1/n;->g:J

    .line 78
    .line 79
    cmp-long v1, v3, v5

    .line 80
    .line 81
    if-eqz v1, :cond_8

    .line 82
    .line 83
    return v2

    .line 84
    :cond_8
    iget-wide v3, p0, LN1/n;->h:J

    .line 85
    .line 86
    iget-wide v5, p1, LN1/n;->h:J

    .line 87
    .line 88
    cmp-long v1, v3, v5

    .line 89
    .line 90
    if-eqz v1, :cond_9

    .line 91
    .line 92
    return v2

    .line 93
    :cond_9
    iget-wide v3, p0, LN1/n;->i:J

    .line 94
    .line 95
    iget-wide v5, p1, LN1/n;->i:J

    .line 96
    .line 97
    cmp-long v1, v3, v5

    .line 98
    .line 99
    if-eqz v1, :cond_a

    .line 100
    .line 101
    return v2

    .line 102
    :cond_a
    iget-wide v3, p0, LN1/n;->j:J

    .line 103
    .line 104
    iget-wide v5, p1, LN1/n;->j:J

    .line 105
    .line 106
    cmp-long v1, v3, v5

    .line 107
    .line 108
    if-eqz v1, :cond_b

    .line 109
    .line 110
    return v2

    .line 111
    :cond_b
    iget-object v1, p0, LN1/n;->k:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v3, p1, LN1/n;->k:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_c

    .line 120
    .line 121
    return v2

    .line 122
    :cond_c
    iget-object v1, p0, LN1/n;->l:LN1/o;

    .line 123
    .line 124
    iget-object v3, p1, LN1/n;->l:LN1/o;

    .line 125
    .line 126
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_d

    .line 131
    .line 132
    return v2

    .line 133
    :cond_d
    iget-object v1, p0, LN1/n;->m:LN1/l;

    .line 134
    .line 135
    iget-object v3, p1, LN1/n;->m:LN1/l;

    .line 136
    .line 137
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_e

    .line 142
    .line 143
    return v2

    .line 144
    :cond_e
    iget-object v1, p0, LN1/n;->n:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v3, p1, LN1/n;->n:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_f

    .line 153
    .line 154
    return v2

    .line 155
    :cond_f
    iget v1, p0, LN1/n;->o:I

    .line 156
    .line 157
    iget p1, p1, LN1/n;->o:I

    .line 158
    .line 159
    if-eq v1, p1, :cond_10

    .line 160
    .line 161
    return v2

    .line 162
    :cond_10
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, LN1/n;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, LN1/n;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, LE/b;->d(Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, LN1/n;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, LE/b;->d(Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, LN1/n;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, LE/b;->d(Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-wide v2, p0, LN1/n;->e:J

    .line 29
    .line 30
    invoke-static {v2, v3, v0, v1}, LE/b;->c(JII)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-wide v2, p0, LN1/n;->f:J

    .line 35
    .line 36
    invoke-static {v2, v3, v0, v1}, LE/b;->c(JII)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-wide v2, p0, LN1/n;->g:J

    .line 41
    .line 42
    invoke-static {v2, v3, v0, v1}, LE/b;->c(JII)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-wide v2, p0, LN1/n;->h:J

    .line 47
    .line 48
    invoke-static {v2, v3, v0, v1}, LE/b;->c(JII)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-wide v2, p0, LN1/n;->i:J

    .line 53
    .line 54
    invoke-static {v2, v3, v0, v1}, LE/b;->c(JII)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-wide v2, p0, LN1/n;->j:J

    .line 59
    .line 60
    invoke-static {v2, v3, v0, v1}, LE/b;->c(JII)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v2, 0x0

    .line 65
    iget-object v3, p0, LN1/n;->k:Ljava/lang/String;

    .line 66
    .line 67
    if-nez v3, :cond_0

    .line 68
    .line 69
    move v3, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    :goto_0
    add-int/2addr v0, v3

    .line 76
    mul-int/2addr v0, v1

    .line 77
    iget-object v3, p0, LN1/n;->l:LN1/o;

    .line 78
    .line 79
    if-nez v3, :cond_1

    .line 80
    .line 81
    move v3, v2

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {v3}, LN1/o;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    :goto_1
    add-int/2addr v0, v3

    .line 88
    mul-int/2addr v0, v1

    .line 89
    iget-object v3, p0, LN1/n;->m:LN1/l;

    .line 90
    .line 91
    if-nez v3, :cond_2

    .line 92
    .line 93
    move v3, v2

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    invoke-virtual {v3}, LN1/l;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    :goto_2
    add-int/2addr v0, v3

    .line 100
    mul-int/2addr v0, v1

    .line 101
    iget-object v3, p0, LN1/n;->n:Ljava/lang/String;

    .line 102
    .line 103
    if-nez v3, :cond_3

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    :goto_3
    add-int/2addr v0, v2

    .line 111
    mul-int/2addr v0, v1

    .line 112
    iget v1, p0, LN1/n;->o:I

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    add-int/2addr v1, v0

    .line 119
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", version="

    .line 2
    .line 3
    const-string v1, ", sha256="

    .line 4
    .line 5
    const-string v2, "OtaManifestV2(url="

    .line 6
    .line 7
    iget-object v3, p0, LN1/n;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, LN1/n;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Lkotlin/collections/unsigned/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, ", signature="

    .line 16
    .line 17
    const-string v2, ", sequence="

    .line 18
    .line 19
    iget-object v3, p0, LN1/n;->c:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, LN1/n;->d:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v3, v1, v4, v2}, Lkotlin/collections/unsigned/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-wide v1, p0, LN1/n;->e:J

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", issuedAt="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v1, p0, LN1/n;->f:J

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", expiresAt="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-wide v1, p0, LN1/n;->g:J

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", manifestBytes="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-wide v1, p0, LN1/n;->h:J

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", bundleBytes="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-wide v1, p0, LN1/n;->i:J

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", plaintextBytes="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-wide v1, p0, LN1/n;->j:J

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, ", revokeVersion="

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, LN1/n;->k:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ", revocation="

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, LN1/n;->l:LN1/o;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ", killSwitch="

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, LN1/n;->m:LN1/l;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, ", rollbackMarker="

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, LN1/n;->n:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v1, ", minAppVersion="

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget v1, p0, LN1/n;->o:I

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v1, ")"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0
.end method
