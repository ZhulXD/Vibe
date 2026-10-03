.class public final LA1/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements LI0/a;
.implements LN/d;
.implements LP/O;
.implements LR0/g;
.implements Lj/n;
.implements LY1/f;
.implements LY1/b;
.implements Landroidx/core/view/ViewPropertyAnimatorUpdateListener;


# static fields
.field public static c:LA1/b;


# instance fields
.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, LA1/b;->b:Ljava/lang/Object;

    return-void

    .line 6
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA1/b;->b:Ljava/lang/Object;

    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lb1/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lb1/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    iput-object p1, p0, LA1/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, LA1/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto/16 :goto_2

    .line 5
    .line 6
    :cond_0
    invoke-static {p0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    move-object v0, v1

    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_1
    const/16 v1, 0x2e

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, -0x1

    .line 22
    if-ne v2, v3, :cond_2

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_2
    const/4 v4, 0x1

    .line 27
    add-int/2addr v2, v4

    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    sparse-switch v2, :sswitch_data_0

    .line 44
    .line 45
    .line 46
    :goto_0
    move v1, v3

    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :sswitch_0
    const-string v1, "xhtml"

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/16 v1, 0x31

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :sswitch_1
    const-string v1, "shtml"

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const/16 v1, 0x30

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :sswitch_2
    const-string v1, "pjpeg"

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_5

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    const/16 v1, 0x2f

    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :sswitch_3
    const-string v2, "mhtml"

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_34

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :sswitch_4
    const-string v1, "ehtml"

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-nez p0, :cond_6

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_6
    const/16 v1, 0x2d

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :sswitch_5
    const-string v1, "xhtm"

    .line 111
    .line 112
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-nez p0, :cond_7

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_7
    const/16 v1, 0x2c

    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :sswitch_6
    const-string v1, "woff"

    .line 124
    .line 125
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-nez p0, :cond_8

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_8
    const/16 v1, 0x2b

    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :sswitch_7
    const-string v1, "webp"

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-nez p0, :cond_9

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_9
    const/16 v1, 0x2a

    .line 146
    .line 147
    goto/16 :goto_1

    .line 148
    .line 149
    :sswitch_8
    const-string v1, "webm"

    .line 150
    .line 151
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-nez p0, :cond_a

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_a
    const/16 v1, 0x29

    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :sswitch_9
    const-string v1, "wasm"

    .line 163
    .line 164
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    if-nez p0, :cond_b

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_b
    const/16 v1, 0x28

    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :sswitch_a
    const-string v1, "tiff"

    .line 176
    .line 177
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-nez p0, :cond_c

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_c
    const/16 v1, 0x27

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :sswitch_b
    const-string v1, "svgz"

    .line 190
    .line 191
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-nez p0, :cond_d

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_d
    const/16 v1, 0x26

    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :sswitch_c
    const-string v1, "shtm"

    .line 204
    .line 205
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    if-nez p0, :cond_e

    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_e
    const/16 v1, 0x25

    .line 214
    .line 215
    goto/16 :goto_1

    .line 216
    .line 217
    :sswitch_d
    const-string v1, "opus"

    .line 218
    .line 219
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    if-nez p0, :cond_f

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :cond_f
    const/16 v1, 0x24

    .line 228
    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :sswitch_e
    const-string v1, "mpeg"

    .line 232
    .line 233
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    if-nez p0, :cond_10

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :cond_10
    const/16 v1, 0x23

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :sswitch_f
    const-string v1, "json"

    .line 246
    .line 247
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result p0

    .line 251
    if-nez p0, :cond_11

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_11
    const/16 v1, 0x22

    .line 256
    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :sswitch_10
    const-string v1, "jpeg"

    .line 260
    .line 261
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result p0

    .line 265
    if-nez p0, :cond_12

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_12
    const/16 v1, 0x21

    .line 270
    .line 271
    goto/16 :goto_1

    .line 272
    .line 273
    :sswitch_11
    const-string v1, "jfif"

    .line 274
    .line 275
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result p0

    .line 279
    if-nez p0, :cond_13

    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_13
    const/16 v1, 0x20

    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :sswitch_12
    const-string v1, "html"

    .line 288
    .line 289
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result p0

    .line 293
    if-nez p0, :cond_14

    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_14
    const/16 v1, 0x1f

    .line 298
    .line 299
    goto/16 :goto_1

    .line 300
    .line 301
    :sswitch_13
    const-string v1, "flac"

    .line 302
    .line 303
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result p0

    .line 307
    if-nez p0, :cond_15

    .line 308
    .line 309
    goto/16 :goto_0

    .line 310
    .line 311
    :cond_15
    const/16 v1, 0x1e

    .line 312
    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :sswitch_14
    const-string v1, "apng"

    .line 316
    .line 317
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result p0

    .line 321
    if-nez p0, :cond_16

    .line 322
    .line 323
    goto/16 :goto_0

    .line 324
    .line 325
    :cond_16
    const/16 v1, 0x1d

    .line 326
    .line 327
    goto/16 :goto_1

    .line 328
    .line 329
    :sswitch_15
    const-string v1, "zip"

    .line 330
    .line 331
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result p0

    .line 335
    if-nez p0, :cond_17

    .line 336
    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :cond_17
    const/16 v1, 0x1c

    .line 340
    .line 341
    goto/16 :goto_1

    .line 342
    .line 343
    :sswitch_16
    const-string v1, "xml"

    .line 344
    .line 345
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result p0

    .line 349
    if-nez p0, :cond_18

    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :cond_18
    const/16 v1, 0x1b

    .line 354
    .line 355
    goto/16 :goto_1

    .line 356
    .line 357
    :sswitch_17
    const-string v1, "xht"

    .line 358
    .line 359
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result p0

    .line 363
    if-nez p0, :cond_19

    .line 364
    .line 365
    goto/16 :goto_0

    .line 366
    .line 367
    :cond_19
    const/16 v1, 0x1a

    .line 368
    .line 369
    goto/16 :goto_1

    .line 370
    .line 371
    :sswitch_18
    const-string v1, "wav"

    .line 372
    .line 373
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result p0

    .line 377
    if-nez p0, :cond_1a

    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :cond_1a
    const/16 v1, 0x19

    .line 382
    .line 383
    goto/16 :goto_1

    .line 384
    .line 385
    :sswitch_19
    const-string v1, "tif"

    .line 386
    .line 387
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result p0

    .line 391
    if-nez p0, :cond_1b

    .line 392
    .line 393
    goto/16 :goto_0

    .line 394
    .line 395
    :cond_1b
    const/16 v1, 0x18

    .line 396
    .line 397
    goto/16 :goto_1

    .line 398
    .line 399
    :sswitch_1a
    const-string v1, "tgz"

    .line 400
    .line 401
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result p0

    .line 405
    if-nez p0, :cond_1c

    .line 406
    .line 407
    goto/16 :goto_0

    .line 408
    .line 409
    :cond_1c
    const/16 v1, 0x17

    .line 410
    .line 411
    goto/16 :goto_1

    .line 412
    .line 413
    :sswitch_1b
    const-string v1, "svg"

    .line 414
    .line 415
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p0

    .line 419
    if-nez p0, :cond_1d

    .line 420
    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :cond_1d
    const/16 v1, 0x16

    .line 424
    .line 425
    goto/16 :goto_1

    .line 426
    .line 427
    :sswitch_1c
    const-string v1, "png"

    .line 428
    .line 429
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result p0

    .line 433
    if-nez p0, :cond_1e

    .line 434
    .line 435
    goto/16 :goto_0

    .line 436
    .line 437
    :cond_1e
    const/16 v1, 0x15

    .line 438
    .line 439
    goto/16 :goto_1

    .line 440
    .line 441
    :sswitch_1d
    const-string v1, "pjp"

    .line 442
    .line 443
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result p0

    .line 447
    if-nez p0, :cond_1f

    .line 448
    .line 449
    goto/16 :goto_0

    .line 450
    .line 451
    :cond_1f
    const/16 v1, 0x14

    .line 452
    .line 453
    goto/16 :goto_1

    .line 454
    .line 455
    :sswitch_1e
    const-string v1, "pdf"

    .line 456
    .line 457
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result p0

    .line 461
    if-nez p0, :cond_20

    .line 462
    .line 463
    goto/16 :goto_0

    .line 464
    .line 465
    :cond_20
    const/16 v1, 0x13

    .line 466
    .line 467
    goto/16 :goto_1

    .line 468
    .line 469
    :sswitch_1f
    const-string v1, "ogv"

    .line 470
    .line 471
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result p0

    .line 475
    if-nez p0, :cond_21

    .line 476
    .line 477
    goto/16 :goto_0

    .line 478
    .line 479
    :cond_21
    const/16 v1, 0x12

    .line 480
    .line 481
    goto/16 :goto_1

    .line 482
    .line 483
    :sswitch_20
    const-string v1, "ogm"

    .line 484
    .line 485
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result p0

    .line 489
    if-nez p0, :cond_22

    .line 490
    .line 491
    goto/16 :goto_0

    .line 492
    .line 493
    :cond_22
    const/16 v1, 0x11

    .line 494
    .line 495
    goto/16 :goto_1

    .line 496
    .line 497
    :sswitch_21
    const-string v1, "ogg"

    .line 498
    .line 499
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result p0

    .line 503
    if-nez p0, :cond_23

    .line 504
    .line 505
    goto/16 :goto_0

    .line 506
    .line 507
    :cond_23
    const/16 v1, 0x10

    .line 508
    .line 509
    goto/16 :goto_1

    .line 510
    .line 511
    :sswitch_22
    const-string v1, "oga"

    .line 512
    .line 513
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result p0

    .line 517
    if-nez p0, :cond_24

    .line 518
    .line 519
    goto/16 :goto_0

    .line 520
    .line 521
    :cond_24
    const/16 v1, 0xf

    .line 522
    .line 523
    goto/16 :goto_1

    .line 524
    .line 525
    :sswitch_23
    const-string v1, "mpg"

    .line 526
    .line 527
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result p0

    .line 531
    if-nez p0, :cond_25

    .line 532
    .line 533
    goto/16 :goto_0

    .line 534
    .line 535
    :cond_25
    const/16 v1, 0xe

    .line 536
    .line 537
    goto/16 :goto_1

    .line 538
    .line 539
    :sswitch_24
    const-string v1, "mp4"

    .line 540
    .line 541
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result p0

    .line 545
    if-nez p0, :cond_26

    .line 546
    .line 547
    goto/16 :goto_0

    .line 548
    .line 549
    :cond_26
    const/16 v1, 0xd

    .line 550
    .line 551
    goto/16 :goto_1

    .line 552
    .line 553
    :sswitch_25
    const-string v1, "mp3"

    .line 554
    .line 555
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result p0

    .line 559
    if-nez p0, :cond_27

    .line 560
    .line 561
    goto/16 :goto_0

    .line 562
    .line 563
    :cond_27
    const/16 v1, 0xc

    .line 564
    .line 565
    goto/16 :goto_1

    .line 566
    .line 567
    :sswitch_26
    const-string v1, "mjs"

    .line 568
    .line 569
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result p0

    .line 573
    if-nez p0, :cond_28

    .line 574
    .line 575
    goto/16 :goto_0

    .line 576
    .line 577
    :cond_28
    const/16 v1, 0xb

    .line 578
    .line 579
    goto/16 :goto_1

    .line 580
    .line 581
    :sswitch_27
    const-string v1, "mht"

    .line 582
    .line 583
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    move-result p0

    .line 587
    if-nez p0, :cond_29

    .line 588
    .line 589
    goto/16 :goto_0

    .line 590
    .line 591
    :cond_29
    const/16 v1, 0xa

    .line 592
    .line 593
    goto/16 :goto_1

    .line 594
    .line 595
    :sswitch_28
    const-string v1, "m4v"

    .line 596
    .line 597
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result p0

    .line 601
    if-nez p0, :cond_2a

    .line 602
    .line 603
    goto/16 :goto_0

    .line 604
    .line 605
    :cond_2a
    const/16 v1, 0x9

    .line 606
    .line 607
    goto/16 :goto_1

    .line 608
    .line 609
    :sswitch_29
    const-string v1, "m4a"

    .line 610
    .line 611
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result p0

    .line 615
    if-nez p0, :cond_2b

    .line 616
    .line 617
    goto/16 :goto_0

    .line 618
    .line 619
    :cond_2b
    const/16 v1, 0x8

    .line 620
    .line 621
    goto/16 :goto_1

    .line 622
    .line 623
    :sswitch_2a
    const-string v1, "jpg"

    .line 624
    .line 625
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result p0

    .line 629
    if-nez p0, :cond_2c

    .line 630
    .line 631
    goto/16 :goto_0

    .line 632
    .line 633
    :cond_2c
    const/4 v1, 0x7

    .line 634
    goto :goto_1

    .line 635
    :sswitch_2b
    const-string v1, "ico"

    .line 636
    .line 637
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result p0

    .line 641
    if-nez p0, :cond_2d

    .line 642
    .line 643
    goto/16 :goto_0

    .line 644
    .line 645
    :cond_2d
    const/4 v1, 0x6

    .line 646
    goto :goto_1

    .line 647
    :sswitch_2c
    const-string v1, "htm"

    .line 648
    .line 649
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 650
    .line 651
    .line 652
    move-result p0

    .line 653
    if-nez p0, :cond_2e

    .line 654
    .line 655
    goto/16 :goto_0

    .line 656
    .line 657
    :cond_2e
    const/4 v1, 0x5

    .line 658
    goto :goto_1

    .line 659
    :sswitch_2d
    const-string v1, "gif"

    .line 660
    .line 661
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result p0

    .line 665
    if-nez p0, :cond_2f

    .line 666
    .line 667
    goto/16 :goto_0

    .line 668
    .line 669
    :cond_2f
    const/4 v1, 0x4

    .line 670
    goto :goto_1

    .line 671
    :sswitch_2e
    const-string v1, "css"

    .line 672
    .line 673
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    move-result p0

    .line 677
    if-nez p0, :cond_30

    .line 678
    .line 679
    goto/16 :goto_0

    .line 680
    .line 681
    :cond_30
    const/4 v1, 0x3

    .line 682
    goto :goto_1

    .line 683
    :sswitch_2f
    const-string v1, "bmp"

    .line 684
    .line 685
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move-result p0

    .line 689
    if-nez p0, :cond_31

    .line 690
    .line 691
    goto/16 :goto_0

    .line 692
    .line 693
    :cond_31
    const/4 v1, 0x2

    .line 694
    goto :goto_1

    .line 695
    :sswitch_30
    const-string v1, "js"

    .line 696
    .line 697
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    move-result p0

    .line 701
    if-nez p0, :cond_32

    .line 702
    .line 703
    goto/16 :goto_0

    .line 704
    .line 705
    :cond_32
    move v1, v4

    .line 706
    goto :goto_1

    .line 707
    :sswitch_31
    const-string v1, "gz"

    .line 708
    .line 709
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 710
    .line 711
    .line 712
    move-result p0

    .line 713
    if-nez p0, :cond_33

    .line 714
    .line 715
    goto/16 :goto_0

    .line 716
    .line 717
    :cond_33
    const/4 v1, 0x0

    .line 718
    :cond_34
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 719
    .line 720
    .line 721
    goto/16 :goto_2

    .line 722
    .line 723
    :pswitch_0
    const-string v0, "application/font-woff"

    .line 724
    .line 725
    goto/16 :goto_2

    .line 726
    .line 727
    :pswitch_1
    const-string v0, "image/webp"

    .line 728
    .line 729
    goto/16 :goto_2

    .line 730
    .line 731
    :pswitch_2
    const-string v0, "video/webm"

    .line 732
    .line 733
    goto/16 :goto_2

    .line 734
    .line 735
    :pswitch_3
    const-string v0, "application/wasm"

    .line 736
    .line 737
    goto/16 :goto_2

    .line 738
    .line 739
    :pswitch_4
    const-string v0, "application/json"

    .line 740
    .line 741
    goto :goto_2

    .line 742
    :pswitch_5
    const-string v0, "audio/flac"

    .line 743
    .line 744
    goto :goto_2

    .line 745
    :pswitch_6
    const-string v0, "image/apng"

    .line 746
    .line 747
    goto :goto_2

    .line 748
    :pswitch_7
    const-string v0, "application/zip"

    .line 749
    .line 750
    goto :goto_2

    .line 751
    :pswitch_8
    const-string v0, "text/xml"

    .line 752
    .line 753
    goto :goto_2

    .line 754
    :pswitch_9
    const-string v0, "application/xhtml+xml"

    .line 755
    .line 756
    goto :goto_2

    .line 757
    :pswitch_a
    const-string v0, "audio/wav"

    .line 758
    .line 759
    goto :goto_2

    .line 760
    :pswitch_b
    const-string v0, "image/tiff"

    .line 761
    .line 762
    goto :goto_2

    .line 763
    :pswitch_c
    const-string v0, "image/svg+xml"

    .line 764
    .line 765
    goto :goto_2

    .line 766
    :pswitch_d
    const-string v0, "image/png"

    .line 767
    .line 768
    goto :goto_2

    .line 769
    :pswitch_e
    const-string v0, "application/pdf"

    .line 770
    .line 771
    goto :goto_2

    .line 772
    :pswitch_f
    const-string v0, "video/ogg"

    .line 773
    .line 774
    goto :goto_2

    .line 775
    :pswitch_10
    const-string v0, "audio/ogg"

    .line 776
    .line 777
    goto :goto_2

    .line 778
    :pswitch_11
    const-string v0, "video/mpeg"

    .line 779
    .line 780
    goto :goto_2

    .line 781
    :pswitch_12
    const-string v0, "audio/mpeg"

    .line 782
    .line 783
    goto :goto_2

    .line 784
    :pswitch_13
    const-string v0, "multipart/related"

    .line 785
    .line 786
    goto :goto_2

    .line 787
    :pswitch_14
    const-string v0, "video/mp4"

    .line 788
    .line 789
    goto :goto_2

    .line 790
    :pswitch_15
    const-string v0, "audio/x-m4a"

    .line 791
    .line 792
    goto :goto_2

    .line 793
    :pswitch_16
    const-string v0, "image/jpeg"

    .line 794
    .line 795
    goto :goto_2

    .line 796
    :pswitch_17
    const-string v0, "image/x-icon"

    .line 797
    .line 798
    goto :goto_2

    .line 799
    :pswitch_18
    const-string v0, "text/html"

    .line 800
    .line 801
    goto :goto_2

    .line 802
    :pswitch_19
    const-string v0, "image/gif"

    .line 803
    .line 804
    goto :goto_2

    .line 805
    :pswitch_1a
    const-string v0, "text/css"

    .line 806
    .line 807
    goto :goto_2

    .line 808
    :pswitch_1b
    const-string v0, "image/bmp"

    .line 809
    .line 810
    goto :goto_2

    .line 811
    :pswitch_1c
    const-string v0, "text/javascript"

    .line 812
    .line 813
    goto :goto_2

    .line 814
    :pswitch_1d
    const-string v0, "application/gzip"

    .line 815
    .line 816
    :goto_2
    if-nez v0, :cond_35

    .line 817
    .line 818
    const-string p0, "text/plain"

    .line 819
    .line 820
    return-object p0

    .line 821
    :cond_35
    return-object v0

    .line 822
    nop

    .line 823
    :sswitch_data_0
    .sparse-switch
        0xcf3 -> :sswitch_31
        0xd49 -> :sswitch_30
        0x17d85 -> :sswitch_2f
        0x18203 -> :sswitch_2e
        0x18fc4 -> :sswitch_2d
        0x194e1 -> :sswitch_2c
        0x19695 -> :sswitch_2b
        0x19be1 -> :sswitch_2a
        0x19fda -> :sswitch_29
        0x19fef -> :sswitch_28
        0x1a639 -> :sswitch_27
        0x1a676 -> :sswitch_26
        0x1a6f0 -> :sswitch_25
        0x1a6f1 -> :sswitch_24
        0x1a724 -> :sswitch_23
        0x1ad89 -> :sswitch_22
        0x1ad8f -> :sswitch_21
        0x1ad95 -> :sswitch_20
        0x1ad9e -> :sswitch_1f
        0x1b0f2 -> :sswitch_1e
        0x1b1b6 -> :sswitch_1d
        0x1b229 -> :sswitch_1c
        0x1be64 -> :sswitch_1b
        0x1c067 -> :sswitch_1a
        0x1c091 -> :sswitch_19
        0x1caec -> :sswitch_18
        0x1cf84 -> :sswitch_17
        0x1d017 -> :sswitch_16
        0x1d721 -> :sswitch_15
        0x2dca28 -> :sswitch_14
        0x2fff68 -> :sswitch_13
        0x3107ab -> :sswitch_12
        0x31bb59 -> :sswitch_11
        0x31e068 -> :sswitch_10
        0x31ece8 -> :sswitch_f
        0x333d85 -> :sswitch_e
        0x34283f -> :sswitch_d
        0x35db8e -> :sswitch_c
        0x360e96 -> :sswitch_b
        0x3651f5 -> :sswitch_a
        0x3792a4 -> :sswitch_9
        0x379f99 -> :sswitch_8
        0x379f9c -> :sswitch_7
        0x37c598 -> :sswitch_6
        0x382169 -> :sswitch_5
        0x5c04d90 -> :sswitch_4
        0x6310998 -> :sswitch_3
        0x65c28d8 -> :sswitch_2
        0x685969e -> :sswitch_1
        0x6cc0c23 -> :sswitch_0
    .end sparse-switch

    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
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
        :pswitch_1c
        :pswitch_12
        :pswitch_14
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_16
        :pswitch_d
        :pswitch_c
        :pswitch_1d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_4
        :pswitch_11
        :pswitch_10
        :pswitch_18
        :pswitch_c
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_18
        :pswitch_13
        :pswitch_16
        :pswitch_18
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 1
    iget-object v0, p0, LA1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LC1/j0;

    .line 4
    .line 5
    iget-object v0, v0, LP/W;->a:LP/X;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, LP/X;->f(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b(II)V
    .locals 1

    .line 1
    iget-object v0, p0, LA1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LC1/j0;

    .line 4
    .line 5
    iget-object v0, v0, LP/W;->a:LP/X;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, LP/X;->c(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c(Lj/p;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    const-string v0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    .line 2
    .line 3
    const-string v1, "ProfileInstaller"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e(ILjava/lang/Object;)V
    .locals 3

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string v0, ""

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    .line 35
    .line 36
    :goto_0
    const/4 v1, 0x6

    .line 37
    const-string v2, "ProfileInstaller"

    .line 38
    .line 39
    if-eq p1, v1, :cond_0

    .line 40
    .line 41
    const/4 v1, 0x7

    .line 42
    if-eq p1, v1, :cond_0

    .line 43
    .line 44
    const/16 v1, 0x8

    .line 45
    .line 46
    if-eq p1, v1, :cond_0

    .line 47
    .line 48
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    .line 53
    .line 54
    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :goto_1
    iget-object p2, p0, LA1/b;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p2, Landroidx/profileinstaller/ProfileInstallReceiver;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public f(LY1/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LA1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LY1/e;

    .line 4
    .line 5
    check-cast v0, LY1/h;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, LY1/h;->f(LY1/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public g(II)V
    .locals 1

    .line 1
    iget-object v0, p0, LA1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LC1/j0;

    .line 4
    .line 5
    iget-object v0, v0, LP/W;->a:LP/X;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, LP/X;->d(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public h(Lj/p;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object p1, p0, LA1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 4
    .line 5
    iget-object p1, p1, LT0/l;->f:LT0/j;

    .line 6
    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    check-cast p1, LC1/f1;

    .line 10
    .line 11
    iget-object p1, p1, LC1/f1;->b:Lcom/minhub/gamehub/hub/HubActivity;

    .line 12
    .line 13
    sget v0, Lcom/minhub/gamehub/hub/HubActivity;->j:I

    .line 14
    .line 15
    const-string v0, "item"

    .line 16
    .line 17
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const v0, 0x7f090226

    .line 25
    .line 26
    .line 27
    const v1, 0x7f090171

    .line 28
    .line 29
    .line 30
    if-ne p2, v0, :cond_0

    .line 31
    .line 32
    new-instance p2, LC1/d1;

    .line 33
    .line 34
    invoke-direct {p2}, LC1/d1;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "home"

    .line 46
    .line 47
    invoke-virtual {p1, v1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const v0, 0x7f090225

    .line 56
    .line 57
    .line 58
    if-ne p2, v0, :cond_1

    .line 59
    .line 60
    new-instance p2, Landroid/content/Intent;

    .line 61
    .line 62
    const-class v0, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 63
    .line 64
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const v0, 0x7f090227

    .line 72
    .line 73
    .line 74
    if-ne p2, v0, :cond_2

    .line 75
    .line 76
    new-instance p2, LC1/d2;

    .line 77
    .line 78
    invoke-direct {p2}, LC1/d2;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v0, "profile"

    .line 90
    .line 91
    invoke-virtual {p1, v1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    const v0, 0x7f090228

    .line 100
    .line 101
    .line 102
    if-ne p2, v0, :cond_3

    .line 103
    .line 104
    new-instance p2, Landroid/content/Intent;

    .line 105
    .line 106
    const-class v0, Lcom/minhub/gamehub/hub/SettingsActivity;

    .line 107
    .line 108
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 115
    return p1

    .line 116
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 117
    return p1
.end method

.method public i(II)V
    .locals 1

    .line 1
    iget-object v0, p0, LA1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LC1/j0;

    .line 4
    .line 5
    iget-object v0, v0, LP/W;->a:LP/X;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, LP/X;->e(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public j(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, LA1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LP/d;

    .line 4
    .line 5
    iget-object v1, v0, LP/d;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v1, v0, LP/d;->c:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object v0, v0, LP/d;->e:LP/f;

    .line 22
    .line 23
    iget-object v0, v0, LP/f;->b:LA1/b;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    check-cast p1, Lcom/minhub/gamehub/data/Game;

    .line 29
    .line 30
    check-cast p2, Lcom/minhub/gamehub/data/Game;

    .line 31
    .line 32
    const-string v0, "a"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "b"

    .line 38
    .line 39
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :cond_0
    if-nez p1, :cond_1

    .line 48
    .line 49
    if-nez p2, :cond_1

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    return p1

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public k(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, LA1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LP/d;

    .line 4
    .line 5
    iget-object v1, v0, LP/d;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v1, v0, LP/d;->c:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object v0, v0, LP/d;->e:LP/f;

    .line 22
    .line 23
    iget-object v0, v0, LP/f;->b:LA1/b;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    check-cast p1, Lcom/minhub/gamehub/data/Game;

    .line 29
    .line 30
    check-cast p2, Lcom/minhub/gamehub/data/Game;

    .line 31
    .line 32
    const-string v0, "a"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "b"

    .line 38
    .line 39
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p2}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-ne p1, p2, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    if-nez p1, :cond_1

    .line 54
    .line 55
    if-nez p2, :cond_1

    .line 56
    .line 57
    :goto_0
    const/4 p1, 0x1

    .line 58
    return p1

    .line 59
    :cond_1
    const/4 p1, 0x0

    .line 60
    return p1
.end method

.method public l(II)V
    .locals 2

    .line 1
    iget-object v0, p0, LA1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LP/d;

    .line 4
    .line 5
    iget-object v1, v0, LP/d;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v1, v0, LP/d;->c:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p1, v0, LP/d;->e:LP/f;

    .line 22
    .line 23
    iget-object p1, p1, LP/f;->b:LA1/b;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public m()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, LA1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Li2/a;

    .line 4
    .line 5
    iget-object v1, v0, Li2/a;->a:Ljava/lang/StringBuffer;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, v0, Li2/a;->d:Ljava/lang/StringBuffer;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, ""

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Li2/a;->d:Ljava/lang/StringBuffer;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, "/"

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_0
    return-object v1
.end method

.method public o(LA1/e0;LA1/n0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    instance-of v4, v3, LA1/a;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, LA1/a;

    .line 15
    .line 16
    iget v5, v4, LA1/a;->h:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, LA1/a;->h:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, LA1/a;

    .line 29
    .line 30
    invoke-direct {v4, v0, v3}, LA1/a;-><init>(LA1/b;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, LA1/a;->f:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget v6, v4, LA1/a;->h:I

    .line 40
    .line 41
    const-string v7, "GameLaunch"

    .line 42
    .line 43
    const/4 v8, 0x1

    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    if-ne v6, v8, :cond_1

    .line 47
    .line 48
    iget-object v1, v4, LA1/a;->e:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lcom/minhub/gamehub/data/Game;

    .line 51
    .line 52
    iget-object v1, v4, LA1/a;->d:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Landroid/app/Activity;

    .line 55
    .line 56
    iget-object v1, v4, LA1/a;->c:LA1/n0;

    .line 57
    .line 58
    iget-object v2, v4, LA1/a;->b:LA1/e0;

    .line 59
    .line 60
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    move-object/from16 v41, v2

    .line 64
    .line 65
    move-object v2, v1

    .line 66
    move-object/from16 v1, v41

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v1

    .line 78
    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object v3, v1, LA1/e0;->a:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v6, v2, LA1/n0;->a:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v9, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v10, "container launch begin request="

    .line 88
    .line 89
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v3, " session="

    .line 96
    .line 97
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iget-object v3, v0, LA1/b;->b:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Landroid/app/Activity;

    .line 119
    .line 120
    if-nez v3, :cond_3

    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :cond_3
    new-instance v9, Lcom/minhub/gamehub/data/Game;

    .line 125
    .line 126
    iget v10, v1, LA1/e0;->b:I

    .line 127
    .line 128
    iget-object v12, v1, LA1/e0;->c:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v15, v1, LA1/e0;->d:Ljava/lang/String;

    .line 131
    .line 132
    const v39, 0x7ffffd8

    .line 133
    .line 134
    .line 135
    const/16 v40, 0x0

    .line 136
    .line 137
    const-string v11, ""

    .line 138
    .line 139
    const/4 v13, 0x0

    .line 140
    const/4 v14, 0x0

    .line 141
    const/16 v16, 0x0

    .line 142
    .line 143
    const/16 v17, 0x0

    .line 144
    .line 145
    const/16 v18, 0x0

    .line 146
    .line 147
    const/16 v19, 0x0

    .line 148
    .line 149
    const/16 v20, 0x0

    .line 150
    .line 151
    const/16 v21, 0x0

    .line 152
    .line 153
    const/16 v22, 0x0

    .line 154
    .line 155
    const-wide/16 v23, 0x0

    .line 156
    .line 157
    const/16 v25, 0x0

    .line 158
    .line 159
    const/16 v26, 0x0

    .line 160
    .line 161
    const/16 v27, 0x0

    .line 162
    .line 163
    const/16 v28, 0x0

    .line 164
    .line 165
    const/16 v29, 0x0

    .line 166
    .line 167
    const/16 v30, 0x0

    .line 168
    .line 169
    const/16 v31, 0x0

    .line 170
    .line 171
    const/16 v32, 0x0

    .line 172
    .line 173
    const/16 v33, 0x0

    .line 174
    .line 175
    const-wide/16 v34, 0x0

    .line 176
    .line 177
    const/16 v36, 0x0

    .line 178
    .line 179
    const/16 v37, 0x0

    .line 180
    .line 181
    const/16 v38, 0x0

    .line 182
    .line 183
    invoke-direct/range {v9 .. v40}, Lcom/minhub/gamehub/data/Game;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 184
    .line 185
    .line 186
    sget-object v6, Ly1/c0;->a:Ly1/c0;

    .line 187
    .line 188
    iput-object v1, v4, LA1/a;->b:LA1/e0;

    .line 189
    .line 190
    iput-object v2, v4, LA1/a;->c:LA1/n0;

    .line 191
    .line 192
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    iput-object v10, v4, LA1/a;->d:Ljava/lang/Object;

    .line 197
    .line 198
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    iput-object v10, v4, LA1/a;->e:Ljava/lang/Object;

    .line 203
    .line 204
    iput v8, v4, LA1/a;->h:I

    .line 205
    .line 206
    invoke-virtual {v6, v3, v9, v2, v4}, Ly1/c0;->c(Landroid/app/Activity;Lcom/minhub/gamehub/data/Game;LA1/n0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    if-ne v3, v5, :cond_4

    .line 211
    .line 212
    return-object v5

    .line 213
    :cond_4
    :goto_1
    check-cast v3, Ljava/lang/Boolean;

    .line 214
    .line 215
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    iget-object v1, v1, LA1/e0;->a:Ljava/lang/String;

    .line 220
    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v5, "container launch result request="

    .line 224
    .line 225
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v1, " dispatched="

    .line 232
    .line 233
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    if-nez v3, :cond_5

    .line 247
    .line 248
    :goto_2
    const/4 v1, 0x0

    .line 249
    return-object v1

    .line 250
    :cond_5
    new-instance v1, LA1/c;

    .line 251
    .line 252
    iget-object v2, v2, LA1/n0;->a:Ljava/lang/String;

    .line 253
    .line 254
    invoke-direct {v1, v2}, LA1/c;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    return-object v1
.end method

.method public onAnimationUpdate(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, LA1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Le/M;

    .line 4
    .line 5
    iget-object p1, p1, Le/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    iget-object p1, p0, LA1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, LH0/o;

    .line 4
    .line 5
    iget-object v0, p1, LH0/o;->k:LH0/n;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p1, LH0/o;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->W:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz p2, :cond_1

    .line 17
    .line 18
    new-instance v0, LH0/n;

    .line 19
    .line 20
    iget-object v1, p1, LH0/o;->g:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-direct {v0, v1, p2}, LH0/n;-><init>(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p1, LH0/o;->k:LH0/n;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, LH0/n;->e(Landroid/view/Window;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, LH0/o;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 35
    .line 36
    iget-object p1, p1, LH0/o;->k:LH0/n;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->W:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    return-object p2
.end method
