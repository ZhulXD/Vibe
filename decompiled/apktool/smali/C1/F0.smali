.class public final synthetic LC1/F0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/GameDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/GameDetailActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/F0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/F0;->c:Lcom/minhub/gamehub/hub/GameDetailActivity;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LC1/F0;->b:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "<this>"

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    const-string v6, "save"

    .line 11
    .line 12
    iget-object v8, v0, LC1/F0;->c:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Lcom/minhub/gamehub/data/Save;

    .line 20
    .line 21
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Save;->getDisplaySlotLabel()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const v2, 0x7f120407

    .line 29
    .line 30
    .line 31
    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\n"

    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v8, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 60
    .line 61
    .line 62
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 63
    .line 64
    return-object v1

    .line 65
    :pswitch_0
    move-object/from16 v1, p1

    .line 66
    .line 67
    check-cast v1, Lcom/minhub/gamehub/data/Save;

    .line 68
    .line 69
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v4, LO0/b;

    .line 79
    .line 80
    invoke-direct {v4, v8, v3}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 81
    .line 82
    .line 83
    const v3, 0x7f1200c1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    iget-object v6, v4, Le/f;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v6, Le/b;

    .line 93
    .line 94
    iput-object v3, v6, Le/b;->d:Ljava/lang/CharSequence;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Save;->getDisplaySlotLabel()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    const v7, 0x7f1200c0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iput-object v3, v6, Le/b;->f:Ljava/lang/CharSequence;

    .line 112
    .line 113
    const v3, 0x7f1200b9

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    new-instance v6, LC1/o0;

    .line 121
    .line 122
    invoke-direct {v6, v5, v8, v1}, LC1/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v3, v6}, LO0/b;->i(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    const-string v1, "H\u1ee7y"

    .line 129
    .line 130
    invoke-virtual {v4, v1, v2}, LO0/b;->g(Ljava/lang/String;LC1/h1;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Le/f;->e()Le/g;

    .line 134
    .line 135
    .line 136
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 137
    .line 138
    return-object v1

    .line 139
    :pswitch_1
    move-object/from16 v1, p1

    .line 140
    .line 141
    check-cast v1, Lcom/minhub/gamehub/data/Save;

    .line 142
    .line 143
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iput-object v1, v8, Lcom/minhub/gamehub/hub/GameDetailActivity;->l:Lcom/minhub/gamehub/data/Save;

    .line 153
    .line 154
    :try_start_0
    invoke-static {v8}, LC1/R0;->b(Lcom/minhub/gamehub/hub/GameDetailActivity;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_0

    .line 159
    .line 160
    sget-object v2, LC1/h2;->b:LC1/h2;

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_0
    sget-object v2, LC1/h2;->c:LC1/h2;

    .line 164
    .line 165
    :goto_0
    invoke-static {v8, v2, v1}, LC1/R0;->c(Lcom/minhub/gamehub/hub/GameDetailActivity;LC1/h2;Lcom/minhub/gamehub/data/Save;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :catch_0
    :try_start_1
    invoke-static {v8}, LC1/R0;->b(Lcom/minhub/gamehub/hub/GameDetailActivity;)Z

    .line 170
    .line 171
    .line 172
    sget-object v2, LC1/h2;->c:LC1/h2;

    .line 173
    .line 174
    invoke-static {v8, v2, v1}, LC1/R0;->c(Lcom/minhub/gamehub/hub/GameDetailActivity;LC1/h2;Lcom/minhub/gamehub/data/Save;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :catch_1
    invoke-static {v8}, LC1/R0;->b(Lcom/minhub/gamehub/hub/GameDetailActivity;)Z

    .line 179
    .line 180
    .line 181
    sget-object v2, LC1/h2;->d:LC1/h2;

    .line 182
    .line 183
    invoke-static {v8, v2, v1}, LC1/R0;->c(Lcom/minhub/gamehub/hub/GameDetailActivity;LC1/h2;Lcom/minhub/gamehub/data/Save;)V

    .line 184
    .line 185
    .line 186
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 187
    .line 188
    return-object v1

    .line 189
    :pswitch_2
    move-object/from16 v1, p1

    .line 190
    .line 191
    check-cast v1, LC1/c2;

    .line 192
    .line 193
    const-string v6, "plugin"

    .line 194
    .line 195
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v8}, LS1/d;->p(Landroid/content/Context;)Z

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    sget-object v10, LC1/X0;->a:Li1/l;

    .line 203
    .line 204
    if-nez v9, :cond_1

    .line 205
    .line 206
    invoke-static {v8}, Lcom/bumptech/glide/c;->V(Lcom/minhub/gamehub/hub/GameDetailActivity;)V

    .line 207
    .line 208
    .line 209
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 210
    .line 211
    goto/16 :goto_15

    .line 212
    .line 213
    :cond_1
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v8}, LS1/d;->p(Landroid/content/Context;)Z

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-nez v4, :cond_2

    .line 224
    .line 225
    invoke-static {v8}, Lcom/bumptech/glide/c;->V(Lcom/minhub/gamehub/hub/GameDetailActivity;)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_14

    .line 229
    .line 230
    :cond_2
    new-instance v4, LH0/o;

    .line 231
    .line 232
    invoke-direct {v4, v8}, LH0/o;-><init>(Landroid/content/Context;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    const v9, 0x7f0c00b1

    .line 240
    .line 241
    .line 242
    invoke-virtual {v6, v9, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    const v9, 0x7f09037b

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    check-cast v9, Landroid/widget/TextView;

    .line 254
    .line 255
    const v10, 0x7f09037a

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    check-cast v10, Landroid/widget/TextView;

    .line 263
    .line 264
    const v11, 0x7f090113

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    check-cast v11, Landroid/widget/LinearLayout;

    .line 272
    .line 273
    const v12, 0x7f09007c

    .line 274
    .line 275
    .line 276
    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    const v13, 0x7f0900d8

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 284
    .line 285
    .line 286
    move-result-object v13

    .line 287
    const v14, 0x7f12013a

    .line 288
    .line 289
    .line 290
    invoke-virtual {v8, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v14

    .line 294
    iget-object v15, v1, LC1/c2;->a:Ljava/lang/String;

    .line 295
    .line 296
    iget-object v2, v1, LC1/c2;->d:Ljava/util/LinkedHashMap;

    .line 297
    .line 298
    new-instance v7, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v14, ": "

    .line 307
    .line 308
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .line 320
    .line 321
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    const/16 v9, 0x8

    .line 329
    .line 330
    if-eqz v7, :cond_3

    .line 331
    .line 332
    move v7, v3

    .line 333
    goto :goto_2

    .line 334
    :cond_3
    move v7, v9

    .line 335
    :goto_2
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 336
    .line 337
    .line 338
    sget-object v7, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser;->INSTANCE:Lcom/minhub/gamehub/data/RpgMakerPluginParamParser;

    .line 339
    .line 340
    iget-object v10, v8, Lcom/minhub/gamehub/hub/GameDetailActivity;->q:LC1/X1;

    .line 341
    .line 342
    if-eqz v10, :cond_4

    .line 343
    .line 344
    iget-object v10, v10, LC1/X1;->b:Ljava/io/File;

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_4
    const/4 v10, 0x0

    .line 348
    :goto_3
    iget-object v14, v1, LC1/c2;->a:Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {v7, v10, v14}, Lcom/minhub/gamehub/data/RpgMakerPluginParamParser;->specsForPlugin(Ljava/io/File;Ljava/lang/String;)Ljava/util/Map;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 355
    .line 356
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    .line 369
    .line 370
    move-result v14

    .line 371
    if-eqz v14, :cond_14

    .line 372
    .line 373
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v14

    .line 377
    check-cast v14, Ljava/util/Map$Entry;

    .line 378
    .line 379
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v16

    .line 383
    move-object/from16 v3, v16

    .line 384
    .line 385
    check-cast v3, Ljava/lang/String;

    .line 386
    .line 387
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v14

    .line 391
    check-cast v14, Ljava/lang/String;

    .line 392
    .line 393
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v16

    .line 400
    check-cast v16, Lcom/minhub/gamehub/data/PluginParamSpec;

    .line 401
    .line 402
    new-instance v15, Landroid/widget/LinearLayout;

    .line 403
    .line 404
    invoke-direct {v15, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 408
    .line 409
    .line 410
    const/16 v5, 0xe

    .line 411
    .line 412
    invoke-static {v8, v5}, Lcom/bumptech/glide/c;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;I)I

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    move-object/from16 v17, v2

    .line 417
    .line 418
    invoke-static {v8, v9}, Lcom/bumptech/glide/c;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;I)I

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    invoke-static {v8, v5}, Lcom/bumptech/glide/c;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;I)I

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    move-object/from16 v18, v7

    .line 427
    .line 428
    invoke-static {v8, v9}, Lcom/bumptech/glide/c;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;I)I

    .line 429
    .line 430
    .line 431
    move-result v7

    .line 432
    invoke-virtual {v15, v0, v2, v5, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 433
    .line 434
    .line 435
    new-instance v0, Landroid/widget/TextView;

    .line 436
    .line 437
    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 438
    .line 439
    .line 440
    if-eqz v16, :cond_5

    .line 441
    .line 442
    invoke-virtual/range {v16 .. v16}, Lcom/minhub/gamehub/data/PluginParamSpec;->getText()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    if-eqz v2, :cond_5

    .line 447
    .line 448
    goto :goto_5

    .line 449
    :cond_5
    move-object v2, v3

    .line 450
    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    .line 452
    .line 453
    const v2, -0xa0806

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 457
    .line 458
    .line 459
    const/high16 v2, 0x41500000    # 13.0f

    .line 460
    .line 461
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 465
    .line 466
    .line 467
    if-eqz v16, :cond_6

    .line 468
    .line 469
    invoke-virtual/range {v16 .. v16}, Lcom/minhub/gamehub/data/PluginParamSpec;->getDesc()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    goto :goto_6

    .line 474
    :cond_6
    const/4 v0, 0x0

    .line 475
    :goto_6
    if-eqz v0, :cond_8

    .line 476
    .line 477
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    if-eqz v0, :cond_7

    .line 482
    .line 483
    goto :goto_7

    .line 484
    :cond_7
    new-instance v0, Landroid/widget/TextView;

    .line 485
    .line 486
    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 487
    .line 488
    .line 489
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual/range {v16 .. v16}, Lcom/minhub/gamehub/data/PluginParamSpec;->getDesc()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    .line 498
    .line 499
    const v2, -0x66000001

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 503
    .line 504
    .line 505
    const/high16 v2, 0x41300000    # 11.0f

    .line 506
    .line 507
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 511
    .line 512
    .line 513
    :cond_8
    :goto_7
    if-eqz v16, :cond_9

    .line 514
    .line 515
    invoke-virtual/range {v16 .. v16}, Lcom/minhub/gamehub/data/PluginParamSpec;->getType()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    goto :goto_8

    .line 520
    :cond_9
    const/4 v0, 0x0

    .line 521
    :goto_8
    if-eqz v0, :cond_a

    .line 522
    .line 523
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    const v5, 0x1090009

    .line 528
    .line 529
    .line 530
    sparse-switch v2, :sswitch_data_0

    .line 531
    .line 532
    .line 533
    :cond_a
    :goto_9
    const/4 v5, 0x0

    .line 534
    :goto_a
    const/4 v9, 0x3

    .line 535
    goto/16 :goto_12

    .line 536
    .line 537
    :sswitch_0
    const-string v2, "combo"

    .line 538
    .line 539
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-nez v0, :cond_d

    .line 544
    .line 545
    goto :goto_9

    .line 546
    :sswitch_1
    const-string v2, "boolean"

    .line 547
    .line 548
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    if-nez v0, :cond_b

    .line 553
    .line 554
    goto :goto_9

    .line 555
    :cond_b
    new-instance v0, Landroid/widget/Spinner;

    .line 556
    .line 557
    invoke-direct {v0, v8}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 558
    .line 559
    .line 560
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 561
    .line 562
    invoke-virtual/range {v16 .. v16}, Lcom/minhub/gamehub/data/PluginParamSpec;->getOnText()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v7

    .line 566
    invoke-virtual/range {v16 .. v16}, Lcom/minhub/gamehub/data/PluginParamSpec;->getOffText()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v9

    .line 570
    filled-new-array {v7, v9}, [Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v7

    .line 574
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 575
    .line 576
    .line 577
    move-result-object v7

    .line 578
    invoke-direct {v2, v8, v5, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 582
    .line 583
    .line 584
    invoke-static {v14}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    const-string v5, "true"

    .line 593
    .line 594
    const/4 v7, 0x1

    .line 595
    invoke-static {v2, v5, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    xor-int/2addr v2, v7

    .line 600
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 604
    .line 605
    .line 606
    new-instance v2, LA1/n;

    .line 607
    .line 608
    const/4 v5, 0x2

    .line 609
    invoke-direct {v2, v5, v0}, LA1/n;-><init>(ILjava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    const/4 v5, 0x0

    .line 613
    :goto_b
    const/4 v7, 0x1

    .line 614
    goto/16 :goto_13

    .line 615
    .line 616
    :sswitch_2
    const-string v2, "note"

    .line 617
    .line 618
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    if-nez v0, :cond_c

    .line 623
    .line 624
    goto :goto_9

    .line 625
    :cond_c
    const/4 v5, 0x0

    .line 626
    goto/16 :goto_11

    .line 627
    .line 628
    :sswitch_3
    const-string v2, "select"

    .line 629
    .line 630
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    if-nez v0, :cond_d

    .line 635
    .line 636
    goto :goto_9

    .line 637
    :cond_d
    invoke-virtual/range {v16 .. v16}, Lcom/minhub/gamehub/data/PluginParamSpec;->getOptions()Ljava/util/List;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 642
    .line 643
    .line 644
    move-result v2

    .line 645
    if-eqz v2, :cond_e

    .line 646
    .line 647
    new-instance v0, Lcom/minhub/gamehub/data/PluginParamOption;

    .line 648
    .line 649
    invoke-direct {v0, v14, v14}, Lcom/minhub/gamehub/data/PluginParamOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    :cond_e
    new-instance v2, Landroid/widget/Spinner;

    .line 657
    .line 658
    invoke-direct {v2, v8}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 659
    .line 660
    .line 661
    new-instance v7, Ljava/util/ArrayList;

    .line 662
    .line 663
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 664
    .line 665
    .line 666
    move-result v9

    .line 667
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 668
    .line 669
    .line 670
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 671
    .line 672
    .line 673
    move-result-object v9

    .line 674
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 675
    .line 676
    .line 677
    move-result v16

    .line 678
    if-eqz v16, :cond_f

    .line 679
    .line 680
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v16

    .line 684
    check-cast v16, Lcom/minhub/gamehub/data/PluginParamOption;

    .line 685
    .line 686
    invoke-virtual/range {v16 .. v16}, Lcom/minhub/gamehub/data/PluginParamOption;->getLabel()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v5

    .line 690
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    const v5, 0x1090009

    .line 694
    .line 695
    .line 696
    goto :goto_c

    .line 697
    :cond_f
    new-instance v5, Landroid/widget/ArrayAdapter;

    .line 698
    .line 699
    const v9, 0x1090009

    .line 700
    .line 701
    .line 702
    invoke-direct {v5, v8, v9, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 706
    .line 707
    .line 708
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 709
    .line 710
    .line 711
    move-result-object v5

    .line 712
    const/4 v7, 0x0

    .line 713
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 714
    .line 715
    .line 716
    move-result v9

    .line 717
    if-eqz v9, :cond_11

    .line 718
    .line 719
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v9

    .line 723
    check-cast v9, Lcom/minhub/gamehub/data/PluginParamOption;

    .line 724
    .line 725
    invoke-virtual {v9}, Lcom/minhub/gamehub/data/PluginParamOption;->getValue()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v9

    .line 729
    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 730
    .line 731
    .line 732
    move-result v9

    .line 733
    if-eqz v9, :cond_10

    .line 734
    .line 735
    :goto_e
    const/4 v5, 0x0

    .line 736
    goto :goto_f

    .line 737
    :cond_10
    add-int/lit8 v7, v7, 0x1

    .line 738
    .line 739
    goto :goto_d

    .line 740
    :cond_11
    const/4 v7, -0x1

    .line 741
    goto :goto_e

    .line 742
    :goto_f
    invoke-static {v7, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 743
    .line 744
    .line 745
    move-result v7

    .line 746
    invoke-virtual {v2, v7}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 750
    .line 751
    .line 752
    new-instance v7, LA1/G0;

    .line 753
    .line 754
    const/4 v9, 0x3

    .line 755
    invoke-direct {v7, v9, v0, v2}, LA1/G0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 756
    .line 757
    .line 758
    move-object v2, v7

    .line 759
    goto/16 :goto_b

    .line 760
    .line 761
    :sswitch_4
    const/4 v5, 0x0

    .line 762
    const-string v2, "number"

    .line 763
    .line 764
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    move-result v0

    .line 768
    if-nez v0, :cond_12

    .line 769
    .line 770
    :goto_10
    goto/16 :goto_a

    .line 771
    .line 772
    :cond_12
    new-instance v0, Landroid/widget/EditText;

    .line 773
    .line 774
    invoke-direct {v0, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    .line 779
    .line 780
    const/16 v2, 0x3002

    .line 781
    .line 782
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 786
    .line 787
    .line 788
    new-instance v2, LA1/n;

    .line 789
    .line 790
    const/4 v9, 0x3

    .line 791
    invoke-direct {v2, v9, v0}, LA1/n;-><init>(ILjava/lang/Object;)V

    .line 792
    .line 793
    .line 794
    goto/16 :goto_b

    .line 795
    .line 796
    :sswitch_5
    const/4 v5, 0x0

    .line 797
    const-string v2, "multiline_string"

    .line 798
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    move-result v0

    .line 803
    if-nez v0, :cond_13

    .line 804
    .line 805
    goto :goto_10

    .line 806
    :cond_13
    :goto_11
    new-instance v0, Landroid/widget/EditText;

    .line 807
    .line 808
    invoke-direct {v0, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    .line 813
    .line 814
    const v2, 0x20001

    .line 815
    .line 816
    .line 817
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 818
    .line 819
    .line 820
    const/4 v2, 0x2

    .line 821
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinLines(I)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 825
    .line 826
    .line 827
    new-instance v2, LA1/n;

    .line 828
    .line 829
    const/4 v9, 0x3

    .line 830
    invoke-direct {v2, v9, v0}, LA1/n;-><init>(ILjava/lang/Object;)V

    .line 831
    .line 832
    .line 833
    goto/16 :goto_b

    .line 834
    .line 835
    :goto_12
    new-instance v0, Landroid/widget/EditText;

    .line 836
    .line 837
    invoke-direct {v0, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    .line 842
    .line 843
    const/4 v7, 0x1

    .line 844
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 848
    .line 849
    .line 850
    new-instance v2, LA1/n;

    .line 851
    .line 852
    invoke-direct {v2, v9, v0}, LA1/n;-><init>(ILjava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    :goto_13
    invoke-virtual {v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 856
    .line 857
    .line 858
    invoke-interface {v10, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-object/from16 v0, p0

    .line 862
    .line 863
    move v3, v5

    .line 864
    move v5, v7

    .line 865
    move-object/from16 v2, v17

    .line 866
    .line 867
    move-object/from16 v7, v18

    .line 868
    .line 869
    const/16 v9, 0x8

    .line 870
    .line 871
    goto/16 :goto_4

    .line 872
    .line 873
    :cond_14
    new-instance v0, LC1/v;

    .line 874
    .line 875
    const/4 v2, 0x2

    .line 876
    invoke-direct {v0, v4, v2}, LC1/v;-><init>(LH0/o;I)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    .line 881
    .line 882
    new-instance v0, LC1/G0;

    .line 883
    .line 884
    invoke-direct {v0, v8, v4, v10, v1}, LC1/G0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;LH0/o;Ljava/util/LinkedHashMap;LC1/c2;)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v4, v6}, LH0/o;->setContentView(Landroid/view/View;)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    if-eqz v0, :cond_15

    .line 898
    .line 899
    const v1, 0x106000d

    .line 900
    .line 901
    .line 902
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 903
    .line 904
    .line 905
    :cond_15
    new-instance v0, LC1/L;

    .line 906
    .line 907
    const/4 v2, 0x2

    .line 908
    invoke-direct {v0, v4, v2}, LC1/L;-><init>(LH0/o;I)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 915
    .line 916
    .line 917
    :goto_14
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 918
    .line 919
    :goto_15
    return-object v1

    .line 920
    :pswitch_3
    move-object/from16 v0, p1

    .line 921
    .line 922
    check-cast v0, Ljava/lang/String;

    .line 923
    .line 924
    const-string v1, "pluginName"

    .line 925
    .line 926
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    invoke-static {v8}, LS1/d;->p(Landroid/content/Context;)Z

    .line 930
    .line 931
    .line 932
    move-result v1

    .line 933
    sget-object v2, LC1/X0;->a:Li1/l;

    .line 934
    .line 935
    if-nez v1, :cond_16

    .line 936
    .line 937
    invoke-static {v8}, Lcom/bumptech/glide/c;->V(Lcom/minhub/gamehub/hub/GameDetailActivity;)V

    .line 938
    .line 939
    .line 940
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 941
    .line 942
    goto :goto_16

    .line 943
    :cond_16
    new-instance v1, LA1/H;

    .line 944
    .line 945
    const/4 v9, 0x3

    .line 946
    invoke-direct {v1, v9, v8, v0}, LA1/H;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 947
    .line 948
    .line 949
    invoke-static {v8, v1}, Lcom/bumptech/glide/c;->Z(Lcom/minhub/gamehub/hub/GameDetailActivity;Lkotlin/jvm/functions/Function1;)V

    .line 950
    .line 951
    .line 952
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 953
    .line 954
    :goto_16
    return-object v0

    .line 955
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :sswitch_data_0
    .sparse-switch
        -0x3eb1901d -> :sswitch_5
        -0x3da724b7 -> :sswitch_4
        -0x3600cb04 -> :sswitch_3
        0x33aff2 -> :sswitch_2
        0x3db6c28 -> :sswitch_1
        0x5a7318e -> :sswitch_0
    .end sparse-switch
.end method
