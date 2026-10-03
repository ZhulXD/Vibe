.class public final LD0/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LD0/b;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, LD0/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lk/Q;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iput-boolean p1, v0, Lk/Q;->b:Z

    .line 21
    .line 22
    return-object v0

    .line 23
    :pswitch_0
    new-instance v0, Lk/k;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, v0, Lk/k;->b:I

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/p;->a(II)Lcom/google/android/material/datepicker/p;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :pswitch_2
    new-instance v0, Lcom/google/android/material/datepicker/e;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/datepicker/e;-><init>(J)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :pswitch_3
    const-class v0, Lcom/google/android/material/datepicker/p;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v3, v1

    .line 69
    check-cast v3, Lcom/google/android/material/datepicker/p;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    move-object v4, v1

    .line 80
    check-cast v4, Lcom/google/android/material/datepicker/p;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    move-object v6, v0

    .line 91
    check-cast v6, Lcom/google/android/material/datepicker/p;

    .line 92
    .line 93
    const-class v0, Lcom/google/android/material/datepicker/e;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    move-object v5, v0

    .line 104
    check-cast v5, Lcom/google/android/material/datepicker/e;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    new-instance v2, Lcom/google/android/material/datepicker/b;

    .line 111
    .line 112
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/datepicker/b;-><init>(Lcom/google/android/material/datepicker/p;Lcom/google/android/material/datepicker/p;Lcom/google/android/material/datepicker/e;Lcom/google/android/material/datepicker/p;I)V

    .line 113
    .line 114
    .line 115
    return-object v2

    .line 116
    :pswitch_4
    new-instance v0, La1/c;

    .line 117
    .line 118
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iput v1, v0, La1/c;->b:F

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iput v1, v0, La1/c;->c:F

    .line 132
    .line 133
    new-instance v1, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object v1, v0, La1/c;->d:Ljava/util/ArrayList;

    .line 139
    .line 140
    const-class v2, Ljava/lang/Float;

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    iput v1, v0, La1/c;->e:F

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    const/4 v1, 0x0

    .line 160
    aget-boolean p1, p1, v1

    .line 161
    .line 162
    iput-boolean p1, v0, La1/c;->f:Z

    .line 163
    .line 164
    return-object v0

    .line 165
    :pswitch_5
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 166
    .line 167
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    .line 168
    .line 169
    .line 170
    return-object v0

    .line 171
    :pswitch_6
    new-instance v0, LT0/g;

    .line 172
    .line 173
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    iput v1, v0, LT0/g;->b:I

    .line 181
    .line 182
    const-class v1, LT0/g;

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    check-cast p1, LR0/i;

    .line 193
    .line 194
    iput-object p1, v0, LT0/g;->c:LR0/i;

    .line 195
    .line 196
    return-object v0

    .line 197
    :pswitch_7
    new-instance v0, LP/F0;

    .line 198
    .line 199
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    iput v1, v0, LP/F0;->b:I

    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    iput v1, v0, LP/F0;->c:I

    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    iput v1, v0, LP/F0;->d:I

    .line 219
    .line 220
    if-lez v1, :cond_1

    .line 221
    .line 222
    new-array v1, v1, [I

    .line 223
    .line 224
    iput-object v1, v0, LP/F0;->e:[I

    .line 225
    .line 226
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 227
    .line 228
    .line 229
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    iput v1, v0, LP/F0;->f:I

    .line 234
    .line 235
    if-lez v1, :cond_2

    .line 236
    .line 237
    new-array v1, v1, [I

    .line 238
    .line 239
    iput-object v1, v0, LP/F0;->g:[I

    .line 240
    .line 241
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 242
    .line 243
    .line 244
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    const/4 v2, 0x0

    .line 249
    const/4 v3, 0x1

    .line 250
    if-ne v1, v3, :cond_3

    .line 251
    .line 252
    move v1, v3

    .line 253
    goto :goto_1

    .line 254
    :cond_3
    move v1, v2

    .line 255
    :goto_1
    iput-boolean v1, v0, LP/F0;->i:Z

    .line 256
    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-ne v1, v3, :cond_4

    .line 262
    .line 263
    move v1, v3

    .line 264
    goto :goto_2

    .line 265
    :cond_4
    move v1, v2

    .line 266
    :goto_2
    iput-boolean v1, v0, LP/F0;->j:Z

    .line 267
    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-ne v1, v3, :cond_5

    .line 273
    .line 274
    move v2, v3

    .line 275
    :cond_5
    iput-boolean v2, v0, LP/F0;->k:Z

    .line 276
    .line 277
    const-class v1, LP/E0;

    .line 278
    .line 279
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    iput-object p1, v0, LP/F0;->h:Ljava/util/ArrayList;

    .line 288
    .line 289
    return-object v0

    .line 290
    :pswitch_8
    new-instance v0, LP/E0;

    .line 291
    .line 292
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    iput v1, v0, LP/E0;->b:I

    .line 300
    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    iput v1, v0, LP/E0;->c:I

    .line 306
    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    const/4 v2, 0x1

    .line 312
    if-ne v1, v2, :cond_6

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_6
    const/4 v2, 0x0

    .line 316
    :goto_3
    iput-boolean v2, v0, LP/E0;->e:Z

    .line 317
    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-lez v1, :cond_7

    .line 323
    .line 324
    new-array v1, v1, [I

    .line 325
    .line 326
    iput-object v1, v0, LP/E0;->d:[I

    .line 327
    .line 328
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 329
    .line 330
    .line 331
    :cond_7
    return-object v0

    .line 332
    :pswitch_9
    new-instance v0, LP/L;

    .line 333
    .line 334
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    iput v1, v0, LP/L;->b:I

    .line 342
    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    iput v1, v0, LP/L;->c:I

    .line 348
    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    const/4 v1, 0x1

    .line 354
    if-ne p1, v1, :cond_8

    .line 355
    .line 356
    goto :goto_4

    .line 357
    :cond_8
    const/4 v1, 0x0

    .line 358
    :goto_4
    iput-boolean v1, v0, LP/L;->d:Z

    .line 359
    .line 360
    return-object v0

    .line 361
    :pswitch_a
    new-instance v0, LL0/b;

    .line 362
    .line 363
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 364
    .line 365
    .line 366
    const-class v1, LL0/b;

    .line 367
    .line 368
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    check-cast p1, Ljava/lang/Integer;

    .line 377
    .line 378
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    iput p1, v0, LL0/b;->b:I

    .line 383
    .line 384
    return-object v0

    .line 385
    :pswitch_b
    new-instance v0, LD0/c;

    .line 386
    .line 387
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 388
    .line 389
    .line 390
    const/16 v1, 0xff

    .line 391
    .line 392
    iput v1, v0, LD0/c;->j:I

    .line 393
    .line 394
    const/4 v1, -0x2

    .line 395
    iput v1, v0, LD0/c;->l:I

    .line 396
    .line 397
    iput v1, v0, LD0/c;->m:I

    .line 398
    .line 399
    iput v1, v0, LD0/c;->n:I

    .line 400
    .line 401
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 402
    .line 403
    iput-object v1, v0, LD0/c;->u:Ljava/lang/Boolean;

    .line 404
    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    iput v1, v0, LD0/c;->b:I

    .line 410
    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    check-cast v1, Ljava/lang/Integer;

    .line 416
    .line 417
    iput-object v1, v0, LD0/c;->c:Ljava/lang/Integer;

    .line 418
    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    check-cast v1, Ljava/lang/Integer;

    .line 424
    .line 425
    iput-object v1, v0, LD0/c;->d:Ljava/lang/Integer;

    .line 426
    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    check-cast v1, Ljava/lang/Integer;

    .line 432
    .line 433
    iput-object v1, v0, LD0/c;->e:Ljava/lang/Integer;

    .line 434
    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    check-cast v1, Ljava/lang/Integer;

    .line 440
    .line 441
    iput-object v1, v0, LD0/c;->f:Ljava/lang/Integer;

    .line 442
    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    check-cast v1, Ljava/lang/Integer;

    .line 448
    .line 449
    iput-object v1, v0, LD0/c;->g:Ljava/lang/Integer;

    .line 450
    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    check-cast v1, Ljava/lang/Integer;

    .line 456
    .line 457
    iput-object v1, v0, LD0/c;->h:Ljava/lang/Integer;

    .line 458
    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    check-cast v1, Ljava/lang/Integer;

    .line 464
    .line 465
    iput-object v1, v0, LD0/c;->i:Ljava/lang/Integer;

    .line 466
    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    iput v1, v0, LD0/c;->j:I

    .line 472
    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    iput-object v1, v0, LD0/c;->k:Ljava/lang/String;

    .line 478
    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    iput v1, v0, LD0/c;->l:I

    .line 484
    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    iput v1, v0, LD0/c;->m:I

    .line 490
    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    iput v1, v0, LD0/c;->n:I

    .line 496
    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    iput-object v1, v0, LD0/c;->p:Ljava/lang/CharSequence;

    .line 502
    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    iput-object v1, v0, LD0/c;->q:Ljava/lang/CharSequence;

    .line 508
    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    iput v1, v0, LD0/c;->r:I

    .line 514
    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    check-cast v1, Ljava/lang/Integer;

    .line 520
    .line 521
    iput-object v1, v0, LD0/c;->t:Ljava/lang/Integer;

    .line 522
    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    check-cast v1, Ljava/lang/Integer;

    .line 528
    .line 529
    iput-object v1, v0, LD0/c;->v:Ljava/lang/Integer;

    .line 530
    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    check-cast v1, Ljava/lang/Integer;

    .line 536
    .line 537
    iput-object v1, v0, LD0/c;->w:Ljava/lang/Integer;

    .line 538
    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    check-cast v1, Ljava/lang/Integer;

    .line 544
    .line 545
    iput-object v1, v0, LD0/c;->x:Ljava/lang/Integer;

    .line 546
    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    check-cast v1, Ljava/lang/Integer;

    .line 552
    .line 553
    iput-object v1, v0, LD0/c;->y:Ljava/lang/Integer;

    .line 554
    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    check-cast v1, Ljava/lang/Integer;

    .line 560
    .line 561
    iput-object v1, v0, LD0/c;->z:Ljava/lang/Integer;

    .line 562
    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    check-cast v1, Ljava/lang/Integer;

    .line 568
    .line 569
    iput-object v1, v0, LD0/c;->A:Ljava/lang/Integer;

    .line 570
    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    check-cast v1, Ljava/lang/Integer;

    .line 576
    .line 577
    iput-object v1, v0, LD0/c;->D:Ljava/lang/Integer;

    .line 578
    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    check-cast v1, Ljava/lang/Integer;

    .line 584
    .line 585
    iput-object v1, v0, LD0/c;->B:Ljava/lang/Integer;

    .line 586
    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    check-cast v1, Ljava/lang/Integer;

    .line 592
    .line 593
    iput-object v1, v0, LD0/c;->C:Ljava/lang/Integer;

    .line 594
    .line 595
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    check-cast v1, Ljava/lang/Boolean;

    .line 600
    .line 601
    iput-object v1, v0, LD0/c;->u:Ljava/lang/Boolean;

    .line 602
    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    check-cast v1, Ljava/util/Locale;

    .line 608
    .line 609
    iput-object v1, v0, LD0/c;->o:Ljava/util/Locale;

    .line 610
    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    check-cast p1, Ljava/lang/Boolean;

    .line 616
    .line 617
    iput-object p1, v0, LD0/c;->E:Ljava/lang/Boolean;

    .line 618
    .line 619
    return-object v0

    .line 620
    nop

    .line 621
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LD0/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [Lk/Q;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    new-array p1, p1, [Lk/k;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_1
    new-array p1, p1, [Lcom/google/android/material/datepicker/p;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_2
    new-array p1, p1, [Lcom/google/android/material/datepicker/e;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_3
    new-array p1, p1, [Lcom/google/android/material/datepicker/b;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_4
    new-array p1, p1, [La1/c;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_5
    new-array p1, p1, [Landroidx/versionedparcelable/ParcelImpl;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_6
    new-array p1, p1, [LT0/g;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_7
    new-array p1, p1, [LP/F0;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_8
    new-array p1, p1, [LP/E0;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_9
    new-array p1, p1, [LP/L;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_a
    new-array p1, p1, [LL0/b;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_b
    new-array p1, p1, [LD0/c;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
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
