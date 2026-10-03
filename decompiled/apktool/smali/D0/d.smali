.class public final LD0/d;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:LD0/c;

.field public final b:LD0/c;

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;LD0/c;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, LD0/c;

    .line 7
    .line 8
    invoke-direct {v0}, LD0/c;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, v1, LD0/d;->b:LD0/c;

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    new-instance v0, LD0/c;

    .line 16
    .line 17
    invoke-direct {v0}, LD0/c;-><init>()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object/from16 v0, p2

    .line 22
    .line 23
    :goto_0
    iget v2, v0, LD0/c;->b:I

    .line 24
    .line 25
    const/4 v8, 0x2

    .line 26
    const/4 v9, 0x1

    .line 27
    const/4 v10, 0x0

    .line 28
    if-eqz v2, :cond_5

    .line 29
    .line 30
    const-string v3, "badge"

    .line 31
    .line 32
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eq v5, v8, :cond_2

    .line 45
    .line 46
    if-ne v5, v9, :cond_1

    .line 47
    .line 48
    :cond_2
    if-ne v5, v8, :cond_4

    .line 49
    .line 50
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 61
    .line 62
    .line 63
    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    invoke-interface {v2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    move/from16 v17, v3

    .line 69
    .line 70
    move-object v3, v2

    .line 71
    move/from16 v2, v17

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catch_0
    move-exception v0

    .line 75
    goto :goto_1

    .line 76
    :catch_1
    move-exception v0

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 79
    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v5, "Must have a <"

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v3, "> start tag"

    .line 94
    .line 95
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 107
    .line 108
    const-string v3, "No start tag found"

    .line 109
    .line 110
    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :goto_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    .line 115
    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v5, "Can\'t load badge resource ID #0x"

    .line 119
    .line 120
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-direct {v3, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    .line 139
    .line 140
    throw v3

    .line 141
    :cond_5
    const/4 v2, 0x0

    .line 142
    move-object v3, v2

    .line 143
    move v2, v10

    .line 144
    :goto_2
    if-nez v2, :cond_6

    .line 145
    .line 146
    const v2, 0x7f130403

    .line 147
    .line 148
    .line 149
    :cond_6
    move v6, v2

    .line 150
    sget-object v4, LA0/a;->a:[I

    .line 151
    .line 152
    new-array v7, v10, [I

    .line 153
    .line 154
    const v5, 0x7f040057

    .line 155
    .line 156
    .line 157
    move-object/from16 v2, p1

    .line 158
    .line 159
    invoke-static/range {v2 .. v7}, LR0/p;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    const/4 v5, 0x4

    .line 168
    const/4 v6, -0x1

    .line 169
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    int-to-float v7, v7

    .line 174
    iput v7, v1, LD0/d;->c:F

    .line 175
    .line 176
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    const v11, 0x7f07025b

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    iput v7, v1, LD0/d;->i:I

    .line 188
    .line 189
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    const v11, 0x7f07025e

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    iput v7, v1, LD0/d;->j:I

    .line 201
    .line 202
    const/16 v7, 0xe

    .line 203
    .line 204
    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 205
    .line 206
    .line 207
    move-result v11

    .line 208
    int-to-float v11, v11

    .line 209
    iput v11, v1, LD0/d;->d:F

    .line 210
    .line 211
    const v11, 0x7f0700c5

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    const/16 v13, 0xc

    .line 219
    .line 220
    invoke-virtual {v3, v13, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    iput v12, v1, LD0/d;->e:F

    .line 225
    .line 226
    const/16 v12, 0x11

    .line 227
    .line 228
    const v14, 0x7f0700c9

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimension(I)F

    .line 232
    .line 233
    .line 234
    move-result v15

    .line 235
    invoke-virtual {v3, v12, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    iput v12, v1, LD0/d;->g:F

    .line 240
    .line 241
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 242
    .line 243
    .line 244
    move-result v11

    .line 245
    const/4 v12, 0x3

    .line 246
    invoke-virtual {v3, v12, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 247
    .line 248
    .line 249
    move-result v11

    .line 250
    iput v11, v1, LD0/d;->f:F

    .line 251
    .line 252
    const/16 v11, 0xd

    .line 253
    .line 254
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimension(I)F

    .line 255
    .line 256
    .line 257
    move-result v14

    .line 258
    invoke-virtual {v3, v11, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 259
    .line 260
    .line 261
    move-result v11

    .line 262
    iput v11, v1, LD0/d;->h:F

    .line 263
    .line 264
    const/16 v11, 0x18

    .line 265
    .line 266
    invoke-virtual {v3, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 267
    .line 268
    .line 269
    move-result v11

    .line 270
    iput v11, v1, LD0/d;->k:I

    .line 271
    .line 272
    iget-object v11, v1, LD0/d;->b:LD0/c;

    .line 273
    .line 274
    iget v14, v0, LD0/c;->j:I

    .line 275
    .line 276
    const/4 v15, -0x2

    .line 277
    if-ne v14, v15, :cond_7

    .line 278
    .line 279
    const/16 v14, 0xff

    .line 280
    .line 281
    :cond_7
    iput v14, v11, LD0/c;->j:I

    .line 282
    .line 283
    iget v14, v0, LD0/c;->l:I

    .line 284
    .line 285
    if-eq v14, v15, :cond_8

    .line 286
    .line 287
    iput v14, v11, LD0/c;->l:I

    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_8
    const/16 v11, 0x17

    .line 291
    .line 292
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 293
    .line 294
    .line 295
    move-result v14

    .line 296
    if-eqz v14, :cond_9

    .line 297
    .line 298
    iget-object v6, v1, LD0/d;->b:LD0/c;

    .line 299
    .line 300
    invoke-virtual {v3, v11, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    iput v11, v6, LD0/c;->l:I

    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_9
    iget-object v11, v1, LD0/d;->b:LD0/c;

    .line 308
    .line 309
    iput v6, v11, LD0/c;->l:I

    .line 310
    .line 311
    :goto_3
    iget-object v6, v0, LD0/c;->k:Ljava/lang/String;

    .line 312
    .line 313
    const/4 v11, 0x7

    .line 314
    if-eqz v6, :cond_a

    .line 315
    .line 316
    iget-object v14, v1, LD0/d;->b:LD0/c;

    .line 317
    .line 318
    iput-object v6, v14, LD0/c;->k:Ljava/lang/String;

    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_a
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    if-eqz v6, :cond_b

    .line 326
    .line 327
    iget-object v6, v1, LD0/d;->b:LD0/c;

    .line 328
    .line 329
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v14

    .line 333
    iput-object v14, v6, LD0/c;->k:Ljava/lang/String;

    .line 334
    .line 335
    :cond_b
    :goto_4
    iget-object v6, v1, LD0/d;->b:LD0/c;

    .line 336
    .line 337
    iget-object v14, v0, LD0/c;->p:Ljava/lang/CharSequence;

    .line 338
    .line 339
    iput-object v14, v6, LD0/c;->p:Ljava/lang/CharSequence;

    .line 340
    .line 341
    iget-object v14, v0, LD0/c;->q:Ljava/lang/CharSequence;

    .line 342
    .line 343
    if-nez v14, :cond_c

    .line 344
    .line 345
    const v14, 0x7f1202de

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v14

    .line 352
    :cond_c
    iput-object v14, v6, LD0/c;->q:Ljava/lang/CharSequence;

    .line 353
    .line 354
    iget-object v6, v1, LD0/d;->b:LD0/c;

    .line 355
    .line 356
    iget v14, v0, LD0/c;->r:I

    .line 357
    .line 358
    if-nez v14, :cond_d

    .line 359
    .line 360
    const/high16 v14, 0x7f100000

    .line 361
    .line 362
    :cond_d
    iput v14, v6, LD0/c;->r:I

    .line 363
    .line 364
    iget v14, v0, LD0/c;->s:I

    .line 365
    .line 366
    if-nez v14, :cond_e

    .line 367
    .line 368
    const v14, 0x7f1202eb

    .line 369
    .line 370
    .line 371
    :cond_e
    iput v14, v6, LD0/c;->s:I

    .line 372
    .line 373
    iget-object v14, v0, LD0/c;->u:Ljava/lang/Boolean;

    .line 374
    .line 375
    if-eqz v14, :cond_10

    .line 376
    .line 377
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 378
    .line 379
    .line 380
    move-result v14

    .line 381
    if-eqz v14, :cond_f

    .line 382
    .line 383
    goto :goto_5

    .line 384
    :cond_f
    move v14, v10

    .line 385
    goto :goto_6

    .line 386
    :cond_10
    :goto_5
    move v14, v9

    .line 387
    :goto_6
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 388
    .line 389
    .line 390
    move-result-object v14

    .line 391
    iput-object v14, v6, LD0/c;->u:Ljava/lang/Boolean;

    .line 392
    .line 393
    iget-object v6, v1, LD0/d;->b:LD0/c;

    .line 394
    .line 395
    iget v14, v0, LD0/c;->m:I

    .line 396
    .line 397
    if-ne v14, v15, :cond_11

    .line 398
    .line 399
    const/16 v14, 0x15

    .line 400
    .line 401
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 402
    .line 403
    .line 404
    move-result v14

    .line 405
    :cond_11
    iput v14, v6, LD0/c;->m:I

    .line 406
    .line 407
    iget-object v6, v1, LD0/d;->b:LD0/c;

    .line 408
    .line 409
    iget v14, v0, LD0/c;->n:I

    .line 410
    .line 411
    if-ne v14, v15, :cond_12

    .line 412
    .line 413
    const/16 v14, 0x16

    .line 414
    .line 415
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 416
    .line 417
    .line 418
    move-result v14

    .line 419
    :cond_12
    iput v14, v6, LD0/c;->n:I

    .line 420
    .line 421
    iget-object v6, v1, LD0/d;->b:LD0/c;

    .line 422
    .line 423
    iget-object v14, v0, LD0/c;->f:Ljava/lang/Integer;

    .line 424
    .line 425
    const v15, 0x7f13016e

    .line 426
    .line 427
    .line 428
    const/4 v11, 0x5

    .line 429
    if-nez v14, :cond_13

    .line 430
    .line 431
    invoke-virtual {v3, v11, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 432
    .line 433
    .line 434
    move-result v14

    .line 435
    goto :goto_7

    .line 436
    :cond_13
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 437
    .line 438
    .line 439
    move-result v14

    .line 440
    :goto_7
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v14

    .line 444
    iput-object v14, v6, LD0/c;->f:Ljava/lang/Integer;

    .line 445
    .line 446
    iget-object v6, v1, LD0/d;->b:LD0/c;

    .line 447
    .line 448
    iget-object v14, v0, LD0/c;->g:Ljava/lang/Integer;

    .line 449
    .line 450
    const/4 v7, 0x6

    .line 451
    if-nez v14, :cond_14

    .line 452
    .line 453
    invoke-virtual {v3, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 454
    .line 455
    .line 456
    move-result v14

    .line 457
    goto :goto_8

    .line 458
    :cond_14
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 459
    .line 460
    .line 461
    move-result v14

    .line 462
    :goto_8
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 463
    .line 464
    .line 465
    move-result-object v14

    .line 466
    iput-object v14, v6, LD0/c;->g:Ljava/lang/Integer;

    .line 467
    .line 468
    iget-object v6, v1, LD0/d;->b:LD0/c;

    .line 469
    .line 470
    iget-object v14, v0, LD0/c;->h:Ljava/lang/Integer;

    .line 471
    .line 472
    if-nez v14, :cond_15

    .line 473
    .line 474
    const/16 v14, 0xf

    .line 475
    .line 476
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 477
    .line 478
    .line 479
    move-result v14

    .line 480
    goto :goto_9

    .line 481
    :cond_15
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 482
    .line 483
    .line 484
    move-result v14

    .line 485
    :goto_9
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 486
    .line 487
    .line 488
    move-result-object v14

    .line 489
    iput-object v14, v6, LD0/c;->h:Ljava/lang/Integer;

    .line 490
    .line 491
    iget-object v6, v1, LD0/d;->b:LD0/c;

    .line 492
    .line 493
    iget-object v14, v0, LD0/c;->i:Ljava/lang/Integer;

    .line 494
    .line 495
    if-nez v14, :cond_16

    .line 496
    .line 497
    const/16 v14, 0x10

    .line 498
    .line 499
    invoke-virtual {v3, v14, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 500
    .line 501
    .line 502
    move-result v14

    .line 503
    goto :goto_a

    .line 504
    :cond_16
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 505
    .line 506
    .line 507
    move-result v14

    .line 508
    :goto_a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    .line 510
    .line 511
    move-result-object v14

    .line 512
    iput-object v14, v6, LD0/c;->i:Ljava/lang/Integer;

    .line 513
    .line 514
    iget-object v6, v1, LD0/d;->b:LD0/c;

    .line 515
    .line 516
    iget-object v14, v0, LD0/c;->c:Ljava/lang/Integer;

    .line 517
    .line 518
    if-nez v14, :cond_17

    .line 519
    .line 520
    invoke-static {v2, v3, v9}, Lcom/bumptech/glide/d;->r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 521
    .line 522
    .line 523
    move-result-object v14

    .line 524
    invoke-virtual {v14}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 525
    .line 526
    .line 527
    move-result v14

    .line 528
    goto :goto_b

    .line 529
    :cond_17
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 530
    .line 531
    .line 532
    move-result v14

    .line 533
    :goto_b
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 534
    .line 535
    .line 536
    move-result-object v14

    .line 537
    iput-object v14, v6, LD0/c;->c:Ljava/lang/Integer;

    .line 538
    .line 539
    iget-object v6, v1, LD0/d;->b:LD0/c;

    .line 540
    .line 541
    iget-object v14, v0, LD0/c;->e:Ljava/lang/Integer;

    .line 542
    .line 543
    const/16 v15, 0x8

    .line 544
    .line 545
    if-nez v14, :cond_18

    .line 546
    .line 547
    const v14, 0x7f130200

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3, v15, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 551
    .line 552
    .line 553
    move-result v14

    .line 554
    goto :goto_c

    .line 555
    :cond_18
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 556
    .line 557
    .line 558
    move-result v14

    .line 559
    :goto_c
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 560
    .line 561
    .line 562
    move-result-object v14

    .line 563
    iput-object v14, v6, LD0/c;->e:Ljava/lang/Integer;

    .line 564
    .line 565
    iget-object v6, v0, LD0/c;->d:Ljava/lang/Integer;

    .line 566
    .line 567
    if-eqz v6, :cond_19

    .line 568
    .line 569
    iget-object v2, v1, LD0/d;->b:LD0/c;

    .line 570
    .line 571
    iput-object v6, v2, LD0/c;->d:Ljava/lang/Integer;

    .line 572
    .line 573
    goto/16 :goto_e

    .line 574
    .line 575
    :cond_19
    const/16 v6, 0x9

    .line 576
    .line 577
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 578
    .line 579
    .line 580
    move-result v16

    .line 581
    if-eqz v16, :cond_1a

    .line 582
    .line 583
    iget-object v5, v1, LD0/d;->b:LD0/c;

    .line 584
    .line 585
    invoke-static {v2, v3, v6}, Lcom/bumptech/glide/d;->r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    iput-object v2, v5, LD0/c;->d:Ljava/lang/Integer;

    .line 598
    .line 599
    goto :goto_e

    .line 600
    :cond_1a
    iget-object v14, v1, LD0/d;->b:LD0/c;

    .line 601
    .line 602
    iget-object v14, v14, LD0/c;->e:Ljava/lang/Integer;

    .line 603
    .line 604
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 605
    .line 606
    .line 607
    move-result v14

    .line 608
    sget-object v6, LA0/a;->K:[I

    .line 609
    .line 610
    invoke-virtual {v2, v14, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 611
    .line 612
    .line 613
    move-result-object v6

    .line 614
    const/4 v15, 0x0

    .line 615
    invoke-virtual {v6, v10, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 616
    .line 617
    .line 618
    invoke-static {v2, v6, v12}, Lcom/bumptech/glide/d;->r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 619
    .line 620
    .line 621
    move-result-object v12

    .line 622
    invoke-static {v2, v6, v5}, Lcom/bumptech/glide/d;->r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 623
    .line 624
    .line 625
    invoke-static {v2, v6, v11}, Lcom/bumptech/glide/d;->r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 629
    .line 630
    .line 631
    invoke-virtual {v6, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 632
    .line 633
    .line 634
    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 635
    .line 636
    .line 637
    move-result v5

    .line 638
    if-eqz v5, :cond_1b

    .line 639
    .line 640
    goto :goto_d

    .line 641
    :cond_1b
    const/16 v13, 0xa

    .line 642
    .line 643
    :goto_d
    invoke-virtual {v6, v13, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 644
    .line 645
    .line 646
    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    const/16 v5, 0xe

    .line 650
    .line 651
    invoke-virtual {v6, v5, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 652
    .line 653
    .line 654
    invoke-static {v2, v6, v7}, Lcom/bumptech/glide/d;->r(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 655
    .line 656
    .line 657
    const/4 v5, 0x7

    .line 658
    invoke-virtual {v6, v5, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 659
    .line 660
    .line 661
    const/16 v5, 0x8

    .line 662
    .line 663
    invoke-virtual {v6, v5, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 664
    .line 665
    .line 666
    const/16 v5, 0x9

    .line 667
    .line 668
    invoke-virtual {v6, v5, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 669
    .line 670
    .line 671
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 672
    .line 673
    .line 674
    sget-object v5, LA0/a;->x:[I

    .line 675
    .line 676
    invoke-virtual {v2, v14, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 681
    .line 682
    .line 683
    invoke-virtual {v2, v10, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 684
    .line 685
    .line 686
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 687
    .line 688
    .line 689
    iget-object v2, v1, LD0/d;->b:LD0/c;

    .line 690
    .line 691
    invoke-virtual {v12}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 692
    .line 693
    .line 694
    move-result v5

    .line 695
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 696
    .line 697
    .line 698
    move-result-object v5

    .line 699
    iput-object v5, v2, LD0/c;->d:Ljava/lang/Integer;

    .line 700
    .line 701
    :goto_e
    iget-object v2, v1, LD0/d;->b:LD0/c;

    .line 702
    .line 703
    iget-object v5, v0, LD0/c;->t:Ljava/lang/Integer;

    .line 704
    .line 705
    if-nez v5, :cond_1c

    .line 706
    .line 707
    const v5, 0x800035

    .line 708
    .line 709
    .line 710
    invoke-virtual {v3, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 711
    .line 712
    .line 713
    move-result v5

    .line 714
    goto :goto_f

    .line 715
    :cond_1c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 716
    .line 717
    .line 718
    move-result v5

    .line 719
    :goto_f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 720
    .line 721
    .line 722
    move-result-object v5

    .line 723
    iput-object v5, v2, LD0/c;->t:Ljava/lang/Integer;

    .line 724
    .line 725
    iget-object v2, v1, LD0/d;->b:LD0/c;

    .line 726
    .line 727
    iget-object v5, v0, LD0/c;->v:Ljava/lang/Integer;

    .line 728
    .line 729
    if-nez v5, :cond_1d

    .line 730
    .line 731
    const v5, 0x7f07025c

    .line 732
    .line 733
    .line 734
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 735
    .line 736
    .line 737
    move-result v5

    .line 738
    const/16 v6, 0xb

    .line 739
    .line 740
    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 741
    .line 742
    .line 743
    move-result v5

    .line 744
    goto :goto_10

    .line 745
    :cond_1d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 746
    .line 747
    .line 748
    move-result v5

    .line 749
    :goto_10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 750
    .line 751
    .line 752
    move-result-object v5

    .line 753
    iput-object v5, v2, LD0/c;->v:Ljava/lang/Integer;

    .line 754
    .line 755
    iget-object v2, v1, LD0/d;->b:LD0/c;

    .line 756
    .line 757
    iget-object v5, v0, LD0/c;->w:Ljava/lang/Integer;

    .line 758
    .line 759
    if-nez v5, :cond_1e

    .line 760
    .line 761
    const v5, 0x7f0700cb

    .line 762
    .line 763
    .line 764
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 765
    .line 766
    .line 767
    move-result v4

    .line 768
    const/16 v5, 0xa

    .line 769
    .line 770
    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 771
    .line 772
    .line 773
    move-result v4

    .line 774
    goto :goto_11

    .line 775
    :cond_1e
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 776
    .line 777
    .line 778
    move-result v4

    .line 779
    :goto_11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 780
    .line 781
    .line 782
    move-result-object v4

    .line 783
    iput-object v4, v2, LD0/c;->w:Ljava/lang/Integer;

    .line 784
    .line 785
    iget-object v2, v1, LD0/d;->b:LD0/c;

    .line 786
    .line 787
    iget-object v4, v0, LD0/c;->x:Ljava/lang/Integer;

    .line 788
    .line 789
    if-nez v4, :cond_1f

    .line 790
    .line 791
    const/16 v4, 0x12

    .line 792
    .line 793
    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 794
    .line 795
    .line 796
    move-result v4

    .line 797
    goto :goto_12

    .line 798
    :cond_1f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 799
    .line 800
    .line 801
    move-result v4

    .line 802
    :goto_12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 803
    .line 804
    .line 805
    move-result-object v4

    .line 806
    iput-object v4, v2, LD0/c;->x:Ljava/lang/Integer;

    .line 807
    .line 808
    iget-object v2, v1, LD0/d;->b:LD0/c;

    .line 809
    .line 810
    iget-object v4, v0, LD0/c;->y:Ljava/lang/Integer;

    .line 811
    .line 812
    if-nez v4, :cond_20

    .line 813
    .line 814
    const/16 v4, 0x19

    .line 815
    .line 816
    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 817
    .line 818
    .line 819
    move-result v4

    .line 820
    goto :goto_13

    .line 821
    :cond_20
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 822
    .line 823
    .line 824
    move-result v4

    .line 825
    :goto_13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 826
    .line 827
    .line 828
    move-result-object v4

    .line 829
    iput-object v4, v2, LD0/c;->y:Ljava/lang/Integer;

    .line 830
    .line 831
    iget-object v2, v1, LD0/d;->b:LD0/c;

    .line 832
    .line 833
    iget-object v4, v0, LD0/c;->z:Ljava/lang/Integer;

    .line 834
    .line 835
    if-nez v4, :cond_21

    .line 836
    .line 837
    iget-object v4, v2, LD0/c;->x:Ljava/lang/Integer;

    .line 838
    .line 839
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 840
    .line 841
    .line 842
    move-result v4

    .line 843
    const/16 v5, 0x13

    .line 844
    .line 845
    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 846
    .line 847
    .line 848
    move-result v4

    .line 849
    goto :goto_14

    .line 850
    :cond_21
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 851
    .line 852
    .line 853
    move-result v4

    .line 854
    :goto_14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 855
    .line 856
    .line 857
    move-result-object v4

    .line 858
    iput-object v4, v2, LD0/c;->z:Ljava/lang/Integer;

    .line 859
    .line 860
    iget-object v2, v1, LD0/d;->b:LD0/c;

    .line 861
    .line 862
    iget-object v4, v0, LD0/c;->A:Ljava/lang/Integer;

    .line 863
    .line 864
    if-nez v4, :cond_22

    .line 865
    .line 866
    iget-object v4, v2, LD0/c;->y:Ljava/lang/Integer;

    .line 867
    .line 868
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 869
    .line 870
    .line 871
    move-result v4

    .line 872
    const/16 v5, 0x1a

    .line 873
    .line 874
    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 875
    .line 876
    .line 877
    move-result v4

    .line 878
    goto :goto_15

    .line 879
    :cond_22
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 880
    .line 881
    .line 882
    move-result v4

    .line 883
    :goto_15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 884
    .line 885
    .line 886
    move-result-object v4

    .line 887
    iput-object v4, v2, LD0/c;->A:Ljava/lang/Integer;

    .line 888
    .line 889
    iget-object v2, v1, LD0/d;->b:LD0/c;

    .line 890
    .line 891
    iget-object v4, v0, LD0/c;->D:Ljava/lang/Integer;

    .line 892
    .line 893
    if-nez v4, :cond_23

    .line 894
    .line 895
    const/16 v4, 0x14

    .line 896
    .line 897
    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 898
    .line 899
    .line 900
    move-result v4

    .line 901
    goto :goto_16

    .line 902
    :cond_23
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 903
    .line 904
    .line 905
    move-result v4

    .line 906
    :goto_16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 907
    .line 908
    .line 909
    move-result-object v4

    .line 910
    iput-object v4, v2, LD0/c;->D:Ljava/lang/Integer;

    .line 911
    .line 912
    iget-object v2, v1, LD0/d;->b:LD0/c;

    .line 913
    .line 914
    iget-object v4, v0, LD0/c;->B:Ljava/lang/Integer;

    .line 915
    .line 916
    if-nez v4, :cond_24

    .line 917
    .line 918
    move v4, v10

    .line 919
    goto :goto_17

    .line 920
    :cond_24
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 921
    .line 922
    .line 923
    move-result v4

    .line 924
    :goto_17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 925
    .line 926
    .line 927
    move-result-object v4

    .line 928
    iput-object v4, v2, LD0/c;->B:Ljava/lang/Integer;

    .line 929
    .line 930
    iget-object v2, v1, LD0/d;->b:LD0/c;

    .line 931
    .line 932
    iget-object v4, v0, LD0/c;->C:Ljava/lang/Integer;

    .line 933
    .line 934
    if-nez v4, :cond_25

    .line 935
    .line 936
    move v4, v10

    .line 937
    goto :goto_18

    .line 938
    :cond_25
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 939
    .line 940
    .line 941
    move-result v4

    .line 942
    :goto_18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 943
    .line 944
    .line 945
    move-result-object v4

    .line 946
    iput-object v4, v2, LD0/c;->C:Ljava/lang/Integer;

    .line 947
    .line 948
    iget-object v2, v1, LD0/d;->b:LD0/c;

    .line 949
    .line 950
    iget-object v4, v0, LD0/c;->E:Ljava/lang/Boolean;

    .line 951
    .line 952
    if-nez v4, :cond_26

    .line 953
    .line 954
    invoke-virtual {v3, v10, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 955
    .line 956
    .line 957
    move-result v4

    .line 958
    goto :goto_19

    .line 959
    :cond_26
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 960
    .line 961
    .line 962
    move-result v4

    .line 963
    :goto_19
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 964
    .line 965
    .line 966
    move-result-object v4

    .line 967
    iput-object v4, v2, LD0/c;->E:Ljava/lang/Boolean;

    .line 968
    .line 969
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 970
    .line 971
    .line 972
    iget-object v2, v0, LD0/c;->o:Ljava/util/Locale;

    .line 973
    .line 974
    if-nez v2, :cond_27

    .line 975
    .line 976
    iget-object v2, v1, LD0/d;->b:LD0/c;

    .line 977
    .line 978
    sget-object v3, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 979
    .line 980
    invoke-static {v3}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    .line 981
    .line 982
    .line 983
    move-result-object v3

    .line 984
    iput-object v3, v2, LD0/c;->o:Ljava/util/Locale;

    .line 985
    .line 986
    goto :goto_1a

    .line 987
    :cond_27
    iget-object v3, v1, LD0/d;->b:LD0/c;

    .line 988
    .line 989
    iput-object v2, v3, LD0/c;->o:Ljava/util/Locale;

    .line 990
    .line 991
    :goto_1a
    iput-object v0, v1, LD0/d;->a:LD0/c;

    .line 992
    .line 993
    return-void
.end method
