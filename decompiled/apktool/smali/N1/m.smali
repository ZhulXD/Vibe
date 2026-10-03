.class public abstract LN1/m;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Lkotlin/text/Regex;

.field public static final b:Lkotlin/text/Regex;

.field public static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "[A-Za-z0-9][A-Za-z0-9.+-]{0,127}"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, LN1/m;->a:Lkotlin/text/Regex;

    .line 9
    .line 10
    new-instance v0, Lkotlin/text/Regex;

    .line 11
    .line 12
    const-string v1, "[0-9a-fA-F]{64}"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, LN1/m;->b:Lkotlin/text/Regex;

    .line 18
    .line 19
    const-string v0, "RPGHUB-OTA-V2\u0000"

    .line 20
    .line 21
    sget-object v1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "getBytes(...)"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, LN1/m;->c:[B

    .line 33
    .line 34
    return-void
.end method

.method public static a(LN1/n;)[B
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "manifest"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, LN1/n;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget v2, v0, LN1/n;->o:I

    .line 11
    .line 12
    iget-wide v3, v0, LN1/n;->j:J

    .line 13
    .line 14
    iget-wide v5, v0, LN1/n;->i:J

    .line 15
    .line 16
    iget-wide v7, v0, LN1/n;->h:J

    .line 17
    .line 18
    iget-wide v9, v0, LN1/n;->g:J

    .line 19
    .line 20
    iget-wide v11, v0, LN1/n;->f:J

    .line 21
    .line 22
    iget-wide v13, v0, LN1/n;->e:J

    .line 23
    .line 24
    iget-object v15, v0, LN1/n;->c:Ljava/lang/String;

    .line 25
    .line 26
    move/from16 v16, v2

    .line 27
    .line 28
    iget-object v2, v0, LN1/n;->b:Ljava/lang/String;

    .line 29
    .line 30
    move-wide/from16 v17, v3

    .line 31
    .line 32
    iget-object v3, v0, LN1/n;->m:LN1/l;

    .line 33
    .line 34
    iget-object v4, v0, LN1/n;->l:LN1/o;

    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v19

    .line 40
    move-object/from16 v20, v3

    .line 41
    .line 42
    const-string v3, "invalid url"

    .line 43
    .line 44
    if-nez v19, :cond_11

    .line 45
    .line 46
    move-object/from16 v19, v4

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/16 v0, 0x800

    .line 53
    .line 54
    if-gt v4, v0, :cond_11

    .line 55
    .line 56
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_10

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    move-object/from16 v21, v0

    .line 72
    .line 73
    const-string v0, "https"

    .line 74
    .line 75
    move-wide/from16 v22, v5

    .line 76
    .line 77
    const/4 v5, 0x1

    .line 78
    invoke-static {v4, v0, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_10

    .line 83
    .line 84
    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-nez v0, :cond_10

    .line 89
    .line 90
    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-nez v0, :cond_10

    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    move v4, v0

    .line 98
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-ge v4, v6, :cond_1

    .line 103
    .line 104
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    invoke-static {v6}, Ljava/lang/Character;->isISOControl(C)Z

    .line 109
    .line 110
    .line 111
    move-result v21

    .line 112
    if-nez v21, :cond_0

    .line 113
    .line 114
    invoke-static {v6}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-nez v6, :cond_0

    .line 119
    .line 120
    add-int/lit8 v4, v4, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_1
    sget-object v3, LN1/m;->a:Lkotlin/text/Regex;

    .line 130
    .line 131
    invoke-virtual {v3, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_f

    .line 136
    .line 137
    sget-object v3, LN1/m;->b:Lkotlin/text/Regex;

    .line 138
    .line 139
    invoke-virtual {v3, v15}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_e

    .line 144
    .line 145
    const-wide/16 v3, 0x0

    .line 146
    .line 147
    cmp-long v6, v13, v3

    .line 148
    .line 149
    if-ltz v6, :cond_d

    .line 150
    .line 151
    cmp-long v6, v11, v3

    .line 152
    .line 153
    if-ltz v6, :cond_d

    .line 154
    .line 155
    cmp-long v6, v9, v3

    .line 156
    .line 157
    if-ltz v6, :cond_d

    .line 158
    .line 159
    cmp-long v6, v7, v3

    .line 160
    .line 161
    if-ltz v6, :cond_c

    .line 162
    .line 163
    cmp-long v6, v22, v3

    .line 164
    .line 165
    if-ltz v6, :cond_c

    .line 166
    .line 167
    cmp-long v3, v17, v3

    .line 168
    .line 169
    if-ltz v3, :cond_c

    .line 170
    .line 171
    if-ltz v16, :cond_b

    .line 172
    .line 173
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 174
    .line 175
    const/16 v4, 0x100

    .line 176
    .line 177
    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 178
    .line 179
    .line 180
    new-instance v4, Ljava/io/DataOutputStream;

    .line 181
    .line 182
    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 183
    .line 184
    .line 185
    :try_start_1
    sget-object v6, LN1/m;->c:[B

    .line 186
    .line 187
    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 188
    .line 189
    .line 190
    invoke-static {v4, v1}, LN1/m;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v4, v2}, LN1/m;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 197
    .line 198
    const-string v2, "US"

    .line 199
    .line 200
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v15, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    const-string v2, "toLowerCase(...)"

    .line 208
    .line 209
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v4, v1}, LN1/m;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const/16 v1, 0x8

    .line 216
    .line 217
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v11, v12}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 242
    .line 243
    .line 244
    move-wide/from16 v6, v22

    .line 245
    .line 246
    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 250
    .line 251
    .line 252
    move-wide/from16 v1, v17

    .line 253
    .line 254
    invoke-virtual {v4, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 255
    .line 256
    .line 257
    move-object/from16 v1, p0

    .line 258
    .line 259
    iget-object v2, v1, LN1/n;->k:Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v4, v2}, LN1/m;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    if-eqz v19, :cond_2

    .line 265
    .line 266
    move v2, v5

    .line 267
    goto :goto_1

    .line 268
    :cond_2
    move v2, v0

    .line 269
    :goto_1
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 273
    .line 274
    .line 275
    const/4 v2, 0x0

    .line 276
    if-eqz v19, :cond_3

    .line 277
    .line 278
    move-object/from16 v6, v19

    .line 279
    .line 280
    iget-object v7, v6, LN1/o;->a:Ljava/lang/String;

    .line 281
    .line 282
    goto :goto_2

    .line 283
    :catchall_0
    move-exception v0

    .line 284
    move-object v1, v0

    .line 285
    goto/16 :goto_8

    .line 286
    .line 287
    :cond_3
    move-object/from16 v6, v19

    .line 288
    .line 289
    move-object v7, v2

    .line 290
    :goto_2
    invoke-static {v4, v7}, LN1/m;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    if-eqz v6, :cond_4

    .line 294
    .line 295
    iget-object v7, v6, LN1/o;->b:Ljava/lang/String;

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_4
    move-object v7, v2

    .line 299
    :goto_3
    invoke-static {v4, v7}, LN1/m;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    if-eqz v6, :cond_5

    .line 303
    .line 304
    iget-object v6, v6, LN1/o;->c:Ljava/lang/String;

    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_5
    move-object v6, v2

    .line 308
    :goto_4
    invoke-static {v4, v6}, LN1/m;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    if-eqz v20, :cond_6

    .line 312
    .line 313
    move v6, v5

    .line 314
    goto :goto_5

    .line 315
    :cond_6
    move v6, v0

    .line 316
    :goto_5
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 320
    .line 321
    .line 322
    if-eqz v20, :cond_7

    .line 323
    .line 324
    move-object/from16 v6, v20

    .line 325
    .line 326
    iget-boolean v7, v6, LN1/l;->a:Z

    .line 327
    .line 328
    if-ne v7, v5, :cond_8

    .line 329
    .line 330
    move v0, v5

    .line 331
    goto :goto_6

    .line 332
    :cond_7
    move-object/from16 v6, v20

    .line 333
    .line 334
    :cond_8
    :goto_6
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 338
    .line 339
    .line 340
    if-eqz v6, :cond_9

    .line 341
    .line 342
    iget-object v0, v6, LN1/l;->b:Ljava/lang/String;

    .line 343
    .line 344
    goto :goto_7

    .line 345
    :cond_9
    move-object v0, v2

    .line 346
    :goto_7
    invoke-static {v4, v0}, LN1/m;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget-object v0, v1, LN1/n;->n:Ljava/lang/String;

    .line 350
    .line 351
    invoke-static {v4, v0}, LN1/m;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    const/4 v0, 0x4

    .line 355
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 356
    .line 357
    .line 358
    move/from16 v0, v16

    .line 359
    .line 360
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 361
    .line 362
    .line 363
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    .line 365
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    array-length v1, v0

    .line 373
    const/high16 v2, 0x10000

    .line 374
    .line 375
    if-gt v1, v2, :cond_a

    .line 376
    .line 377
    const-string v1, "also(...)"

    .line 378
    .line 379
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    return-object v0

    .line 383
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 384
    .line 385
    const-string v1, "canonical payload too large"

    .line 386
    .line 387
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    throw v0

    .line 391
    :goto_8
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 392
    :catchall_1
    move-exception v0

    .line 393
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 394
    .line 395
    .line 396
    throw v0

    .line 397
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 398
    .line 399
    const-string v1, "invalid app version"

    .line 400
    .line 401
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    throw v0

    .line 405
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 406
    .line 407
    const-string v1, "invalid size"

    .line 408
    .line 409
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw v0

    .line 413
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 414
    .line 415
    const-string v1, "invalid timestamp or sequence"

    .line 416
    .line 417
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    throw v0

    .line 421
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 422
    .line 423
    const-string v1, "invalid sha256"

    .line 424
    .line 425
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    throw v0

    .line 429
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 430
    .line 431
    const-string v1, "invalid version"

    .line 432
    .line 433
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    throw v0

    .line 437
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 438
    .line 439
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw v0

    .line 443
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 444
    .line 445
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw v0

    .line 449
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 450
    .line 451
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    throw v0
.end method

.method public static b(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "canonical field too large"

    .line 13
    .line 14
    const/high16 v2, 0x10000

    .line 15
    .line 16
    if-gt v0, v2, :cond_4

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ge v0, v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    const v4, 0xfffd

    .line 36
    .line 37
    .line 38
    if-eq v3, v4, :cond_1

    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p1, "malformed field"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_2
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v0, "getBytes(...)"

    .line 64
    .line 65
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    array-length v0, p1

    .line 69
    if-gt v0, v2, :cond_3

    .line 70
    .line 71
    array-length v0, p1

    .line 72
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method
