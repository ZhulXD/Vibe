.class public final synthetic LA1/G0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LA1/G0;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LA1/G0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, LA1/G0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LA1/G0;->b:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v1, LA1/G0;->c:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v6, v1, LA1/G0;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v6, Ly1/x0;

    .line 17
    .line 18
    iget-object v7, v6, Ly1/x0;->c:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    iget-object v8, v6, Ly1/x0;->a:Landroid/app/Activity;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    if-nez v9, :cond_1

    .line 27
    .line 28
    check-cast v0, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const v0, 0x7f120179

    .line 37
    .line 38
    .line 39
    invoke-static {v8, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v3, LO0/b;

    .line 51
    .line 52
    invoke-direct {v3, v8, v5}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 53
    .line 54
    .line 55
    iget-object v5, v3, Le/f;->c:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v5, Le/b;

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const v7, 0x7f120181

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8, v7, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, v5, Le/b;->d:Ljava/lang/CharSequence;

    .line 75
    .line 76
    const v0, 0x7f12017f

    .line 77
    .line 78
    .line 79
    iget-object v7, v5, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 80
    .line 81
    invoke-virtual {v7, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, v5, Le/b;->f:Ljava/lang/CharSequence;

    .line 86
    .line 87
    new-instance v0, LC1/I1;

    .line 88
    .line 89
    const/4 v7, 0x5

    .line 90
    invoke-direct {v0, v7, v6}, LC1/I1;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    const v7, 0x7f12016b

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v7, v0}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    const v0, 0x7f120173

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v0, v4}, LO0/b;->f(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Ly1/m0;

    .line 106
    .line 107
    invoke-direct {v0, v6, v2}, Ly1/m0;-><init>(Ly1/x0;I)V

    .line 108
    .line 109
    .line 110
    iput-object v0, v5, Le/b;->o:Landroid/content/DialogInterface$OnDismissListener;

    .line 111
    .line 112
    invoke-virtual {v3}, Le/f;->e()Le/g;

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-nez v0, :cond_2

    .line 121
    .line 122
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :cond_2
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const v2, 0x7f12016c

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v8, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    .line 147
    .line 148
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 152
    .line 153
    return-object v0

    .line 154
    :pswitch_0
    iget-object v0, v1, LA1/G0;->c:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v0, Ljava/util/List;

    .line 157
    .line 158
    iget-object v2, v1, LA1/G0;->d:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v2, Lcom/minhub/gamehub/data/GameStorage;

    .line 161
    .line 162
    invoke-static {v0, v2}, Lcom/minhub/gamehub/data/GameStorage;->a(Ljava/util/List;Lcom/minhub/gamehub/data/GameStorage;)Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    return-object v0

    .line 167
    :pswitch_1
    iget-object v0, v1, LA1/G0;->c:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v0, Ljava/util/List;

    .line 170
    .line 171
    iget-object v2, v1, LA1/G0;->d:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v2, Landroid/widget/Spinner;

    .line 174
    .line 175
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    sub-int/2addr v4, v3

    .line 184
    invoke-static {v2, v5, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Lcom/minhub/gamehub/data/PluginParamOption;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/PluginParamOption;->getValue()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    return-object v0

    .line 199
    :pswitch_2
    iget-object v0, v1, LA1/G0;->c:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v0, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 202
    .line 203
    iget-object v6, v1, LA1/G0;->d:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v6, Lcom/minhub/gamehub/data/Game;

    .line 206
    .line 207
    sget v7, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 208
    .line 209
    invoke-static {v0}, LS1/d;->m(Landroid/content/Context;)Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-eqz v7, :cond_b

    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    const v8, 0x7f0c0041

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, v8, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    const v7, 0x7f09008d

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    check-cast v8, Landroid/widget/Button;

    .line 234
    .line 235
    if-eqz v8, :cond_a

    .line 236
    .line 237
    const v7, 0x7f09008e

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    check-cast v9, Landroid/widget/Button;

    .line 245
    .line 246
    if-eqz v9, :cond_a

    .line 247
    .line 248
    const v7, 0x7f09033e

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v10

    .line 255
    check-cast v10, Landroid/widget/TextView;

    .line 256
    .line 257
    if-eqz v10, :cond_a

    .line 258
    .line 259
    const v7, 0x7f09033f

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    check-cast v11, Landroid/widget/TextView;

    .line 267
    .line 268
    if-eqz v11, :cond_a

    .line 269
    .line 270
    const v7, 0x7f090340

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v12

    .line 277
    check-cast v12, Landroid/widget/TextView;

    .line 278
    .line 279
    if-eqz v12, :cond_a

    .line 280
    .line 281
    const v7, 0x7f090341

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object v13

    .line 288
    check-cast v13, Landroid/widget/TextView;

    .line 289
    .line 290
    if-eqz v13, :cond_a

    .line 291
    .line 292
    const v7, 0x7f090342

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v13

    .line 299
    check-cast v13, Landroid/widget/TextView;

    .line 300
    .line 301
    if-eqz v13, :cond_a

    .line 302
    .line 303
    const v7, 0x7f090343

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v14

    .line 310
    check-cast v14, Landroid/widget/TextView;

    .line 311
    .line 312
    if-eqz v14, :cond_a

    .line 313
    .line 314
    new-instance v7, Lr/b;

    .line 315
    .line 316
    check-cast v4, Landroid/widget/LinearLayout;

    .line 317
    .line 318
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v14, "inflate(...)"

    .line 322
    .line 323
    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v0}, LS1/d;->k(Landroid/content/Context;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    invoke-virtual {v0, v7}, Lcom/minhub/gamehub/hub/GameDetailActivity;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    .line 336
    .line 337
    invoke-static {v0}, LS1/d;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    invoke-virtual {v0, v7}, Lcom/minhub/gamehub/hub/GameDetailActivity;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v7

    .line 345
    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    invoke-static {v0}, LS1/d;->h(Landroid/content/Context;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 353
    .line 354
    invoke-virtual {v7, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    const-string v12, "toUpperCase(...)"

    .line 359
    .line 360
    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 364
    .line 365
    .line 366
    move-result v12

    .line 367
    const v13, 0x7f120118

    .line 368
    .line 369
    .line 370
    sparse-switch v12, :sswitch_data_0

    .line 371
    .line 372
    .line 373
    goto/16 :goto_1

    .line 374
    .line 375
    :sswitch_0
    const-string v12, "#FFFFFF"

    .line 376
    .line 377
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v7

    .line 381
    if-nez v7, :cond_3

    .line 382
    .line 383
    goto/16 :goto_1

    .line 384
    .line 385
    :cond_3
    const v7, 0x7f1200b3

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    invoke-virtual {v0, v13, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    goto/16 :goto_2

    .line 401
    .line 402
    :sswitch_1
    const-string v12, "#FFFF00"

    .line 403
    .line 404
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    if-nez v7, :cond_4

    .line 409
    .line 410
    goto :goto_1

    .line 411
    :cond_4
    const v7, 0x7f1200b4

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v7

    .line 418
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    invoke-virtual {v0, v13, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v7

    .line 426
    goto :goto_2

    .line 427
    :sswitch_2
    const-string v12, "#FFA500"

    .line 428
    .line 429
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v7

    .line 433
    if-nez v7, :cond_5

    .line 434
    .line 435
    goto :goto_1

    .line 436
    :cond_5
    const v7, 0x7f1200b1

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v7

    .line 447
    invoke-virtual {v0, v13, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    goto :goto_2

    .line 452
    :sswitch_3
    const-string v12, "#EF4444"

    .line 453
    .line 454
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v7

    .line 458
    if-nez v7, :cond_6

    .line 459
    .line 460
    goto :goto_1

    .line 461
    :cond_6
    const v7, 0x7f1200b2

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v7

    .line 468
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v7

    .line 472
    invoke-virtual {v0, v13, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    goto :goto_2

    .line 477
    :sswitch_4
    const-string v12, "#00FF00"

    .line 478
    .line 479
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v7

    .line 483
    if-nez v7, :cond_7

    .line 484
    .line 485
    goto :goto_1

    .line 486
    :cond_7
    const v7, 0x7f1200b0

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v7

    .line 493
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v7

    .line 497
    invoke-virtual {v0, v13, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v7

    .line 501
    goto :goto_2

    .line 502
    :sswitch_5
    const-string v12, "#00BFFF"

    .line 503
    .line 504
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v7

    .line 508
    if-nez v7, :cond_8

    .line 509
    .line 510
    :goto_1
    const v7, 0x7f1201e4

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v7

    .line 517
    goto :goto_2

    .line 518
    :cond_8
    const v7, 0x7f1200af

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v7

    .line 525
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v7

    .line 529
    invoke-virtual {v0, v13, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v7

    .line 533
    :goto_2
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    .line 535
    .line 536
    invoke-static {v0}, LS1/d;->i(Landroid/content/Context;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v7

    .line 540
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v7

    .line 544
    const v10, 0x7f12011a

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0, v10, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v7

    .line 551
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    .line 553
    .line 554
    new-instance v7, LO0/b;

    .line 555
    .line 556
    invoke-direct {v7, v0, v5}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 557
    .line 558
    .line 559
    iget-object v5, v7, Le/f;->c:Ljava/lang/Object;

    .line 560
    .line 561
    check-cast v5, Le/b;

    .line 562
    .line 563
    iput-object v4, v5, Le/b;->t:Landroid/view/View;

    .line 564
    .line 565
    invoke-virtual {v7}, LO0/b;->c()Le/g;

    .line 566
    .line 567
    .line 568
    move-result-object v4

    .line 569
    const-string v5, "create(...)"

    .line 570
    .line 571
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    if-eqz v5, :cond_9

    .line 579
    .line 580
    const v7, 0x106000d

    .line 581
    .line 582
    .line 583
    invoke-virtual {v5, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 584
    .line 585
    .line 586
    :cond_9
    new-instance v5, LC1/z;

    .line 587
    .line 588
    invoke-direct {v5, v4, v3}, LC1/z;-><init>(Le/g;I)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v8, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    .line 593
    .line 594
    new-instance v3, LC1/w;

    .line 595
    .line 596
    invoke-direct {v3, v4, v0, v6, v2}, LC1/w;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v9, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 603
    .line 604
    .line 605
    goto :goto_3

    .line 606
    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    new-instance v2, Ljava/lang/NullPointerException;

    .line 615
    .line 616
    const-string v3, "Missing required view with ID: "

    .line 617
    .line 618
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    throw v2

    .line 626
    :cond_b
    invoke-virtual {v0, v6}, Lcom/minhub/gamehub/hub/GameDetailActivity;->r(Lcom/minhub/gamehub/data/Game;)V

    .line 627
    .line 628
    .line 629
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 630
    .line 631
    return-object v0

    .line 632
    :pswitch_3
    iget-object v0, v1, LA1/G0;->c:Ljava/lang/Object;

    .line 633
    .line 634
    check-cast v0, Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 635
    .line 636
    iget-object v2, v1, LA1/G0;->d:Ljava/lang/Object;

    .line 637
    .line 638
    check-cast v2, Ljava/lang/String;

    .line 639
    .line 640
    iget-object v0, v0, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->c:Landroid/webkit/WebView;

    .line 641
    .line 642
    if-eqz v0, :cond_c

    .line 643
    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    .line 645
    .line 646
    const-string v5, "window.__mhAdelAct && window.__mhAdelAct(\'"

    .line 647
    .line 648
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    const-string v2, "\')"

    .line 655
    .line 656
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    invoke-virtual {v0, v2, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 664
    .line 665
    .line 666
    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 667
    .line 668
    return-object v0

    .line 669
    :pswitch_4
    iget-object v0, v1, LA1/G0;->c:Ljava/lang/Object;

    .line 670
    .line 671
    check-cast v0, LA1/K0;

    .line 672
    .line 673
    iget-object v2, v1, LA1/G0;->d:Ljava/lang/Object;

    .line 674
    .line 675
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 676
    .line 677
    sget-object v3, LA1/K0;->q:LA1/H0;

    .line 678
    .line 679
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 680
    .line 681
    invoke-virtual {v3, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 682
    .line 683
    .line 684
    :try_start_0
    invoke-virtual {v0}, LA1/K0;->m()LA1/a0;

    .line 685
    .line 686
    .line 687
    move-result-object v6

    .line 688
    iget-boolean v7, v0, LA1/K0;->i:Z

    .line 689
    .line 690
    if-eqz v7, :cond_e

    .line 691
    .line 692
    iget-wide v7, v6, LA1/a0;->b:J

    .line 693
    .line 694
    const-wide v9, 0x7ffffffffff0bdbeL

    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    cmp-long v9, v7, v9

    .line 700
    .line 701
    if-gtz v9, :cond_d

    .line 702
    .line 703
    const-wide/32 v9, 0xf4240

    .line 704
    .line 705
    .line 706
    add-long/2addr v7, v9

    .line 707
    goto :goto_4

    .line 708
    :cond_d
    new-instance v0, LA1/E0;

    .line 709
    .line 710
    invoke-direct {v0}, LA1/E0;-><init>()V

    .line 711
    .line 712
    .line 713
    throw v0

    .line 714
    :catchall_0
    move-exception v0

    .line 715
    goto :goto_7

    .line 716
    :cond_e
    iget-wide v7, v6, LA1/a0;->b:J

    .line 717
    .line 718
    :goto_4
    const-wide v9, 0x7ffffffffffffffeL

    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    cmp-long v9, v7, v9

    .line 724
    .line 725
    if-gez v9, :cond_11

    .line 726
    .line 727
    invoke-interface {v2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v2

    .line 731
    move-object v9, v2

    .line 732
    check-cast v9, LA1/a0;

    .line 733
    .line 734
    const-wide/16 v10, 0x1

    .line 735
    .line 736
    add-long/2addr v10, v7

    .line 737
    const/4 v14, 0x0

    .line 738
    const/16 v15, 0x3c

    .line 739
    .line 740
    const/4 v12, 0x0

    .line 741
    const/4 v13, 0x0

    .line 742
    invoke-static/range {v9 .. v15}, LA1/a0;->a(LA1/a0;JLA1/Z;LA1/o0;LA1/w0;I)LA1/a0;

    .line 743
    .line 744
    .line 745
    move-result-object v2

    .line 746
    invoke-virtual {v0, v2}, LA1/K0;->s(LA1/a0;)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v0, v2}, LA1/K0;->u(LA1/a0;)V

    .line 750
    .line 751
    .line 752
    iput-boolean v5, v0, LA1/K0;->i:Z

    .line 753
    .line 754
    iget-object v0, v2, LA1/a0;->c:LA1/Z;

    .line 755
    .line 756
    if-eqz v0, :cond_f

    .line 757
    .line 758
    iget-object v4, v0, LA1/Z;->f:LA1/L0;

    .line 759
    .line 760
    :cond_f
    sget-object v0, LA1/L0;->g:LA1/L0;

    .line 761
    .line 762
    if-ne v4, v0, :cond_10

    .line 763
    .line 764
    sget-object v0, LA1/w0;->c:LA1/w0;

    .line 765
    .line 766
    :goto_5
    move-object/from16 v21, v0

    .line 767
    .line 768
    goto :goto_6

    .line 769
    :cond_10
    sget-object v0, LA1/w0;->b:LA1/w0;

    .line 770
    .line 771
    goto :goto_5

    .line 772
    :goto_6
    const/16 v20, 0x0

    .line 773
    .line 774
    const/16 v22, 0x1f

    .line 775
    .line 776
    const-wide/16 v17, 0x0

    .line 777
    .line 778
    const/16 v19, 0x0

    .line 779
    .line 780
    move-object/from16 v16, v2

    .line 781
    .line 782
    invoke-static/range {v16 .. v22}, LA1/a0;->a(LA1/a0;JLA1/Z;LA1/o0;LA1/w0;I)LA1/a0;

    .line 783
    .line 784
    .line 785
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 787
    .line 788
    .line 789
    return-object v0

    .line 790
    :cond_11
    :try_start_1
    new-instance v0, LA1/E0;

    .line 791
    .line 792
    invoke-direct {v0}, LA1/E0;-><init>()V

    .line 793
    .line 794
    .line 795
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    :goto_7
    sget-object v2, LA1/K0;->q:LA1/H0;

    .line 797
    .line 798
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 799
    .line 800
    .line 801
    throw v0

    .line 802
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x6fd9d019 -> :sswitch_5
        -0x6fd8015d -> :sswitch_4
        -0x4ad4a8fc -> :sswitch_3
        -0x4919e449 -> :sswitch_2
        -0x49175e9d -> :sswitch_1
        -0x49175bdd -> :sswitch_0
    .end sparse-switch
.end method
