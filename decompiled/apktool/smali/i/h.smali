.class public final Li/h;
.super Landroid/view/MenuInflater;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final e:[Ljava/lang/Class;

.field public static final f:[Ljava/lang/Class;


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:[Ljava/lang/Object;

.field public final c:Landroid/content/Context;

.field public d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Li/h;->e:[Ljava/lang/Class;

    .line 8
    .line 9
    sput-object v0, Li/h;->f:[Ljava/lang/Class;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li/h;->c:Landroid/content/Context;

    .line 5
    .line 6
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Li/h;->a:[Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p1, p0, Li/h;->b:[Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, Landroid/content/ContextWrapper;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Li/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Li/g;

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-direct {v2, v0, v3}, Li/g;-><init>(Li/h;Landroid/view/Menu;)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    :goto_0
    const-string v4, "menu"

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    const/4 v6, 0x1

    .line 20
    if-ne v3, v5, :cond_1

    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-eqz v7, :cond_0

    .line 31
    .line 32
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string v2, "Expecting menu, got "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ne v3, v6, :cond_18

    .line 54
    .line 55
    :goto_1
    const/4 v7, 0x0

    .line 56
    move v9, v7

    .line 57
    move v10, v9

    .line 58
    const/4 v11, 0x0

    .line 59
    :goto_2
    if-nez v9, :cond_17

    .line 60
    .line 61
    if-eq v3, v6, :cond_16

    .line 62
    .line 63
    const-string v12, "item"

    .line 64
    .line 65
    const-string v13, "group"

    .line 66
    .line 67
    const/4 v14, 0x3

    .line 68
    if-eq v3, v5, :cond_8

    .line 69
    .line 70
    if-eq v3, v14, :cond_3

    .line 71
    .line 72
    :cond_2
    :goto_3
    move-object/from16 v8, p1

    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v10, :cond_4

    .line 81
    .line 82
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    if-eqz v14, :cond_4

    .line 87
    .line 88
    move-object/from16 v8, p1

    .line 89
    .line 90
    move v10, v7

    .line 91
    const/4 v5, 0x0

    .line 92
    const/4 v11, 0x0

    .line 93
    goto/16 :goto_d

    .line 94
    .line 95
    :cond_4
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    if-eqz v13, :cond_5

    .line 100
    .line 101
    iput v7, v2, Li/g;->b:I

    .line 102
    .line 103
    iput v7, v2, Li/g;->c:I

    .line 104
    .line 105
    iput v7, v2, Li/g;->d:I

    .line 106
    .line 107
    iput v7, v2, Li/g;->e:I

    .line 108
    .line 109
    iput-boolean v6, v2, Li/g;->f:Z

    .line 110
    .line 111
    iput-boolean v6, v2, Li/g;->g:Z

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_7

    .line 119
    .line 120
    iget-boolean v3, v2, Li/g;->h:Z

    .line 121
    .line 122
    if-nez v3, :cond_2

    .line 123
    .line 124
    iget-object v3, v2, Li/g;->z:Landroidx/core/view/ActionProvider;

    .line 125
    .line 126
    if-eqz v3, :cond_6

    .line 127
    .line 128
    invoke-virtual {v3}, Landroidx/core/view/ActionProvider;->hasSubMenu()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_6

    .line 133
    .line 134
    iput-boolean v6, v2, Li/g;->h:Z

    .line 135
    .line 136
    iget v3, v2, Li/g;->b:I

    .line 137
    .line 138
    iget v12, v2, Li/g;->i:I

    .line 139
    .line 140
    iget v13, v2, Li/g;->j:I

    .line 141
    .line 142
    iget-object v14, v2, Li/g;->k:Ljava/lang/CharSequence;

    .line 143
    .line 144
    iget-object v15, v2, Li/g;->a:Landroid/view/Menu;

    .line 145
    .line 146
    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Li/g;->b(Landroid/view/MenuItem;)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_6
    iput-boolean v6, v2, Li/g;->h:Z

    .line 159
    .line 160
    iget v3, v2, Li/g;->b:I

    .line 161
    .line 162
    iget v12, v2, Li/g;->i:I

    .line 163
    .line 164
    iget v13, v2, Li/g;->j:I

    .line 165
    .line 166
    iget-object v14, v2, Li/g;->k:Ljava/lang/CharSequence;

    .line 167
    .line 168
    iget-object v15, v2, Li/g;->a:Landroid/view/Menu;

    .line 169
    .line 170
    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v2, v3}, Li/g;->b(Landroid/view/MenuItem;)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_2

    .line 183
    .line 184
    move-object/from16 v8, p1

    .line 185
    .line 186
    move v9, v6

    .line 187
    :goto_4
    const/4 v5, 0x0

    .line 188
    goto/16 :goto_d

    .line 189
    .line 190
    :cond_8
    if-eqz v10, :cond_9

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    iget-object v15, v0, Li/h;->c:Landroid/content/Context;

    .line 202
    .line 203
    const/4 v8, 0x5

    .line 204
    const/4 v5, 0x4

    .line 205
    if-eqz v13, :cond_a

    .line 206
    .line 207
    sget-object v3, Ld/a;->p:[I

    .line 208
    .line 209
    invoke-virtual {v15, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    iput v12, v2, Li/g;->b:I

    .line 218
    .line 219
    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 220
    .line 221
    .line 222
    move-result v12

    .line 223
    iput v12, v2, Li/g;->c:I

    .line 224
    .line 225
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    iput v5, v2, Li/g;->d:I

    .line 230
    .line 231
    invoke-virtual {v3, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    iput v5, v2, Li/g;->e:I

    .line 236
    .line 237
    const/4 v13, 0x2

    .line 238
    invoke-virtual {v3, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    iput-boolean v5, v2, Li/g;->f:Z

    .line 243
    .line 244
    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    iput-boolean v5, v2, Li/g;->g:Z

    .line 249
    .line 250
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_3

    .line 254
    .line 255
    :cond_a
    const/4 v13, 0x2

    .line 256
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v12

    .line 260
    if-eqz v12, :cond_14

    .line 261
    .line 262
    sget-object v3, Ld/a;->q:[I

    .line 263
    .line 264
    invoke-virtual {v15, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v3, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 269
    .line 270
    .line 271
    move-result v12

    .line 272
    iput v12, v2, Li/g;->i:I

    .line 273
    .line 274
    iget v12, v2, Li/g;->c:I

    .line 275
    .line 276
    invoke-virtual {v3, v8, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    const/4 v12, 0x6

    .line 281
    iget v13, v2, Li/g;->d:I

    .line 282
    .line 283
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 284
    .line 285
    .line 286
    move-result v12

    .line 287
    const/high16 v13, -0x10000

    .line 288
    .line 289
    and-int/2addr v8, v13

    .line 290
    const v13, 0xffff

    .line 291
    .line 292
    .line 293
    and-int/2addr v12, v13

    .line 294
    or-int/2addr v8, v12

    .line 295
    iput v8, v2, Li/g;->j:I

    .line 296
    .line 297
    const/4 v8, 0x7

    .line 298
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    iput-object v8, v2, Li/g;->k:Ljava/lang/CharSequence;

    .line 303
    .line 304
    const/16 v8, 0x8

    .line 305
    .line 306
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    iput-object v8, v2, Li/g;->l:Ljava/lang/CharSequence;

    .line 311
    .line 312
    invoke-virtual {v3, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    iput v8, v2, Li/g;->m:I

    .line 317
    .line 318
    const/16 v8, 0x9

    .line 319
    .line 320
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v8

    .line 324
    if-nez v8, :cond_b

    .line 325
    .line 326
    move v8, v7

    .line 327
    goto :goto_5

    .line 328
    :cond_b
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    .line 329
    .line 330
    .line 331
    move-result v8

    .line 332
    :goto_5
    iput-char v8, v2, Li/g;->n:C

    .line 333
    .line 334
    const/16 v8, 0x10

    .line 335
    .line 336
    const/16 v12, 0x1000

    .line 337
    .line 338
    invoke-virtual {v3, v8, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 339
    .line 340
    .line 341
    move-result v8

    .line 342
    iput v8, v2, Li/g;->o:I

    .line 343
    .line 344
    const/16 v8, 0xa

    .line 345
    .line 346
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    if-nez v8, :cond_c

    .line 351
    .line 352
    move v8, v7

    .line 353
    goto :goto_6

    .line 354
    :cond_c
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    .line 355
    .line 356
    .line 357
    move-result v8

    .line 358
    :goto_6
    iput-char v8, v2, Li/g;->p:C

    .line 359
    .line 360
    const/16 v8, 0x14

    .line 361
    .line 362
    invoke-virtual {v3, v8, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 363
    .line 364
    .line 365
    move-result v8

    .line 366
    iput v8, v2, Li/g;->q:I

    .line 367
    .line 368
    const/16 v8, 0xb

    .line 369
    .line 370
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 371
    .line 372
    .line 373
    move-result v12

    .line 374
    if-eqz v12, :cond_d

    .line 375
    .line 376
    invoke-virtual {v3, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    iput v8, v2, Li/g;->r:I

    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_d
    iget v8, v2, Li/g;->e:I

    .line 384
    .line 385
    iput v8, v2, Li/g;->r:I

    .line 386
    .line 387
    :goto_7
    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 388
    .line 389
    .line 390
    move-result v8

    .line 391
    iput-boolean v8, v2, Li/g;->s:Z

    .line 392
    .line 393
    iget-boolean v8, v2, Li/g;->f:Z

    .line 394
    .line 395
    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    iput-boolean v5, v2, Li/g;->t:Z

    .line 400
    .line 401
    iget-boolean v5, v2, Li/g;->g:Z

    .line 402
    .line 403
    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    iput-boolean v5, v2, Li/g;->u:Z

    .line 408
    .line 409
    const/16 v5, 0x15

    .line 410
    .line 411
    const/4 v8, -0x1

    .line 412
    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    iput v5, v2, Li/g;->v:I

    .line 417
    .line 418
    const/16 v5, 0xc

    .line 419
    .line 420
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    iput-object v5, v2, Li/g;->y:Ljava/lang/String;

    .line 425
    .line 426
    const/16 v5, 0xd

    .line 427
    .line 428
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 429
    .line 430
    .line 431
    move-result v5

    .line 432
    iput v5, v2, Li/g;->w:I

    .line 433
    .line 434
    const/16 v5, 0xf

    .line 435
    .line 436
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    iput-object v5, v2, Li/g;->x:Ljava/lang/String;

    .line 441
    .line 442
    const/16 v5, 0xe

    .line 443
    .line 444
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    if-eqz v5, :cond_e

    .line 449
    .line 450
    move v12, v6

    .line 451
    goto :goto_8

    .line 452
    :cond_e
    move v12, v7

    .line 453
    :goto_8
    if-eqz v12, :cond_f

    .line 454
    .line 455
    iget v13, v2, Li/g;->w:I

    .line 456
    .line 457
    if-nez v13, :cond_f

    .line 458
    .line 459
    iget-object v13, v2, Li/g;->x:Ljava/lang/String;

    .line 460
    .line 461
    if-nez v13, :cond_f

    .line 462
    .line 463
    sget-object v12, Li/h;->f:[Ljava/lang/Class;

    .line 464
    .line 465
    iget-object v13, v0, Li/h;->b:[Ljava/lang/Object;

    .line 466
    .line 467
    invoke-virtual {v2, v5, v12, v13}, Li/g;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v5

    .line 471
    check-cast v5, Landroidx/core/view/ActionProvider;

    .line 472
    .line 473
    iput-object v5, v2, Li/g;->z:Landroidx/core/view/ActionProvider;

    .line 474
    .line 475
    goto :goto_9

    .line 476
    :cond_f
    if-eqz v12, :cond_10

    .line 477
    .line 478
    const-string v5, "SupportMenuInflater"

    .line 479
    .line 480
    const-string v12, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 481
    .line 482
    invoke-static {v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .line 484
    .line 485
    :cond_10
    const/4 v5, 0x0

    .line 486
    iput-object v5, v2, Li/g;->z:Landroidx/core/view/ActionProvider;

    .line 487
    .line 488
    :goto_9
    const/16 v5, 0x11

    .line 489
    .line 490
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    iput-object v5, v2, Li/g;->A:Ljava/lang/CharSequence;

    .line 495
    .line 496
    const/16 v5, 0x16

    .line 497
    .line 498
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    iput-object v5, v2, Li/g;->B:Ljava/lang/CharSequence;

    .line 503
    .line 504
    const/16 v5, 0x13

    .line 505
    .line 506
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 507
    .line 508
    .line 509
    move-result v12

    .line 510
    if-eqz v12, :cond_11

    .line 511
    .line 512
    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 513
    .line 514
    .line 515
    move-result v5

    .line 516
    iget-object v8, v2, Li/g;->D:Landroid/graphics/PorterDuff$Mode;

    .line 517
    .line 518
    invoke-static {v5, v8}, Lk/p0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    iput-object v5, v2, Li/g;->D:Landroid/graphics/PorterDuff$Mode;

    .line 523
    .line 524
    goto :goto_a

    .line 525
    :cond_11
    const/4 v5, 0x0

    .line 526
    iput-object v5, v2, Li/g;->D:Landroid/graphics/PorterDuff$Mode;

    .line 527
    .line 528
    :goto_a
    const/16 v5, 0x12

    .line 529
    .line 530
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 531
    .line 532
    .line 533
    move-result v8

    .line 534
    if-eqz v8, :cond_13

    .line 535
    .line 536
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 537
    .line 538
    .line 539
    move-result v8

    .line 540
    if-eqz v8, :cond_12

    .line 541
    .line 542
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 543
    .line 544
    .line 545
    move-result v8

    .line 546
    if-eqz v8, :cond_12

    .line 547
    .line 548
    invoke-static {v15, v8}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 549
    .line 550
    .line 551
    move-result-object v8

    .line 552
    if-eqz v8, :cond_12

    .line 553
    .line 554
    goto :goto_b

    .line 555
    :cond_12
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 556
    .line 557
    .line 558
    move-result-object v8

    .line 559
    :goto_b
    iput-object v8, v2, Li/g;->C:Landroid/content/res/ColorStateList;

    .line 560
    .line 561
    const/4 v5, 0x0

    .line 562
    goto :goto_c

    .line 563
    :cond_13
    const/4 v5, 0x0

    .line 564
    iput-object v5, v2, Li/g;->C:Landroid/content/res/ColorStateList;

    .line 565
    .line 566
    :goto_c
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 567
    .line 568
    .line 569
    iput-boolean v7, v2, Li/g;->h:Z

    .line 570
    .line 571
    move-object/from16 v8, p1

    .line 572
    .line 573
    goto :goto_d

    .line 574
    :cond_14
    const/4 v5, 0x0

    .line 575
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v8

    .line 579
    if-eqz v8, :cond_15

    .line 580
    .line 581
    iput-boolean v6, v2, Li/g;->h:Z

    .line 582
    .line 583
    iget v3, v2, Li/g;->b:I

    .line 584
    .line 585
    iget v8, v2, Li/g;->i:I

    .line 586
    .line 587
    iget v12, v2, Li/g;->j:I

    .line 588
    .line 589
    iget-object v13, v2, Li/g;->k:Ljava/lang/CharSequence;

    .line 590
    .line 591
    iget-object v14, v2, Li/g;->a:Landroid/view/Menu;

    .line 592
    .line 593
    invoke-interface {v14, v3, v8, v12, v13}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 598
    .line 599
    .line 600
    move-result-object v8

    .line 601
    invoke-virtual {v2, v8}, Li/g;->b(Landroid/view/MenuItem;)V

    .line 602
    .line 603
    .line 604
    move-object/from16 v8, p1

    .line 605
    .line 606
    invoke-virtual {v0, v8, v1, v3}, Li/h;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 607
    .line 608
    .line 609
    goto :goto_d

    .line 610
    :cond_15
    move-object/from16 v8, p1

    .line 611
    .line 612
    move-object v11, v3

    .line 613
    move v10, v6

    .line 614
    :goto_d
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 615
    .line 616
    .line 617
    move-result v3

    .line 618
    const/4 v5, 0x2

    .line 619
    goto/16 :goto_2

    .line 620
    .line 621
    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    .line 622
    .line 623
    const-string v2, "Unexpected end of document"

    .line 624
    .line 625
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    throw v1

    .line 629
    :cond_17
    return-void

    .line 630
    :cond_18
    move-object/from16 v8, p1

    .line 631
    .line 632
    goto/16 :goto_0
.end method

.method public final inflate(ILandroid/view/Menu;)V
    .locals 5

    .line 1
    const-string v0, "Error inflating menu XML"

    .line 2
    .line 3
    instance-of v1, p2, Landroidx/core/internal/view/SupportMenu;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    iget-object v3, p0, Li/h;->c:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    instance-of v3, p2, Lj/p;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    move-object v3, p2

    .line 32
    check-cast v3, Lj/p;

    .line 33
    .line 34
    iget-boolean v4, v3, Lj/p;->p:Z

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Lj/p;->w()V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_3

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :catch_1
    move-exception p1

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Li/h;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    check-cast p2, Lj/p;

    .line 55
    .line 56
    invoke-virtual {p2}, Lj/p;->v()V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    :try_start_1
    new-instance v3, Landroid/view/InflateException;

    .line 64
    .line 65
    invoke-direct {v3, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw v3

    .line 69
    :goto_2
    new-instance v3, Landroid/view/InflateException;

    .line 70
    .line 71
    invoke-direct {v3, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_3
    if-eqz v2, :cond_3

    .line 76
    .line 77
    check-cast p2, Lj/p;

    .line 78
    .line 79
    invoke-virtual {p2}, Lj/p;->v()V

    .line 80
    .line 81
    .line 82
    :cond_3
    if-eqz v1, :cond_4

    .line 83
    .line 84
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 85
    .line 86
    .line 87
    :cond_4
    throw p1
.end method
