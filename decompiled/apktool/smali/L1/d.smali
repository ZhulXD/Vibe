.class public final synthetic LL1/d;
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
    iput p1, p0, LL1/d;->b:I

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
    .locals 14

    .line 1
    iget v0, p0, LL1/d;->b:I

    .line 2
    .line 3
    const-string v1, "_"

    .line 4
    .line 5
    const-string v2, "[^A-Za-z0-9_.-]"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-wide/16 v4, 0xff

    .line 9
    .line 10
    const-string v6, "%02x"

    .line 11
    .line 12
    const-string v7, "it"

    .line 13
    .line 14
    const-string v8, "format(...)"

    .line 15
    .line 16
    const/4 v9, 0x1

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast p1, Lkotlin/text/MatchResult;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->b(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->a(I)Lkotlin/Unit;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :pswitch_1
    check-cast p1, Ljava/lang/Byte;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-static {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->d(B)Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :pswitch_2
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->d(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :pswitch_3
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :pswitch_4
    check-cast p1, Ljava/util/Map$Entry;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/minhub/gamehub/hub/auth/AuthHttp;->a(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :pswitch_5
    check-cast p1, Ljava/io/File;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/minhub/gamehub/data/TranslationOverlayInstaller;->a(Ljava/io/File;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    :pswitch_6
    check-cast p1, Ljava/io/File;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/minhub/gamehub/data/SaveRepository;->c(Ljava/io/File;)Ljava/lang/CharSequence;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    :pswitch_7
    check-cast p1, Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/minhub/gamehub/data/RpgMakerSaveStore;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :pswitch_8
    check-cast p1, Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/minhub/gamehub/data/RenpyTagFixer;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :pswitch_9
    check-cast p1, Ljava/io/File;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/minhub/gamehub/data/RenpyTagFixer;->b(Ljava/io/File;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    :pswitch_a
    check-cast p1, Lkotlin/text/MatchResult;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/minhub/gamehub/data/RenpyTagFixer;->d(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-static {p1}, Lcom/minhub/gamehub/data/GameStorage;->b(I)Lkotlin/Unit;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1

    .line 131
    :pswitch_c
    check-cast p1, Ljava/io/File;

    .line 132
    .line 133
    invoke-static {p1}, Lcom/minhub/gamehub/data/EngineDetector;->b(Ljava/io/File;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    return-object p1

    .line 138
    :pswitch_d
    check-cast p1, Ljava/io/File;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/minhub/gamehub/data/EngineDetector;->c(Ljava/io/File;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    return-object p1

    .line 145
    :pswitch_e
    check-cast p1, Ljava/io/File;

    .line 146
    .line 147
    invoke-static {p1}, Lcom/minhub/gamehub/data/EngineDetector;->a(Ljava/io/File;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    :pswitch_f
    check-cast p1, Ljava/util/Map$Entry;

    .line 153
    .line 154
    invoke-static {p1}, Lcom/minhub/gamehub/data/EngineCache;->a(Ljava/util/Map$Entry;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    return-object p1

    .line 163
    :pswitch_10
    check-cast p1, Ljava/lang/Long;

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 166
    .line 167
    .line 168
    move-result-wide v0

    .line 169
    and-long/2addr v0, v4

    .line 170
    long-to-int p1, v0

    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    return-object p1

    .line 176
    :pswitch_11
    check-cast p1, Ljava/lang/Long;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 179
    .line 180
    .line 181
    move-result-wide v0

    .line 182
    const/4 p1, 0x3

    .line 183
    ushr-long/2addr v0, p1

    .line 184
    and-long/2addr v0, v4

    .line 185
    long-to-int p1, v0

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    return-object p1

    .line 191
    :pswitch_12
    check-cast p1, Ljava/lang/Long;

    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    sget-object p1, LT1/l;->a:Ljava/util/List;

    .line 197
    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    return-object p1

    .line 203
    :pswitch_13
    check-cast p1, Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    const-string v2, "getBytes(...)"

    .line 215
    .line 216
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    array-length v1, v1

    .line 220
    const/16 v6, 0xdc

    .line 221
    .line 222
    if-gt v1, v6, :cond_0

    .line 223
    .line 224
    goto/16 :goto_5

    .line 225
    .line 226
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    array-length v1, v0

    .line 234
    const-wide v10, 0x811c9dc5L

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    move v7, v3

    .line 240
    :goto_0
    if-ge v7, v1, :cond_1

    .line 241
    .line 242
    aget-byte v12, v0, v7

    .line 243
    .line 244
    int-to-long v12, v12

    .line 245
    and-long/2addr v12, v4

    .line 246
    xor-long/2addr v10, v12

    .line 247
    const-wide/32 v12, 0x1000193

    .line 248
    .line 249
    .line 250
    mul-long/2addr v10, v12

    .line 251
    const-wide v12, 0xffffffffL

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    and-long/2addr v10, v12

    .line 257
    add-int/lit8 v7, v7, 0x1

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_1
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 261
    .line 262
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 263
    .line 264
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    const-string v4, "%08x"

    .line 277
    .line 278
    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const/16 v1, 0x8

    .line 286
    .line 287
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const/16 v1, 0x2e

    .line 292
    .line 293
    const/4 v4, 0x6

    .line 294
    invoke-static {p1, v1, v3, v4}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;CII)I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    const-string v4, ""

    .line 299
    .line 300
    const-string v5, "substring(...)"

    .line 301
    .line 302
    if-lez v1, :cond_2

    .line 303
    .line 304
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto :goto_1

    .line 312
    :cond_2
    move-object v7, v4

    .line 313
    :goto_1
    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 314
    .line 315
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    array-length v9, v9

    .line 323
    const/16 v10, 0x10

    .line 324
    .line 325
    if-gt v9, v10, :cond_3

    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_3
    move-object v7, v4

    .line 329
    :goto_2
    const-string v9, "~"

    .line 330
    .line 331
    invoke-static {v9, v0, v7}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    array-length v7, v7

    .line 343
    sub-int/2addr v6, v7

    .line 344
    if-lez v1, :cond_4

    .line 345
    .line 346
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :cond_4
    if-gtz v6, :cond_5

    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    move v4, v3

    .line 362
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    if-ge v3, v7, :cond_6

    .line 367
    .line 368
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    .line 373
    .line 374
    .line 375
    move-result v7

    .line 376
    add-int/2addr v7, v3

    .line 377
    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 385
    .line 386
    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 387
    .line 388
    .line 389
    move-result-object v8

    .line 390
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    array-length v8, v8

    .line 394
    add-int/2addr v4, v8

    .line 395
    if-gt v4, v6, :cond_6

    .line 396
    .line 397
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    move v3, v7

    .line 401
    goto :goto_3

    .line 402
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    const-string p1, "toString(...)"

    .line 407
    .line 408
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    :goto_4
    invoke-static {v4, v0}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    :goto_5
    return-object p1

    .line 416
    :pswitch_14
    check-cast p1, Ljava/lang/String;

    .line 417
    .line 418
    const-string v0, "reason"

    .line 419
    .line 420
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    new-instance v0, Lkotlin/text/Regex;

    .line 424
    .line 425
    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    const/16 v0, 0xb4

    .line 433
    .line 434
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    return-object p1

    .line 439
    :pswitch_15
    check-cast p1, Ljava/lang/String;

    .line 440
    .line 441
    const-string v0, "id"

    .line 442
    .line 443
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    new-instance v0, Lkotlin/text/Regex;

    .line 447
    .line 448
    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    const/16 v0, 0x40

    .line 456
    .line 457
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    return-object p1

    .line 462
    :pswitch_16
    check-cast p1, LN1/f;

    .line 463
    .line 464
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    iget-object v0, p1, LN1/f;->a:Ljava/lang/String;

    .line 468
    .line 469
    iget-wide v1, p1, LN1/f;->b:J

    .line 470
    .line 471
    iget-wide v3, p1, LN1/f;->c:J

    .line 472
    .line 473
    iget-object v5, p1, LN1/f;->d:Ljava/lang/String;

    .line 474
    .line 475
    iget-object p1, p1, LN1/f;->e:Ljava/lang/String;

    .line 476
    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    const-string v7, "R\t"

    .line 480
    .line 481
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    const-string v0, "\t"

    .line 488
    .line 489
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    const-string p1, "\n"

    .line 514
    .line 515
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    return-object p1

    .line 523
    :pswitch_17
    check-cast p1, Ljava/lang/Byte;

    .line 524
    .line 525
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 526
    .line 527
    .line 528
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    invoke-static {p1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    return-object p1

    .line 544
    :pswitch_18
    check-cast p1, Ljava/io/File;

    .line 545
    .line 546
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    if-eqz v0, :cond_7

    .line 554
    .line 555
    sget-object v0, LM1/e;->a:Ljava/util/Set;

    .line 556
    .line 557
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object p1

    .line 561
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result p1

    .line 565
    if-nez p1, :cond_7

    .line 566
    .line 567
    move v3, v9

    .line 568
    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 569
    .line 570
    .line 571
    move-result-object p1

    .line 572
    return-object p1

    .line 573
    :pswitch_19
    check-cast p1, Ljava/lang/Byte;

    .line 574
    .line 575
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 576
    .line 577
    .line 578
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    invoke-static {p1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object p1

    .line 590
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    return-object p1

    .line 594
    :pswitch_1a
    check-cast p1, Ljava/lang/Byte;

    .line 595
    .line 596
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 597
    .line 598
    .line 599
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    invoke-static {p1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object p1

    .line 611
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    return-object p1

    .line 615
    :pswitch_1b
    check-cast p1, Ljava/lang/Byte;

    .line 616
    .line 617
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 618
    .line 619
    .line 620
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object p1

    .line 624
    invoke-static {p1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object p1

    .line 628
    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object p1

    .line 632
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    return-object p1

    .line 636
    :pswitch_1c
    check-cast p1, Lkotlin/text/MatchResult;

    .line 637
    .line 638
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object p1

    .line 645
    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 646
    .line 647
    .line 648
    move-result-object p1

    .line 649
    return-object p1

    .line 650
    nop

    .line 651
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
