.class public final synthetic LE1/C;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:LG1/r;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:LE1/I;

.field public final synthetic f:Landroid/widget/LinearLayout;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Landroid/view/LayoutInflater;

.field public final synthetic j:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic k:LE1/j;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;LG1/r;Landroid/widget/TextView;LE1/I;Landroid/widget/LinearLayout;Ljava/util/List;Landroid/content/Context;Landroid/view/LayoutInflater;Lkotlin/jvm/internal/Ref$ObjectRef;LE1/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LE1/C;->b:Ljava/util/Map;

    .line 5
    .line 6
    iput-object p2, p0, LE1/C;->c:LG1/r;

    .line 7
    .line 8
    iput-object p3, p0, LE1/C;->d:Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object p4, p0, LE1/C;->e:LE1/I;

    .line 11
    .line 12
    iput-object p5, p0, LE1/C;->f:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    iput-object p6, p0, LE1/C;->g:Ljava/util/List;

    .line 15
    .line 16
    iput-object p7, p0, LE1/C;->h:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p8, p0, LE1/C;->i:Landroid/view/LayoutInflater;

    .line 19
    .line 20
    iput-object p9, p0, LE1/C;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 21
    .line 22
    iput-object p10, p0, LE1/C;->k:LE1/j;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LE1/C;->c:LG1/r;

    .line 4
    .line 5
    iget-object v1, v1, LG1/r;->a:LG1/o;

    .line 6
    .line 7
    iget-object v2, v0, LE1/C;->b:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Ljava/lang/Boolean;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v3, v4

    .line 24
    :goto_0
    xor-int/lit8 v5, v3, 0x1

    .line 25
    .line 26
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    const v2, 0x7f1203cd

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const v2, 0x7f1203d3

    .line 40
    .line 41
    .line 42
    :goto_1
    iget-object v9, v0, LE1/C;->e:LE1/I;

    .line 43
    .line 44
    invoke-virtual {v9, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v5, v0, LE1/C;->d:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, v0, LE1/C;->f:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    const/16 v11, 0x8

    .line 56
    .line 57
    if-nez v3, :cond_7

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-lez v5, :cond_2

    .line 64
    .line 65
    goto/16 :goto_5

    .line 66
    .line 67
    :cond_2
    iget-object v5, v0, LE1/C;->g:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    iget-object v12, v0, LE1/C;->h:Landroid/content/Context;

    .line 74
    .line 75
    const v13, 0x7f06031a

    .line 76
    .line 77
    .line 78
    const/high16 v14, 0x41300000    # 11.0f

    .line 79
    .line 80
    if-eqz v6, :cond_3

    .line 81
    .line 82
    sget-object v6, LG1/o;->b:LG1/o;

    .line 83
    .line 84
    if-eq v1, v6, :cond_3

    .line 85
    .line 86
    new-instance v1, Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-direct {v1, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    const v5, 0x7f1203c8

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v5, v13, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    .line 118
    .line 119
    const/4 v5, 0x4

    .line 120
    invoke-virtual {v9, v5}, LE1/I;->c(I)I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    invoke-virtual {v9, v5}, LE1/I;->c(I)I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    invoke-virtual {v9, v5}, LE1/I;->c(I)I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    invoke-virtual {v9, v5}, LE1/I;->c(I)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-virtual {v1, v6, v7, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_5

    .line 143
    .line 144
    :cond_3
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v15

    .line 148
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_4

    .line 153
    .line 154
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    move-object v7, v5

    .line 159
    check-cast v7, LG1/n;

    .line 160
    .line 161
    const v5, 0x7f0c0069

    .line 162
    .line 163
    .line 164
    iget-object v6, v0, LE1/C;->i:Landroid/view/LayoutInflater;

    .line 165
    .line 166
    invoke-virtual {v6, v5, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    const v5, 0x7f0903b6

    .line 171
    .line 172
    .line 173
    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    check-cast v5, Landroid/widget/TextView;

    .line 178
    .line 179
    iget v6, v7, LG1/n;->c:I

    .line 180
    .line 181
    invoke-virtual {v9, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    const v5, 0x7f0903b5

    .line 189
    .line 190
    .line 191
    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    check-cast v5, Landroid/widget/TextView;

    .line 196
    .line 197
    iget v6, v7, LG1/n;->d:I

    .line 198
    .line 199
    invoke-virtual {v9, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    const v5, 0x7f0902e3

    .line 207
    .line 208
    .line 209
    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 214
    .line 215
    iget-object v6, v0, LE1/C;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 216
    .line 217
    iget-object v8, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v8, LG1/s;

    .line 220
    .line 221
    iget-object v13, v7, LG1/n;->a:LG1/p;

    .line 222
    .line 223
    invoke-virtual {v8, v13}, LG1/s;->b(LG1/p;)Z

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    invoke-virtual {v5, v8}, Lk/U0;->setChecked(Z)V

    .line 228
    .line 229
    .line 230
    move-object v8, v5

    .line 231
    new-instance v5, LE1/E;

    .line 232
    .line 233
    move-object v13, v8

    .line 234
    iget-object v8, v0, LE1/C;->k:LE1/j;

    .line 235
    .line 236
    invoke-direct/range {v5 .. v10}, LE1/E;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;LG1/n;LE1/j;LE1/I;Landroid/view/View;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v13, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v13}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    invoke-static {v10, v5}, LE1/I;->d(Landroid/view/View;Z)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 253
    .line 254
    .line 255
    const v13, 0x7f06031a

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_4
    sget-object v5, LG1/o;->b:LG1/o;

    .line 260
    .line 261
    if-ne v1, v5, :cond_7

    .line 262
    .line 263
    new-instance v1, Landroid/widget/LinearLayout;

    .line 264
    .line 265
    invoke-direct {v1, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 266
    .line 267
    .line 268
    const/4 v5, 0x1

    .line 269
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v9, v11}, LE1/I;->c(I)I

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    const/16 v7, 0x10

    .line 277
    .line 278
    invoke-virtual {v9, v7}, LE1/I;->c(I)I

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    invoke-virtual {v9, v11}, LE1/I;->c(I)I

    .line 283
    .line 284
    .line 285
    move-result v10

    .line 286
    invoke-virtual {v9, v11}, LE1/I;->c(I)I

    .line 287
    .line 288
    .line 289
    move-result v13

    .line 290
    invoke-virtual {v1, v6, v8, v10, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 291
    .line 292
    .line 293
    new-instance v6, Landroid/widget/LinearLayout;

    .line 294
    .line 295
    invoke-direct {v6, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 302
    .line 303
    .line 304
    new-instance v7, Landroid/widget/TextView;

    .line 305
    .line 306
    invoke-direct {v7, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 307
    .line 308
    .line 309
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 310
    .line 311
    const/4 v10, -0x2

    .line 312
    const/high16 v13, 0x3f800000    # 1.0f

    .line 313
    .line 314
    invoke-direct {v8, v4, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    .line 319
    .line 320
    const v8, 0x7f1203c3

    .line 321
    .line 322
    .line 323
    invoke-virtual {v9, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v8

    .line 327
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    .line 329
    .line 330
    const/high16 v8, 0x41500000    # 13.0f

    .line 331
    .line 332
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 336
    .line 337
    .line 338
    move-result-object v8

    .line 339
    const v10, 0x7f06031b

    .line 340
    .line 341
    .line 342
    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 343
    .line 344
    .line 345
    move-result-object v13

    .line 346
    invoke-virtual {v8, v10, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 347
    .line 348
    .line 349
    move-result v8

    .line 350
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    .line 352
    .line 353
    sget-object v8, LS1/d;->a:Ljava/util/Set;

    .line 354
    .line 355
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 356
    .line 357
    .line 358
    move-result-object v8

    .line 359
    const-string v10, "requireContext(...)"

    .line 360
    .line 361
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    const-string v10, "<this>"

    .line 365
    .line 366
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-static {v8}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 370
    .line 371
    .line 372
    move-result-object v8

    .line 373
    const-string v10, "mv_mz_font_size"

    .line 374
    .line 375
    invoke-interface {v8, v10, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 376
    .line 377
    .line 378
    move-result v8

    .line 379
    new-instance v10, Landroid/widget/TextView;

    .line 380
    .line 381
    invoke-direct {v10, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 382
    .line 383
    .line 384
    if-nez v8, :cond_5

    .line 385
    .line 386
    const v13, 0x7f1203c1

    .line 387
    .line 388
    .line 389
    invoke-virtual {v9, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v13

    .line 393
    goto :goto_3

    .line 394
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v15, "px"

    .line 403
    .line 404
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v13

    .line 411
    :goto_3
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    .line 413
    .line 414
    const/high16 v13, 0x41400000    # 12.0f

    .line 415
    .line 416
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 420
    .line 421
    .line 422
    move-result-object v13

    .line 423
    const v15, 0x7f060019

    .line 424
    .line 425
    .line 426
    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 427
    .line 428
    .line 429
    move-result-object v11

    .line 430
    invoke-virtual {v13, v15, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 431
    .line 432
    .line 433
    move-result v11

    .line 434
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 441
    .line 442
    .line 443
    new-instance v7, Landroid/widget/TextView;

    .line 444
    .line 445
    invoke-direct {v7, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 446
    .line 447
    .line 448
    const v11, 0x7f1203c2

    .line 449
    .line 450
    .line 451
    invoke-virtual {v9, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v11

    .line 455
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 462
    .line 463
    .line 464
    move-result-object v11

    .line 465
    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 466
    .line 467
    .line 468
    move-result-object v13

    .line 469
    const v14, 0x7f06031a

    .line 470
    .line 471
    .line 472
    invoke-virtual {v11, v14, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 473
    .line 474
    .line 475
    move-result v11

    .line 476
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    .line 478
    .line 479
    const/4 v11, 0x2

    .line 480
    invoke-virtual {v9, v11}, LE1/I;->c(I)I

    .line 481
    .line 482
    .line 483
    move-result v13

    .line 484
    const/4 v14, 0x6

    .line 485
    invoke-virtual {v9, v14}, LE1/I;->c(I)I

    .line 486
    .line 487
    .line 488
    move-result v14

    .line 489
    invoke-virtual {v7, v4, v13, v4, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 490
    .line 491
    .line 492
    new-instance v13, Landroid/widget/SeekBar;

    .line 493
    .line 494
    invoke-direct {v13, v12}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 495
    .line 496
    .line 497
    const/16 v12, 0xe

    .line 498
    .line 499
    invoke-virtual {v13, v12}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 500
    .line 501
    .line 502
    if-nez v8, :cond_6

    .line 503
    .line 504
    move v5, v4

    .line 505
    goto :goto_4

    .line 506
    :cond_6
    add-int/lit8 v8, v8, -0x12

    .line 507
    .line 508
    div-int/2addr v8, v11

    .line 509
    invoke-static {v8, v5, v12}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 510
    .line 511
    .line 512
    move-result v5

    .line 513
    :goto_4
    invoke-virtual {v13, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 514
    .line 515
    .line 516
    new-instance v5, LE1/H;

    .line 517
    .line 518
    invoke-direct {v5, v9, v10}, LE1/H;-><init>(LE1/I;Landroid/widget/TextView;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v13, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 534
    .line 535
    .line 536
    :cond_7
    :goto_5
    if-nez v3, :cond_8

    .line 537
    .line 538
    goto :goto_6

    .line 539
    :cond_8
    const/16 v4, 0x8

    .line 540
    .line 541
    :goto_6
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 542
    .line 543
    .line 544
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 545
    .line 546
    return-object v1
.end method
