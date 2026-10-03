.class public final synthetic LC1/a1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LC1/d1;


# direct methods
.method public synthetic constructor <init>(LC1/d1;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/a1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/a1;->c:LC1/d1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LC1/a1;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p1

    .line 9
    .line 10
    check-cast v1, Ljava/util/List;

    .line 11
    .line 12
    iget-object v2, v0, LC1/a1;->c:LC1/d1;

    .line 13
    .line 14
    iget-object v3, v2, LC1/d1;->b:Lw1/c;

    .line 15
    .line 16
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, v3, Lw1/c;->e:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const v5, 0x7f1201a5

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v4, " "

    .line 41
    .line 42
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-instance v3, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    move-object v6, v5

    .line 78
    check-cast v6, Lcom/minhub/gamehub/data/Game;

    .line 79
    .line 80
    invoke-static {v6}, Lcom/minhub/gamehub/data/GameKt;->getStatusEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameStatus;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    sget-object v7, Lcom/minhub/gamehub/data/GameStatus;->DOWNLOADING:Lcom/minhub/gamehub/data/GameStatus;

    .line 85
    .line 86
    if-ne v6, v7, :cond_0

    .line 87
    .line 88
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iget-object v4, v2, LC1/d1;->b:Lw1/c;

    .line 93
    .line 94
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v4, v4, Lw1/c;->d:Landroid/widget/LinearLayout;

    .line 98
    .line 99
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    const/4 v5, 0x0

    .line 107
    if-eqz v4, :cond_3

    .line 108
    .line 109
    iget-object v3, v2, LC1/d1;->b:Lw1/c;

    .line 110
    .line 111
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget-object v3, v3, Lw1/c;->d:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    const/16 v4, 0x8

    .line 117
    .line 118
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    :cond_2
    move v3, v5

    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :cond_3
    iget-object v4, v2, LC1/d1;->b:Lw1/c;

    .line 125
    .line 126
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object v4, v4, Lw1/c;->d:Landroid/widget/LinearLayout;

    .line 130
    .line 131
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    move v7, v5

    .line 149
    :goto_1
    if-ge v7, v6, :cond_2

    .line 150
    .line 151
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    add-int/lit8 v7, v7, 0x1

    .line 156
    .line 157
    check-cast v8, Lcom/minhub/gamehub/data/Game;

    .line 158
    .line 159
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    .line 160
    .line 161
    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 165
    .line 166
    .line 167
    const/high16 v10, 0x41400000    # 12.0f

    .line 168
    .line 169
    mul-float v11, v4, v10

    .line 170
    .line 171
    invoke-virtual {v9, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 172
    .line 173
    .line 174
    const-string v11, "#18181f"

    .line 175
    .line 176
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    invoke-virtual {v9, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 181
    .line 182
    .line 183
    const/4 v11, 0x1

    .line 184
    int-to-float v12, v11

    .line 185
    mul-float/2addr v12, v4

    .line 186
    float-to-int v12, v12

    .line 187
    const-string v13, "#222230"

    .line 188
    .line 189
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v13

    .line 193
    invoke-virtual {v9, v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 194
    .line 195
    .line 196
    new-instance v12, Landroid/widget/LinearLayout;

    .line 197
    .line 198
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v12, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 209
    .line 210
    .line 211
    const/16 v9, 0xe

    .line 212
    .line 213
    int-to-float v9, v9

    .line 214
    mul-float/2addr v9, v4

    .line 215
    float-to-int v9, v9

    .line 216
    const/16 v13, 0xa

    .line 217
    .line 218
    int-to-float v13, v13

    .line 219
    mul-float/2addr v13, v4

    .line 220
    float-to-int v13, v13

    .line 221
    invoke-virtual {v12, v9, v13, v9, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 222
    .line 223
    .line 224
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 225
    .line 226
    const/4 v13, -0x1

    .line 227
    const/4 v14, -0x2

    .line 228
    invoke-direct {v9, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 229
    .line 230
    .line 231
    const/16 v15, 0xc

    .line 232
    .line 233
    int-to-float v15, v15

    .line 234
    mul-float/2addr v15, v4

    .line 235
    float-to-int v15, v15

    .line 236
    iput v15, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 237
    .line 238
    invoke-virtual {v12, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    .line 240
    .line 241
    new-instance v9, Landroid/widget/LinearLayout;

    .line 242
    .line 243
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 244
    .line 245
    .line 246
    move-result-object v15

    .line 247
    invoke-direct {v9, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 251
    .line 252
    .line 253
    const/16 v15, 0x10

    .line 254
    .line 255
    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 256
    .line 257
    .line 258
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 259
    .line 260
    invoke-direct {v15, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 261
    .line 262
    .line 263
    const/4 v13, 0x6

    .line 264
    int-to-float v13, v13

    .line 265
    mul-float/2addr v13, v4

    .line 266
    float-to-int v13, v13

    .line 267
    iput v13, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 268
    .line 269
    invoke-virtual {v9, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    .line 271
    .line 272
    new-instance v13, Landroid/widget/TextView;

    .line 273
    .line 274
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 275
    .line 276
    .line 277
    move-result-object v15

    .line 278
    invoke-direct {v13, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v8}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v15

    .line 285
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 289
    .line 290
    .line 291
    const-string v10, "#F0F0F6"

    .line 292
    .line 293
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v10

    .line 297
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    .line 299
    .line 300
    const/4 v10, 0x0

    .line 301
    invoke-virtual {v13, v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 302
    .line 303
    .line 304
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 305
    .line 306
    const/high16 v10, 0x3f800000    # 1.0f

    .line 307
    .line 308
    invoke-direct {v15, v5, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v13, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    .line 313
    .line 314
    new-instance v10, Landroid/widget/TextView;

    .line 315
    .line 316
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 317
    .line 318
    .line 319
    move-result-object v14

    .line 320
    invoke-direct {v10, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v8}, Lcom/minhub/gamehub/data/Game;->getDownloadProgress()I

    .line 324
    .line 325
    .line 326
    move-result v14

    .line 327
    new-instance v15, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const-string v14, "%"

    .line 336
    .line 337
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v14

    .line 344
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    .line 346
    .line 347
    const/high16 v14, 0x41300000    # 11.0f

    .line 348
    .line 349
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 350
    .line 351
    .line 352
    const-string v14, "#EF4444"

    .line 353
    .line 354
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    move-result v15

    .line 358
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    .line 360
    .line 361
    const/4 v15, 0x0

    .line 362
    invoke-virtual {v10, v15, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 363
    .line 364
    .line 365
    new-instance v11, Landroid/widget/ProgressBar;

    .line 366
    .line 367
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    move-object/from16 v16, v3

    .line 372
    .line 373
    const v3, 0x1010078

    .line 374
    .line 375
    .line 376
    invoke-direct {v11, v5, v15, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 377
    .line 378
    .line 379
    const/16 v3, 0x64

    .line 380
    .line 381
    invoke-virtual {v11, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v8}, Lcom/minhub/gamehub/data/Game;->getDownloadProgress()I

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    invoke-virtual {v11, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v11}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    .line 396
    .line 397
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 402
    .line 403
    invoke-direct {v5, v8, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 407
    .line 408
    .line 409
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 410
    .line 411
    const/4 v5, 0x3

    .line 412
    int-to-float v5, v5

    .line 413
    mul-float/2addr v5, v4

    .line 414
    float-to-int v5, v5

    .line 415
    const/4 v8, -0x1

    .line 416
    invoke-direct {v3, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v11, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 432
    .line 433
    .line 434
    iget-object v3, v2, LC1/d1;->b:Lw1/c;

    .line 435
    .line 436
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    iget-object v3, v3, Lw1/c;->d:Landroid/widget/LinearLayout;

    .line 440
    .line 441
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 442
    .line 443
    .line 444
    move-object/from16 v3, v16

    .line 445
    .line 446
    const/4 v5, 0x0

    .line 447
    goto/16 :goto_1

    .line 448
    .line 449
    :goto_2
    invoke-virtual {v2, v1, v3}, LC1/d1;->b(Ljava/util/List;Z)V

    .line 450
    .line 451
    .line 452
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 453
    .line 454
    return-object v1

    .line 455
    :pswitch_0
    move-object/from16 v1, p1

    .line 456
    .line 457
    check-cast v1, Lcom/minhub/gamehub/data/Game;

    .line 458
    .line 459
    const-string v2, "game"

    .line 460
    .line 461
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    iget-object v2, v0, LC1/a1;->c:LC1/d1;

    .line 465
    .line 466
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    new-instance v3, Landroid/content/Intent;

    .line 470
    .line 471
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    const-class v5, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 476
    .line 477
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 478
    .line 479
    .line 480
    const-string v4, "game_id"

    .line 481
    .line 482
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 491
    .line 492
    .line 493
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 494
    .line 495
    return-object v1

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
