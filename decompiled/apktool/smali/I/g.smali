.class public final LI/g;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final A:[B

.field public static final B:[B

.field public static final C:[B

.field public static final D:[Ljava/lang/String;

.field public static final E:[I

.field public static final F:[B

.field public static final G:LI/d;

.field public static final H:[[LI/d;

.field public static final I:[LI/d;

.field public static final J:[Ljava/util/HashMap;

.field public static final K:[Ljava/util/HashMap;

.field public static final L:Ljava/util/HashSet;

.field public static final M:Ljava/util/HashMap;

.field public static final N:Ljava/nio/charset/Charset;

.field public static final O:[B

.field public static final P:[B

.field public static final l:Z

.field public static final m:Ljava/util/List;

.field public static final n:Ljava/util/List;

.field public static final o:[I

.field public static final p:[I

.field public static final q:[B

.field public static final r:[B

.field public static final s:[B

.field public static final t:[B

.field public static final u:[B

.field public static final v:[B

.field public static final w:[B

.field public static final x:[B

.field public static final y:[B

.field public static final z:[B


# instance fields
.field public final a:Ljava/io/FileDescriptor;

.field public final b:Landroid/content/res/AssetManager$AssetInputStream;

.field public c:I

.field public final d:[Ljava/util/HashMap;

.field public final e:Ljava/util/HashSet;

.field public f:Ljava/nio/ByteOrder;

.field public g:Z

.field public h:I

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 144

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "ExifInterface"

    .line 7
    .line 8
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sput-boolean v2, LI/g;->l:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x6

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/16 v6, 0x8

    .line 25
    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    filled-new-array {v3, v5, v1, v7}, [Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    sput-object v5, LI/g;->m:Ljava/util/List;

    .line 39
    .line 40
    const/4 v5, 0x2

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const/4 v9, 0x7

    .line 46
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    const/4 v11, 0x4

    .line 51
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    const/4 v13, 0x5

    .line 56
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v14

    .line 60
    filled-new-array {v8, v10, v12, v14}, [Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    sput-object v12, LI/g;->n:Ljava/util/List;

    .line 69
    .line 70
    filled-new-array {v6, v6, v6}, [I

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    sput-object v12, LI/g;->o:[I

    .line 75
    .line 76
    filled-new-array {v6}, [I

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    sput-object v12, LI/g;->p:[I

    .line 81
    .line 82
    new-array v12, v0, [B

    .line 83
    .line 84
    fill-array-data v12, :array_0

    .line 85
    .line 86
    .line 87
    sput-object v12, LI/g;->q:[B

    .line 88
    .line 89
    new-array v12, v11, [B

    .line 90
    .line 91
    fill-array-data v12, :array_1

    .line 92
    .line 93
    .line 94
    sput-object v12, LI/g;->r:[B

    .line 95
    .line 96
    new-array v12, v11, [B

    .line 97
    .line 98
    fill-array-data v12, :array_2

    .line 99
    .line 100
    .line 101
    sput-object v12, LI/g;->s:[B

    .line 102
    .line 103
    new-array v12, v11, [B

    .line 104
    .line 105
    fill-array-data v12, :array_3

    .line 106
    .line 107
    .line 108
    sput-object v12, LI/g;->t:[B

    .line 109
    .line 110
    new-array v12, v4, [B

    .line 111
    .line 112
    fill-array-data v12, :array_4

    .line 113
    .line 114
    .line 115
    sput-object v12, LI/g;->u:[B

    .line 116
    .line 117
    const/16 v12, 0xa

    .line 118
    .line 119
    new-array v15, v12, [B

    .line 120
    .line 121
    fill-array-data v15, :array_5

    .line 122
    .line 123
    .line 124
    sput-object v15, LI/g;->v:[B

    .line 125
    .line 126
    new-array v15, v6, [B

    .line 127
    .line 128
    fill-array-data v15, :array_6

    .line 129
    .line 130
    .line 131
    sput-object v15, LI/g;->w:[B

    .line 132
    .line 133
    new-array v15, v11, [B

    .line 134
    .line 135
    fill-array-data v15, :array_7

    .line 136
    .line 137
    .line 138
    sput-object v15, LI/g;->x:[B

    .line 139
    .line 140
    new-array v15, v11, [B

    .line 141
    .line 142
    fill-array-data v15, :array_8

    .line 143
    .line 144
    .line 145
    sput-object v15, LI/g;->y:[B

    .line 146
    .line 147
    new-array v15, v11, [B

    .line 148
    .line 149
    fill-array-data v15, :array_9

    .line 150
    .line 151
    .line 152
    sput-object v15, LI/g;->z:[B

    .line 153
    .line 154
    new-array v15, v11, [B

    .line 155
    .line 156
    fill-array-data v15, :array_a

    .line 157
    .line 158
    .line 159
    sput-object v15, LI/g;->A:[B

    .line 160
    .line 161
    new-array v15, v11, [B

    .line 162
    .line 163
    fill-array-data v15, :array_b

    .line 164
    .line 165
    .line 166
    sput-object v15, LI/g;->B:[B

    .line 167
    .line 168
    new-array v15, v11, [B

    .line 169
    .line 170
    fill-array-data v15, :array_c

    .line 171
    .line 172
    .line 173
    sput-object v15, LI/g;->C:[B

    .line 174
    .line 175
    const-string v15, "VP8X"

    .line 176
    .line 177
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    invoke-virtual {v15, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 182
    .line 183
    .line 184
    const-string v12, "VP8L"

    .line 185
    .line 186
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 187
    .line 188
    .line 189
    move-result-object v15

    .line 190
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 191
    .line 192
    .line 193
    const-string v12, "VP8 "

    .line 194
    .line 195
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 196
    .line 197
    .line 198
    move-result-object v15

    .line 199
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 200
    .line 201
    .line 202
    const-string v12, "ANIM"

    .line 203
    .line 204
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 205
    .line 206
    .line 207
    move-result-object v15

    .line 208
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 209
    .line 210
    .line 211
    const-string v12, "ANMF"

    .line 212
    .line 213
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 214
    .line 215
    .line 216
    move-result-object v15

    .line 217
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 218
    .line 219
    .line 220
    const-string v28, "DOUBLE"

    .line 221
    .line 222
    const-string v29, "IFD"

    .line 223
    .line 224
    const-string v16, ""

    .line 225
    .line 226
    const-string v17, "BYTE"

    .line 227
    .line 228
    const-string v18, "STRING"

    .line 229
    .line 230
    const-string v19, "USHORT"

    .line 231
    .line 232
    const-string v20, "ULONG"

    .line 233
    .line 234
    const-string v21, "URATIONAL"

    .line 235
    .line 236
    const-string v22, "SBYTE"

    .line 237
    .line 238
    const-string v23, "UNDEFINED"

    .line 239
    .line 240
    const-string v24, "SSHORT"

    .line 241
    .line 242
    const-string v25, "SLONG"

    .line 243
    .line 244
    const-string v26, "SRATIONAL"

    .line 245
    .line 246
    const-string v27, "SINGLE"

    .line 247
    .line 248
    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v12

    .line 252
    sput-object v12, LI/g;->D:[Ljava/lang/String;

    .line 253
    .line 254
    const/16 v12, 0xe

    .line 255
    .line 256
    new-array v15, v12, [I

    .line 257
    .line 258
    fill-array-data v15, :array_d

    .line 259
    .line 260
    .line 261
    sput-object v15, LI/g;->E:[I

    .line 262
    .line 263
    new-array v15, v6, [B

    .line 264
    .line 265
    fill-array-data v15, :array_e

    .line 266
    .line 267
    .line 268
    sput-object v15, LI/g;->F:[B

    .line 269
    .line 270
    new-instance v15, LI/d;

    .line 271
    .line 272
    const-string v12, "NewSubfileType"

    .line 273
    .line 274
    const/16 v6, 0xfe

    .line 275
    .line 276
    invoke-direct {v15, v12, v6, v11}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 277
    .line 278
    .line 279
    new-instance v6, LI/d;

    .line 280
    .line 281
    const-string v2, "SubfileType"

    .line 282
    .line 283
    const/16 v9, 0xff

    .line 284
    .line 285
    invoke-direct {v6, v2, v9, v11}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 286
    .line 287
    .line 288
    new-instance v9, LI/d;

    .line 289
    .line 290
    const-string v4, "ImageWidth"

    .line 291
    .line 292
    const/16 v13, 0x100

    .line 293
    .line 294
    invoke-direct {v9, v4, v13, v0, v11}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 295
    .line 296
    .line 297
    new-instance v4, LI/d;

    .line 298
    .line 299
    const-string v13, "ImageLength"

    .line 300
    .line 301
    const/16 v5, 0x101

    .line 302
    .line 303
    invoke-direct {v4, v13, v5, v0, v11}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 304
    .line 305
    .line 306
    new-instance v13, LI/d;

    .line 307
    .line 308
    const-string v5, "BitsPerSample"

    .line 309
    .line 310
    const/16 v11, 0x102

    .line 311
    .line 312
    invoke-direct {v13, v5, v11, v0}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 313
    .line 314
    .line 315
    new-instance v11, LI/d;

    .line 316
    .line 317
    move-object/from16 v19, v4

    .line 318
    .line 319
    const-string v4, "Compression"

    .line 320
    .line 321
    move-object/from16 v17, v6

    .line 322
    .line 323
    const/16 v6, 0x103

    .line 324
    .line 325
    invoke-direct {v11, v4, v6, v0}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 326
    .line 327
    .line 328
    new-instance v6, LI/d;

    .line 329
    .line 330
    move-object/from16 v18, v9

    .line 331
    .line 332
    const-string v9, "PhotometricInterpretation"

    .line 333
    .line 334
    move-object/from16 v21, v11

    .line 335
    .line 336
    const/16 v11, 0x106

    .line 337
    .line 338
    invoke-direct {v6, v9, v11, v0}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 339
    .line 340
    .line 341
    new-instance v11, LI/d;

    .line 342
    .line 343
    const-string v0, "ImageDescription"

    .line 344
    .line 345
    move-object/from16 v22, v6

    .line 346
    .line 347
    const/16 v6, 0x10e

    .line 348
    .line 349
    move-object/from16 v20, v13

    .line 350
    .line 351
    const/4 v13, 0x2

    .line 352
    invoke-direct {v11, v0, v6, v13}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 353
    .line 354
    .line 355
    new-instance v6, LI/d;

    .line 356
    .line 357
    move-object/from16 v23, v11

    .line 358
    .line 359
    const-string v11, "Make"

    .line 360
    .line 361
    move-object/from16 v16, v15

    .line 362
    .line 363
    const/16 v15, 0x10f

    .line 364
    .line 365
    invoke-direct {v6, v11, v15, v13}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 366
    .line 367
    .line 368
    new-instance v15, LI/d;

    .line 369
    .line 370
    move-object/from16 v24, v6

    .line 371
    .line 372
    const-string v6, "Model"

    .line 373
    .line 374
    move-object/from16 v63, v7

    .line 375
    .line 376
    const/16 v7, 0x110

    .line 377
    .line 378
    invoke-direct {v15, v6, v7, v13}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 379
    .line 380
    .line 381
    new-instance v13, LI/d;

    .line 382
    .line 383
    const-string v7, "StripOffsets"

    .line 384
    .line 385
    move-object/from16 v25, v15

    .line 386
    .line 387
    const/16 v15, 0x111

    .line 388
    .line 389
    move-object/from16 v65, v1

    .line 390
    .line 391
    move-object/from16 v64, v10

    .line 392
    .line 393
    const/4 v1, 0x4

    .line 394
    const/4 v10, 0x3

    .line 395
    invoke-direct {v13, v7, v15, v10, v1}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 396
    .line 397
    .line 398
    new-instance v1, LI/d;

    .line 399
    .line 400
    const-string v15, "Orientation"

    .line 401
    .line 402
    move-object/from16 v26, v13

    .line 403
    .line 404
    const/16 v13, 0x112

    .line 405
    .line 406
    invoke-direct {v1, v15, v13, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 407
    .line 408
    .line 409
    new-instance v13, LI/d;

    .line 410
    .line 411
    const-string v15, "SamplesPerPixel"

    .line 412
    .line 413
    move-object/from16 v27, v1

    .line 414
    .line 415
    const/16 v1, 0x115

    .line 416
    .line 417
    invoke-direct {v13, v15, v1, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 418
    .line 419
    .line 420
    new-instance v1, LI/d;

    .line 421
    .line 422
    const-string v15, "RowsPerStrip"

    .line 423
    .line 424
    move-object/from16 v28, v13

    .line 425
    .line 426
    const/16 v13, 0x116

    .line 427
    .line 428
    move-object/from16 v66, v8

    .line 429
    .line 430
    const/4 v8, 0x4

    .line 431
    invoke-direct {v1, v15, v13, v10, v8}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 432
    .line 433
    .line 434
    new-instance v13, LI/d;

    .line 435
    .line 436
    const-string v15, "StripByteCounts"

    .line 437
    .line 438
    move-object/from16 v29, v1

    .line 439
    .line 440
    const/16 v1, 0x117

    .line 441
    .line 442
    invoke-direct {v13, v15, v1, v10, v8}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 443
    .line 444
    .line 445
    new-instance v1, LI/d;

    .line 446
    .line 447
    const-string v8, "XResolution"

    .line 448
    .line 449
    const/16 v10, 0x11a

    .line 450
    .line 451
    const/4 v15, 0x5

    .line 452
    invoke-direct {v1, v8, v10, v15}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 453
    .line 454
    .line 455
    new-instance v8, LI/d;

    .line 456
    .line 457
    const-string v10, "YResolution"

    .line 458
    .line 459
    move-object/from16 v31, v1

    .line 460
    .line 461
    const/16 v1, 0x11b

    .line 462
    .line 463
    invoke-direct {v8, v10, v1, v15}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 464
    .line 465
    .line 466
    new-instance v1, LI/d;

    .line 467
    .line 468
    const-string v10, "PlanarConfiguration"

    .line 469
    .line 470
    const/16 v15, 0x11c

    .line 471
    .line 472
    move-object/from16 v32, v8

    .line 473
    .line 474
    const/4 v8, 0x3

    .line 475
    invoke-direct {v1, v10, v15, v8}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 476
    .line 477
    .line 478
    new-instance v10, LI/d;

    .line 479
    .line 480
    const-string v15, "ResolutionUnit"

    .line 481
    .line 482
    move-object/from16 v33, v1

    .line 483
    .line 484
    const/16 v1, 0x128

    .line 485
    .line 486
    invoke-direct {v10, v15, v1, v8}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 487
    .line 488
    .line 489
    new-instance v1, LI/d;

    .line 490
    .line 491
    const-string v15, "TransferFunction"

    .line 492
    .line 493
    move-object/from16 v34, v10

    .line 494
    .line 495
    const/16 v10, 0x12d

    .line 496
    .line 497
    invoke-direct {v1, v15, v10, v8}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 498
    .line 499
    .line 500
    new-instance v8, LI/d;

    .line 501
    .line 502
    const-string v10, "Software"

    .line 503
    .line 504
    const/16 v15, 0x131

    .line 505
    .line 506
    move-object/from16 v35, v1

    .line 507
    .line 508
    const/4 v1, 0x2

    .line 509
    invoke-direct {v8, v10, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 510
    .line 511
    .line 512
    new-instance v10, LI/d;

    .line 513
    .line 514
    const-string v15, "DateTime"

    .line 515
    .line 516
    move-object/from16 v36, v8

    .line 517
    .line 518
    const/16 v8, 0x132

    .line 519
    .line 520
    invoke-direct {v10, v15, v8, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 521
    .line 522
    .line 523
    new-instance v8, LI/d;

    .line 524
    .line 525
    const-string v15, "Artist"

    .line 526
    .line 527
    move-object/from16 v37, v10

    .line 528
    .line 529
    const/16 v10, 0x13b

    .line 530
    .line 531
    invoke-direct {v8, v15, v10, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 532
    .line 533
    .line 534
    new-instance v1, LI/d;

    .line 535
    .line 536
    const-string v10, "WhitePoint"

    .line 537
    .line 538
    const/16 v15, 0x13e

    .line 539
    .line 540
    move-object/from16 v38, v8

    .line 541
    .line 542
    const/4 v8, 0x5

    .line 543
    invoke-direct {v1, v10, v15, v8}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 544
    .line 545
    .line 546
    new-instance v10, LI/d;

    .line 547
    .line 548
    const-string v15, "PrimaryChromaticities"

    .line 549
    .line 550
    move-object/from16 v39, v1

    .line 551
    .line 552
    const/16 v1, 0x13f

    .line 553
    .line 554
    invoke-direct {v10, v15, v1, v8}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 555
    .line 556
    .line 557
    new-instance v1, LI/d;

    .line 558
    .line 559
    const-string v8, "SubIFDPointer"

    .line 560
    .line 561
    const/16 v15, 0x14a

    .line 562
    .line 563
    move-object/from16 v40, v10

    .line 564
    .line 565
    const/4 v10, 0x4

    .line 566
    invoke-direct {v1, v8, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 567
    .line 568
    .line 569
    new-instance v15, LI/d;

    .line 570
    .line 571
    move-object/from16 v41, v1

    .line 572
    .line 573
    const-string v1, "JPEGInterchangeFormat"

    .line 574
    .line 575
    move-object/from16 v30, v13

    .line 576
    .line 577
    const/16 v13, 0x201

    .line 578
    .line 579
    invoke-direct {v15, v1, v13, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 580
    .line 581
    .line 582
    new-instance v1, LI/d;

    .line 583
    .line 584
    const-string v13, "JPEGInterchangeFormatLength"

    .line 585
    .line 586
    move-object/from16 v42, v15

    .line 587
    .line 588
    const/16 v15, 0x202

    .line 589
    .line 590
    invoke-direct {v1, v13, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 591
    .line 592
    .line 593
    new-instance v10, LI/d;

    .line 594
    .line 595
    const-string v13, "YCbCrCoefficients"

    .line 596
    .line 597
    const/16 v15, 0x211

    .line 598
    .line 599
    move-object/from16 v43, v1

    .line 600
    .line 601
    const/4 v1, 0x5

    .line 602
    invoke-direct {v10, v13, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 603
    .line 604
    .line 605
    new-instance v1, LI/d;

    .line 606
    .line 607
    const-string v13, "YCbCrSubSampling"

    .line 608
    .line 609
    const/16 v15, 0x212

    .line 610
    .line 611
    move-object/from16 v44, v10

    .line 612
    .line 613
    const/4 v10, 0x3

    .line 614
    invoke-direct {v1, v13, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 615
    .line 616
    .line 617
    new-instance v13, LI/d;

    .line 618
    .line 619
    const-string v15, "YCbCrPositioning"

    .line 620
    .line 621
    move-object/from16 v45, v1

    .line 622
    .line 623
    const/16 v1, 0x213

    .line 624
    .line 625
    invoke-direct {v13, v15, v1, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 626
    .line 627
    .line 628
    new-instance v1, LI/d;

    .line 629
    .line 630
    const-string v10, "ReferenceBlackWhite"

    .line 631
    .line 632
    const/16 v15, 0x214

    .line 633
    .line 634
    move-object/from16 v46, v13

    .line 635
    .line 636
    const/4 v13, 0x5

    .line 637
    invoke-direct {v1, v10, v15, v13}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 638
    .line 639
    .line 640
    new-instance v10, LI/d;

    .line 641
    .line 642
    const-string v13, "Copyright"

    .line 643
    .line 644
    const v15, 0x8298

    .line 645
    .line 646
    .line 647
    move-object/from16 v47, v1

    .line 648
    .line 649
    const/4 v1, 0x2

    .line 650
    invoke-direct {v10, v13, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 651
    .line 652
    .line 653
    new-instance v1, LI/d;

    .line 654
    .line 655
    const-string v13, "ExifIFDPointer"

    .line 656
    .line 657
    const v15, 0x8769

    .line 658
    .line 659
    .line 660
    move-object/from16 v48, v10

    .line 661
    .line 662
    const/4 v10, 0x4

    .line 663
    invoke-direct {v1, v13, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 664
    .line 665
    .line 666
    new-instance v15, LI/d;

    .line 667
    .line 668
    move-object/from16 v49, v1

    .line 669
    .line 670
    const-string v1, "GPSInfoIFDPointer"

    .line 671
    .line 672
    move-object/from16 v67, v3

    .line 673
    .line 674
    const v3, 0x8825

    .line 675
    .line 676
    .line 677
    invoke-direct {v15, v1, v3, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 678
    .line 679
    .line 680
    new-instance v3, LI/d;

    .line 681
    .line 682
    move-object/from16 v50, v15

    .line 683
    .line 684
    const-string v15, "SensorTopBorder"

    .line 685
    .line 686
    invoke-direct {v3, v15, v10, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 687
    .line 688
    .line 689
    new-instance v15, LI/d;

    .line 690
    .line 691
    move-object/from16 v51, v3

    .line 692
    .line 693
    const-string v3, "SensorLeftBorder"

    .line 694
    .line 695
    move-object/from16 v68, v14

    .line 696
    .line 697
    const/4 v14, 0x5

    .line 698
    invoke-direct {v15, v3, v14, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 699
    .line 700
    .line 701
    new-instance v3, LI/d;

    .line 702
    .line 703
    const-string v14, "SensorBottomBorder"

    .line 704
    .line 705
    move-object/from16 v52, v15

    .line 706
    .line 707
    const/4 v15, 0x6

    .line 708
    invoke-direct {v3, v14, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 709
    .line 710
    .line 711
    new-instance v14, LI/d;

    .line 712
    .line 713
    const-string v15, "SensorRightBorder"

    .line 714
    .line 715
    move-object/from16 v53, v3

    .line 716
    .line 717
    const/4 v3, 0x7

    .line 718
    invoke-direct {v14, v15, v3, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 719
    .line 720
    .line 721
    new-instance v10, LI/d;

    .line 722
    .line 723
    const-string v15, "ISO"

    .line 724
    .line 725
    const/16 v3, 0x17

    .line 726
    .line 727
    move-object/from16 v54, v14

    .line 728
    .line 729
    const/4 v14, 0x3

    .line 730
    invoke-direct {v10, v15, v3, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 731
    .line 732
    .line 733
    new-instance v3, LI/d;

    .line 734
    .line 735
    const-string v14, "JpgFromRaw"

    .line 736
    .line 737
    const/16 v15, 0x2e

    .line 738
    .line 739
    move-object/from16 v55, v10

    .line 740
    .line 741
    const/4 v10, 0x7

    .line 742
    invoke-direct {v3, v14, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 743
    .line 744
    .line 745
    new-instance v10, LI/d;

    .line 746
    .line 747
    const-string v14, "Xmp"

    .line 748
    .line 749
    const/16 v15, 0x2bc

    .line 750
    .line 751
    move-object/from16 v56, v3

    .line 752
    .line 753
    const/4 v3, 0x1

    .line 754
    invoke-direct {v10, v14, v15, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 755
    .line 756
    .line 757
    move-object/from16 v57, v10

    .line 758
    .line 759
    filled-new-array/range {v16 .. v57}, [LI/d;

    .line 760
    .line 761
    .line 762
    move-result-object v69

    .line 763
    new-instance v3, LI/d;

    .line 764
    .line 765
    const-string v10, "ExposureTime"

    .line 766
    .line 767
    const v14, 0x829a

    .line 768
    .line 769
    .line 770
    const/4 v15, 0x5

    .line 771
    invoke-direct {v3, v10, v14, v15}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 772
    .line 773
    .line 774
    new-instance v10, LI/d;

    .line 775
    .line 776
    const-string v14, "FNumber"

    .line 777
    .line 778
    move-object/from16 v70, v3

    .line 779
    .line 780
    const v3, 0x829d

    .line 781
    .line 782
    .line 783
    invoke-direct {v10, v14, v3, v15}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 784
    .line 785
    .line 786
    new-instance v3, LI/d;

    .line 787
    .line 788
    const-string v14, "ExposureProgram"

    .line 789
    .line 790
    const v15, 0x8822

    .line 791
    .line 792
    .line 793
    move-object/from16 v71, v10

    .line 794
    .line 795
    const/4 v10, 0x3

    .line 796
    invoke-direct {v3, v14, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 797
    .line 798
    .line 799
    new-instance v14, LI/d;

    .line 800
    .line 801
    const-string v15, "SpectralSensitivity"

    .line 802
    .line 803
    const v10, 0x8824

    .line 804
    .line 805
    .line 806
    move-object/from16 v72, v3

    .line 807
    .line 808
    const/4 v3, 0x2

    .line 809
    invoke-direct {v14, v15, v10, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 810
    .line 811
    .line 812
    new-instance v3, LI/d;

    .line 813
    .line 814
    const-string v10, "PhotographicSensitivity"

    .line 815
    .line 816
    const v15, 0x8827

    .line 817
    .line 818
    .line 819
    move-object/from16 v73, v14

    .line 820
    .line 821
    const/4 v14, 0x3

    .line 822
    invoke-direct {v3, v10, v15, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 823
    .line 824
    .line 825
    new-instance v10, LI/d;

    .line 826
    .line 827
    const-string v15, "OECF"

    .line 828
    .line 829
    const v14, 0x8828

    .line 830
    .line 831
    .line 832
    move-object/from16 v74, v3

    .line 833
    .line 834
    const/4 v3, 0x7

    .line 835
    invoke-direct {v10, v15, v14, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 836
    .line 837
    .line 838
    new-instance v3, LI/d;

    .line 839
    .line 840
    const-string v14, "SensitivityType"

    .line 841
    .line 842
    const v15, 0x8830

    .line 843
    .line 844
    .line 845
    move-object/from16 v75, v10

    .line 846
    .line 847
    const/4 v10, 0x3

    .line 848
    invoke-direct {v3, v14, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 849
    .line 850
    .line 851
    new-instance v10, LI/d;

    .line 852
    .line 853
    const-string v14, "StandardOutputSensitivity"

    .line 854
    .line 855
    const v15, 0x8831

    .line 856
    .line 857
    .line 858
    move-object/from16 v76, v3

    .line 859
    .line 860
    const/4 v3, 0x4

    .line 861
    invoke-direct {v10, v14, v15, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 862
    .line 863
    .line 864
    new-instance v14, LI/d;

    .line 865
    .line 866
    const-string v15, "RecommendedExposureIndex"

    .line 867
    .line 868
    move-object/from16 v77, v10

    .line 869
    .line 870
    const v10, 0x8832

    .line 871
    .line 872
    .line 873
    invoke-direct {v14, v15, v10, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 874
    .line 875
    .line 876
    new-instance v10, LI/d;

    .line 877
    .line 878
    const-string v15, "ISOSpeed"

    .line 879
    .line 880
    move-object/from16 v78, v14

    .line 881
    .line 882
    const v14, 0x8833

    .line 883
    .line 884
    .line 885
    invoke-direct {v10, v15, v14, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 886
    .line 887
    .line 888
    new-instance v14, LI/d;

    .line 889
    .line 890
    const-string v15, "ISOSpeedLatitudeyyy"

    .line 891
    .line 892
    move-object/from16 v79, v10

    .line 893
    .line 894
    const v10, 0x8834

    .line 895
    .line 896
    .line 897
    invoke-direct {v14, v15, v10, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 898
    .line 899
    .line 900
    new-instance v10, LI/d;

    .line 901
    .line 902
    const-string v15, "ISOSpeedLatitudezzz"

    .line 903
    .line 904
    move-object/from16 v80, v14

    .line 905
    .line 906
    const v14, 0x8835

    .line 907
    .line 908
    .line 909
    invoke-direct {v10, v15, v14, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 910
    .line 911
    .line 912
    new-instance v3, LI/d;

    .line 913
    .line 914
    const-string v14, "ExifVersion"

    .line 915
    .line 916
    const v15, 0x9000

    .line 917
    .line 918
    .line 919
    move-object/from16 v81, v10

    .line 920
    .line 921
    const/4 v10, 0x2

    .line 922
    invoke-direct {v3, v14, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 923
    .line 924
    .line 925
    new-instance v14, LI/d;

    .line 926
    .line 927
    const-string v15, "DateTimeOriginal"

    .line 928
    .line 929
    move-object/from16 v82, v3

    .line 930
    .line 931
    const v3, 0x9003

    .line 932
    .line 933
    .line 934
    invoke-direct {v14, v15, v3, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 935
    .line 936
    .line 937
    new-instance v3, LI/d;

    .line 938
    .line 939
    const-string v15, "DateTimeDigitized"

    .line 940
    .line 941
    move-object/from16 v83, v14

    .line 942
    .line 943
    const v14, 0x9004

    .line 944
    .line 945
    .line 946
    invoke-direct {v3, v15, v14, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 947
    .line 948
    .line 949
    new-instance v14, LI/d;

    .line 950
    .line 951
    const-string v15, "OffsetTime"

    .line 952
    .line 953
    move-object/from16 v84, v3

    .line 954
    .line 955
    const v3, 0x9010

    .line 956
    .line 957
    .line 958
    invoke-direct {v14, v15, v3, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 959
    .line 960
    .line 961
    new-instance v3, LI/d;

    .line 962
    .line 963
    const-string v15, "OffsetTimeOriginal"

    .line 964
    .line 965
    move-object/from16 v85, v14

    .line 966
    .line 967
    const v14, 0x9011

    .line 968
    .line 969
    .line 970
    invoke-direct {v3, v15, v14, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 971
    .line 972
    .line 973
    new-instance v14, LI/d;

    .line 974
    .line 975
    const-string v15, "OffsetTimeDigitized"

    .line 976
    .line 977
    move-object/from16 v86, v3

    .line 978
    .line 979
    const v3, 0x9012

    .line 980
    .line 981
    .line 982
    invoke-direct {v14, v15, v3, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 983
    .line 984
    .line 985
    new-instance v3, LI/d;

    .line 986
    .line 987
    const-string v10, "ComponentsConfiguration"

    .line 988
    .line 989
    const v15, 0x9101

    .line 990
    .line 991
    .line 992
    move-object/from16 v87, v14

    .line 993
    .line 994
    const/4 v14, 0x7

    .line 995
    invoke-direct {v3, v10, v15, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 996
    .line 997
    .line 998
    new-instance v10, LI/d;

    .line 999
    .line 1000
    const-string v14, "CompressedBitsPerPixel"

    .line 1001
    .line 1002
    const v15, 0x9102

    .line 1003
    .line 1004
    .line 1005
    move-object/from16 v88, v3

    .line 1006
    .line 1007
    const/4 v3, 0x5

    .line 1008
    invoke-direct {v10, v14, v15, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1009
    .line 1010
    .line 1011
    new-instance v14, LI/d;

    .line 1012
    .line 1013
    const-string v15, "ShutterSpeedValue"

    .line 1014
    .line 1015
    const v3, 0x9201

    .line 1016
    .line 1017
    .line 1018
    move-object/from16 v89, v10

    .line 1019
    .line 1020
    const/16 v10, 0xa

    .line 1021
    .line 1022
    invoke-direct {v14, v15, v3, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1023
    .line 1024
    .line 1025
    new-instance v3, LI/d;

    .line 1026
    .line 1027
    const-string v15, "ApertureValue"

    .line 1028
    .line 1029
    const v10, 0x9202

    .line 1030
    .line 1031
    .line 1032
    move-object/from16 v90, v14

    .line 1033
    .line 1034
    const/4 v14, 0x5

    .line 1035
    invoke-direct {v3, v15, v10, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1036
    .line 1037
    .line 1038
    new-instance v10, LI/d;

    .line 1039
    .line 1040
    const-string v14, "BrightnessValue"

    .line 1041
    .line 1042
    const v15, 0x9203

    .line 1043
    .line 1044
    .line 1045
    move-object/from16 v91, v3

    .line 1046
    .line 1047
    const/16 v3, 0xa

    .line 1048
    .line 1049
    invoke-direct {v10, v14, v15, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1050
    .line 1051
    .line 1052
    new-instance v14, LI/d;

    .line 1053
    .line 1054
    const-string v15, "ExposureBiasValue"

    .line 1055
    .line 1056
    move-object/from16 v92, v10

    .line 1057
    .line 1058
    const v10, 0x9204

    .line 1059
    .line 1060
    .line 1061
    invoke-direct {v14, v15, v10, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1062
    .line 1063
    .line 1064
    new-instance v3, LI/d;

    .line 1065
    .line 1066
    const-string v10, "MaxApertureValue"

    .line 1067
    .line 1068
    const v15, 0x9205

    .line 1069
    .line 1070
    .line 1071
    move-object/from16 v93, v14

    .line 1072
    .line 1073
    const/4 v14, 0x5

    .line 1074
    invoke-direct {v3, v10, v15, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1075
    .line 1076
    .line 1077
    new-instance v10, LI/d;

    .line 1078
    .line 1079
    const-string v15, "SubjectDistance"

    .line 1080
    .line 1081
    move-object/from16 v94, v3

    .line 1082
    .line 1083
    const v3, 0x9206

    .line 1084
    .line 1085
    .line 1086
    invoke-direct {v10, v15, v3, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1087
    .line 1088
    .line 1089
    new-instance v3, LI/d;

    .line 1090
    .line 1091
    const-string v14, "MeteringMode"

    .line 1092
    .line 1093
    const v15, 0x9207

    .line 1094
    .line 1095
    .line 1096
    move-object/from16 v95, v10

    .line 1097
    .line 1098
    const/4 v10, 0x3

    .line 1099
    invoke-direct {v3, v14, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1100
    .line 1101
    .line 1102
    new-instance v14, LI/d;

    .line 1103
    .line 1104
    const-string v15, "LightSource"

    .line 1105
    .line 1106
    move-object/from16 v96, v3

    .line 1107
    .line 1108
    const v3, 0x9208

    .line 1109
    .line 1110
    .line 1111
    invoke-direct {v14, v15, v3, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1112
    .line 1113
    .line 1114
    new-instance v3, LI/d;

    .line 1115
    .line 1116
    const-string v15, "Flash"

    .line 1117
    .line 1118
    move-object/from16 v97, v14

    .line 1119
    .line 1120
    const v14, 0x9209

    .line 1121
    .line 1122
    .line 1123
    invoke-direct {v3, v15, v14, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1124
    .line 1125
    .line 1126
    new-instance v14, LI/d;

    .line 1127
    .line 1128
    const-string v15, "FocalLength"

    .line 1129
    .line 1130
    const v10, 0x920a

    .line 1131
    .line 1132
    .line 1133
    move-object/from16 v98, v3

    .line 1134
    .line 1135
    const/4 v3, 0x5

    .line 1136
    invoke-direct {v14, v15, v10, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1137
    .line 1138
    .line 1139
    new-instance v3, LI/d;

    .line 1140
    .line 1141
    const-string v10, "SubjectArea"

    .line 1142
    .line 1143
    const v15, 0x9214

    .line 1144
    .line 1145
    .line 1146
    move-object/from16 v99, v14

    .line 1147
    .line 1148
    const/4 v14, 0x3

    .line 1149
    invoke-direct {v3, v10, v15, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1150
    .line 1151
    .line 1152
    new-instance v10, LI/d;

    .line 1153
    .line 1154
    const-string v14, "MakerNote"

    .line 1155
    .line 1156
    const v15, 0x927c

    .line 1157
    .line 1158
    .line 1159
    move-object/from16 v100, v3

    .line 1160
    .line 1161
    const/4 v3, 0x7

    .line 1162
    invoke-direct {v10, v14, v15, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1163
    .line 1164
    .line 1165
    new-instance v14, LI/d;

    .line 1166
    .line 1167
    const-string v15, "UserComment"

    .line 1168
    .line 1169
    move-object/from16 v101, v10

    .line 1170
    .line 1171
    const v10, 0x9286

    .line 1172
    .line 1173
    .line 1174
    invoke-direct {v14, v15, v10, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1175
    .line 1176
    .line 1177
    new-instance v3, LI/d;

    .line 1178
    .line 1179
    const-string v10, "SubSecTime"

    .line 1180
    .line 1181
    const v15, 0x9290

    .line 1182
    .line 1183
    .line 1184
    move-object/from16 v102, v14

    .line 1185
    .line 1186
    const/4 v14, 0x2

    .line 1187
    invoke-direct {v3, v10, v15, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1188
    .line 1189
    .line 1190
    new-instance v10, LI/d;

    .line 1191
    .line 1192
    const-string v15, "SubSecTimeOriginal"

    .line 1193
    .line 1194
    move-object/from16 v103, v3

    .line 1195
    .line 1196
    const v3, 0x9291

    .line 1197
    .line 1198
    .line 1199
    invoke-direct {v10, v15, v3, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1200
    .line 1201
    .line 1202
    new-instance v3, LI/d;

    .line 1203
    .line 1204
    const-string v15, "SubSecTimeDigitized"

    .line 1205
    .line 1206
    move-object/from16 v104, v10

    .line 1207
    .line 1208
    const v10, 0x9292

    .line 1209
    .line 1210
    .line 1211
    invoke-direct {v3, v15, v10, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1212
    .line 1213
    .line 1214
    new-instance v10, LI/d;

    .line 1215
    .line 1216
    const-string v14, "FlashpixVersion"

    .line 1217
    .line 1218
    const v15, 0xa000

    .line 1219
    .line 1220
    .line 1221
    move-object/from16 v105, v3

    .line 1222
    .line 1223
    const/4 v3, 0x7

    .line 1224
    invoke-direct {v10, v14, v15, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1225
    .line 1226
    .line 1227
    new-instance v3, LI/d;

    .line 1228
    .line 1229
    const-string v14, "ColorSpace"

    .line 1230
    .line 1231
    const v15, 0xa001

    .line 1232
    .line 1233
    .line 1234
    move-object/from16 v106, v10

    .line 1235
    .line 1236
    const/4 v10, 0x3

    .line 1237
    invoke-direct {v3, v14, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1238
    .line 1239
    .line 1240
    new-instance v14, LI/d;

    .line 1241
    .line 1242
    const-string v15, "PixelXDimension"

    .line 1243
    .line 1244
    move-object/from16 v107, v3

    .line 1245
    .line 1246
    const v3, 0xa002

    .line 1247
    .line 1248
    .line 1249
    move-object/from16 v16, v1

    .line 1250
    .line 1251
    const/4 v1, 0x4

    .line 1252
    invoke-direct {v14, v15, v3, v10, v1}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 1253
    .line 1254
    .line 1255
    new-instance v3, LI/d;

    .line 1256
    .line 1257
    const-string v15, "PixelYDimension"

    .line 1258
    .line 1259
    move-object/from16 v108, v14

    .line 1260
    .line 1261
    const v14, 0xa003

    .line 1262
    .line 1263
    .line 1264
    invoke-direct {v3, v15, v14, v10, v1}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 1265
    .line 1266
    .line 1267
    new-instance v10, LI/d;

    .line 1268
    .line 1269
    const-string v14, "RelatedSoundFile"

    .line 1270
    .line 1271
    const v15, 0xa004

    .line 1272
    .line 1273
    .line 1274
    const/4 v1, 0x2

    .line 1275
    invoke-direct {v10, v14, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1276
    .line 1277
    .line 1278
    new-instance v1, LI/d;

    .line 1279
    .line 1280
    const-string v14, "InteroperabilityIFDPointer"

    .line 1281
    .line 1282
    const v15, 0xa005

    .line 1283
    .line 1284
    .line 1285
    move-object/from16 v109, v3

    .line 1286
    .line 1287
    const/4 v3, 0x4

    .line 1288
    invoke-direct {v1, v14, v15, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1289
    .line 1290
    .line 1291
    new-instance v3, LI/d;

    .line 1292
    .line 1293
    const-string v14, "FlashEnergy"

    .line 1294
    .line 1295
    const v15, 0xa20b

    .line 1296
    .line 1297
    .line 1298
    move-object/from16 v111, v1

    .line 1299
    .line 1300
    const/4 v1, 0x5

    .line 1301
    invoke-direct {v3, v14, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1302
    .line 1303
    .line 1304
    new-instance v14, LI/d;

    .line 1305
    .line 1306
    const-string v15, "SpatialFrequencyResponse"

    .line 1307
    .line 1308
    const v1, 0xa20c

    .line 1309
    .line 1310
    .line 1311
    move-object/from16 v112, v3

    .line 1312
    .line 1313
    const/4 v3, 0x7

    .line 1314
    invoke-direct {v14, v15, v1, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1315
    .line 1316
    .line 1317
    new-instance v1, LI/d;

    .line 1318
    .line 1319
    const-string v3, "FocalPlaneXResolution"

    .line 1320
    .line 1321
    const v15, 0xa20e

    .line 1322
    .line 1323
    .line 1324
    move-object/from16 v110, v10

    .line 1325
    .line 1326
    const/4 v10, 0x5

    .line 1327
    invoke-direct {v1, v3, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1328
    .line 1329
    .line 1330
    new-instance v3, LI/d;

    .line 1331
    .line 1332
    const-string v15, "FocalPlaneYResolution"

    .line 1333
    .line 1334
    move-object/from16 v114, v1

    .line 1335
    .line 1336
    const v1, 0xa20f

    .line 1337
    .line 1338
    .line 1339
    invoke-direct {v3, v15, v1, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1340
    .line 1341
    .line 1342
    new-instance v1, LI/d;

    .line 1343
    .line 1344
    const-string v10, "FocalPlaneResolutionUnit"

    .line 1345
    .line 1346
    const v15, 0xa210

    .line 1347
    .line 1348
    .line 1349
    move-object/from16 v115, v3

    .line 1350
    .line 1351
    const/4 v3, 0x3

    .line 1352
    invoke-direct {v1, v10, v15, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1353
    .line 1354
    .line 1355
    new-instance v10, LI/d;

    .line 1356
    .line 1357
    const-string v15, "SubjectLocation"

    .line 1358
    .line 1359
    move-object/from16 v116, v1

    .line 1360
    .line 1361
    const v1, 0xa214

    .line 1362
    .line 1363
    .line 1364
    invoke-direct {v10, v15, v1, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1365
    .line 1366
    .line 1367
    new-instance v1, LI/d;

    .line 1368
    .line 1369
    const-string v15, "ExposureIndex"

    .line 1370
    .line 1371
    const v3, 0xa215

    .line 1372
    .line 1373
    .line 1374
    move-object/from16 v117, v10

    .line 1375
    .line 1376
    const/4 v10, 0x5

    .line 1377
    invoke-direct {v1, v15, v3, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1378
    .line 1379
    .line 1380
    new-instance v3, LI/d;

    .line 1381
    .line 1382
    const-string v10, "SensingMethod"

    .line 1383
    .line 1384
    const v15, 0xa217

    .line 1385
    .line 1386
    .line 1387
    move-object/from16 v118, v1

    .line 1388
    .line 1389
    const/4 v1, 0x3

    .line 1390
    invoke-direct {v3, v10, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1391
    .line 1392
    .line 1393
    new-instance v1, LI/d;

    .line 1394
    .line 1395
    const-string v10, "FileSource"

    .line 1396
    .line 1397
    const v15, 0xa300

    .line 1398
    .line 1399
    .line 1400
    move-object/from16 v119, v3

    .line 1401
    .line 1402
    const/4 v3, 0x7

    .line 1403
    invoke-direct {v1, v10, v15, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1404
    .line 1405
    .line 1406
    new-instance v10, LI/d;

    .line 1407
    .line 1408
    const-string v15, "SceneType"

    .line 1409
    .line 1410
    move-object/from16 v120, v1

    .line 1411
    .line 1412
    const v1, 0xa301

    .line 1413
    .line 1414
    .line 1415
    invoke-direct {v10, v15, v1, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1416
    .line 1417
    .line 1418
    new-instance v1, LI/d;

    .line 1419
    .line 1420
    const-string v15, "CFAPattern"

    .line 1421
    .line 1422
    move-object/from16 v121, v10

    .line 1423
    .line 1424
    const v10, 0xa302

    .line 1425
    .line 1426
    .line 1427
    invoke-direct {v1, v15, v10, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1428
    .line 1429
    .line 1430
    new-instance v3, LI/d;

    .line 1431
    .line 1432
    const-string v10, "CustomRendered"

    .line 1433
    .line 1434
    const v15, 0xa401

    .line 1435
    .line 1436
    .line 1437
    move-object/from16 v122, v1

    .line 1438
    .line 1439
    const/4 v1, 0x3

    .line 1440
    invoke-direct {v3, v10, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1441
    .line 1442
    .line 1443
    new-instance v10, LI/d;

    .line 1444
    .line 1445
    const-string v15, "ExposureMode"

    .line 1446
    .line 1447
    move-object/from16 v123, v3

    .line 1448
    .line 1449
    const v3, 0xa402

    .line 1450
    .line 1451
    .line 1452
    invoke-direct {v10, v15, v3, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1453
    .line 1454
    .line 1455
    new-instance v3, LI/d;

    .line 1456
    .line 1457
    const-string v15, "WhiteBalance"

    .line 1458
    .line 1459
    move-object/from16 v124, v10

    .line 1460
    .line 1461
    const v10, 0xa403

    .line 1462
    .line 1463
    .line 1464
    invoke-direct {v3, v15, v10, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1465
    .line 1466
    .line 1467
    new-instance v10, LI/d;

    .line 1468
    .line 1469
    const-string v15, "DigitalZoomRatio"

    .line 1470
    .line 1471
    const v1, 0xa404

    .line 1472
    .line 1473
    .line 1474
    move-object/from16 v125, v3

    .line 1475
    .line 1476
    const/4 v3, 0x5

    .line 1477
    invoke-direct {v10, v15, v1, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1478
    .line 1479
    .line 1480
    new-instance v1, LI/d;

    .line 1481
    .line 1482
    const-string v3, "FocalLengthIn35mmFilm"

    .line 1483
    .line 1484
    const v15, 0xa405

    .line 1485
    .line 1486
    .line 1487
    move-object/from16 v126, v10

    .line 1488
    .line 1489
    const/4 v10, 0x3

    .line 1490
    invoke-direct {v1, v3, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1491
    .line 1492
    .line 1493
    new-instance v3, LI/d;

    .line 1494
    .line 1495
    const-string v15, "SceneCaptureType"

    .line 1496
    .line 1497
    move-object/from16 v127, v1

    .line 1498
    .line 1499
    const v1, 0xa406

    .line 1500
    .line 1501
    .line 1502
    invoke-direct {v3, v15, v1, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1503
    .line 1504
    .line 1505
    new-instance v1, LI/d;

    .line 1506
    .line 1507
    const-string v15, "GainControl"

    .line 1508
    .line 1509
    move-object/from16 v128, v3

    .line 1510
    .line 1511
    const v3, 0xa407

    .line 1512
    .line 1513
    .line 1514
    invoke-direct {v1, v15, v3, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1515
    .line 1516
    .line 1517
    new-instance v3, LI/d;

    .line 1518
    .line 1519
    const-string v15, "Contrast"

    .line 1520
    .line 1521
    move-object/from16 v129, v1

    .line 1522
    .line 1523
    const v1, 0xa408

    .line 1524
    .line 1525
    .line 1526
    invoke-direct {v3, v15, v1, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1527
    .line 1528
    .line 1529
    new-instance v1, LI/d;

    .line 1530
    .line 1531
    const-string v15, "Saturation"

    .line 1532
    .line 1533
    move-object/from16 v130, v3

    .line 1534
    .line 1535
    const v3, 0xa409

    .line 1536
    .line 1537
    .line 1538
    invoke-direct {v1, v15, v3, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1539
    .line 1540
    .line 1541
    new-instance v3, LI/d;

    .line 1542
    .line 1543
    const-string v15, "Sharpness"

    .line 1544
    .line 1545
    move-object/from16 v131, v1

    .line 1546
    .line 1547
    const v1, 0xa40a

    .line 1548
    .line 1549
    .line 1550
    invoke-direct {v3, v15, v1, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1551
    .line 1552
    .line 1553
    new-instance v1, LI/d;

    .line 1554
    .line 1555
    const-string v15, "DeviceSettingDescription"

    .line 1556
    .line 1557
    const v10, 0xa40b

    .line 1558
    .line 1559
    .line 1560
    move-object/from16 v132, v3

    .line 1561
    .line 1562
    const/4 v3, 0x7

    .line 1563
    invoke-direct {v1, v15, v10, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1564
    .line 1565
    .line 1566
    new-instance v3, LI/d;

    .line 1567
    .line 1568
    const-string v10, "SubjectDistanceRange"

    .line 1569
    .line 1570
    const v15, 0xa40c

    .line 1571
    .line 1572
    .line 1573
    move-object/from16 v133, v1

    .line 1574
    .line 1575
    const/4 v1, 0x3

    .line 1576
    invoke-direct {v3, v10, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1577
    .line 1578
    .line 1579
    new-instance v1, LI/d;

    .line 1580
    .line 1581
    const-string v10, "ImageUniqueID"

    .line 1582
    .line 1583
    const v15, 0xa420

    .line 1584
    .line 1585
    .line 1586
    move-object/from16 v134, v3

    .line 1587
    .line 1588
    const/4 v3, 0x2

    .line 1589
    invoke-direct {v1, v10, v15, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1590
    .line 1591
    .line 1592
    new-instance v10, LI/d;

    .line 1593
    .line 1594
    const-string v15, "CameraOwnerName"

    .line 1595
    .line 1596
    move-object/from16 v135, v1

    .line 1597
    .line 1598
    const v1, 0xa430

    .line 1599
    .line 1600
    .line 1601
    invoke-direct {v10, v15, v1, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1602
    .line 1603
    .line 1604
    new-instance v1, LI/d;

    .line 1605
    .line 1606
    const-string v15, "BodySerialNumber"

    .line 1607
    .line 1608
    move-object/from16 v136, v10

    .line 1609
    .line 1610
    const v10, 0xa431

    .line 1611
    .line 1612
    .line 1613
    invoke-direct {v1, v15, v10, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1614
    .line 1615
    .line 1616
    new-instance v10, LI/d;

    .line 1617
    .line 1618
    const-string v15, "LensSpecification"

    .line 1619
    .line 1620
    const v3, 0xa432

    .line 1621
    .line 1622
    .line 1623
    move-object/from16 v137, v1

    .line 1624
    .line 1625
    const/4 v1, 0x5

    .line 1626
    invoke-direct {v10, v15, v3, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1627
    .line 1628
    .line 1629
    new-instance v1, LI/d;

    .line 1630
    .line 1631
    const-string v3, "LensMake"

    .line 1632
    .line 1633
    const v15, 0xa433

    .line 1634
    .line 1635
    .line 1636
    move-object/from16 v138, v10

    .line 1637
    .line 1638
    const/4 v10, 0x2

    .line 1639
    invoke-direct {v1, v3, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1640
    .line 1641
    .line 1642
    new-instance v3, LI/d;

    .line 1643
    .line 1644
    const-string v15, "LensModel"

    .line 1645
    .line 1646
    move-object/from16 v139, v1

    .line 1647
    .line 1648
    const v1, 0xa434

    .line 1649
    .line 1650
    .line 1651
    invoke-direct {v3, v15, v1, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1652
    .line 1653
    .line 1654
    new-instance v1, LI/d;

    .line 1655
    .line 1656
    const-string v10, "Gamma"

    .line 1657
    .line 1658
    const v15, 0xa500

    .line 1659
    .line 1660
    .line 1661
    move-object/from16 v140, v3

    .line 1662
    .line 1663
    const/4 v3, 0x5

    .line 1664
    invoke-direct {v1, v10, v15, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1665
    .line 1666
    .line 1667
    new-instance v3, LI/d;

    .line 1668
    .line 1669
    const-string v10, "DNGVersion"

    .line 1670
    .line 1671
    const v15, 0xc612

    .line 1672
    .line 1673
    .line 1674
    move-object/from16 v141, v1

    .line 1675
    .line 1676
    const/4 v1, 0x1

    .line 1677
    invoke-direct {v3, v10, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1678
    .line 1679
    .line 1680
    new-instance v10, LI/d;

    .line 1681
    .line 1682
    const-string v15, "DefaultCropSize"

    .line 1683
    .line 1684
    const v1, 0xc620

    .line 1685
    .line 1686
    .line 1687
    move-object/from16 v142, v3

    .line 1688
    .line 1689
    move-object/from16 v113, v14

    .line 1690
    .line 1691
    const/4 v3, 0x3

    .line 1692
    const/4 v14, 0x4

    .line 1693
    invoke-direct {v10, v15, v1, v3, v14}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 1694
    .line 1695
    .line 1696
    move-object/from16 v143, v10

    .line 1697
    .line 1698
    filled-new-array/range {v70 .. v143}, [LI/d;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v70

    .line 1702
    new-instance v1, LI/d;

    .line 1703
    .line 1704
    const-string v3, "GPSVersionID"

    .line 1705
    .line 1706
    const/4 v10, 0x0

    .line 1707
    const/4 v14, 0x1

    .line 1708
    invoke-direct {v1, v3, v10, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1709
    .line 1710
    .line 1711
    new-instance v3, LI/d;

    .line 1712
    .line 1713
    const-string v15, "GPSLatitudeRef"

    .line 1714
    .line 1715
    move/from16 v49, v10

    .line 1716
    .line 1717
    const/4 v10, 0x2

    .line 1718
    invoke-direct {v3, v15, v14, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1719
    .line 1720
    .line 1721
    new-instance v14, LI/d;

    .line 1722
    .line 1723
    const-string v15, "GPSLatitude"

    .line 1724
    .line 1725
    move-object/from16 v17, v1

    .line 1726
    .line 1727
    move-object/from16 v18, v3

    .line 1728
    .line 1729
    const/4 v1, 0x5

    .line 1730
    const/16 v3, 0xa

    .line 1731
    .line 1732
    invoke-direct {v14, v15, v10, v1, v3}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 1733
    .line 1734
    .line 1735
    new-instance v15, LI/d;

    .line 1736
    .line 1737
    const-string v1, "GPSLongitudeRef"

    .line 1738
    .line 1739
    const/4 v3, 0x3

    .line 1740
    invoke-direct {v15, v1, v3, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1741
    .line 1742
    .line 1743
    new-instance v1, LI/d;

    .line 1744
    .line 1745
    const-string v3, "GPSLongitude"

    .line 1746
    .line 1747
    move-object/from16 v19, v14

    .line 1748
    .line 1749
    move-object/from16 v20, v15

    .line 1750
    .line 1751
    const/4 v10, 0x4

    .line 1752
    const/4 v14, 0x5

    .line 1753
    const/16 v15, 0xa

    .line 1754
    .line 1755
    invoke-direct {v1, v3, v10, v14, v15}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 1756
    .line 1757
    .line 1758
    new-instance v3, LI/d;

    .line 1759
    .line 1760
    const-string v10, "GPSAltitudeRef"

    .line 1761
    .line 1762
    const/4 v15, 0x1

    .line 1763
    invoke-direct {v3, v10, v14, v15}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1764
    .line 1765
    .line 1766
    new-instance v10, LI/d;

    .line 1767
    .line 1768
    const-string v15, "GPSAltitude"

    .line 1769
    .line 1770
    move-object/from16 v21, v1

    .line 1771
    .line 1772
    const/4 v1, 0x6

    .line 1773
    invoke-direct {v10, v15, v1, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1774
    .line 1775
    .line 1776
    new-instance v1, LI/d;

    .line 1777
    .line 1778
    const-string v15, "GPSTimeStamp"

    .line 1779
    .line 1780
    move-object/from16 v22, v3

    .line 1781
    .line 1782
    const/4 v3, 0x7

    .line 1783
    invoke-direct {v1, v15, v3, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1784
    .line 1785
    .line 1786
    new-instance v3, LI/d;

    .line 1787
    .line 1788
    const-string v14, "GPSSatellites"

    .line 1789
    .line 1790
    move-object/from16 v24, v1

    .line 1791
    .line 1792
    const/4 v1, 0x2

    .line 1793
    const/16 v15, 0x8

    .line 1794
    .line 1795
    invoke-direct {v3, v14, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1796
    .line 1797
    .line 1798
    new-instance v14, LI/d;

    .line 1799
    .line 1800
    const-string v15, "GPSStatus"

    .line 1801
    .line 1802
    move-object/from16 v25, v3

    .line 1803
    .line 1804
    const/16 v3, 0x9

    .line 1805
    .line 1806
    invoke-direct {v14, v15, v3, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1807
    .line 1808
    .line 1809
    new-instance v3, LI/d;

    .line 1810
    .line 1811
    const-string v15, "GPSMeasureMode"

    .line 1812
    .line 1813
    move-object/from16 v23, v10

    .line 1814
    .line 1815
    const/16 v10, 0xa

    .line 1816
    .line 1817
    invoke-direct {v3, v15, v10, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1818
    .line 1819
    .line 1820
    new-instance v10, LI/d;

    .line 1821
    .line 1822
    const-string v15, "GPSDOP"

    .line 1823
    .line 1824
    const/16 v1, 0xb

    .line 1825
    .line 1826
    move-object/from16 v27, v3

    .line 1827
    .line 1828
    const/4 v3, 0x5

    .line 1829
    invoke-direct {v10, v15, v1, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1830
    .line 1831
    .line 1832
    new-instance v1, LI/d;

    .line 1833
    .line 1834
    const-string v15, "GPSSpeedRef"

    .line 1835
    .line 1836
    const/16 v3, 0xc

    .line 1837
    .line 1838
    move-object/from16 v28, v10

    .line 1839
    .line 1840
    const/4 v10, 0x2

    .line 1841
    invoke-direct {v1, v15, v3, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1842
    .line 1843
    .line 1844
    new-instance v3, LI/d;

    .line 1845
    .line 1846
    const-string v15, "GPSSpeed"

    .line 1847
    .line 1848
    const/16 v10, 0xd

    .line 1849
    .line 1850
    move-object/from16 v29, v1

    .line 1851
    .line 1852
    const/4 v1, 0x5

    .line 1853
    invoke-direct {v3, v15, v10, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1854
    .line 1855
    .line 1856
    new-instance v10, LI/d;

    .line 1857
    .line 1858
    const-string v15, "GPSTrackRef"

    .line 1859
    .line 1860
    move-object/from16 v30, v3

    .line 1861
    .line 1862
    const/4 v1, 0x2

    .line 1863
    const/16 v3, 0xe

    .line 1864
    .line 1865
    invoke-direct {v10, v15, v3, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1866
    .line 1867
    .line 1868
    new-instance v3, LI/d;

    .line 1869
    .line 1870
    const-string v15, "GPSTrack"

    .line 1871
    .line 1872
    const/16 v1, 0xf

    .line 1873
    .line 1874
    move-object/from16 v31, v10

    .line 1875
    .line 1876
    const/4 v10, 0x5

    .line 1877
    invoke-direct {v3, v15, v1, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1878
    .line 1879
    .line 1880
    new-instance v1, LI/d;

    .line 1881
    .line 1882
    const-string v15, "GPSImgDirectionRef"

    .line 1883
    .line 1884
    const/16 v10, 0x10

    .line 1885
    .line 1886
    move-object/from16 v32, v3

    .line 1887
    .line 1888
    const/4 v3, 0x2

    .line 1889
    invoke-direct {v1, v15, v10, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1890
    .line 1891
    .line 1892
    new-instance v10, LI/d;

    .line 1893
    .line 1894
    const-string v15, "GPSImgDirection"

    .line 1895
    .line 1896
    const/16 v3, 0x11

    .line 1897
    .line 1898
    move-object/from16 v33, v1

    .line 1899
    .line 1900
    const/4 v1, 0x5

    .line 1901
    invoke-direct {v10, v15, v3, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1902
    .line 1903
    .line 1904
    new-instance v1, LI/d;

    .line 1905
    .line 1906
    const-string v3, "GPSMapDatum"

    .line 1907
    .line 1908
    const/16 v15, 0x12

    .line 1909
    .line 1910
    move-object/from16 v34, v10

    .line 1911
    .line 1912
    const/4 v10, 0x2

    .line 1913
    invoke-direct {v1, v3, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1914
    .line 1915
    .line 1916
    new-instance v3, LI/d;

    .line 1917
    .line 1918
    const-string v15, "GPSDestLatitudeRef"

    .line 1919
    .line 1920
    move-object/from16 v35, v1

    .line 1921
    .line 1922
    const/16 v1, 0x13

    .line 1923
    .line 1924
    invoke-direct {v3, v15, v1, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1925
    .line 1926
    .line 1927
    new-instance v1, LI/d;

    .line 1928
    .line 1929
    const-string v15, "GPSDestLatitude"

    .line 1930
    .line 1931
    const/16 v10, 0x14

    .line 1932
    .line 1933
    move-object/from16 v36, v3

    .line 1934
    .line 1935
    const/4 v3, 0x5

    .line 1936
    invoke-direct {v1, v15, v10, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1937
    .line 1938
    .line 1939
    new-instance v10, LI/d;

    .line 1940
    .line 1941
    const-string v15, "GPSDestLongitudeRef"

    .line 1942
    .line 1943
    const/16 v3, 0x15

    .line 1944
    .line 1945
    move-object/from16 v37, v1

    .line 1946
    .line 1947
    const/4 v1, 0x2

    .line 1948
    invoke-direct {v10, v15, v3, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1949
    .line 1950
    .line 1951
    new-instance v3, LI/d;

    .line 1952
    .line 1953
    const-string v15, "GPSDestLongitude"

    .line 1954
    .line 1955
    const/16 v1, 0x16

    .line 1956
    .line 1957
    move-object/from16 v38, v10

    .line 1958
    .line 1959
    const/4 v10, 0x5

    .line 1960
    invoke-direct {v3, v15, v1, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1961
    .line 1962
    .line 1963
    new-instance v1, LI/d;

    .line 1964
    .line 1965
    const-string v15, "GPSDestBearingRef"

    .line 1966
    .line 1967
    const/16 v10, 0x17

    .line 1968
    .line 1969
    move-object/from16 v39, v3

    .line 1970
    .line 1971
    const/4 v3, 0x2

    .line 1972
    invoke-direct {v1, v15, v10, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1973
    .line 1974
    .line 1975
    new-instance v10, LI/d;

    .line 1976
    .line 1977
    const-string v15, "GPSDestBearing"

    .line 1978
    .line 1979
    const/16 v3, 0x18

    .line 1980
    .line 1981
    move-object/from16 v40, v1

    .line 1982
    .line 1983
    const/4 v1, 0x5

    .line 1984
    invoke-direct {v10, v15, v3, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1985
    .line 1986
    .line 1987
    new-instance v3, LI/d;

    .line 1988
    .line 1989
    const-string v15, "GPSDestDistanceRef"

    .line 1990
    .line 1991
    const/16 v1, 0x19

    .line 1992
    .line 1993
    move-object/from16 v41, v10

    .line 1994
    .line 1995
    const/4 v10, 0x2

    .line 1996
    invoke-direct {v3, v15, v1, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 1997
    .line 1998
    .line 1999
    new-instance v1, LI/d;

    .line 2000
    .line 2001
    const-string v10, "GPSDestDistance"

    .line 2002
    .line 2003
    const/16 v15, 0x1a

    .line 2004
    .line 2005
    move-object/from16 v42, v3

    .line 2006
    .line 2007
    const/4 v3, 0x5

    .line 2008
    invoke-direct {v1, v10, v15, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2009
    .line 2010
    .line 2011
    new-instance v3, LI/d;

    .line 2012
    .line 2013
    const-string v10, "GPSProcessingMethod"

    .line 2014
    .line 2015
    const/16 v15, 0x1b

    .line 2016
    .line 2017
    move-object/from16 v43, v1

    .line 2018
    .line 2019
    const/4 v1, 0x7

    .line 2020
    invoke-direct {v3, v10, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2021
    .line 2022
    .line 2023
    new-instance v10, LI/d;

    .line 2024
    .line 2025
    const-string v15, "GPSAreaInformation"

    .line 2026
    .line 2027
    move-object/from16 v44, v3

    .line 2028
    .line 2029
    const/16 v3, 0x1c

    .line 2030
    .line 2031
    invoke-direct {v10, v15, v3, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2032
    .line 2033
    .line 2034
    new-instance v1, LI/d;

    .line 2035
    .line 2036
    const-string v3, "GPSDateStamp"

    .line 2037
    .line 2038
    const/16 v15, 0x1d

    .line 2039
    .line 2040
    move-object/from16 v45, v10

    .line 2041
    .line 2042
    const/4 v10, 0x2

    .line 2043
    invoke-direct {v1, v3, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2044
    .line 2045
    .line 2046
    new-instance v3, LI/d;

    .line 2047
    .line 2048
    const-string v10, "GPSDifferential"

    .line 2049
    .line 2050
    const/16 v15, 0x1e

    .line 2051
    .line 2052
    move-object/from16 v46, v1

    .line 2053
    .line 2054
    const/4 v1, 0x3

    .line 2055
    invoke-direct {v3, v10, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2056
    .line 2057
    .line 2058
    new-instance v1, LI/d;

    .line 2059
    .line 2060
    const-string v10, "GPSHPositioningError"

    .line 2061
    .line 2062
    const/16 v15, 0x1f

    .line 2063
    .line 2064
    move-object/from16 v47, v3

    .line 2065
    .line 2066
    const/4 v3, 0x5

    .line 2067
    invoke-direct {v1, v10, v15, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2068
    .line 2069
    .line 2070
    move-object/from16 v48, v1

    .line 2071
    .line 2072
    move-object/from16 v26, v14

    .line 2073
    .line 2074
    filled-new-array/range {v17 .. v48}, [LI/d;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v71

    .line 2078
    new-instance v1, LI/d;

    .line 2079
    .line 2080
    const-string v3, "InteroperabilityIndex"

    .line 2081
    .line 2082
    const/4 v10, 0x2

    .line 2083
    const/4 v14, 0x1

    .line 2084
    invoke-direct {v1, v3, v14, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2085
    .line 2086
    .line 2087
    filled-new-array {v1}, [LI/d;

    .line 2088
    .line 2089
    .line 2090
    move-result-object v72

    .line 2091
    new-instance v1, LI/d;

    .line 2092
    .line 2093
    const/16 v3, 0xfe

    .line 2094
    .line 2095
    const/4 v10, 0x4

    .line 2096
    invoke-direct {v1, v12, v3, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2097
    .line 2098
    .line 2099
    new-instance v3, LI/d;

    .line 2100
    .line 2101
    const/16 v12, 0xff

    .line 2102
    .line 2103
    invoke-direct {v3, v2, v12, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2104
    .line 2105
    .line 2106
    new-instance v2, LI/d;

    .line 2107
    .line 2108
    const-string v12, "ThumbnailImageWidth"

    .line 2109
    .line 2110
    const/4 v14, 0x3

    .line 2111
    const/16 v15, 0x100

    .line 2112
    .line 2113
    invoke-direct {v2, v12, v15, v14, v10}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 2114
    .line 2115
    .line 2116
    new-instance v12, LI/d;

    .line 2117
    .line 2118
    const-string v15, "ThumbnailImageLength"

    .line 2119
    .line 2120
    move-object/from16 v73, v1

    .line 2121
    .line 2122
    const/16 v1, 0x101

    .line 2123
    .line 2124
    invoke-direct {v12, v15, v1, v14, v10}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 2125
    .line 2126
    .line 2127
    new-instance v1, LI/d;

    .line 2128
    .line 2129
    const/16 v10, 0x102

    .line 2130
    .line 2131
    invoke-direct {v1, v5, v10, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2132
    .line 2133
    .line 2134
    new-instance v5, LI/d;

    .line 2135
    .line 2136
    const/16 v10, 0x103

    .line 2137
    .line 2138
    invoke-direct {v5, v4, v10, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2139
    .line 2140
    .line 2141
    new-instance v4, LI/d;

    .line 2142
    .line 2143
    const/16 v10, 0x106

    .line 2144
    .line 2145
    invoke-direct {v4, v9, v10, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2146
    .line 2147
    .line 2148
    new-instance v9, LI/d;

    .line 2149
    .line 2150
    const/4 v10, 0x2

    .line 2151
    const/16 v15, 0x10e

    .line 2152
    .line 2153
    invoke-direct {v9, v0, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2154
    .line 2155
    .line 2156
    new-instance v0, LI/d;

    .line 2157
    .line 2158
    const/16 v15, 0x10f

    .line 2159
    .line 2160
    invoke-direct {v0, v11, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2161
    .line 2162
    .line 2163
    new-instance v11, LI/d;

    .line 2164
    .line 2165
    const/16 v15, 0x110

    .line 2166
    .line 2167
    invoke-direct {v11, v6, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2168
    .line 2169
    .line 2170
    new-instance v6, LI/d;

    .line 2171
    .line 2172
    const/4 v10, 0x4

    .line 2173
    const/16 v15, 0x111

    .line 2174
    .line 2175
    invoke-direct {v6, v7, v15, v14, v10}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 2176
    .line 2177
    .line 2178
    new-instance v10, LI/d;

    .line 2179
    .line 2180
    const-string v15, "ThumbnailOrientation"

    .line 2181
    .line 2182
    move-object/from16 v81, v0

    .line 2183
    .line 2184
    const/16 v0, 0x112

    .line 2185
    .line 2186
    invoke-direct {v10, v15, v0, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2187
    .line 2188
    .line 2189
    new-instance v0, LI/d;

    .line 2190
    .line 2191
    const-string v15, "SamplesPerPixel"

    .line 2192
    .line 2193
    move-object/from16 v77, v1

    .line 2194
    .line 2195
    const/16 v1, 0x115

    .line 2196
    .line 2197
    invoke-direct {v0, v15, v1, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2198
    .line 2199
    .line 2200
    new-instance v1, LI/d;

    .line 2201
    .line 2202
    const-string v15, "RowsPerStrip"

    .line 2203
    .line 2204
    move-object/from16 v85, v0

    .line 2205
    .line 2206
    const/16 v0, 0x116

    .line 2207
    .line 2208
    move-object/from16 v75, v2

    .line 2209
    .line 2210
    const/4 v2, 0x4

    .line 2211
    invoke-direct {v1, v15, v0, v14, v2}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 2212
    .line 2213
    .line 2214
    new-instance v0, LI/d;

    .line 2215
    .line 2216
    const-string v15, "StripByteCounts"

    .line 2217
    .line 2218
    move-object/from16 v86, v1

    .line 2219
    .line 2220
    const/16 v1, 0x117

    .line 2221
    .line 2222
    invoke-direct {v0, v15, v1, v14, v2}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 2223
    .line 2224
    .line 2225
    new-instance v1, LI/d;

    .line 2226
    .line 2227
    const-string v2, "XResolution"

    .line 2228
    .line 2229
    const/16 v14, 0x11a

    .line 2230
    .line 2231
    const/4 v15, 0x5

    .line 2232
    invoke-direct {v1, v2, v14, v15}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2233
    .line 2234
    .line 2235
    new-instance v2, LI/d;

    .line 2236
    .line 2237
    const-string v14, "YResolution"

    .line 2238
    .line 2239
    move-object/from16 v87, v0

    .line 2240
    .line 2241
    const/16 v0, 0x11b

    .line 2242
    .line 2243
    invoke-direct {v2, v14, v0, v15}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2244
    .line 2245
    .line 2246
    new-instance v0, LI/d;

    .line 2247
    .line 2248
    const-string v14, "PlanarConfiguration"

    .line 2249
    .line 2250
    const/16 v15, 0x11c

    .line 2251
    .line 2252
    move-object/from16 v88, v1

    .line 2253
    .line 2254
    const/4 v1, 0x3

    .line 2255
    invoke-direct {v0, v14, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2256
    .line 2257
    .line 2258
    new-instance v14, LI/d;

    .line 2259
    .line 2260
    const-string v15, "ResolutionUnit"

    .line 2261
    .line 2262
    move-object/from16 v90, v0

    .line 2263
    .line 2264
    const/16 v0, 0x128

    .line 2265
    .line 2266
    invoke-direct {v14, v15, v0, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2267
    .line 2268
    .line 2269
    new-instance v0, LI/d;

    .line 2270
    .line 2271
    const-string v15, "TransferFunction"

    .line 2272
    .line 2273
    move-object/from16 v89, v2

    .line 2274
    .line 2275
    const/16 v2, 0x12d

    .line 2276
    .line 2277
    invoke-direct {v0, v15, v2, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2278
    .line 2279
    .line 2280
    new-instance v1, LI/d;

    .line 2281
    .line 2282
    const-string v2, "Software"

    .line 2283
    .line 2284
    const/16 v15, 0x131

    .line 2285
    .line 2286
    move-object/from16 v92, v0

    .line 2287
    .line 2288
    const/4 v0, 0x2

    .line 2289
    invoke-direct {v1, v2, v15, v0}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2290
    .line 2291
    .line 2292
    new-instance v2, LI/d;

    .line 2293
    .line 2294
    const-string v15, "DateTime"

    .line 2295
    .line 2296
    move-object/from16 v93, v1

    .line 2297
    .line 2298
    const/16 v1, 0x132

    .line 2299
    .line 2300
    invoke-direct {v2, v15, v1, v0}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2301
    .line 2302
    .line 2303
    new-instance v1, LI/d;

    .line 2304
    .line 2305
    const-string v15, "Artist"

    .line 2306
    .line 2307
    move-object/from16 v94, v2

    .line 2308
    .line 2309
    const/16 v2, 0x13b

    .line 2310
    .line 2311
    invoke-direct {v1, v15, v2, v0}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2312
    .line 2313
    .line 2314
    new-instance v0, LI/d;

    .line 2315
    .line 2316
    const-string v2, "WhitePoint"

    .line 2317
    .line 2318
    const/16 v15, 0x13e

    .line 2319
    .line 2320
    move-object/from16 v95, v1

    .line 2321
    .line 2322
    const/4 v1, 0x5

    .line 2323
    invoke-direct {v0, v2, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2324
    .line 2325
    .line 2326
    new-instance v2, LI/d;

    .line 2327
    .line 2328
    const-string v15, "PrimaryChromaticities"

    .line 2329
    .line 2330
    move-object/from16 v96, v0

    .line 2331
    .line 2332
    const/16 v0, 0x13f

    .line 2333
    .line 2334
    invoke-direct {v2, v15, v0, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2335
    .line 2336
    .line 2337
    new-instance v0, LI/d;

    .line 2338
    .line 2339
    const/4 v1, 0x4

    .line 2340
    const/16 v15, 0x14a

    .line 2341
    .line 2342
    invoke-direct {v0, v8, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2343
    .line 2344
    .line 2345
    new-instance v15, LI/d;

    .line 2346
    .line 2347
    move-object/from16 v98, v0

    .line 2348
    .line 2349
    const-string v0, "JPEGInterchangeFormat"

    .line 2350
    .line 2351
    move-object/from16 v97, v2

    .line 2352
    .line 2353
    const/16 v2, 0x201

    .line 2354
    .line 2355
    invoke-direct {v15, v0, v2, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2356
    .line 2357
    .line 2358
    new-instance v0, LI/d;

    .line 2359
    .line 2360
    const-string v2, "JPEGInterchangeFormatLength"

    .line 2361
    .line 2362
    move-object/from16 v74, v3

    .line 2363
    .line 2364
    const/16 v3, 0x202

    .line 2365
    .line 2366
    invoke-direct {v0, v2, v3, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2367
    .line 2368
    .line 2369
    new-instance v1, LI/d;

    .line 2370
    .line 2371
    const-string v2, "YCbCrCoefficients"

    .line 2372
    .line 2373
    const/16 v3, 0x211

    .line 2374
    .line 2375
    move-object/from16 v100, v0

    .line 2376
    .line 2377
    const/4 v0, 0x5

    .line 2378
    invoke-direct {v1, v2, v3, v0}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2379
    .line 2380
    .line 2381
    new-instance v0, LI/d;

    .line 2382
    .line 2383
    const-string v2, "YCbCrSubSampling"

    .line 2384
    .line 2385
    const/16 v3, 0x212

    .line 2386
    .line 2387
    move-object/from16 v101, v1

    .line 2388
    .line 2389
    const/4 v1, 0x3

    .line 2390
    invoke-direct {v0, v2, v3, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2391
    .line 2392
    .line 2393
    new-instance v2, LI/d;

    .line 2394
    .line 2395
    const-string v3, "YCbCrPositioning"

    .line 2396
    .line 2397
    move-object/from16 v102, v0

    .line 2398
    .line 2399
    const/16 v0, 0x213

    .line 2400
    .line 2401
    invoke-direct {v2, v3, v0, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2402
    .line 2403
    .line 2404
    new-instance v0, LI/d;

    .line 2405
    .line 2406
    const-string v1, "ReferenceBlackWhite"

    .line 2407
    .line 2408
    const/16 v3, 0x214

    .line 2409
    .line 2410
    move-object/from16 v103, v2

    .line 2411
    .line 2412
    const/4 v2, 0x5

    .line 2413
    invoke-direct {v0, v1, v3, v2}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2414
    .line 2415
    .line 2416
    new-instance v1, LI/d;

    .line 2417
    .line 2418
    const-string v2, "Copyright"

    .line 2419
    .line 2420
    const v3, 0x8298

    .line 2421
    .line 2422
    .line 2423
    move-object/from16 v104, v0

    .line 2424
    .line 2425
    const/4 v0, 0x2

    .line 2426
    invoke-direct {v1, v2, v3, v0}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2427
    .line 2428
    .line 2429
    new-instance v0, LI/d;

    .line 2430
    .line 2431
    const v2, 0x8769

    .line 2432
    .line 2433
    .line 2434
    const/4 v3, 0x4

    .line 2435
    invoke-direct {v0, v13, v2, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2436
    .line 2437
    .line 2438
    new-instance v2, LI/d;

    .line 2439
    .line 2440
    move-object/from16 v106, v0

    .line 2441
    .line 2442
    move-object/from16 v105, v1

    .line 2443
    .line 2444
    move-object/from16 v0, v16

    .line 2445
    .line 2446
    const v1, 0x8825

    .line 2447
    .line 2448
    .line 2449
    invoke-direct {v2, v0, v1, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2450
    .line 2451
    .line 2452
    new-instance v1, LI/d;

    .line 2453
    .line 2454
    const-string v3, "DNGVersion"

    .line 2455
    .line 2456
    move-object/from16 v107, v2

    .line 2457
    .line 2458
    const v2, 0xc612

    .line 2459
    .line 2460
    .line 2461
    move-object/from16 v79, v4

    .line 2462
    .line 2463
    const/4 v4, 0x1

    .line 2464
    invoke-direct {v1, v3, v2, v4}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2465
    .line 2466
    .line 2467
    new-instance v2, LI/d;

    .line 2468
    .line 2469
    const-string v3, "DefaultCropSize"

    .line 2470
    .line 2471
    const v4, 0xc620

    .line 2472
    .line 2473
    .line 2474
    move-object/from16 v108, v1

    .line 2475
    .line 2476
    move-object/from16 v78, v5

    .line 2477
    .line 2478
    const/4 v1, 0x3

    .line 2479
    const/4 v5, 0x4

    .line 2480
    invoke-direct {v2, v3, v4, v1, v5}, LI/d;-><init>(Ljava/lang/String;III)V

    .line 2481
    .line 2482
    .line 2483
    move-object/from16 v109, v2

    .line 2484
    .line 2485
    move-object/from16 v83, v6

    .line 2486
    .line 2487
    move-object/from16 v80, v9

    .line 2488
    .line 2489
    move-object/from16 v84, v10

    .line 2490
    .line 2491
    move-object/from16 v82, v11

    .line 2492
    .line 2493
    move-object/from16 v76, v12

    .line 2494
    .line 2495
    move-object/from16 v91, v14

    .line 2496
    .line 2497
    move-object/from16 v99, v15

    .line 2498
    .line 2499
    filled-new-array/range {v73 .. v109}, [LI/d;

    .line 2500
    .line 2501
    .line 2502
    move-result-object v73

    .line 2503
    new-instance v2, LI/d;

    .line 2504
    .line 2505
    const/16 v15, 0x111

    .line 2506
    .line 2507
    invoke-direct {v2, v7, v15, v1}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2508
    .line 2509
    .line 2510
    sput-object v2, LI/g;->G:LI/d;

    .line 2511
    .line 2512
    new-instance v1, LI/d;

    .line 2513
    .line 2514
    const-string v2, "ThumbnailImage"

    .line 2515
    .line 2516
    const/4 v3, 0x7

    .line 2517
    const/16 v15, 0x100

    .line 2518
    .line 2519
    invoke-direct {v1, v2, v15, v3}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2520
    .line 2521
    .line 2522
    new-instance v2, LI/d;

    .line 2523
    .line 2524
    const-string v3, "CameraSettingsIFDPointer"

    .line 2525
    .line 2526
    const/16 v4, 0x2020

    .line 2527
    .line 2528
    invoke-direct {v2, v3, v4, v5}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2529
    .line 2530
    .line 2531
    new-instance v3, LI/d;

    .line 2532
    .line 2533
    const-string v4, "ImageProcessingIFDPointer"

    .line 2534
    .line 2535
    const/16 v6, 0x2040

    .line 2536
    .line 2537
    invoke-direct {v3, v4, v6, v5}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2538
    .line 2539
    .line 2540
    filled-new-array {v1, v2, v3}, [LI/d;

    .line 2541
    .line 2542
    .line 2543
    move-result-object v75

    .line 2544
    new-instance v1, LI/d;

    .line 2545
    .line 2546
    const-string v2, "PreviewImageStart"

    .line 2547
    .line 2548
    const/16 v3, 0x101

    .line 2549
    .line 2550
    invoke-direct {v1, v2, v3, v5}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2551
    .line 2552
    .line 2553
    new-instance v2, LI/d;

    .line 2554
    .line 2555
    const-string v3, "PreviewImageLength"

    .line 2556
    .line 2557
    const/16 v10, 0x102

    .line 2558
    .line 2559
    invoke-direct {v2, v3, v10, v5}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2560
    .line 2561
    .line 2562
    filled-new-array {v1, v2}, [LI/d;

    .line 2563
    .line 2564
    .line 2565
    move-result-object v76

    .line 2566
    new-instance v1, LI/d;

    .line 2567
    .line 2568
    const-string v2, "AspectFrame"

    .line 2569
    .line 2570
    const/16 v3, 0x1113

    .line 2571
    .line 2572
    const/4 v10, 0x3

    .line 2573
    invoke-direct {v1, v2, v3, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2574
    .line 2575
    .line 2576
    filled-new-array {v1}, [LI/d;

    .line 2577
    .line 2578
    .line 2579
    move-result-object v77

    .line 2580
    new-instance v1, LI/d;

    .line 2581
    .line 2582
    const-string v2, "ColorSpace"

    .line 2583
    .line 2584
    const/16 v3, 0x37

    .line 2585
    .line 2586
    invoke-direct {v1, v2, v3, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2587
    .line 2588
    .line 2589
    filled-new-array {v1}, [LI/d;

    .line 2590
    .line 2591
    .line 2592
    move-result-object v78

    .line 2593
    move-object/from16 v74, v69

    .line 2594
    .line 2595
    filled-new-array/range {v69 .. v78}, [[LI/d;

    .line 2596
    .line 2597
    .line 2598
    move-result-object v1

    .line 2599
    sput-object v1, LI/g;->H:[[LI/d;

    .line 2600
    .line 2601
    new-instance v2, LI/d;

    .line 2602
    .line 2603
    const/4 v10, 0x4

    .line 2604
    const/16 v15, 0x14a

    .line 2605
    .line 2606
    invoke-direct {v2, v8, v15, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2607
    .line 2608
    .line 2609
    new-instance v3, LI/d;

    .line 2610
    .line 2611
    const v1, 0x8769

    .line 2612
    .line 2613
    .line 2614
    invoke-direct {v3, v13, v1, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2615
    .line 2616
    .line 2617
    new-instance v4, LI/d;

    .line 2618
    .line 2619
    const v1, 0x8825

    .line 2620
    .line 2621
    .line 2622
    invoke-direct {v4, v0, v1, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2623
    .line 2624
    .line 2625
    new-instance v5, LI/d;

    .line 2626
    .line 2627
    const-string v0, "InteroperabilityIFDPointer"

    .line 2628
    .line 2629
    const v1, 0xa005

    .line 2630
    .line 2631
    .line 2632
    invoke-direct {v5, v0, v1, v10}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2633
    .line 2634
    .line 2635
    new-instance v6, LI/d;

    .line 2636
    .line 2637
    const-string v0, "CameraSettingsIFDPointer"

    .line 2638
    .line 2639
    const/16 v1, 0x2020

    .line 2640
    .line 2641
    const/4 v14, 0x1

    .line 2642
    invoke-direct {v6, v0, v1, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2643
    .line 2644
    .line 2645
    new-instance v7, LI/d;

    .line 2646
    .line 2647
    const-string v0, "ImageProcessingIFDPointer"

    .line 2648
    .line 2649
    const/16 v1, 0x2040

    .line 2650
    .line 2651
    invoke-direct {v7, v0, v1, v14}, LI/d;-><init>(Ljava/lang/String;II)V

    .line 2652
    .line 2653
    .line 2654
    filled-new-array/range {v2 .. v7}, [LI/d;

    .line 2655
    .line 2656
    .line 2657
    move-result-object v0

    .line 2658
    sput-object v0, LI/g;->I:[LI/d;

    .line 2659
    .line 2660
    const/16 v3, 0xa

    .line 2661
    .line 2662
    new-array v0, v3, [Ljava/util/HashMap;

    .line 2663
    .line 2664
    sput-object v0, LI/g;->J:[Ljava/util/HashMap;

    .line 2665
    .line 2666
    new-array v0, v3, [Ljava/util/HashMap;

    .line 2667
    .line 2668
    sput-object v0, LI/g;->K:[Ljava/util/HashMap;

    .line 2669
    .line 2670
    new-instance v0, Ljava/util/HashSet;

    .line 2671
    .line 2672
    const-string v1, "SubjectDistance"

    .line 2673
    .line 2674
    const-string v2, "GPSTimeStamp"

    .line 2675
    .line 2676
    const-string v3, "FNumber"

    .line 2677
    .line 2678
    const-string v4, "DigitalZoomRatio"

    .line 2679
    .line 2680
    const-string v5, "ExposureTime"

    .line 2681
    .line 2682
    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    .line 2683
    .line 2684
    .line 2685
    move-result-object v1

    .line 2686
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2687
    .line 2688
    .line 2689
    move-result-object v1

    .line 2690
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2691
    .line 2692
    .line 2693
    sput-object v0, LI/g;->L:Ljava/util/HashSet;

    .line 2694
    .line 2695
    new-instance v0, Ljava/util/HashMap;

    .line 2696
    .line 2697
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2698
    .line 2699
    .line 2700
    sput-object v0, LI/g;->M:Ljava/util/HashMap;

    .line 2701
    .line 2702
    const-string v0, "US-ASCII"

    .line 2703
    .line 2704
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 2705
    .line 2706
    .line 2707
    move-result-object v0

    .line 2708
    sput-object v0, LI/g;->N:Ljava/nio/charset/Charset;

    .line 2709
    .line 2710
    const-string v1, "Exif\u0000\u0000"

    .line 2711
    .line 2712
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 2713
    .line 2714
    .line 2715
    move-result-object v1

    .line 2716
    sput-object v1, LI/g;->O:[B

    .line 2717
    .line 2718
    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 2719
    .line 2720
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 2721
    .line 2722
    .line 2723
    move-result-object v0

    .line 2724
    sput-object v0, LI/g;->P:[B

    .line 2725
    .line 2726
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2727
    .line 2728
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2729
    .line 2730
    const-string v2, "yyyy:MM:dd HH:mm:ss"

    .line 2731
    .line 2732
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2733
    .line 2734
    .line 2735
    const-string v2, "UTC"

    .line 2736
    .line 2737
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 2738
    .line 2739
    .line 2740
    move-result-object v2

    .line 2741
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2742
    .line 2743
    .line 2744
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2745
    .line 2746
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 2747
    .line 2748
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2749
    .line 2750
    .line 2751
    const-string v1, "UTC"

    .line 2752
    .line 2753
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 2754
    .line 2755
    .line 2756
    move-result-object v1

    .line 2757
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2758
    .line 2759
    .line 2760
    move/from16 v0, v49

    .line 2761
    .line 2762
    :goto_0
    sget-object v1, LI/g;->H:[[LI/d;

    .line 2763
    .line 2764
    array-length v2, v1

    .line 2765
    if-ge v0, v2, :cond_1

    .line 2766
    .line 2767
    sget-object v2, LI/g;->J:[Ljava/util/HashMap;

    .line 2768
    .line 2769
    new-instance v3, Ljava/util/HashMap;

    .line 2770
    .line 2771
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2772
    .line 2773
    .line 2774
    aput-object v3, v2, v0

    .line 2775
    .line 2776
    sget-object v2, LI/g;->K:[Ljava/util/HashMap;

    .line 2777
    .line 2778
    new-instance v3, Ljava/util/HashMap;

    .line 2779
    .line 2780
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2781
    .line 2782
    .line 2783
    aput-object v3, v2, v0

    .line 2784
    .line 2785
    aget-object v1, v1, v0

    .line 2786
    .line 2787
    array-length v2, v1

    .line 2788
    move/from16 v3, v49

    .line 2789
    .line 2790
    :goto_1
    if-ge v3, v2, :cond_0

    .line 2791
    .line 2792
    aget-object v4, v1, v3

    .line 2793
    .line 2794
    sget-object v5, LI/g;->J:[Ljava/util/HashMap;

    .line 2795
    .line 2796
    aget-object v5, v5, v0

    .line 2797
    .line 2798
    iget v6, v4, LI/d;->a:I

    .line 2799
    .line 2800
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2801
    .line 2802
    .line 2803
    move-result-object v6

    .line 2804
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2805
    .line 2806
    .line 2807
    sget-object v5, LI/g;->K:[Ljava/util/HashMap;

    .line 2808
    .line 2809
    aget-object v5, v5, v0

    .line 2810
    .line 2811
    iget-object v6, v4, LI/d;->b:Ljava/lang/String;

    .line 2812
    .line 2813
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2814
    .line 2815
    .line 2816
    add-int/lit8 v3, v3, 0x1

    .line 2817
    .line 2818
    goto :goto_1

    .line 2819
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2820
    .line 2821
    goto :goto_0

    .line 2822
    :cond_1
    sget-object v0, LI/g;->M:Ljava/util/HashMap;

    .line 2823
    .line 2824
    sget-object v1, LI/g;->I:[LI/d;

    .line 2825
    .line 2826
    aget-object v2, v1, v49

    .line 2827
    .line 2828
    iget v2, v2, LI/d;->a:I

    .line 2829
    .line 2830
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2831
    .line 2832
    .line 2833
    move-result-object v2

    .line 2834
    move-object/from16 v3, v68

    .line 2835
    .line 2836
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2837
    .line 2838
    .line 2839
    const/16 v58, 0x1

    .line 2840
    .line 2841
    aget-object v2, v1, v58

    .line 2842
    .line 2843
    iget v2, v2, LI/d;->a:I

    .line 2844
    .line 2845
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2846
    .line 2847
    .line 2848
    move-result-object v2

    .line 2849
    move-object/from16 v3, v67

    .line 2850
    .line 2851
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2852
    .line 2853
    .line 2854
    const/16 v60, 0x2

    .line 2855
    .line 2856
    aget-object v2, v1, v60

    .line 2857
    .line 2858
    iget v2, v2, LI/d;->a:I

    .line 2859
    .line 2860
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2861
    .line 2862
    .line 2863
    move-result-object v2

    .line 2864
    move-object/from16 v3, v66

    .line 2865
    .line 2866
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2867
    .line 2868
    .line 2869
    const/16 v62, 0x3

    .line 2870
    .line 2871
    aget-object v2, v1, v62

    .line 2872
    .line 2873
    iget v2, v2, LI/d;->a:I

    .line 2874
    .line 2875
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2876
    .line 2877
    .line 2878
    move-result-object v2

    .line 2879
    move-object/from16 v3, v65

    .line 2880
    .line 2881
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2882
    .line 2883
    .line 2884
    const/16 v61, 0x4

    .line 2885
    .line 2886
    aget-object v2, v1, v61

    .line 2887
    .line 2888
    iget v2, v2, LI/d;->a:I

    .line 2889
    .line 2890
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2891
    .line 2892
    .line 2893
    move-result-object v2

    .line 2894
    move-object/from16 v3, v64

    .line 2895
    .line 2896
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2897
    .line 2898
    .line 2899
    const/16 v59, 0x5

    .line 2900
    .line 2901
    aget-object v1, v1, v59

    .line 2902
    .line 2903
    iget v1, v1, LI/d;->a:I

    .line 2904
    .line 2905
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2906
    .line 2907
    .line 2908
    move-result-object v1

    .line 2909
    move-object/from16 v2, v63

    .line 2910
    .line 2911
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2912
    .line 2913
    .line 2914
    const-string v0, ".*[1-9].*"

    .line 2915
    .line 2916
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2917
    .line 2918
    .line 2919
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 2920
    .line 2921
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2922
    .line 2923
    .line 2924
    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 2925
    .line 2926
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2927
    .line 2928
    .line 2929
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 2930
    .line 2931
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2932
    .line 2933
    .line 2934
    return-void

    .line 2935
    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 2936
    .line 2937
    .line 2938
    .line 2939
    .line 2940
    .line 2941
    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    .line 2942
    .line 2943
    .line 2944
    .line 2945
    .line 2946
    .line 2947
    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    .line 2948
    .line 2949
    .line 2950
    .line 2951
    .line 2952
    .line 2953
    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    .line 2954
    .line 2955
    .line 2956
    .line 2957
    .line 2958
    .line 2959
    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    .line 2960
    .line 2961
    .line 2962
    .line 2963
    .line 2964
    .line 2965
    .line 2966
    nop

    .line 2967
    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    .line 2968
    .line 2969
    .line 2970
    .line 2971
    .line 2972
    .line 2973
    .line 2974
    .line 2975
    .line 2976
    nop

    :array_6
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_7
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_8
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_9
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_a
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_b
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_c
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_e
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, LI/g;->H:[[LI/d;

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    new-array v1, v1, [Ljava/util/HashMap;

    .line 8
    .line 9
    iput-object v1, p0, LI/g;->d:[Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashSet;

    .line 12
    .line 13
    array-length v2, v0

    .line 14
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, LI/g;->e:Ljava/util/HashSet;

    .line 18
    .line 19
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 20
    .line 21
    iput-object v1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    .line 24
    .line 25
    sget-boolean v2, LI/g;->l:Z

    .line 26
    .line 27
    const-string v3, "ExifInterface"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    move-object v1, p1

    .line 33
    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    .line 34
    .line 35
    iput-object v1, p0, LI/g;->b:Landroid/content/res/AssetManager$AssetInputStream;

    .line 36
    .line 37
    iput-object v4, p0, LI/g;->a:Ljava/io/FileDescriptor;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    instance-of v1, p1, Ljava/io/FileInputStream;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    move-object v1, p1

    .line 45
    check-cast v1, Ljava/io/FileInputStream;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    :try_start_0
    sget v6, Landroid/system/OsConstants;->SEEK_CUR:I

    .line 52
    .line 53
    const-wide/16 v7, 0x0

    .line 54
    .line 55
    invoke-static {v5, v7, v8, v6}, LI/h;->c(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    iput-object v4, p0, LI/g;->b:Landroid/content/res/AssetManager$AssetInputStream;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, p0, LI/g;->a:Ljava/io/FileDescriptor;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    if-eqz v2, :cond_1

    .line 68
    .line 69
    const-string v1, "The file descriptor for the given input is not seekable"

    .line 70
    .line 71
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_1
    iput-object v4, p0, LI/g;->b:Landroid/content/res/AssetManager$AssetInputStream;

    .line 75
    .line 76
    iput-object v4, p0, LI/g;->a:Ljava/io/FileDescriptor;

    .line 77
    .line 78
    :goto_0
    const/4 v1, 0x0

    .line 79
    move v4, v1

    .line 80
    :goto_1
    :try_start_1
    array-length v5, v0

    .line 81
    if-ge v4, v5, :cond_2

    .line 82
    .line 83
    iget-object v5, p0, LI/g;->d:[Ljava/util/HashMap;

    .line 84
    .line 85
    new-instance v6, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    aput-object v6, v5, v4

    .line 91
    .line 92
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto/16 :goto_7

    .line 97
    .line 98
    :catch_1
    move-exception p1

    .line 99
    goto/16 :goto_6

    .line 100
    .line 101
    :catch_2
    move-exception p1

    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 105
    .line 106
    const/16 v4, 0x1388

    .line 107
    .line 108
    invoke-direct {v0, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, LI/g;->f(Ljava/io/BufferedInputStream;)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iput p1, p0, LI/g;->c:I

    .line 116
    .line 117
    const/16 v4, 0xe

    .line 118
    .line 119
    const/16 v5, 0xd

    .line 120
    .line 121
    const/16 v6, 0x9

    .line 122
    .line 123
    const/4 v7, 0x4

    .line 124
    if-eq p1, v7, :cond_7

    .line 125
    .line 126
    if-eq p1, v6, :cond_7

    .line 127
    .line 128
    if-eq p1, v5, :cond_7

    .line 129
    .line 130
    if-ne p1, v4, :cond_3

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_3
    new-instance p1, LI/f;

    .line 134
    .line 135
    invoke-direct {p1, v0}, LI/f;-><init>(Ljava/io/InputStream;)V

    .line 136
    .line 137
    .line 138
    iget v0, p0, LI/g;->c:I

    .line 139
    .line 140
    const/16 v1, 0xc

    .line 141
    .line 142
    if-ne v0, v1, :cond_4

    .line 143
    .line 144
    invoke-virtual {p0, p1}, LI/g;->d(LI/f;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    const/4 v1, 0x7

    .line 149
    if-ne v0, v1, :cond_5

    .line 150
    .line 151
    invoke-virtual {p0, p1}, LI/g;->g(LI/f;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_5
    const/16 v1, 0xa

    .line 156
    .line 157
    if-ne v0, v1, :cond_6

    .line 158
    .line 159
    invoke-virtual {p0, p1}, LI/g;->k(LI/f;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_6
    invoke-virtual {p0, p1}, LI/g;->j(LI/f;)V

    .line 164
    .line 165
    .line 166
    :goto_2
    iget v0, p0, LI/g;->h:I

    .line 167
    .line 168
    int-to-long v0, v0

    .line 169
    invoke-virtual {p1, v0, v1}, LI/f;->b(J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, p1}, LI/g;->u(LI/b;)V

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_7
    :goto_3
    new-instance p1, LI/b;

    .line 177
    .line 178
    invoke-direct {p1, v0}, LI/b;-><init>(Ljava/io/InputStream;)V

    .line 179
    .line 180
    .line 181
    iget v0, p0, LI/g;->c:I

    .line 182
    .line 183
    if-ne v0, v7, :cond_8

    .line 184
    .line 185
    invoke-virtual {p0, p1, v1, v1}, LI/g;->e(LI/b;II)V

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_8
    if-ne v0, v5, :cond_9

    .line 190
    .line 191
    invoke-virtual {p0, p1}, LI/g;->h(LI/b;)V

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_9
    if-ne v0, v6, :cond_a

    .line 196
    .line 197
    invoke-virtual {p0, p1}, LI/g;->i(LI/b;)V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_a
    if-ne v0, v4, :cond_b

    .line 202
    .line 203
    invoke-virtual {p0, p1}, LI/g;->l(LI/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    .line 205
    .line 206
    :cond_b
    :goto_4
    invoke-virtual {p0}, LI/g;->a()V

    .line 207
    .line 208
    .line 209
    if-eqz v2, :cond_e

    .line 210
    .line 211
    :goto_5
    invoke-virtual {p0}, LI/g;->p()V

    .line 212
    .line 213
    .line 214
    goto :goto_9

    .line 215
    :goto_6
    if-eqz v2, :cond_d

    .line 216
    .line 217
    :try_start_2
    const-string v0, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    .line 218
    .line 219
    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    .line 221
    .line 222
    goto :goto_8

    .line 223
    :goto_7
    invoke-virtual {p0}, LI/g;->a()V

    .line 224
    .line 225
    .line 226
    if-eqz v2, :cond_c

    .line 227
    .line 228
    invoke-virtual {p0}, LI/g;->p()V

    .line 229
    .line 230
    .line 231
    :cond_c
    throw p1

    .line 232
    :cond_d
    :goto_8
    invoke-virtual {p0}, LI/g;->a()V

    .line 233
    .line 234
    .line 235
    if-eqz v2, :cond_e

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_e
    :goto_9
    return-void
.end method

.method public static q(LI/b;)Ljava/nio/ByteOrder;
    .locals 3

    .line 1
    invoke-virtual {p0}, LI/b;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x4949

    .line 6
    .line 7
    const-string v1, "ExifInterface"

    .line 8
    .line 9
    sget-boolean v2, LI/g;->l:Z

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x4d4d

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string p0, "readExifSegment: Byte Align MM"

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Invalid byte order: "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_2
    if-eqz v2, :cond_3

    .line 52
    .line 53
    const-string p0, "readExifSegment: Byte Align II"

    .line 54
    .line 55
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_3
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 59
    .line 60
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    const-string v0, "DateTimeOriginal"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, LI/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, LI/g;->d:[Ljava/util/HashMap;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v3, "DateTime"

    .line 13
    .line 14
    invoke-virtual {p0, v3}, LI/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    aget-object v4, v2, v1

    .line 21
    .line 22
    const-string v5, "\u0000"

    .line 23
    .line 24
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v5, LI/g;->N:Ljava/nio/charset/Charset;

    .line 29
    .line 30
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v5, LI/c;

    .line 35
    .line 36
    const/4 v6, 0x2

    .line 37
    array-length v7, v0

    .line 38
    invoke-direct {v5, v6, v7, v0}, LI/c;-><init>(II[B)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_0
    const-string v0, "ImageWidth"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, LI/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-wide/16 v4, 0x0

    .line 51
    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    aget-object v3, v2, v1

    .line 55
    .line 56
    iget-object v6, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 57
    .line 58
    invoke-static {v4, v5, v6}, LI/c;->a(JLjava/nio/ByteOrder;)LI/c;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_1
    const-string v0, "ImageLength"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, LI/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-nez v3, :cond_2

    .line 72
    .line 73
    aget-object v3, v2, v1

    .line 74
    .line 75
    iget-object v6, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 76
    .line 77
    invoke-static {v4, v5, v6}, LI/c;->a(JLjava/nio/ByteOrder;)LI/c;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_2
    const-string v0, "Orientation"

    .line 85
    .line 86
    invoke-virtual {p0, v0}, LI/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    aget-object v1, v2, v1

    .line 93
    .line 94
    iget-object v3, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 95
    .line 96
    invoke-static {v4, v5, v3}, LI/c;->a(JLjava/nio/ByteOrder;)LI/c;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_3
    const-string v0, "LightSource"

    .line 104
    .line 105
    invoke-virtual {p0, v0}, LI/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-nez v1, :cond_4

    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    aget-object v1, v2, v1

    .line 113
    .line 114
    iget-object v2, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 115
    .line 116
    invoke-static {v4, v5, v2}, LI/c;->a(JLjava/nio/ByteOrder;)LI/c;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :cond_4
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, LI/g;->c(Ljava/lang/String;)LI/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget v2, v0, LI/c;->a:I

    .line 9
    .line 10
    sget-object v3, LI/g;->L:Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, LI/c;->f(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_0
    const-string v3, "GPSTimeStamp"

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    const/4 p1, 0x5

    .line 34
    const-string v3, "ExifInterface"

    .line 35
    .line 36
    if-eq v2, p1, :cond_1

    .line 37
    .line 38
    const/16 p1, 0xa

    .line 39
    .line 40
    if-eq v2, p1, :cond_1

    .line 41
    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v0, "GPS Timestamp format is not rational. format="

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_1
    iget-object p1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, LI/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, [LI/e;

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    array-length v0, p1

    .line 71
    const/4 v2, 0x3

    .line 72
    if-eq v0, v2, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v0, 0x0

    .line 76
    aget-object v0, p1, v0

    .line 77
    .line 78
    iget-wide v1, v0, LI/e;->a:J

    .line 79
    .line 80
    long-to-float v1, v1

    .line 81
    iget-wide v2, v0, LI/e;->b:J

    .line 82
    .line 83
    long-to-float v0, v2

    .line 84
    div-float/2addr v1, v0

    .line 85
    float-to-int v0, v1

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const/4 v1, 0x1

    .line 91
    aget-object v1, p1, v1

    .line 92
    .line 93
    iget-wide v2, v1, LI/e;->a:J

    .line 94
    .line 95
    long-to-float v2, v2

    .line 96
    iget-wide v3, v1, LI/e;->b:J

    .line 97
    .line 98
    long-to-float v1, v3

    .line 99
    div-float/2addr v2, v1

    .line 100
    float-to-int v1, v2

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const/4 v2, 0x2

    .line 106
    aget-object p1, p1, v2

    .line 107
    .line 108
    iget-wide v2, p1, LI/e;->a:J

    .line 109
    .line 110
    long-to-float v2, v2

    .line 111
    iget-wide v3, p1, LI/e;->b:J

    .line 112
    .line 113
    long-to-float p1, v3

    .line 114
    div-float/2addr v2, p1

    .line 115
    float-to-int p1, v2

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string v0, "%02d:%02d:%02d"

    .line 125
    .line 126
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1

    .line 131
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v2, "Invalid GPS Timestamp array. array="

    .line 134
    .line 135
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    return-object v1

    .line 153
    :cond_4
    :try_start_0
    iget-object p1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 154
    .line 155
    invoke-virtual {v0, p1}, LI/c;->d(Ljava/nio/ByteOrder;)D

    .line 156
    .line 157
    .line 158
    move-result-wide v2

    .line 159
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-object p1

    .line 164
    :catch_0
    :cond_5
    return-object v1
.end method

.method public final c(Ljava/lang/String;)LI/c;
    .locals 2

    .line 1
    const-string v0, "ISOSpeedRatings"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-boolean p1, LI/g;->l:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, "ExifInterface"

    .line 14
    .line 15
    const-string v0, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    const-string p1, "PhotographicSensitivity"

    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    sget-object v1, LI/g;->H:[[LI/d;

    .line 24
    .line 25
    array-length v1, v1

    .line 26
    if-ge v0, v1, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, LI/g;->d:[Ljava/util/HashMap;

    .line 29
    .line 30
    aget-object v1, v1, v0

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, LI/c;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    const/4 p1, 0x0

    .line 45
    return-object p1
.end method

.method public final d(LI/f;)V
    .locals 13

    .line 1
    const-string v0, "yes"

    .line 2
    .line 3
    const-string v1, "Heif meta: "

    .line 4
    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v3, 0x1c

    .line 8
    .line 9
    if-lt v2, v3, :cond_e

    .line 10
    .line 11
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    new-instance v3, LI/a;

    .line 17
    .line 18
    invoke-direct {v3, p1}, LI/a;-><init>(LI/f;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, LI/i;->a(Landroid/media/MediaMetadataRetriever;Landroid/media/MediaDataSource;)V

    .line 22
    .line 23
    .line 24
    const/16 v3, 0x21

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/16 v4, 0x22

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/16 v5, 0x1a

    .line 37
    .line 38
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const/16 v6, 0x11

    .line 43
    .line 44
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    const/16 v0, 0x1d

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/16 v5, 0x1e

    .line 61
    .line 62
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const/16 v6, 0x1f

    .line 67
    .line 68
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    const/16 v0, 0x12

    .line 83
    .line 84
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/16 v5, 0x13

    .line 89
    .line 90
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const/16 v6, 0x18

    .line 95
    .line 96
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    .line 102
    move-object v5, v0

    .line 103
    move-object v6, v5

    .line 104
    :goto_0
    iget-object v7, p0, LI/g;->d:[Ljava/util/HashMap;

    .line 105
    .line 106
    const/4 v8, 0x0

    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    :try_start_1
    aget-object v9, v7, v8

    .line 110
    .line 111
    const-string v10, "ImageWidth"

    .line 112
    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    iget-object v12, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 118
    .line 119
    invoke-static {v11, v12}, LI/c;->c(ILjava/nio/ByteOrder;)LI/c;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :cond_2
    if-eqz v5, :cond_3

    .line 127
    .line 128
    aget-object v9, v7, v8

    .line 129
    .line 130
    const-string v10, "ImageLength"

    .line 131
    .line 132
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    iget-object v12, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 137
    .line 138
    invoke-static {v11, v12}, LI/c;->c(ILjava/nio/ByteOrder;)LI/c;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :cond_3
    const/4 v9, 0x6

    .line 146
    if-eqz v6, :cond_7

    .line 147
    .line 148
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    const/16 v11, 0x5a

    .line 153
    .line 154
    if-eq v10, v11, :cond_6

    .line 155
    .line 156
    const/16 v11, 0xb4

    .line 157
    .line 158
    if-eq v10, v11, :cond_5

    .line 159
    .line 160
    const/16 v11, 0x10e

    .line 161
    .line 162
    if-eq v10, v11, :cond_4

    .line 163
    .line 164
    const/4 v10, 0x1

    .line 165
    goto :goto_1

    .line 166
    :cond_4
    const/16 v10, 0x8

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_5
    const/4 v10, 0x3

    .line 170
    goto :goto_1

    .line 171
    :cond_6
    move v10, v9

    .line 172
    :goto_1
    aget-object v7, v7, v8

    .line 173
    .line 174
    const-string v11, "Orientation"

    .line 175
    .line 176
    iget-object v12, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 177
    .line 178
    invoke-static {v10, v12}, LI/c;->c(ILjava/nio/ByteOrder;)LI/c;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    :cond_7
    if-eqz v3, :cond_c

    .line 186
    .line 187
    if-eqz v4, :cond_c

    .line 188
    .line 189
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-le v4, v9, :cond_b

    .line 198
    .line 199
    int-to-long v10, v3

    .line 200
    invoke-virtual {p1, v10, v11}, LI/f;->b(J)V

    .line 201
    .line 202
    .line 203
    new-array v7, v9, [B

    .line 204
    .line 205
    invoke-virtual {p1, v7}, Ljava/io/InputStream;->read([B)I

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    if-ne v10, v9, :cond_a

    .line 210
    .line 211
    add-int/2addr v3, v9

    .line 212
    add-int/lit8 v4, v4, -0x6

    .line 213
    .line 214
    sget-object v9, LI/g;->O:[B

    .line 215
    .line 216
    invoke-static {v7, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-eqz v7, :cond_9

    .line 221
    .line 222
    new-array v7, v4, [B

    .line 223
    .line 224
    invoke-virtual {p1, v7}, Ljava/io/InputStream;->read([B)I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-ne p1, v4, :cond_8

    .line 229
    .line 230
    iput v3, p0, LI/g;->h:I

    .line 231
    .line 232
    invoke-virtual {p0, v7, v8}, LI/g;->r([BI)V

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 237
    .line 238
    const-string v0, "Can\'t read exif"

    .line 239
    .line 240
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw p1

    .line 244
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 245
    .line 246
    const-string v0, "Invalid identifier"

    .line 247
    .line 248
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw p1

    .line 252
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 253
    .line 254
    const-string v0, "Can\'t read identifier"

    .line 255
    .line 256
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw p1

    .line 260
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 261
    .line 262
    const-string v0, "Invalid exif length"

    .line 263
    .line 264
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p1

    .line 268
    :cond_c
    :goto_2
    sget-boolean p1, LI/g;->l:Z

    .line 269
    .line 270
    if-eqz p1, :cond_d

    .line 271
    .line 272
    const-string p1, "ExifInterface"

    .line 273
    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v0, "x"

    .line 283
    .line 284
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v0, ", rotation "

    .line 291
    .line 292
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    .line 304
    .line 305
    :cond_d
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 310
    .line 311
    const-string v0, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    .line 312
    .line 313
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    :goto_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 318
    .line 319
    .line 320
    throw p1

    .line 321
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 322
    .line 323
    const-string v0, "Reading EXIF from HEIF files is supported from SDK 28 and above"

    .line 324
    .line 325
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw p1
.end method

.method public final e(LI/b;II)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "ExifInterface"

    .line 8
    .line 9
    sget-boolean v4, LI/g;->l:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v6, "getJpegAttributes starting with: "

    .line 16
    .line 17
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    iput-object v5, v1, LI/b;->c:Ljava/nio/ByteOrder;

    .line 33
    .line 34
    invoke-virtual {v1}, LI/b;->readByte()B

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const-string v6, "Invalid marker: "

    .line 39
    .line 40
    const/4 v7, -0x1

    .line 41
    if-ne v5, v7, :cond_18

    .line 42
    .line 43
    invoke-virtual {v1}, LI/b;->readByte()B

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    const/16 v9, -0x28

    .line 48
    .line 49
    if-ne v8, v9, :cond_17

    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    move v6, v5

    .line 53
    :goto_0
    invoke-virtual {v1}, LI/b;->readByte()B

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-ne v8, v7, :cond_16

    .line 58
    .line 59
    invoke-virtual {v1}, LI/b;->readByte()B

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v10, "Found JPEG segment indicator: "

    .line 68
    .line 69
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    and-int/lit16 v10, v8, 0xff

    .line 73
    .line 74
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_1
    const/16 v9, -0x27

    .line 89
    .line 90
    if-eq v8, v9, :cond_15

    .line 91
    .line 92
    const/16 v9, -0x26

    .line 93
    .line 94
    if-ne v8, v9, :cond_2

    .line 95
    .line 96
    goto/16 :goto_8

    .line 97
    .line 98
    :cond_2
    invoke-virtual {v1}, LI/b;->readUnsignedShort()I

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    add-int/lit8 v10, v9, -0x2

    .line 103
    .line 104
    const/4 v11, 0x4

    .line 105
    add-int/2addr v6, v11

    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    new-instance v12, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v13, "JPEG segment: "

    .line 111
    .line 112
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    and-int/lit16 v13, v8, 0xff

    .line 116
    .line 117
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v13, " (length: "

    .line 125
    .line 126
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v13, ")"

    .line 133
    .line 134
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_3
    const-string v12, "Invalid length"

    .line 145
    .line 146
    if-ltz v10, :cond_14

    .line 147
    .line 148
    const/16 v13, -0x1f

    .line 149
    .line 150
    const/4 v14, 0x0

    .line 151
    iget-object v15, v0, LI/g;->d:[Ljava/util/HashMap;

    .line 152
    .line 153
    if-eq v8, v13, :cond_9

    .line 154
    .line 155
    const/4 v13, -0x2

    .line 156
    const/4 v7, 0x1

    .line 157
    if-eq v8, v13, :cond_6

    .line 158
    .line 159
    packed-switch v8, :pswitch_data_0

    .line 160
    .line 161
    .line 162
    packed-switch v8, :pswitch_data_1

    .line 163
    .line 164
    .line 165
    packed-switch v8, :pswitch_data_2

    .line 166
    .line 167
    .line 168
    packed-switch v8, :pswitch_data_3

    .line 169
    .line 170
    .line 171
    goto/16 :goto_7

    .line 172
    .line 173
    :pswitch_0
    invoke-virtual {v1, v7}, LI/b;->a(I)V

    .line 174
    .line 175
    .line 176
    aget-object v7, v15, v2

    .line 177
    .line 178
    if-eq v2, v11, :cond_4

    .line 179
    .line 180
    const-string v8, "ImageLength"

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_4
    const-string v8, "ThumbnailImageLength"

    .line 184
    .line 185
    :goto_1
    invoke-virtual {v1}, LI/b;->readUnsignedShort()I

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    int-to-long v13, v10

    .line 190
    iget-object v10, v0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 191
    .line 192
    invoke-static {v13, v14, v10}, LI/c;->a(JLjava/nio/ByteOrder;)LI/c;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    aget-object v7, v15, v2

    .line 200
    .line 201
    if-eq v2, v11, :cond_5

    .line 202
    .line 203
    const-string v8, "ImageWidth"

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_5
    const-string v8, "ThumbnailImageWidth"

    .line 207
    .line 208
    :goto_2
    invoke-virtual {v1}, LI/b;->readUnsignedShort()I

    .line 209
    .line 210
    .line 211
    move-result v10

    .line 212
    int-to-long v10, v10

    .line 213
    iget-object v13, v0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 214
    .line 215
    invoke-static {v10, v11, v13}, LI/c;->a(JLjava/nio/ByteOrder;)LI/c;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    add-int/lit8 v10, v9, -0x7

    .line 223
    .line 224
    goto/16 :goto_7

    .line 225
    .line 226
    :cond_6
    new-array v8, v10, [B

    .line 227
    .line 228
    invoke-virtual {v1, v8}, Ljava/io/InputStream;->read([B)I

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    if-ne v9, v10, :cond_8

    .line 233
    .line 234
    const-string v9, "UserComment"

    .line 235
    .line 236
    invoke-virtual {v0, v9}, LI/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    if-nez v10, :cond_7

    .line 241
    .line 242
    aget-object v7, v15, v7

    .line 243
    .line 244
    new-instance v10, Ljava/lang/String;

    .line 245
    .line 246
    sget-object v11, LI/g;->N:Ljava/nio/charset/Charset;

    .line 247
    .line 248
    invoke-direct {v10, v8, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 249
    .line 250
    .line 251
    const-string v8, "\u0000"

    .line 252
    .line 253
    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    invoke-virtual {v8, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    new-instance v10, LI/c;

    .line 262
    .line 263
    array-length v11, v8

    .line 264
    invoke-direct {v10, v5, v11, v8}, LI/c;-><init>(II[B)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    :cond_7
    move v10, v14

    .line 271
    goto/16 :goto_7

    .line 272
    .line 273
    :cond_8
    new-instance v1, Ljava/io/IOException;

    .line 274
    .line 275
    const-string v2, "Invalid exif"

    .line 276
    .line 277
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v1

    .line 281
    :cond_9
    new-array v7, v10, [B

    .line 282
    .line 283
    invoke-virtual {v1, v7}, LI/b;->readFully([B)V

    .line 284
    .line 285
    .line 286
    add-int v8, v6, v10

    .line 287
    .line 288
    sget-object v9, LI/g;->O:[B

    .line 289
    .line 290
    if-nez v9, :cond_a

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_a
    array-length v11, v9

    .line 294
    if-ge v10, v11, :cond_b

    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_b
    move v11, v14

    .line 298
    :goto_3
    array-length v13, v9

    .line 299
    if-ge v11, v13, :cond_11

    .line 300
    .line 301
    aget-byte v13, v7, v11

    .line 302
    .line 303
    aget-byte v5, v9, v11

    .line 304
    .line 305
    if-eq v13, v5, :cond_10

    .line 306
    .line 307
    :goto_4
    sget-object v5, LI/g;->P:[B

    .line 308
    .line 309
    if-nez v5, :cond_c

    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_c
    array-length v9, v5

    .line 313
    if-ge v10, v9, :cond_d

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_d
    move v9, v14

    .line 317
    :goto_5
    array-length v11, v5

    .line 318
    if-ge v9, v11, :cond_f

    .line 319
    .line 320
    aget-byte v11, v7, v9

    .line 321
    .line 322
    aget-byte v13, v5, v9

    .line 323
    .line 324
    if-eq v11, v13, :cond_e

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_e
    add-int/lit8 v9, v9, 0x1

    .line 328
    .line 329
    goto :goto_5

    .line 330
    :cond_f
    array-length v9, v5

    .line 331
    add-int/2addr v6, v9

    .line 332
    array-length v5, v5

    .line 333
    invoke-static {v7, v5, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    const-string v7, "Xmp"

    .line 338
    .line 339
    invoke-virtual {v0, v7}, LI/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v9

    .line 343
    if-nez v9, :cond_12

    .line 344
    .line 345
    aget-object v9, v15, v14

    .line 346
    .line 347
    new-instance v16, LI/c;

    .line 348
    .line 349
    array-length v10, v5

    .line 350
    int-to-long v14, v6

    .line 351
    const/16 v20, 0x1

    .line 352
    .line 353
    move-object/from16 v19, v5

    .line 354
    .line 355
    move/from16 v21, v10

    .line 356
    .line 357
    move-wide/from16 v17, v14

    .line 358
    .line 359
    invoke-direct/range {v16 .. v21}, LI/c;-><init>(J[BII)V

    .line 360
    .line 361
    .line 362
    move-object/from16 v5, v16

    .line 363
    .line 364
    invoke-virtual {v9, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    goto :goto_6

    .line 368
    :cond_10
    add-int/lit8 v11, v11, 0x1

    .line 369
    .line 370
    const/4 v5, 0x2

    .line 371
    const/4 v14, 0x0

    .line 372
    goto :goto_3

    .line 373
    :cond_11
    array-length v5, v9

    .line 374
    invoke-static {v7, v5, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    add-int v6, p2, v6

    .line 379
    .line 380
    array-length v7, v9

    .line 381
    add-int/2addr v6, v7

    .line 382
    iput v6, v0, LI/g;->h:I

    .line 383
    .line 384
    invoke-virtual {v0, v5, v2}, LI/g;->r([BI)V

    .line 385
    .line 386
    .line 387
    new-instance v6, LI/b;

    .line 388
    .line 389
    invoke-direct {v6, v5}, LI/b;-><init>([B)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v6}, LI/g;->u(LI/b;)V

    .line 393
    .line 394
    .line 395
    :cond_12
    :goto_6
    move v6, v8

    .line 396
    const/4 v10, 0x0

    .line 397
    :goto_7
    if-ltz v10, :cond_13

    .line 398
    .line 399
    invoke-virtual {v1, v10}, LI/b;->a(I)V

    .line 400
    .line 401
    .line 402
    add-int/2addr v6, v10

    .line 403
    const/4 v5, 0x2

    .line 404
    const/4 v7, -0x1

    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :cond_13
    new-instance v1, Ljava/io/IOException;

    .line 408
    .line 409
    invoke-direct {v1, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw v1

    .line 413
    :cond_14
    new-instance v1, Ljava/io/IOException;

    .line 414
    .line 415
    invoke-direct {v1, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    throw v1

    .line 419
    :cond_15
    :goto_8
    iget-object v2, v0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 420
    .line 421
    iput-object v2, v1, LI/b;->c:Ljava/nio/ByteOrder;

    .line 422
    .line 423
    return-void

    .line 424
    :cond_16
    new-instance v1, Ljava/io/IOException;

    .line 425
    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    const-string v3, "Invalid marker:"

    .line 429
    .line 430
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    and-int/lit16 v3, v8, 0xff

    .line 434
    .line 435
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw v1

    .line 450
    :cond_17
    new-instance v1, Ljava/io/IOException;

    .line 451
    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    and-int/lit16 v3, v5, 0xff

    .line 458
    .line 459
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    throw v1

    .line 474
    :cond_18
    new-instance v1, Ljava/io/IOException;

    .line 475
    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    and-int/lit16 v3, v5, 0xff

    .line 482
    .line 483
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    throw v1

    .line 498
    nop

    .line 499
    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/io/BufferedInputStream;)I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v2, 0x1388

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 8
    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    sget-object v5, LI/g;->q:[B

    .line 20
    .line 21
    array-length v6, v5

    .line 22
    const/4 v7, 0x4

    .line 23
    if-ge v0, v6, :cond_22

    .line 24
    .line 25
    aget-byte v6, v3, v0

    .line 26
    .line 27
    aget-byte v5, v5, v0

    .line 28
    .line 29
    if-eq v6, v5, :cond_21

    .line 30
    .line 31
    const-string v0, "FUJIFILMCCD-RAW"

    .line 32
    .line 33
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v5, 0x0

    .line 42
    :goto_1
    array-length v6, v0

    .line 43
    if-ge v5, v6, :cond_20

    .line 44
    .line 45
    aget-byte v6, v3, v5

    .line 46
    .line 47
    aget-byte v8, v0, v5

    .line 48
    .line 49
    if-eq v6, v8, :cond_1f

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    :try_start_0
    new-instance v8, LI/b;

    .line 53
    .line 54
    invoke-direct {v8, v3}, LI/b;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    .line 56
    .line 57
    :try_start_1
    invoke-virtual {v8}, LI/b;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    int-to-long v9, v0

    .line 62
    new-array v0, v7, [B

    .line 63
    .line 64
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    .line 65
    .line 66
    .line 67
    sget-object v11, LI/g;->r:[B

    .line 68
    .line 69
    invoke-static {v0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 70
    .line 71
    .line 72
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    :goto_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 76
    .line 77
    .line 78
    const/16 p1, 0x0

    .line 79
    .line 80
    goto/16 :goto_a

    .line 81
    .line 82
    :cond_0
    const-wide/16 v11, 0x1

    .line 83
    .line 84
    cmp-long v0, v9, v11

    .line 85
    .line 86
    const-wide/16 v13, 0x8

    .line 87
    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    :try_start_2
    invoke-virtual {v8}, LI/b;->readLong()J

    .line 91
    .line 92
    .line 93
    move-result-wide v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    const-wide/16 v15, 0x10

    .line 95
    .line 96
    cmp-long v0, v9, v15

    .line 97
    .line 98
    if-gez v0, :cond_1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_1
    :goto_3
    const/16 p1, 0x0

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    move-object v5, v8

    .line 106
    goto/16 :goto_1a

    .line 107
    .line 108
    :catch_0
    move-exception v0

    .line 109
    const/16 p1, 0x0

    .line 110
    .line 111
    goto :goto_9

    .line 112
    :cond_2
    move-wide v15, v13

    .line 113
    goto :goto_3

    .line 114
    :goto_4
    int-to-long v4, v2

    .line 115
    cmp-long v0, v9, v4

    .line 116
    .line 117
    if-lez v0, :cond_3

    .line 118
    .line 119
    move-wide v9, v4

    .line 120
    :cond_3
    sub-long/2addr v9, v15

    .line 121
    cmp-long v0, v9, v13

    .line 122
    .line 123
    if-gez v0, :cond_5

    .line 124
    .line 125
    :cond_4
    :goto_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 126
    .line 127
    .line 128
    goto :goto_a

    .line 129
    :cond_5
    :try_start_3
    new-array v0, v7, [B

    .line 130
    .line 131
    const-wide/16 v4, 0x0

    .line 132
    .line 133
    move/from16 v2, p1

    .line 134
    .line 135
    move v13, v2

    .line 136
    :goto_6
    const-wide/16 v14, 0x4

    .line 137
    .line 138
    div-long v14, v9, v14

    .line 139
    .line 140
    cmp-long v14, v4, v14

    .line 141
    .line 142
    if-gez v14, :cond_4

    .line 143
    .line 144
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    if-eq v14, v7, :cond_6

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_6
    cmp-long v14, v4, v11

    .line 152
    .line 153
    if-nez v14, :cond_7

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_7
    sget-object v14, LI/g;->s:[B

    .line 157
    .line 158
    invoke-static {v0, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 159
    .line 160
    .line 161
    move-result v14

    .line 162
    if-eqz v14, :cond_8

    .line 163
    .line 164
    move v2, v6

    .line 165
    goto :goto_7

    .line 166
    :cond_8
    sget-object v14, LI/g;->t:[B

    .line 167
    .line 168
    invoke-static {v0, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 169
    .line 170
    .line 171
    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    if-eqz v14, :cond_9

    .line 173
    .line 174
    move v13, v6

    .line 175
    :cond_9
    :goto_7
    if-eqz v2, :cond_a

    .line 176
    .line 177
    if-eqz v13, :cond_a

    .line 178
    .line 179
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 180
    .line 181
    .line 182
    const/16 v0, 0xc

    .line 183
    .line 184
    return v0

    .line 185
    :cond_a
    :goto_8
    add-long/2addr v4, v11

    .line 186
    goto :goto_6

    .line 187
    :catch_1
    move-exception v0

    .line 188
    goto :goto_9

    .line 189
    :catchall_1
    move-exception v0

    .line 190
    const/4 v5, 0x0

    .line 191
    goto/16 :goto_1a

    .line 192
    .line 193
    :catch_2
    move-exception v0

    .line 194
    const/16 p1, 0x0

    .line 195
    .line 196
    const/4 v8, 0x0

    .line 197
    :goto_9
    :try_start_4
    sget-boolean v2, LI/g;->l:Z

    .line 198
    .line 199
    if-eqz v2, :cond_b

    .line 200
    .line 201
    const-string v2, "ExifInterface"

    .line 202
    .line 203
    const-string v4, "Exception parsing HEIF file type box."

    .line 204
    .line 205
    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 206
    .line 207
    .line 208
    :cond_b
    if-eqz v8, :cond_c

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_c
    :goto_a
    :try_start_5
    new-instance v2, LI/b;

    .line 212
    .line 213
    invoke-direct {v2, v3}, LI/b;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 214
    .line 215
    .line 216
    :try_start_6
    invoke-static {v2}, LI/g;->q(LI/b;)Ljava/nio/ByteOrder;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iput-object v0, v1, LI/g;->f:Ljava/nio/ByteOrder;

    .line 221
    .line 222
    iput-object v0, v2, LI/b;->c:Ljava/nio/ByteOrder;

    .line 223
    .line 224
    invoke-virtual {v2}, LI/b;->readShort()S

    .line 225
    .line 226
    .line 227
    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 228
    const/16 v4, 0x4f52

    .line 229
    .line 230
    if-eq v0, v4, :cond_e

    .line 231
    .line 232
    const/16 v4, 0x5352

    .line 233
    .line 234
    if-ne v0, v4, :cond_d

    .line 235
    .line 236
    goto :goto_b

    .line 237
    :cond_d
    move/from16 v0, p1

    .line 238
    .line 239
    goto :goto_c

    .line 240
    :cond_e
    :goto_b
    move v0, v6

    .line 241
    :goto_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 242
    .line 243
    .line 244
    goto :goto_f

    .line 245
    :catchall_2
    move-exception v0

    .line 246
    move-object v5, v2

    .line 247
    goto :goto_d

    .line 248
    :catchall_3
    move-exception v0

    .line 249
    const/4 v5, 0x0

    .line 250
    goto :goto_d

    .line 251
    :catch_3
    const/4 v2, 0x0

    .line 252
    goto :goto_e

    .line 253
    :goto_d
    if-eqz v5, :cond_f

    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 256
    .line 257
    .line 258
    :cond_f
    throw v0

    .line 259
    :catch_4
    :goto_e
    if-eqz v2, :cond_10

    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 262
    .line 263
    .line 264
    :cond_10
    move/from16 v0, p1

    .line 265
    .line 266
    :goto_f
    if-eqz v0, :cond_11

    .line 267
    .line 268
    const/4 v0, 0x7

    .line 269
    return v0

    .line 270
    :cond_11
    :try_start_7
    new-instance v2, LI/b;

    .line 271
    .line 272
    invoke-direct {v2, v3}, LI/b;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 273
    .line 274
    .line 275
    :try_start_8
    invoke-static {v2}, LI/g;->q(LI/b;)Ljava/nio/ByteOrder;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    iput-object v0, v1, LI/g;->f:Ljava/nio/ByteOrder;

    .line 280
    .line 281
    iput-object v0, v2, LI/b;->c:Ljava/nio/ByteOrder;

    .line 282
    .line 283
    invoke-virtual {v2}, LI/b;->readShort()S

    .line 284
    .line 285
    .line 286
    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 287
    const/16 v4, 0x55

    .line 288
    .line 289
    if-ne v0, v4, :cond_12

    .line 290
    .line 291
    move v0, v6

    .line 292
    goto :goto_10

    .line 293
    :cond_12
    move/from16 v0, p1

    .line 294
    .line 295
    :goto_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 296
    .line 297
    .line 298
    goto :goto_13

    .line 299
    :catchall_4
    move-exception v0

    .line 300
    move-object v5, v2

    .line 301
    goto :goto_11

    .line 302
    :catch_5
    move-object v5, v2

    .line 303
    goto :goto_12

    .line 304
    :catchall_5
    move-exception v0

    .line 305
    const/4 v5, 0x0

    .line 306
    goto :goto_11

    .line 307
    :catch_6
    const/4 v5, 0x0

    .line 308
    goto :goto_12

    .line 309
    :goto_11
    if-eqz v5, :cond_13

    .line 310
    .line 311
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 312
    .line 313
    .line 314
    :cond_13
    throw v0

    .line 315
    :goto_12
    if-eqz v5, :cond_14

    .line 316
    .line 317
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 318
    .line 319
    .line 320
    :cond_14
    move/from16 v0, p1

    .line 321
    .line 322
    :goto_13
    if-eqz v0, :cond_15

    .line 323
    .line 324
    const/16 v0, 0xa

    .line 325
    .line 326
    return v0

    .line 327
    :cond_15
    move/from16 v0, p1

    .line 328
    .line 329
    :goto_14
    sget-object v2, LI/g;->w:[B

    .line 330
    .line 331
    array-length v4, v2

    .line 332
    if-ge v0, v4, :cond_17

    .line 333
    .line 334
    aget-byte v4, v3, v0

    .line 335
    .line 336
    aget-byte v2, v2, v0

    .line 337
    .line 338
    if-eq v4, v2, :cond_16

    .line 339
    .line 340
    move/from16 v0, p1

    .line 341
    .line 342
    goto :goto_15

    .line 343
    :cond_16
    add-int/lit8 v0, v0, 0x1

    .line 344
    .line 345
    goto :goto_14

    .line 346
    :cond_17
    move v0, v6

    .line 347
    :goto_15
    if-eqz v0, :cond_18

    .line 348
    .line 349
    const/16 v0, 0xd

    .line 350
    .line 351
    return v0

    .line 352
    :cond_18
    move/from16 v0, p1

    .line 353
    .line 354
    :goto_16
    sget-object v2, LI/g;->A:[B

    .line 355
    .line 356
    array-length v4, v2

    .line 357
    if-ge v0, v4, :cond_1a

    .line 358
    .line 359
    aget-byte v4, v3, v0

    .line 360
    .line 361
    aget-byte v2, v2, v0

    .line 362
    .line 363
    if-eq v4, v2, :cond_19

    .line 364
    .line 365
    :goto_17
    move/from16 v6, p1

    .line 366
    .line 367
    goto :goto_19

    .line 368
    :cond_19
    add-int/lit8 v0, v0, 0x1

    .line 369
    .line 370
    goto :goto_16

    .line 371
    :cond_1a
    move/from16 v0, p1

    .line 372
    .line 373
    :goto_18
    sget-object v4, LI/g;->B:[B

    .line 374
    .line 375
    array-length v5, v4

    .line 376
    if-ge v0, v5, :cond_1c

    .line 377
    .line 378
    array-length v5, v2

    .line 379
    add-int/2addr v5, v0

    .line 380
    add-int/2addr v5, v7

    .line 381
    aget-byte v5, v3, v5

    .line 382
    .line 383
    aget-byte v4, v4, v0

    .line 384
    .line 385
    if-eq v5, v4, :cond_1b

    .line 386
    .line 387
    goto :goto_17

    .line 388
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 389
    .line 390
    goto :goto_18

    .line 391
    :cond_1c
    :goto_19
    if-eqz v6, :cond_1d

    .line 392
    .line 393
    const/16 v0, 0xe

    .line 394
    .line 395
    return v0

    .line 396
    :cond_1d
    return p1

    .line 397
    :goto_1a
    if-eqz v5, :cond_1e

    .line 398
    .line 399
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 400
    .line 401
    .line 402
    :cond_1e
    throw v0

    .line 403
    :cond_1f
    const/16 p1, 0x0

    .line 404
    .line 405
    add-int/lit8 v5, v5, 0x1

    .line 406
    .line 407
    goto/16 :goto_1

    .line 408
    .line 409
    :cond_20
    const/16 v0, 0x9

    .line 410
    .line 411
    return v0

    .line 412
    :cond_21
    const/16 p1, 0x0

    .line 413
    .line 414
    add-int/lit8 v0, v0, 0x1

    .line 415
    .line 416
    goto/16 :goto_0

    .line 417
    .line 418
    :cond_22
    return v7
.end method

.method public final g(LI/f;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, LI/g;->j(LI/f;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LI/g;->d:[Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    aget-object v1, p1, v0

    .line 8
    .line 9
    const-string v2, "MakerNote"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, LI/c;

    .line 16
    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    new-instance v2, LI/f;

    .line 20
    .line 21
    iget-object v1, v1, LI/c;->d:[B

    .line 22
    .line 23
    invoke-direct {v2, v1}, LI/f;-><init>([B)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    iput-object v1, v2, LI/b;->c:Ljava/nio/ByteOrder;

    .line 29
    .line 30
    sget-object v1, LI/g;->u:[B

    .line 31
    .line 32
    array-length v3, v1

    .line 33
    new-array v3, v3, [B

    .line 34
    .line 35
    invoke-virtual {v2, v3}, LI/b;->readFully([B)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    invoke-virtual {v2, v4, v5}, LI/f;->b(J)V

    .line 41
    .line 42
    .line 43
    sget-object v4, LI/g;->v:[B

    .line 44
    .line 45
    array-length v5, v4

    .line 46
    new-array v5, v5, [B

    .line 47
    .line 48
    invoke-virtual {v2, v5}, LI/b;->readFully([B)V

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    const-wide/16 v3, 0x8

    .line 58
    .line 59
    invoke-virtual {v2, v3, v4}, LI/f;->b(J)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    const-wide/16 v3, 0xc

    .line 70
    .line 71
    invoke-virtual {v2, v3, v4}, LI/f;->b(J)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    const/4 v1, 0x6

    .line 75
    invoke-virtual {p0, v2, v1}, LI/g;->s(LI/f;I)V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x7

    .line 79
    aget-object v2, p1, v1

    .line 80
    .line 81
    const-string v3, "PreviewImageStart"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, LI/c;

    .line 88
    .line 89
    aget-object v1, p1, v1

    .line 90
    .line 91
    const-string v3, "PreviewImageLength"

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, LI/c;

    .line 98
    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    const/4 v3, 0x5

    .line 104
    aget-object v4, p1, v3

    .line 105
    .line 106
    const-string v5, "JPEGInterchangeFormat"

    .line 107
    .line 108
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    aget-object v2, p1, v3

    .line 112
    .line 113
    const-string v3, "JPEGInterchangeFormatLength"

    .line 114
    .line 115
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_2
    const/16 v1, 0x8

    .line 119
    .line 120
    aget-object v1, p1, v1

    .line 121
    .line 122
    const-string v2, "AspectFrame"

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, LI/c;

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    iget-object v2, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 133
    .line 134
    invoke-virtual {v1, v2}, LI/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, [I

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    array-length v2, v1

    .line 143
    const/4 v3, 0x4

    .line 144
    if-eq v2, v3, :cond_3

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    const/4 v2, 0x2

    .line 148
    aget v2, v1, v2

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    aget v4, v1, v3

    .line 152
    .line 153
    if-le v2, v4, :cond_6

    .line 154
    .line 155
    const/4 v5, 0x3

    .line 156
    aget v5, v1, v5

    .line 157
    .line 158
    aget v1, v1, v0

    .line 159
    .line 160
    if-le v5, v1, :cond_6

    .line 161
    .line 162
    sub-int/2addr v2, v4

    .line 163
    add-int/2addr v2, v0

    .line 164
    sub-int/2addr v5, v1

    .line 165
    add-int/2addr v5, v0

    .line 166
    if-ge v2, v5, :cond_4

    .line 167
    .line 168
    add-int/2addr v2, v5

    .line 169
    sub-int v5, v2, v5

    .line 170
    .line 171
    sub-int/2addr v2, v5

    .line 172
    :cond_4
    iget-object v0, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 173
    .line 174
    invoke-static {v2, v0}, LI/c;->c(ILjava/nio/ByteOrder;)LI/c;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 179
    .line 180
    invoke-static {v5, v1}, LI/c;->c(ILjava/nio/ByteOrder;)LI/c;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    aget-object v2, p1, v3

    .line 185
    .line 186
    const-string v4, "ImageWidth"

    .line 187
    .line 188
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    aget-object p1, p1, v3

    .line 192
    .line 193
    const-string v0, "ImageLength"

    .line 194
    .line 195
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v0, "Invalid aspect frame values. frame="

    .line 202
    .line 203
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    const-string v0, "ExifInterface"

    .line 218
    .line 219
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    :cond_6
    return-void
.end method

.method public final h(LI/b;)V
    .locals 5

    .line 1
    sget-boolean v0, LI/g;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getPngAttributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    iput-object v0, p1, LI/b;->c:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    sget-object v0, LI/g;->w:[B

    .line 29
    .line 30
    array-length v1, v0

    .line 31
    invoke-virtual {p1, v1}, LI/b;->a(I)V

    .line 32
    .line 33
    .line 34
    array-length v0, v0

    .line 35
    :goto_0
    :try_start_0
    invoke-virtual {p1}, LI/b;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x4

    .line 40
    new-array v3, v2, [B

    .line 41
    .line 42
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ne v4, v2, :cond_7

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x8

    .line 49
    .line 50
    const/16 v2, 0x10

    .line 51
    .line 52
    if-ne v0, v2, :cond_2

    .line 53
    .line 54
    sget-object v2, LI/g;->y:[B

    .line 55
    .line 56
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 64
    .line 65
    const-string v0, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    .line 66
    .line 67
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_2
    :goto_1
    sget-object v2, LI/g;->z:[B

    .line 72
    .line 73
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    sget-object v2, LI/g;->x:[B

    .line 81
    .line 82
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_6

    .line 87
    .line 88
    new-array v2, v1, [B

    .line 89
    .line 90
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ne v4, v1, :cond_5

    .line 95
    .line 96
    invoke-virtual {p1}, LI/b;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    new-instance v1, Ljava/util/zip/CRC32;

    .line 101
    .line 102
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    long-to-int v3, v3

    .line 116
    if-ne v3, p1, :cond_4

    .line 117
    .line 118
    iput v0, p0, LI/g;->h:I

    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    invoke-virtual {p0, v2, p1}, LI/g;->r([BI)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, LI/g;->x()V

    .line 125
    .line 126
    .line 127
    new-instance p1, LI/b;

    .line 128
    .line 129
    invoke-direct {p1, v2}, LI/b;-><init>([B)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, LI/g;->u(LI/b;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 137
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p1, ", calculated CRC value: "

    .line 152
    .line 153
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 157
    .line 158
    .line 159
    move-result-wide v3

    .line 160
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v1, "Failed to read given length for given PNG chunk type: "

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-static {v3}, La/a;->d([B)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p1

    .line 198
    :cond_6
    add-int/lit8 v1, v1, 0x4

    .line 199
    .line 200
    invoke-virtual {p1, v1}, LI/b;->a(I)V

    .line 201
    .line 202
    .line 203
    add-int/2addr v0, v1

    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 207
    .line 208
    const-string v0, "Encountered invalid length while parsing PNG chunktype"

    .line 209
    .line 210
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 215
    .line 216
    const-string v0, "Encountered corrupt PNG file."

    .line 217
    .line 218
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw p1
.end method

.method public final i(LI/b;)V
    .locals 9

    .line 1
    const-string v0, "ExifInterface"

    .line 2
    .line 3
    sget-boolean v1, LI/g;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "getRafAttributes starting with: "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/16 v2, 0x54

    .line 25
    .line 26
    invoke-virtual {p1, v2}, LI/b;->a(I)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    new-array v3, v2, [B

    .line 31
    .line 32
    new-array v4, v2, [B

    .line 33
    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    new-array v4, v4, [B

    .line 70
    .line 71
    iget v5, p1, LI/b;->d:I

    .line 72
    .line 73
    sub-int v5, v3, v5

    .line 74
    .line 75
    invoke-virtual {p1, v5}, LI/b;->a(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    .line 79
    .line 80
    .line 81
    new-instance v5, LI/b;

    .line 82
    .line 83
    invoke-direct {v5, v4}, LI/b;-><init>([B)V

    .line 84
    .line 85
    .line 86
    const/4 v4, 0x5

    .line 87
    invoke-virtual {p0, v5, v3, v4}, LI/g;->e(LI/b;II)V

    .line 88
    .line 89
    .line 90
    iget v3, p1, LI/b;->d:I

    .line 91
    .line 92
    sub-int/2addr v2, v3

    .line 93
    invoke-virtual {p1, v2}, LI/b;->a(I)V

    .line 94
    .line 95
    .line 96
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 97
    .line 98
    iput-object v2, p1, LI/b;->c:Ljava/nio/ByteOrder;

    .line 99
    .line 100
    invoke-virtual {p1}, LI/b;->readInt()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v4, "numberOfDirectoryEntry: "

    .line 109
    .line 110
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_1
    const/4 v3, 0x0

    .line 124
    move v4, v3

    .line 125
    :goto_0
    if-ge v4, v2, :cond_3

    .line 126
    .line 127
    invoke-virtual {p1}, LI/b;->readUnsignedShort()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-virtual {p1}, LI/b;->readUnsignedShort()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    sget-object v7, LI/g;->G:LI/d;

    .line 136
    .line 137
    iget v7, v7, LI/d;->a:I

    .line 138
    .line 139
    if-ne v5, v7, :cond_2

    .line 140
    .line 141
    invoke-virtual {p1}, LI/b;->readShort()S

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-virtual {p1}, LI/b;->readShort()S

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iget-object v4, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 150
    .line 151
    invoke-static {v2, v4}, LI/c;->c(ILjava/nio/ByteOrder;)LI/c;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    iget-object v5, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 156
    .line 157
    invoke-static {p1, v5}, LI/c;->c(ILjava/nio/ByteOrder;)LI/c;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    iget-object v6, p0, LI/g;->d:[Ljava/util/HashMap;

    .line 162
    .line 163
    aget-object v7, v6, v3

    .line 164
    .line 165
    const-string v8, "ImageLength"

    .line 166
    .line 167
    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    aget-object v3, v6, v3

    .line 171
    .line 172
    const-string v4, "ImageWidth"

    .line 173
    .line 174
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    if-eqz v1, :cond_3

    .line 178
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v3, "Updated to length: "

    .line 182
    .line 183
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v2, ", width: "

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_2
    invoke-virtual {p1, v6}, LI/b;->a(I)V

    .line 206
    .line 207
    .line 208
    add-int/lit8 v4, v4, 0x1

    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_3
    return-void
.end method

.method public final j(LI/f;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, LI/g;->o(LI/f;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, LI/g;->s(LI/f;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, LI/g;->w(LI/f;I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    invoke-virtual {p0, p1, v0}, LI/g;->w(LI/f;I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, p1, v0}, LI/g;->w(LI/f;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, LI/g;->x()V

    .line 20
    .line 21
    .line 22
    iget p1, p0, LI/g;->c:I

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, LI/g;->d:[Ljava/util/HashMap;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aget-object v1, p1, v0

    .line 32
    .line 33
    const-string v2, "MakerNote"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, LI/c;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    new-instance v2, LI/f;

    .line 44
    .line 45
    iget-object v1, v1, LI/c;->d:[B

    .line 46
    .line 47
    invoke-direct {v2, v1}, LI/f;-><init>([B)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 51
    .line 52
    iput-object v1, v2, LI/b;->c:Ljava/nio/ByteOrder;

    .line 53
    .line 54
    const/4 v1, 0x6

    .line 55
    invoke-virtual {v2, v1}, LI/b;->a(I)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x9

    .line 59
    .line 60
    invoke-virtual {p0, v2, v1}, LI/g;->s(LI/f;I)V

    .line 61
    .line 62
    .line 63
    aget-object v1, p1, v1

    .line 64
    .line 65
    const-string v2, "ColorSpace"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, LI/c;

    .line 72
    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    aget-object p1, p1, v0

    .line 76
    .line 77
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method

.method public final k(LI/f;)V
    .locals 5

    .line 1
    sget-boolean v0, LI/g;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getRw2Attributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, p1}, LI/g;->j(LI/f;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, LI/g;->d:[Ljava/util/HashMap;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    aget-object v1, p1, v0

    .line 31
    .line 32
    const-string v2, "JpgFromRaw"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, LI/c;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    new-instance v2, LI/b;

    .line 43
    .line 44
    iget-object v3, v1, LI/c;->d:[B

    .line 45
    .line 46
    invoke-direct {v2, v3}, LI/b;-><init>([B)V

    .line 47
    .line 48
    .line 49
    iget-wide v3, v1, LI/c;->c:J

    .line 50
    .line 51
    long-to-int v1, v3

    .line 52
    const/4 v3, 0x5

    .line 53
    invoke-virtual {p0, v2, v1, v3}, LI/g;->e(LI/b;II)V

    .line 54
    .line 55
    .line 56
    :cond_1
    aget-object v0, p1, v0

    .line 57
    .line 58
    const-string v1, "ISO"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, LI/c;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    aget-object v2, p1, v1

    .line 68
    .line 69
    const-string v3, "PhotographicSensitivity"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, LI/c;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    aget-object p1, p1, v1

    .line 82
    .line 83
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method public final l(LI/b;)V
    .locals 5

    .line 1
    sget-boolean v0, LI/g;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getWebpAttributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    iput-object v0, p1, LI/b;->c:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    sget-object v0, LI/g;->A:[B

    .line 29
    .line 30
    array-length v0, v0

    .line 31
    invoke-virtual {p1, v0}, LI/b;->a(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, LI/b;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/lit8 v0, v0, 0x8

    .line 39
    .line 40
    sget-object v1, LI/g;->B:[B

    .line 41
    .line 42
    array-length v2, v1

    .line 43
    invoke-virtual {p1, v2}, LI/b;->a(I)V

    .line 44
    .line 45
    .line 46
    array-length v1, v1

    .line 47
    add-int/lit8 v1, v1, 0x8

    .line 48
    .line 49
    :goto_0
    const/4 v2, 0x4

    .line 50
    :try_start_0
    new-array v3, v2, [B

    .line 51
    .line 52
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ne v4, v2, :cond_6

    .line 57
    .line 58
    invoke-virtual {p1}, LI/b;->readInt()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    add-int/lit8 v1, v1, 0x8

    .line 63
    .line 64
    sget-object v4, LI/g;->C:[B

    .line 65
    .line 66
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    new-array v0, v2, [B

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-ne p1, v2, :cond_1

    .line 79
    .line 80
    iput v1, p0, LI/g;->h:I

    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, v0, p1}, LI/g;->r([BI)V

    .line 84
    .line 85
    .line 86
    new-instance p1, LI/b;

    .line 87
    .line 88
    invoke-direct {p1, v0}, LI/b;-><init>([B)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, LI/g;->u(LI/b;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v1, "Failed to read given length for given PNG chunk type: "

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, La/a;->d([B)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p1

    .line 122
    :cond_2
    rem-int/lit8 v3, v2, 0x2

    .line 123
    .line 124
    const/4 v4, 0x1

    .line 125
    if-ne v3, v4, :cond_3

    .line 126
    .line 127
    add-int/lit8 v2, v2, 0x1

    .line 128
    .line 129
    :cond_3
    add-int/2addr v1, v2

    .line 130
    if-ne v1, v0, :cond_4

    .line 131
    .line 132
    return-void

    .line 133
    :cond_4
    if-gt v1, v0, :cond_5

    .line 134
    .line 135
    invoke-virtual {p1, v2}, LI/b;->a(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 140
    .line 141
    const-string v0, "Encountered WebP file with invalid chunk size"

    .line 142
    .line 143
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p1

    .line 147
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 148
    .line 149
    const-string v0, "Encountered invalid length while parsing WebP chunktype"

    .line 150
    .line 151
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 156
    .line 157
    const-string v0, "Encountered corrupt WebP file."

    .line 158
    .line 159
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p1
.end method

.method public final m(LI/b;Ljava/util/HashMap;)V
    .locals 4

    .line 1
    const-string v0, "JPEGInterchangeFormat"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LI/c;

    .line 8
    .line 9
    const-string v1, "JPEGInterchangeFormatLength"

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, LI/c;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p2, v1}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget v1, p0, LI/g;->c:I

    .line 34
    .line 35
    const/4 v2, 0x7

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    iget v1, p0, LI/g;->i:I

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    :cond_0
    if-lez v0, :cond_1

    .line 42
    .line 43
    if-lez p2, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, LI/g;->b:Landroid/content/res/AssetManager$AssetInputStream;

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, LI/g;->a:Ljava/io/FileDescriptor;

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    new-array v1, p2, [B

    .line 54
    .line 55
    int-to-long v2, v0

    .line 56
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 60
    .line 61
    .line 62
    :cond_1
    sget-boolean p1, LI/g;->l:Z

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v1, "Setting thumbnail attributes with offset: "

    .line 69
    .line 70
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", length: "

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p2, "ExifInterface"

    .line 89
    .line 90
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method public final n(Ljava/util/HashMap;)Z
    .locals 2

    .line 1
    const-string v0, "ImageLength"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LI/c;

    .line 8
    .line 9
    const-string v1, "ImageWidth"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, LI/c;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v1, 0x200

    .line 34
    .line 35
    if-gt v0, v1, :cond_0

    .line 36
    .line 37
    if-gt p1, v1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public final o(LI/f;)V
    .locals 3

    .line 1
    invoke-static {p1}, LI/g;->q(LI/b;)Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    iput-object v0, p1, LI/b;->c:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {p1}, LI/b;->readUnsignedShort()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, LI/g;->c:I

    .line 14
    .line 15
    const/4 v2, 0x7

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x2a

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Invalid start code: "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p1}, LI/b;->readInt()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/16 v1, 0x8

    .line 56
    .line 57
    if-lt v0, v1, :cond_3

    .line 58
    .line 59
    add-int/lit8 v0, v0, -0x8

    .line 60
    .line 61
    if-lez v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1, v0}, LI/b;->a(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void

    .line 67
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 68
    .line 69
    const-string v1, "Invalid first Ifd offset: "

    .line 70
    .line 71
    invoke-static {v0, v1}, LE/b;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public final p()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, LI/g;->d:[Ljava/util/HashMap;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    const-string v2, "The size of tag group["

    .line 8
    .line 9
    const-string v3, "]: "

    .line 10
    .line 11
    invoke-static {v0, v2, v3}, LE/b;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    aget-object v3, v1, v0

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "ExifInterface"

    .line 29
    .line 30
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    aget-object v1, v1, v0

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, LI/c;

    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v6, "tagName: "

    .line 64
    .line 65
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ", tagType: "

    .line 78
    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, LI/c;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, ", tagValue: \'"

    .line 90
    .line 91
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 95
    .line 96
    invoke-virtual {v4, v2}, LI/c;->f(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, "\'"

    .line 104
    .line 105
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    return-void
.end method

.method public final r([BI)V
    .locals 1

    .line 1
    new-instance v0, LI/f;

    .line 2
    .line 3
    invoke-direct {v0, p1}, LI/f;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, LI/g;->o(LI/f;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p2}, LI/g;->s(LI/f;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final s(LI/f;I)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v3, v1, LI/b;->d:I

    .line 8
    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, v0, LI/g;->e:Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, LI/b;->readShort()S

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const-string v5, "ExifInterface"

    .line 23
    .line 24
    sget-boolean v6, LI/g;->l:Z

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    new-instance v7, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v8, "numberOfDirectoryEntry: "

    .line 31
    .line 32
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    if-gtz v3, :cond_1

    .line 46
    .line 47
    goto/16 :goto_16

    .line 48
    .line 49
    :cond_1
    const/4 v8, 0x0

    .line 50
    :goto_0
    iget-object v11, v0, LI/g;->d:[Ljava/util/HashMap;

    .line 51
    .line 52
    if-ge v8, v3, :cond_2b

    .line 53
    .line 54
    invoke-virtual {v1}, LI/b;->readUnsignedShort()I

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    invoke-virtual {v1}, LI/b;->readUnsignedShort()I

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    invoke-virtual {v1}, LI/b;->readInt()I

    .line 63
    .line 64
    .line 65
    move-result v15

    .line 66
    iget v7, v1, LI/b;->d:I

    .line 67
    .line 68
    const-wide/16 v16, 0x0

    .line 69
    .line 70
    int-to-long v9, v7

    .line 71
    const-wide/16 v18, 0x4

    .line 72
    .line 73
    add-long v9, v9, v18

    .line 74
    .line 75
    sget-object v7, LI/g;->J:[Ljava/util/HashMap;

    .line 76
    .line 77
    aget-object v7, v7, v2

    .line 78
    .line 79
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    check-cast v7, LI/d;

    .line 88
    .line 89
    if-eqz v6, :cond_3

    .line 90
    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    move/from16 v21, v3

    .line 96
    .line 97
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    move/from16 v22, v6

    .line 102
    .line 103
    if-eqz v7, :cond_2

    .line 104
    .line 105
    iget-object v6, v7, LI/d;->b:Ljava/lang/String;

    .line 106
    .line 107
    :goto_1
    move/from16 v23, v8

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    const/4 v6, 0x0

    .line 111
    goto :goto_1

    .line 112
    :goto_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    move-object/from16 v24, v11

    .line 117
    .line 118
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    filled-new-array {v12, v3, v6, v8, v11}, [Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const-string v6, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 127
    .line 128
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_3
    move/from16 v21, v3

    .line 137
    .line 138
    move/from16 v22, v6

    .line 139
    .line 140
    move/from16 v23, v8

    .line 141
    .line 142
    move-object/from16 v24, v11

    .line 143
    .line 144
    :goto_3
    const/4 v8, 0x3

    .line 145
    const/4 v11, 0x7

    .line 146
    if-nez v7, :cond_5

    .line 147
    .line 148
    if-eqz v22, :cond_4

    .line 149
    .line 150
    new-instance v12, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v6, "Skip the tag entry since tag number is not defined: "

    .line 153
    .line 154
    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    :cond_4
    :goto_4
    move-wide/from16 v26, v9

    .line 168
    .line 169
    goto/16 :goto_c

    .line 170
    .line 171
    :cond_5
    if-lez v14, :cond_6

    .line 172
    .line 173
    sget-object v6, LI/g;->E:[I

    .line 174
    .line 175
    array-length v12, v6

    .line 176
    if-lt v14, v12, :cond_7

    .line 177
    .line 178
    :cond_6
    move-wide/from16 v26, v9

    .line 179
    .line 180
    goto/16 :goto_b

    .line 181
    .line 182
    :cond_7
    iget v12, v7, LI/d;->c:I

    .line 183
    .line 184
    if-eq v12, v11, :cond_c

    .line 185
    .line 186
    if-ne v14, v11, :cond_8

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_8
    if-eq v12, v14, :cond_c

    .line 190
    .line 191
    iget v11, v7, LI/d;->d:I

    .line 192
    .line 193
    if-ne v11, v14, :cond_9

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_9
    const/4 v3, 0x4

    .line 197
    if-eq v12, v3, :cond_b

    .line 198
    .line 199
    if-ne v11, v3, :cond_a

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_a
    const/16 v3, 0x9

    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_b
    :goto_5
    if-ne v14, v8, :cond_a

    .line 206
    .line 207
    :cond_c
    :goto_6
    const/4 v3, 0x7

    .line 208
    goto :goto_8

    .line 209
    :goto_7
    if-eq v12, v3, :cond_d

    .line 210
    .line 211
    if-ne v11, v3, :cond_e

    .line 212
    .line 213
    :cond_d
    const/16 v3, 0x8

    .line 214
    .line 215
    if-ne v14, v3, :cond_e

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_e
    const/16 v3, 0xc

    .line 219
    .line 220
    if-eq v12, v3, :cond_f

    .line 221
    .line 222
    if-ne v11, v3, :cond_10

    .line 223
    .line 224
    :cond_f
    const/16 v3, 0xb

    .line 225
    .line 226
    if-ne v14, v3, :cond_10

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_10
    if-eqz v22, :cond_4

    .line 230
    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v6, "Skip the tag entry since data format ("

    .line 234
    .line 235
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    sget-object v6, LI/g;->D:[Ljava/lang/String;

    .line 239
    .line 240
    aget-object v6, v6, v14

    .line 241
    .line 242
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v6, ") is unexpected for tag: "

    .line 246
    .line 247
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-object v6, v7, LI/d;->b:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    goto :goto_4

    .line 263
    :goto_8
    if-ne v14, v3, :cond_11

    .line 264
    .line 265
    move v14, v12

    .line 266
    :cond_11
    int-to-long v11, v15

    .line 267
    aget v3, v6, v14

    .line 268
    .line 269
    move-wide/from16 v26, v9

    .line 270
    .line 271
    int-to-long v8, v3

    .line 272
    mul-long/2addr v11, v8

    .line 273
    cmp-long v3, v11, v16

    .line 274
    .line 275
    if-ltz v3, :cond_13

    .line 276
    .line 277
    const-wide/32 v8, 0x7fffffff

    .line 278
    .line 279
    .line 280
    cmp-long v3, v11, v8

    .line 281
    .line 282
    if-lez v3, :cond_12

    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_12
    const/4 v3, 0x1

    .line 286
    goto :goto_d

    .line 287
    :cond_13
    :goto_9
    if-eqz v22, :cond_14

    .line 288
    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    const-string v8, "Skip the tag entry since the number of components is invalid: "

    .line 292
    .line 293
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    :cond_14
    :goto_a
    const/4 v3, 0x0

    .line 307
    goto :goto_d

    .line 308
    :goto_b
    if-eqz v22, :cond_15

    .line 309
    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string v8, "Skip the tag entry since data format is invalid: "

    .line 313
    .line 314
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    :cond_15
    :goto_c
    move-wide/from16 v11, v16

    .line 328
    .line 329
    goto :goto_a

    .line 330
    :goto_d
    if-nez v3, :cond_16

    .line 331
    .line 332
    move-wide/from16 v9, v26

    .line 333
    .line 334
    invoke-virtual {v1, v9, v10}, LI/f;->b(J)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_15

    .line 338
    .line 339
    :cond_16
    move-wide/from16 v9, v26

    .line 340
    .line 341
    cmp-long v3, v11, v18

    .line 342
    .line 343
    const-string v8, "Compression"

    .line 344
    .line 345
    if-lez v3, :cond_1a

    .line 346
    .line 347
    invoke-virtual {v1}, LI/b;->readInt()I

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    if-eqz v22, :cond_17

    .line 352
    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    move/from16 v19, v13

    .line 356
    .line 357
    const-string v13, "seek to data offset: "

    .line 358
    .line 359
    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    goto :goto_e

    .line 373
    :cond_17
    move/from16 v19, v13

    .line 374
    .line 375
    :goto_e
    iget v6, v0, LI/g;->c:I

    .line 376
    .line 377
    const/4 v13, 0x7

    .line 378
    if-ne v6, v13, :cond_18

    .line 379
    .line 380
    const-string v6, "MakerNote"

    .line 381
    .line 382
    iget-object v13, v7, LI/d;->b:Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    if-eqz v6, :cond_19

    .line 389
    .line 390
    iput v3, v0, LI/g;->i:I

    .line 391
    .line 392
    :cond_18
    move-wide/from16 v26, v9

    .line 393
    .line 394
    move/from16 v25, v14

    .line 395
    .line 396
    goto :goto_f

    .line 397
    :cond_19
    const/4 v6, 0x6

    .line 398
    if-ne v2, v6, :cond_18

    .line 399
    .line 400
    const-string v13, "ThumbnailImage"

    .line 401
    .line 402
    iget-object v6, v7, LI/d;->b:Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v6

    .line 408
    if-eqz v6, :cond_18

    .line 409
    .line 410
    iput v3, v0, LI/g;->j:I

    .line 411
    .line 412
    iput v15, v0, LI/g;->k:I

    .line 413
    .line 414
    iget-object v6, v0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 415
    .line 416
    const/4 v13, 0x6

    .line 417
    invoke-static {v13, v6}, LI/c;->c(ILjava/nio/ByteOrder;)LI/c;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    iget v13, v0, LI/g;->j:I

    .line 422
    .line 423
    move-wide/from16 v26, v9

    .line 424
    .line 425
    int-to-long v9, v13

    .line 426
    iget-object v13, v0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 427
    .line 428
    invoke-static {v9, v10, v13}, LI/c;->a(JLjava/nio/ByteOrder;)LI/c;

    .line 429
    .line 430
    .line 431
    move-result-object v9

    .line 432
    iget v10, v0, LI/g;->k:I

    .line 433
    .line 434
    move/from16 v25, v14

    .line 435
    .line 436
    int-to-long v13, v10

    .line 437
    iget-object v10, v0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 438
    .line 439
    invoke-static {v13, v14, v10}, LI/c;->a(JLjava/nio/ByteOrder;)LI/c;

    .line 440
    .line 441
    .line 442
    move-result-object v10

    .line 443
    const/16 v20, 0x4

    .line 444
    .line 445
    aget-object v13, v24, v20

    .line 446
    .line 447
    invoke-virtual {v13, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    aget-object v6, v24, v20

    .line 451
    .line 452
    const-string v13, "JPEGInterchangeFormat"

    .line 453
    .line 454
    invoke-virtual {v6, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    aget-object v6, v24, v20

    .line 458
    .line 459
    const-string v9, "JPEGInterchangeFormatLength"

    .line 460
    .line 461
    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    :goto_f
    int-to-long v9, v3

    .line 465
    invoke-virtual {v1, v9, v10}, LI/f;->b(J)V

    .line 466
    .line 467
    .line 468
    goto :goto_10

    .line 469
    :cond_1a
    move-wide/from16 v26, v9

    .line 470
    .line 471
    move/from16 v19, v13

    .line 472
    .line 473
    move/from16 v25, v14

    .line 474
    .line 475
    :goto_10
    sget-object v3, LI/g;->M:Ljava/util/HashMap;

    .line 476
    .line 477
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v6

    .line 481
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    check-cast v3, Ljava/lang/Integer;

    .line 486
    .line 487
    if-eqz v22, :cond_1b

    .line 488
    .line 489
    new-instance v6, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    const-string v9, "nextIfdType: "

    .line 492
    .line 493
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v9, " byteCount: "

    .line 500
    .line 501
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v6

    .line 511
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    :cond_1b
    if-eqz v3, :cond_24

    .line 515
    .line 516
    move/from16 v14, v25

    .line 517
    .line 518
    const/4 v6, 0x3

    .line 519
    if-eq v14, v6, :cond_1f

    .line 520
    .line 521
    const/4 v6, 0x4

    .line 522
    if-eq v14, v6, :cond_1e

    .line 523
    .line 524
    const/16 v6, 0x8

    .line 525
    .line 526
    if-eq v14, v6, :cond_1d

    .line 527
    .line 528
    const/16 v6, 0x9

    .line 529
    .line 530
    if-eq v14, v6, :cond_1c

    .line 531
    .line 532
    const/16 v6, 0xd

    .line 533
    .line 534
    if-eq v14, v6, :cond_1c

    .line 535
    .line 536
    const-wide/16 v8, -0x1

    .line 537
    .line 538
    goto :goto_12

    .line 539
    :cond_1c
    invoke-virtual {v1}, LI/b;->readInt()I

    .line 540
    .line 541
    .line 542
    move-result v6

    .line 543
    :goto_11
    int-to-long v8, v6

    .line 544
    goto :goto_12

    .line 545
    :cond_1d
    invoke-virtual {v1}, LI/b;->readShort()S

    .line 546
    .line 547
    .line 548
    move-result v6

    .line 549
    goto :goto_11

    .line 550
    :cond_1e
    invoke-virtual {v1}, LI/b;->readInt()I

    .line 551
    .line 552
    .line 553
    move-result v6

    .line 554
    int-to-long v8, v6

    .line 555
    const-wide v10, 0xffffffffL

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    and-long/2addr v8, v10

    .line 561
    goto :goto_12

    .line 562
    :cond_1f
    invoke-virtual {v1}, LI/b;->readUnsignedShort()I

    .line 563
    .line 564
    .line 565
    move-result v6

    .line 566
    goto :goto_11

    .line 567
    :goto_12
    if-eqz v22, :cond_20

    .line 568
    .line 569
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 570
    .line 571
    .line 572
    move-result-object v6

    .line 573
    iget-object v7, v7, LI/d;->b:Ljava/lang/String;

    .line 574
    .line 575
    filled-new-array {v6, v7}, [Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v6

    .line 579
    const-string v7, "Offset: %d, tagName: %s"

    .line 580
    .line 581
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v6

    .line 585
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .line 587
    .line 588
    :cond_20
    cmp-long v6, v8, v16

    .line 589
    .line 590
    if-lez v6, :cond_23

    .line 591
    .line 592
    long-to-int v6, v8

    .line 593
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 594
    .line 595
    .line 596
    move-result-object v6

    .line 597
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v6

    .line 601
    if-nez v6, :cond_22

    .line 602
    .line 603
    invoke-virtual {v1, v8, v9}, LI/f;->b(J)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 607
    .line 608
    .line 609
    move-result v3

    .line 610
    invoke-virtual {v0, v1, v3}, LI/g;->s(LI/f;I)V

    .line 611
    .line 612
    .line 613
    :cond_21
    :goto_13
    move-wide/from16 v9, v26

    .line 614
    .line 615
    goto :goto_14

    .line 616
    :cond_22
    if-eqz v22, :cond_21

    .line 617
    .line 618
    new-instance v6, Ljava/lang/StringBuilder;

    .line 619
    .line 620
    const-string v7, "Skip jump into the IFD since it has already been read: IfdType "

    .line 621
    .line 622
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    const-string v3, " (at "

    .line 629
    .line 630
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    const-string v3, ")"

    .line 637
    .line 638
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .line 647
    .line 648
    goto :goto_13

    .line 649
    :cond_23
    if-eqz v22, :cond_21

    .line 650
    .line 651
    new-instance v3, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    const-string v6, "Skip jump into the IFD since its offset is invalid: "

    .line 654
    .line 655
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v3

    .line 665
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .line 667
    .line 668
    goto :goto_13

    .line 669
    :goto_14
    invoke-virtual {v1, v9, v10}, LI/f;->b(J)V

    .line 670
    .line 671
    .line 672
    goto :goto_15

    .line 673
    :cond_24
    move/from16 v14, v25

    .line 674
    .line 675
    move-wide/from16 v9, v26

    .line 676
    .line 677
    iget v3, v1, LI/b;->d:I

    .line 678
    .line 679
    iget v13, v0, LI/g;->h:I

    .line 680
    .line 681
    add-int/2addr v3, v13

    .line 682
    long-to-int v11, v11

    .line 683
    new-array v11, v11, [B

    .line 684
    .line 685
    invoke-virtual {v1, v11}, LI/b;->readFully([B)V

    .line 686
    .line 687
    .line 688
    move/from16 v20, v15

    .line 689
    .line 690
    new-instance v15, LI/c;

    .line 691
    .line 692
    int-to-long v12, v3

    .line 693
    move-object/from16 v18, v11

    .line 694
    .line 695
    move-wide/from16 v16, v12

    .line 696
    .line 697
    move/from16 v19, v14

    .line 698
    .line 699
    invoke-direct/range {v15 .. v20}, LI/c;-><init>(J[BII)V

    .line 700
    .line 701
    .line 702
    aget-object v3, v24, v2

    .line 703
    .line 704
    iget-object v7, v7, LI/d;->b:Ljava/lang/String;

    .line 705
    .line 706
    invoke-virtual {v3, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    const-string v3, "DNGVersion"

    .line 710
    .line 711
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move-result v3

    .line 715
    if-eqz v3, :cond_25

    .line 716
    .line 717
    const/4 v6, 0x3

    .line 718
    iput v6, v0, LI/g;->c:I

    .line 719
    .line 720
    :cond_25
    const-string v3, "Make"

    .line 721
    .line 722
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 723
    .line 724
    .line 725
    move-result v3

    .line 726
    if-nez v3, :cond_26

    .line 727
    .line 728
    const-string v3, "Model"

    .line 729
    .line 730
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    move-result v3

    .line 734
    if-eqz v3, :cond_27

    .line 735
    .line 736
    :cond_26
    iget-object v3, v0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 737
    .line 738
    invoke-virtual {v15, v3}, LI/c;->f(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    const-string v6, "PENTAX"

    .line 743
    .line 744
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 745
    .line 746
    .line 747
    move-result v3

    .line 748
    if-nez v3, :cond_28

    .line 749
    .line 750
    :cond_27
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v3

    .line 754
    if-eqz v3, :cond_29

    .line 755
    .line 756
    iget-object v3, v0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 757
    .line 758
    invoke-virtual {v15, v3}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 759
    .line 760
    .line 761
    move-result v3

    .line 762
    const v6, 0xffff

    .line 763
    .line 764
    .line 765
    if-ne v3, v6, :cond_29

    .line 766
    .line 767
    :cond_28
    const/16 v3, 0x8

    .line 768
    .line 769
    iput v3, v0, LI/g;->c:I

    .line 770
    .line 771
    :cond_29
    iget v3, v1, LI/b;->d:I

    .line 772
    .line 773
    int-to-long v6, v3

    .line 774
    cmp-long v3, v6, v9

    .line 775
    .line 776
    if-eqz v3, :cond_2a

    .line 777
    .line 778
    invoke-virtual {v1, v9, v10}, LI/f;->b(J)V

    .line 779
    .line 780
    .line 781
    :cond_2a
    :goto_15
    add-int/lit8 v8, v23, 0x1

    .line 782
    .line 783
    int-to-short v8, v8

    .line 784
    move/from16 v3, v21

    .line 785
    .line 786
    move/from16 v6, v22

    .line 787
    .line 788
    goto/16 :goto_0

    .line 789
    .line 790
    :cond_2b
    move/from16 v22, v6

    .line 791
    .line 792
    move-object/from16 v24, v11

    .line 793
    .line 794
    const-wide/16 v16, 0x0

    .line 795
    .line 796
    invoke-virtual {v1}, LI/b;->readInt()I

    .line 797
    .line 798
    .line 799
    move-result v2

    .line 800
    if-eqz v22, :cond_2c

    .line 801
    .line 802
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v3

    .line 810
    const-string v6, "nextIfdOffset: %d"

    .line 811
    .line 812
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v3

    .line 816
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    .line 818
    .line 819
    :cond_2c
    int-to-long v6, v2

    .line 820
    cmp-long v3, v6, v16

    .line 821
    .line 822
    if-lez v3, :cond_2f

    .line 823
    .line 824
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 829
    .line 830
    .line 831
    move-result v3

    .line 832
    if-nez v3, :cond_2e

    .line 833
    .line 834
    invoke-virtual {v1, v6, v7}, LI/f;->b(J)V

    .line 835
    .line 836
    .line 837
    const/4 v3, 0x4

    .line 838
    aget-object v2, v24, v3

    .line 839
    .line 840
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 841
    .line 842
    .line 843
    move-result v2

    .line 844
    if-eqz v2, :cond_2d

    .line 845
    .line 846
    invoke-virtual {v0, v1, v3}, LI/g;->s(LI/f;I)V

    .line 847
    .line 848
    .line 849
    return-void

    .line 850
    :cond_2d
    const/4 v2, 0x5

    .line 851
    aget-object v3, v24, v2

    .line 852
    .line 853
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 854
    .line 855
    .line 856
    move-result v3

    .line 857
    if-eqz v3, :cond_30

    .line 858
    .line 859
    invoke-virtual {v0, v1, v2}, LI/g;->s(LI/f;I)V

    .line 860
    .line 861
    .line 862
    return-void

    .line 863
    :cond_2e
    if-eqz v22, :cond_30

    .line 864
    .line 865
    new-instance v1, Ljava/lang/StringBuilder;

    .line 866
    .line 867
    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    .line 868
    .line 869
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v1

    .line 879
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    .line 881
    .line 882
    return-void

    .line 883
    :cond_2f
    if-eqz v22, :cond_30

    .line 884
    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    .line 886
    .line 887
    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    .line 888
    .line 889
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v1

    .line 899
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    .line 901
    .line 902
    :cond_30
    :goto_16
    return-void
.end method

.method public final t(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, LI/g;->d:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    aget-object v1, v0, p1

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    aget-object v1, v0, p1

    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    aget-object p1, v0, p1

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final u(LI/b;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, LI/g;->d:[Ljava/util/HashMap;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    aget-object v2, v2, v3

    .line 9
    .line 10
    const-string v3, "Compression"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, LI/c;

    .line 17
    .line 18
    if-eqz v3, :cond_12

    .line 19
    .line 20
    iget-object v4, v0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 21
    .line 22
    invoke-virtual {v3, v4}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x6

    .line 27
    const/4 v5, 0x1

    .line 28
    if-eq v3, v5, :cond_1

    .line 29
    .line 30
    if-eq v3, v4, :cond_0

    .line 31
    .line 32
    const/4 v6, 0x7

    .line 33
    if-eq v3, v6, :cond_1

    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0, v1, v2}, LI/g;->m(LI/b;Ljava/util/HashMap;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string v3, "BitsPerSample"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, LI/c;

    .line 48
    .line 49
    const-string v6, "ExifInterface"

    .line 50
    .line 51
    if-eqz v3, :cond_10

    .line 52
    .line 53
    iget-object v7, v0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 54
    .line 55
    invoke-virtual {v3, v7}, LI/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, [I

    .line 60
    .line 61
    sget-object v7, LI/g;->o:[I

    .line 62
    .line 63
    invoke-static {v7, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget v8, v0, LI/g;->c:I

    .line 71
    .line 72
    const/4 v9, 0x3

    .line 73
    if-ne v8, v9, :cond_10

    .line 74
    .line 75
    const-string v8, "PhotometricInterpretation"

    .line 76
    .line 77
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    check-cast v8, LI/c;

    .line 82
    .line 83
    if-eqz v8, :cond_10

    .line 84
    .line 85
    iget-object v9, v0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 86
    .line 87
    invoke-virtual {v8, v9}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-ne v8, v5, :cond_3

    .line 92
    .line 93
    sget-object v9, LI/g;->p:[I

    .line 94
    .line 95
    invoke-static {v3, v9}, Ljava/util/Arrays;->equals([I[I)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-nez v9, :cond_4

    .line 100
    .line 101
    :cond_3
    if-ne v8, v4, :cond_10

    .line 102
    .line 103
    invoke-static {v3, v7}, Ljava/util/Arrays;->equals([I[I)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_10

    .line 108
    .line 109
    :cond_4
    :goto_0
    const-string v3, "StripOffsets"

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, LI/c;

    .line 116
    .line 117
    const-string v4, "StripByteCounts"

    .line 118
    .line 119
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, LI/c;

    .line 124
    .line 125
    if-eqz v3, :cond_11

    .line 126
    .line 127
    if-eqz v2, :cond_11

    .line 128
    .line 129
    iget-object v4, v0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 130
    .line 131
    invoke-virtual {v3, v4}, LI/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {v3}, La/a;->g(Ljava/io/Serializable;)[J

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-object v4, v0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 140
    .line 141
    invoke-virtual {v2, v4}, LI/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {v2}, La/a;->g(Ljava/io/Serializable;)[J

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    if-eqz v3, :cond_f

    .line 150
    .line 151
    array-length v4, v3

    .line 152
    if-nez v4, :cond_5

    .line 153
    .line 154
    goto/16 :goto_4

    .line 155
    .line 156
    :cond_5
    if-eqz v2, :cond_e

    .line 157
    .line 158
    array-length v4, v2

    .line 159
    if-nez v4, :cond_6

    .line 160
    .line 161
    goto/16 :goto_3

    .line 162
    .line 163
    :cond_6
    array-length v4, v3

    .line 164
    array-length v7, v2

    .line 165
    if-eq v4, v7, :cond_7

    .line 166
    .line 167
    const-string v1, "stripOffsets and stripByteCounts should have same length."

    .line 168
    .line 169
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_7
    array-length v4, v2

    .line 174
    const/4 v7, 0x0

    .line 175
    const-wide/16 v8, 0x0

    .line 176
    .line 177
    move v10, v7

    .line 178
    :goto_1
    if-ge v10, v4, :cond_8

    .line 179
    .line 180
    aget-wide v11, v2, v10

    .line 181
    .line 182
    add-long/2addr v8, v11

    .line 183
    add-int/lit8 v10, v10, 0x1

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_8
    long-to-int v4, v8

    .line 187
    new-array v4, v4, [B

    .line 188
    .line 189
    iput-boolean v5, v0, LI/g;->g:Z

    .line 190
    .line 191
    move v8, v7

    .line 192
    move v9, v8

    .line 193
    move v10, v9

    .line 194
    :goto_2
    array-length v11, v3

    .line 195
    if-ge v8, v11, :cond_d

    .line 196
    .line 197
    aget-wide v11, v3, v8

    .line 198
    .line 199
    long-to-int v11, v11

    .line 200
    aget-wide v12, v2, v8

    .line 201
    .line 202
    long-to-int v12, v12

    .line 203
    array-length v13, v3

    .line 204
    sub-int/2addr v13, v5

    .line 205
    if-ge v8, v13, :cond_9

    .line 206
    .line 207
    add-int v13, v11, v12

    .line 208
    .line 209
    int-to-long v13, v13

    .line 210
    add-int/lit8 v15, v8, 0x1

    .line 211
    .line 212
    aget-wide v15, v3, v15

    .line 213
    .line 214
    cmp-long v13, v13, v15

    .line 215
    .line 216
    if-eqz v13, :cond_9

    .line 217
    .line 218
    iput-boolean v7, v0, LI/g;->g:Z

    .line 219
    .line 220
    :cond_9
    sub-int/2addr v11, v9

    .line 221
    if-gez v11, :cond_a

    .line 222
    .line 223
    const-string v1, "Invalid strip offset value"

    .line 224
    .line 225
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_a
    int-to-long v13, v11

    .line 230
    invoke-virtual {v1, v13, v14}, Ljava/io/InputStream;->skip(J)J

    .line 231
    .line 232
    .line 233
    move-result-wide v15

    .line 234
    cmp-long v13, v15, v13

    .line 235
    .line 236
    const-string v14, " bytes."

    .line 237
    .line 238
    if-eqz v13, :cond_b

    .line 239
    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v2, "Failed to skip "

    .line 243
    .line 244
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_b
    add-int/2addr v9, v11

    .line 262
    new-array v11, v12, [B

    .line 263
    .line 264
    invoke-virtual {v1, v11}, Ljava/io/InputStream;->read([B)I

    .line 265
    .line 266
    .line 267
    move-result v13

    .line 268
    if-eq v13, v12, :cond_c

    .line 269
    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    const-string v2, "Failed to read "

    .line 273
    .line 274
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_c
    add-int/2addr v9, v12

    .line 292
    invoke-static {v11, v7, v4, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    .line 294
    .line 295
    add-int/2addr v10, v12

    .line 296
    add-int/lit8 v8, v8, 0x1

    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_d
    iget-boolean v1, v0, LI/g;->g:Z

    .line 300
    .line 301
    if-eqz v1, :cond_11

    .line 302
    .line 303
    aget-wide v1, v3, v7

    .line 304
    .line 305
    return-void

    .line 306
    :cond_e
    :goto_3
    const-string v1, "stripByteCounts should not be null or have zero length."

    .line 307
    .line 308
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :cond_f
    :goto_4
    const-string v1, "stripOffsets should not be null or have zero length."

    .line 313
    .line 314
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :cond_10
    sget-boolean v1, LI/g;->l:Z

    .line 319
    .line 320
    if-eqz v1, :cond_11

    .line 321
    .line 322
    const-string v1, "Unsupported data type value"

    .line 323
    .line 324
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    :cond_11
    :goto_5
    return-void

    .line 328
    :cond_12
    invoke-virtual {v0, v1, v2}, LI/g;->m(LI/b;Ljava/util/HashMap;)V

    .line 329
    .line 330
    .line 331
    return-void
.end method

.method public final v(II)V
    .locals 8

    .line 1
    iget-object v0, p0, LI/g;->d:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "ExifInterface"

    .line 10
    .line 11
    sget-boolean v3, LI/g;->l:Z

    .line 12
    .line 13
    if-nez v1, :cond_5

    .line 14
    .line 15
    aget-object v1, v0, p2

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    aget-object v1, v0, p1

    .line 25
    .line 26
    const-string v4, "ImageLength"

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, LI/c;

    .line 33
    .line 34
    aget-object v5, v0, p1

    .line 35
    .line 36
    const-string v6, "ImageWidth"

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, LI/c;

    .line 43
    .line 44
    aget-object v7, v0, p2

    .line 45
    .line 46
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, LI/c;

    .line 51
    .line 52
    aget-object v7, v0, p2

    .line 53
    .line 54
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, LI/c;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    if-eqz v4, :cond_3

    .line 66
    .line 67
    if-nez v6, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v2, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 77
    .line 78
    invoke-virtual {v5, v2}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget-object v3, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 83
    .line 84
    invoke-virtual {v4, v3}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget-object v4, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 89
    .line 90
    invoke-virtual {v6, v4}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ge v1, v3, :cond_6

    .line 95
    .line 96
    if-ge v2, v4, :cond_6

    .line 97
    .line 98
    aget-object v1, v0, p1

    .line 99
    .line 100
    aget-object v2, v0, p2

    .line 101
    .line 102
    aput-object v2, v0, p1

    .line 103
    .line 104
    aput-object v1, v0, p2

    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    :goto_0
    if-eqz v3, :cond_6

    .line 108
    .line 109
    const-string p1, "Second image does not contain valid size information"

    .line 110
    .line 111
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    .line 116
    .line 117
    const-string p1, "First image does not contain valid size information"

    .line 118
    .line 119
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 124
    .line 125
    const-string p1, "Cannot perform swap since only one image data exists"

    .line 126
    .line 127
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_6
    return-void
.end method

.method public final w(LI/f;I)V
    .locals 10

    .line 1
    iget-object v0, p0, LI/g;->d:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p2

    .line 4
    .line 5
    const-string v2, "DefaultCropSize"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, LI/c;

    .line 12
    .line 13
    aget-object v2, v0, p2

    .line 14
    .line 15
    const-string v3, "SensorTopBorder"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, LI/c;

    .line 22
    .line 23
    aget-object v3, v0, p2

    .line 24
    .line 25
    const-string v4, "SensorLeftBorder"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, LI/c;

    .line 32
    .line 33
    aget-object v4, v0, p2

    .line 34
    .line 35
    const-string v5, "SensorBottomBorder"

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, LI/c;

    .line 42
    .line 43
    aget-object v5, v0, p2

    .line 44
    .line 45
    const-string v6, "SensorRightBorder"

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, LI/c;

    .line 52
    .line 53
    const-string v6, "ImageLength"

    .line 54
    .line 55
    const-string v7, "ImageWidth"

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    iget p1, v1, LI/c;->a:I

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    const-string v3, "Invalid crop size values. cropSize="

    .line 63
    .line 64
    const-string v4, "ExifInterface"

    .line 65
    .line 66
    const/4 v5, 0x1

    .line 67
    const/4 v8, 0x0

    .line 68
    const/4 v9, 0x2

    .line 69
    if-ne p1, v2, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, LI/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, [LI/e;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    array-length v1, p1

    .line 82
    if-eq v1, v9, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    aget-object v1, p1, v8

    .line 86
    .line 87
    iget-object v2, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 88
    .line 89
    invoke-static {v1, v2}, LI/c;->b(LI/e;Ljava/nio/ByteOrder;)LI/c;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    aget-object p1, p1, v5

    .line 94
    .line 95
    iget-object v2, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 96
    .line 97
    invoke-static {p1, v2}, LI/c;->b(LI/e;Ljava/nio/ByteOrder;)LI/c;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    iget-object p1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 123
    .line 124
    invoke-virtual {v1, p1}, LI/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, [I

    .line 129
    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    array-length v1, p1

    .line 133
    if-eq v1, v9, :cond_3

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    aget v1, p1, v8

    .line 137
    .line 138
    iget-object v2, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 139
    .line 140
    invoke-static {v1, v2}, LI/c;->c(ILjava/nio/ByteOrder;)LI/c;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    aget p1, p1, v5

    .line 145
    .line 146
    iget-object v2, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 147
    .line 148
    invoke-static {p1, v2}, LI/c;->c(ILjava/nio/ByteOrder;)LI/c;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    :goto_1
    aget-object v2, v0, p2

    .line 153
    .line 154
    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    aget-object p2, v0, p2

    .line 158
    .line 159
    invoke-virtual {p2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_5
    if-eqz v2, :cond_6

    .line 184
    .line 185
    if-eqz v3, :cond_6

    .line 186
    .line 187
    if-eqz v4, :cond_6

    .line 188
    .line 189
    if-eqz v5, :cond_6

    .line 190
    .line 191
    iget-object p1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 192
    .line 193
    invoke-virtual {v2, p1}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    iget-object v1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 198
    .line 199
    invoke-virtual {v4, v1}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    iget-object v2, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 204
    .line 205
    invoke-virtual {v5, v2}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    iget-object v4, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 210
    .line 211
    invoke-virtual {v3, v4}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-le v1, p1, :cond_8

    .line 216
    .line 217
    if-le v2, v3, :cond_8

    .line 218
    .line 219
    sub-int/2addr v1, p1

    .line 220
    sub-int/2addr v2, v3

    .line 221
    iget-object p1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 222
    .line 223
    invoke-static {v1, p1}, LI/c;->c(ILjava/nio/ByteOrder;)LI/c;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iget-object v1, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 228
    .line 229
    invoke-static {v2, v1}, LI/c;->c(ILjava/nio/ByteOrder;)LI/c;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    aget-object v2, v0, p2

    .line 234
    .line 235
    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    aget-object p1, v0, p2

    .line 239
    .line 240
    invoke-virtual {p1, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_6
    aget-object v1, v0, p2

    .line 245
    .line 246
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    check-cast v1, LI/c;

    .line 251
    .line 252
    aget-object v2, v0, p2

    .line 253
    .line 254
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, LI/c;

    .line 259
    .line 260
    if-eqz v1, :cond_7

    .line 261
    .line 262
    if-nez v2, :cond_8

    .line 263
    .line 264
    :cond_7
    aget-object v1, v0, p2

    .line 265
    .line 266
    const-string v2, "JPEGInterchangeFormat"

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, LI/c;

    .line 273
    .line 274
    aget-object v0, v0, p2

    .line 275
    .line 276
    const-string v2, "JPEGInterchangeFormatLength"

    .line 277
    .line 278
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, LI/c;

    .line 283
    .line 284
    if-eqz v1, :cond_8

    .line 285
    .line 286
    if-eqz v0, :cond_8

    .line 287
    .line 288
    iget-object v0, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 289
    .line 290
    invoke-virtual {v1, v0}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    iget-object v2, p0, LI/g;->f:Ljava/nio/ByteOrder;

    .line 295
    .line 296
    invoke-virtual {v1, v2}, LI/c;->e(Ljava/nio/ByteOrder;)I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    int-to-long v2, v0

    .line 301
    invoke-virtual {p1, v2, v3}, LI/f;->b(J)V

    .line 302
    .line 303
    .line 304
    new-array v1, v1, [B

    .line 305
    .line 306
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 307
    .line 308
    .line 309
    new-instance p1, LI/b;

    .line 310
    .line 311
    invoke-direct {p1, v1}, LI/b;-><init>([B)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, p1, v0, p2}, LI/g;->e(LI/b;II)V

    .line 315
    .line 316
    .line 317
    :cond_8
    return-void
.end method

.method public final x()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-virtual {p0, v0, v1}, LI/g;->v(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-virtual {p0, v0, v2}, LI/g;->v(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, LI/g;->v(II)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, LI/g;->d:[Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    aget-object v5, v3, v4

    .line 17
    .line 18
    const-string v6, "PixelXDimension"

    .line 19
    .line 20
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, LI/c;

    .line 25
    .line 26
    aget-object v4, v3, v4

    .line 27
    .line 28
    const-string v6, "PixelYDimension"

    .line 29
    .line 30
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, LI/c;

    .line 35
    .line 36
    const-string v6, "ImageLength"

    .line 37
    .line 38
    const-string v7, "ImageWidth"

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    aget-object v8, v3, v0

    .line 45
    .line 46
    invoke-virtual {v8, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    aget-object v5, v3, v0

    .line 50
    .line 51
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_0
    aget-object v4, v3, v2

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    aget-object v4, v3, v1

    .line 63
    .line 64
    invoke-virtual {p0, v4}, LI/g;->n(Ljava/util/HashMap;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    aget-object v4, v3, v1

    .line 71
    .line 72
    aput-object v4, v3, v2

    .line 73
    .line 74
    new-instance v4, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    aput-object v4, v3, v1

    .line 80
    .line 81
    :cond_1
    aget-object v3, v3, v2

    .line 82
    .line 83
    invoke-virtual {p0, v3}, LI/g;->n(Ljava/util/HashMap;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_2

    .line 88
    .line 89
    const-string v3, "ExifInterface"

    .line 90
    .line 91
    const-string v4, "No image meets the size requirements of a thumbnail image."

    .line 92
    .line 93
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_2
    const-string v3, "ThumbnailOrientation"

    .line 97
    .line 98
    const-string v4, "Orientation"

    .line 99
    .line 100
    invoke-virtual {p0, v0, v3, v4}, LI/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v5, "ThumbnailImageLength"

    .line 104
    .line 105
    invoke-virtual {p0, v0, v5, v6}, LI/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v8, "ThumbnailImageWidth"

    .line 109
    .line 110
    invoke-virtual {p0, v0, v8, v7}, LI/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v1, v3, v4}, LI/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1, v5, v6}, LI/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v1, v8, v7}, LI/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v2, v4, v3}, LI/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v2, v6, v5}, LI/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v2, v7, v8}, LI/g;->t(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
