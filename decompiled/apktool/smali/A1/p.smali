.class public final synthetic LA1/p;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LA1/p;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LA1/p;->c:Ljava/lang/Object;

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
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LA1/p;->b:I

    .line 4
    .line 5
    const-string v2, "snapshot"

    .line 6
    .line 7
    const-string v3, "getString(...)"

    .line 8
    .line 9
    const-string v6, "digest(...)"

    .line 10
    .line 11
    const-string v7, "getBytes(...)"

    .line 12
    .line 13
    const-string v8, "SHA-256"

    .line 14
    .line 15
    const-string v9, "input"

    .line 16
    .line 17
    const-string v10, "toString(...)"

    .line 18
    .line 19
    const-string v11, "ui"

    .line 20
    .line 21
    const-string v12, "getApplicationContext(...)"

    .line 22
    .line 23
    const-string v13, "v"

    .line 24
    .line 25
    const-string v14, "m"

    .line 26
    .line 27
    const-string v4, "it"

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    iget-object v15, v0, LA1/p;->c:Ljava/lang/Object;

    .line 31
    .line 32
    packed-switch v1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    check-cast v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 36
    .line 37
    move-object/from16 v1, p1

    .line 38
    .line 39
    check-cast v1, Lkotlin/text/MatchResult;

    .line 40
    .line 41
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v2, Lz1/h;->a:Lkotlin/text/Regex;

    .line 45
    .line 46
    iget-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Ljava/lang/String;

    .line 49
    .line 50
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-static {v3, v2}, Lz1/h;->a(ILjava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-object v1

    .line 83
    :pswitch_0
    check-cast v15, Lcom/minhub/gamehub/game/VxAceGameActivity;

    .line 84
    .line 85
    move-object/from16 v1, p1

    .line 86
    .line 87
    check-cast v1, Lcom/minhub/gamehub/data/Save;

    .line 88
    .line 89
    const-string v2, "save"

    .line 90
    .line 91
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v15}, Ly1/k2;->c(Lcom/minhub/gamehub/game/VxAceGameActivity;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Save;->getSlotNumber()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-static {v1, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    sub-int/2addr v1, v5

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v3, "\n        begin\n          if DataManager.load_game("

    .line 109
    .line 110
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ")\n            Sound.play_load rescue nil\n            $game_system.on_after_load rescue nil\n            SceneManager.goto(Scene_Map) rescue nil\n          else\n            Sound.play_buzzer rescue nil\n          end\n        rescue\n          Sound.play_buzzer rescue nil\n        end\n    "

    .line 117
    .line 118
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v1}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v15, v1}, Lcom/minhub/gamehub/game/VxAceGameActivity;->queueRuntimeScript$app_release(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const v1, 0x7f120251

    .line 133
    .line 134
    .line 135
    invoke-virtual {v15, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const/4 v2, 0x0

    .line 140
    invoke-static {v15, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 145
    .line 146
    .line 147
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 148
    .line 149
    return-object v1

    .line 150
    :pswitch_1
    check-cast v15, LY/a;

    .line 151
    .line 152
    move-object/from16 v1, p1

    .line 153
    .line 154
    check-cast v1, Ljava/lang/String;

    .line 155
    .line 156
    const-string v2, "relativePath"

    .line 157
    .line 158
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v15, v1}, LY/a;->a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    return-object v1

    .line 166
    :pswitch_2
    check-cast v15, Lkotlin/jvm/internal/TypeReference;

    .line 167
    .line 168
    move-object/from16 v1, p1

    .line 169
    .line 170
    check-cast v1, Lkotlin/reflect/KTypeProjection;

    .line 171
    .line 172
    invoke-static {v15, v1}, Lkotlin/jvm/internal/TypeReference;->a(Lkotlin/jvm/internal/TypeReference;Lkotlin/reflect/KTypeProjection;)Ljava/lang/CharSequence;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    return-object v1

    .line 177
    :pswitch_3
    check-cast v15, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;

    .line 178
    .line 179
    move-object/from16 v1, p1

    .line 180
    .line 181
    check-cast v1, Ljava/util/List;

    .line 182
    .line 183
    invoke-static {v15, v1}, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;->a(Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;Ljava/util/List;)Lkotlin/Unit;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    return-object v1

    .line 188
    :pswitch_4
    check-cast v15, Ljava/lang/Throwable;

    .line 189
    .line 190
    move-object/from16 v1, p1

    .line 191
    .line 192
    check-cast v1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 193
    .line 194
    invoke-static {v15, v1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->g(Ljava/lang/Throwable;Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    return-object v1

    .line 199
    :pswitch_5
    check-cast v15, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 200
    .line 201
    move-object/from16 v1, p1

    .line 202
    .line 203
    check-cast v1, Ljava/util/List;

    .line 204
    .line 205
    invoke-static {v15, v1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->f(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;Ljava/util/List;)Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    return-object v1

    .line 210
    :pswitch_6
    check-cast v15, Ljava/util/Set;

    .line 211
    .line 212
    move-object/from16 v1, p1

    .line 213
    .line 214
    check-cast v1, Ljava/io/File;

    .line 215
    .line 216
    invoke-static {v15, v1}, Lcom/minhub/gamehub/data/SaveRepository;->a(Ljava/util/Set;Ljava/io/File;)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    return-object v1

    .line 225
    :pswitch_7
    check-cast v15, LE1/I;

    .line 226
    .line 227
    move-object/from16 v1, p1

    .line 228
    .line 229
    check-cast v1, LR1/a;

    .line 230
    .line 231
    const-string v2, "info"

    .line 232
    .line 233
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-nez v2, :cond_1

    .line 241
    .line 242
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_1
    iget-object v2, v1, LR1/a;->d:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-nez v2, :cond_2

    .line 252
    .line 253
    iget-object v2, v15, LE1/I;->b:Lw1/c;

    .line 254
    .line 255
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    iget-object v2, v2, Lw1/c;->j:Landroid/view/View;

    .line 259
    .line 260
    check-cast v2, Landroid/widget/TextView;

    .line 261
    .line 262
    iget-object v3, v1, LR1/a;->b:Ljava/lang/String;

    .line 263
    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    .line 278
    .line 279
    iget-object v2, v15, LE1/I;->b:Lw1/c;

    .line 280
    .line 281
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    iget-object v2, v2, Lw1/c;->i:Landroid/view/View;

    .line 285
    .line 286
    check-cast v2, Landroid/widget/TextView;

    .line 287
    .line 288
    iget-object v1, v1, LR1/a;->d:Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    .line 292
    .line 293
    iget-object v1, v15, LE1/I;->b:Lw1/c;

    .line 294
    .line 295
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v1, Lw1/c;->g:Landroid/view/View;

    .line 299
    .line 300
    check-cast v1, Landroid/widget/LinearLayout;

    .line 301
    .line 302
    const/4 v2, 0x0

    .line 303
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    .line 305
    .line 306
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 307
    .line 308
    :goto_1
    return-object v1

    .line 309
    :pswitch_8
    check-cast v15, Lcom/minhub/gamehub/hub/SetupAppLockActivity;

    .line 310
    .line 311
    move-object/from16 v1, p1

    .line 312
    .line 313
    check-cast v1, Ljava/lang/String;

    .line 314
    .line 315
    sget v2, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->j:I

    .line 316
    .line 317
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object v2, v15, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->g:Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    const/4 v14, 0x4

    .line 327
    if-lt v4, v14, :cond_3

    .line 328
    .line 329
    goto/16 :goto_3

    .line 330
    .line 331
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v15}, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->n()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-ne v1, v14, :cond_9

    .line 342
    .line 343
    iget-boolean v1, v15, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->i:Z

    .line 344
    .line 345
    if-nez v1, :cond_5

    .line 346
    .line 347
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    iput-object v1, v15, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->h:Ljava/lang/String;

    .line 352
    .line 353
    iput-boolean v5, v15, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->i:Z

    .line 354
    .line 355
    iget-object v1, v15, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->f:LC1/V1;

    .line 356
    .line 357
    if-nez v1, :cond_4

    .line 358
    .line 359
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    const/4 v1, 0x0

    .line 363
    :cond_4
    invoke-virtual {v15}, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->m()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    new-instance v3, LC1/i2;

    .line 368
    .line 369
    const/4 v4, 0x2

    .line 370
    invoke-direct {v3, v15, v4}, LC1/i2;-><init>(Lcom/minhub/gamehub/hub/SetupAppLockActivity;I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    const-string v6, "newTitle"

    .line 377
    .line 378
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    const-string v6, "apply"

    .line 382
    .line 383
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    iput-boolean v5, v1, LC1/V1;->f:Z

    .line 387
    .line 388
    iget-object v5, v1, LC1/V1;->b:Landroid/widget/LinearLayout;

    .line 389
    .line 390
    new-instance v6, LC1/A1;

    .line 391
    .line 392
    invoke-direct {v6, v3, v1, v2, v4}, LC1/A1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 393
    .line 394
    .line 395
    const-wide/16 v1, 0xc8

    .line 396
    .line 397
    invoke-virtual {v5, v6, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 398
    .line 399
    .line 400
    goto/16 :goto_3

    .line 401
    .line 402
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    iget-object v4, v15, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->h:Ljava/lang/String;

    .line 407
    .line 408
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-eqz v1, :cond_7

    .line 413
    .line 414
    sget-object v1, LS1/d;->a:Ljava/util/Set;

    .line 415
    .line 416
    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 438
    .line 439
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    new-instance v3, LA1/e;

    .line 454
    .line 455
    const/16 v4, 0xf

    .line 456
    .line 457
    invoke-direct {v3, v4}, LA1/e;-><init>(I)V

    .line 458
    .line 459
    .line 460
    const/16 v25, 0x1e

    .line 461
    .line 462
    const-string v20, ""

    .line 463
    .line 464
    const/16 v21, 0x0

    .line 465
    .line 466
    const/16 v22, 0x0

    .line 467
    .line 468
    const/16 v23, 0x0

    .line 469
    .line 470
    move-object/from16 v19, v2

    .line 471
    .line 472
    move-object/from16 v24, v3

    .line 473
    .line 474
    invoke-static/range {v19 .. v25}, Lkotlin/collections/ArraysKt;->u([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    const-string v3, "<this>"

    .line 479
    .line 480
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-static {v1}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    const-string v3, "app_lock_pin_hash"

    .line 495
    .line 496
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-static {v1, v5}, LS1/d;->v(Landroid/content/Context;Z)V

    .line 511
    .line 512
    .line 513
    const/4 v1, -0x1

    .line 514
    invoke-virtual {v15, v1}, Landroid/app/Activity;->setResult(I)V

    .line 515
    .line 516
    .line 517
    iget-object v1, v15, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->f:LC1/V1;

    .line 518
    .line 519
    if-nez v1, :cond_6

    .line 520
    .line 521
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    const/4 v1, 0x0

    .line 525
    :cond_6
    new-instance v2, LC1/i2;

    .line 526
    .line 527
    const/4 v3, 0x3

    .line 528
    invoke-direct {v2, v15, v3}, LC1/i2;-><init>(Lcom/minhub/gamehub/hub/SetupAppLockActivity;I)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v1, v2}, LC1/V1;->g(Lkotlin/jvm/functions/Function0;)V

    .line 532
    .line 533
    .line 534
    goto :goto_3

    .line 535
    :cond_7
    const/4 v1, 0x0

    .line 536
    iput-object v1, v15, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->h:Ljava/lang/String;

    .line 537
    .line 538
    const/4 v2, 0x0

    .line 539
    iput-boolean v2, v15, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->i:Z

    .line 540
    .line 541
    iget-object v2, v15, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->f:LC1/V1;

    .line 542
    .line 543
    if-nez v2, :cond_8

    .line 544
    .line 545
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    goto :goto_2

    .line 549
    :cond_8
    move-object v1, v2

    .line 550
    :goto_2
    const v2, 0x7f120031

    .line 551
    .line 552
    .line 553
    invoke-virtual {v15, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    new-instance v3, LC1/i2;

    .line 561
    .line 562
    const/4 v14, 0x4

    .line 563
    invoke-direct {v3, v15, v14}, LC1/i2;-><init>(Lcom/minhub/gamehub/hub/SetupAppLockActivity;I)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v1, v2, v3}, LC1/V1;->d(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 567
    .line 568
    .line 569
    :cond_9
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 570
    .line 571
    return-object v1

    .line 572
    :pswitch_9
    const/4 v2, 0x0

    .line 573
    check-cast v15, LC1/d2;

    .line 574
    .line 575
    move-object/from16 v1, p1

    .line 576
    .line 577
    check-cast v1, Ljava/util/List;

    .line 578
    .line 579
    iget-object v3, v15, LC1/d2;->b:Lw1/h;

    .line 580
    .line 581
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    iget-object v3, v3, Lw1/h;->e:Landroid/widget/TextView;

    .line 585
    .line 586
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 587
    .line 588
    .line 589
    move-result v4

    .line 590
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    .line 596
    .line 597
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 598
    .line 599
    .line 600
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    move v4, v2

    .line 605
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    if-eqz v5, :cond_a

    .line 610
    .line 611
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v5

    .line 615
    check-cast v5, Lcom/minhub/gamehub/data/Game;

    .line 616
    .line 617
    invoke-virtual {v5}, Lcom/minhub/gamehub/data/Game;->getPlaytimeMinutes()I

    .line 618
    .line 619
    .line 620
    move-result v5

    .line 621
    add-int/2addr v4, v5

    .line 622
    goto :goto_4

    .line 623
    :cond_a
    div-int/lit8 v3, v4, 0x3c

    .line 624
    .line 625
    rem-int/lit8 v4, v4, 0x3c

    .line 626
    .line 627
    iget-object v5, v15, LC1/d2;->b:Lw1/h;

    .line 628
    .line 629
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 630
    .line 631
    .line 632
    iget-object v5, v5, Lw1/h;->d:Landroid/widget/TextView;

    .line 633
    .line 634
    if-nez v4, :cond_b

    .line 635
    .line 636
    new-instance v4, Ljava/lang/StringBuilder;

    .line 637
    .line 638
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    const-string v3, "h"

    .line 645
    .line 646
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    goto :goto_5

    .line 654
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    .line 655
    .line 656
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    const-string v3, "h "

    .line 663
    .line 664
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    :goto_5
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    .line 679
    .line 680
    iget-object v3, v15, LC1/d2;->b:Lw1/h;

    .line 681
    .line 682
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 683
    .line 684
    .line 685
    iget-object v3, v3, Lw1/h;->h:Landroid/widget/TextView;

    .line 686
    .line 687
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 688
    .line 689
    .line 690
    move-result-object v4

    .line 691
    move v5, v2

    .line 692
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 693
    .line 694
    .line 695
    move-result v6

    .line 696
    if-eqz v6, :cond_c

    .line 697
    .line 698
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v6

    .line 702
    check-cast v6, Lcom/minhub/gamehub/data/Game;

    .line 703
    .line 704
    invoke-virtual {v6}, Lcom/minhub/gamehub/data/Game;->getSaveCount()I

    .line 705
    .line 706
    .line 707
    move-result v6

    .line 708
    add-int/2addr v5, v6

    .line 709
    goto :goto_6

    .line 710
    :cond_c
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v4

    .line 714
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    .line 716
    .line 717
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    move v3, v2

    .line 722
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 723
    .line 724
    .line 725
    move-result v4

    .line 726
    if-eqz v4, :cond_f

    .line 727
    .line 728
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v4

    .line 732
    check-cast v4, Lcom/minhub/gamehub/data/Game;

    .line 733
    .line 734
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getPluginsJson()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v5

    .line 738
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 739
    .line 740
    .line 741
    move-result v5

    .line 742
    if-nez v5, :cond_e

    .line 743
    .line 744
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getPluginsJson()Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v5

    .line 748
    const-string v6, "[]"

    .line 749
    .line 750
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v5

    .line 754
    if-eqz v5, :cond_d

    .line 755
    .line 756
    goto :goto_8

    .line 757
    :cond_d
    :try_start_0
    new-instance v5, Li1/l;

    .line 758
    .line 759
    invoke-direct {v5}, Li1/l;-><init>()V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getPluginsJson()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v4

    .line 766
    const-class v6, [Ljava/lang/String;

    .line 767
    .line 768
    invoke-virtual {v5, v4, v6}, Li1/l;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v4

    .line 772
    check-cast v4, [Ljava/lang/Object;

    .line 773
    .line 774
    array-length v4, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    goto :goto_9

    .line 776
    :catch_0
    :cond_e
    :goto_8
    move v4, v2

    .line 777
    :goto_9
    add-int/2addr v3, v4

    .line 778
    goto :goto_7

    .line 779
    :cond_f
    iget-object v1, v15, LC1/d2;->b:Lw1/h;

    .line 780
    .line 781
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 782
    .line 783
    .line 784
    iget-object v1, v1, Lw1/h;->g:Landroid/widget/TextView;

    .line 785
    .line 786
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v2

    .line 790
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    .line 792
    .line 793
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 794
    .line 795
    return-object v1

    .line 796
    :pswitch_a
    check-cast v15, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 797
    .line 798
    move-object/from16 v1, p1

    .line 799
    .line 800
    check-cast v1, Ljava/util/List;

    .line 801
    .line 802
    sget v2, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->i:I

    .line 803
    .line 804
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    new-instance v1, LC1/g1;

    .line 808
    .line 809
    const/4 v4, 0x2

    .line 810
    invoke-direct {v1, v4, v15}, LC1/g1;-><init>(ILjava/lang/Object;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v15, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 814
    .line 815
    .line 816
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 817
    .line 818
    return-object v1

    .line 819
    :pswitch_b
    check-cast v15, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;

    .line 820
    .line 821
    move-object/from16 v1, p1

    .line 822
    .line 823
    check-cast v1, Ljava/util/List;

    .line 824
    .line 825
    sget v2, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;->h:I

    .line 826
    .line 827
    const-string v2, "jobs"

    .line 828
    .line 829
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    new-instance v2, LC1/k;

    .line 833
    .line 834
    const/4 v14, 0x4

    .line 835
    invoke-direct {v2, v14, v15, v1}, LC1/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v15, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 839
    .line 840
    .line 841
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 842
    .line 843
    return-object v1

    .line 844
    :pswitch_c
    check-cast v15, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;

    .line 845
    .line 846
    move-object/from16 v1, p1

    .line 847
    .line 848
    check-cast v1, LD1/h;

    .line 849
    .line 850
    sget v3, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->o:I

    .line 851
    .line 852
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    iget-object v2, v15, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->e:Landroid/os/Handler;

    .line 856
    .line 857
    new-instance v3, LC1/k;

    .line 858
    .line 859
    const/4 v4, 0x2

    .line 860
    invoke-direct {v3, v4, v15, v1}, LC1/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 864
    .line 865
    .line 866
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 867
    .line 868
    return-object v1

    .line 869
    :pswitch_d
    check-cast v15, Lcom/minhub/gamehub/hub/HubActivity;

    .line 870
    .line 871
    move-object/from16 v1, p1

    .line 872
    .line 873
    check-cast v1, LR1/a;

    .line 874
    .line 875
    sget v2, Lcom/minhub/gamehub/hub/HubActivity;->j:I

    .line 876
    .line 877
    if-eqz v1, :cond_10

    .line 878
    .line 879
    invoke-virtual {v15}, Landroid/app/Activity;->isFinishing()Z

    .line 880
    .line 881
    .line 882
    move-result v2

    .line 883
    if-nez v2, :cond_10

    .line 884
    .line 885
    invoke-virtual {v15}, Landroid/app/Activity;->isDestroyed()Z

    .line 886
    .line 887
    .line 888
    move-result v2

    .line 889
    if-nez v2, :cond_10

    .line 890
    .line 891
    invoke-static {v15, v1}, La/a;->M(Landroid/content/Context;LR1/a;)V

    .line 892
    .line 893
    .line 894
    :cond_10
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 895
    .line 896
    return-object v1

    .line 897
    :pswitch_e
    const/4 v1, 0x0

    .line 898
    check-cast v15, Lcom/minhub/gamehub/hub/AppLockActivity;

    .line 899
    .line 900
    move-object/from16 v2, p1

    .line 901
    .line 902
    check-cast v2, Ljava/lang/String;

    .line 903
    .line 904
    sget v5, Lcom/minhub/gamehub/hub/AppLockActivity;->i:I

    .line 905
    .line 906
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    iget-object v4, v15, Lcom/minhub/gamehub/hub/AppLockActivity;->g:Ljava/lang/StringBuilder;

    .line 910
    .line 911
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 912
    .line 913
    .line 914
    move-result v5

    .line 915
    const/4 v14, 0x4

    .line 916
    if-lt v5, v14, :cond_11

    .line 917
    .line 918
    goto/16 :goto_c

    .line 919
    .line 920
    :cond_11
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v15}, Lcom/minhub/gamehub/hub/AppLockActivity;->o()V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 927
    .line 928
    .line 929
    move-result v2

    .line 930
    if-ne v2, v14, :cond_15

    .line 931
    .line 932
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v2

    .line 936
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 943
    .line 944
    .line 945
    move-result-object v4

    .line 946
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 947
    .line 948
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 949
    .line 950
    .line 951
    move-result-object v2

    .line 952
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 956
    .line 957
    .line 958
    move-result-object v2

    .line 959
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    new-instance v4, LA1/e;

    .line 963
    .line 964
    const/16 v5, 0xf

    .line 965
    .line 966
    invoke-direct {v4, v5}, LA1/e;-><init>(I)V

    .line 967
    .line 968
    .line 969
    const/16 v27, 0x1e

    .line 970
    .line 971
    const-string v22, ""

    .line 972
    .line 973
    const/16 v23, 0x0

    .line 974
    .line 975
    const/16 v24, 0x0

    .line 976
    .line 977
    const/16 v25, 0x0

    .line 978
    .line 979
    move-object/from16 v21, v2

    .line 980
    .line 981
    move-object/from16 v26, v4

    .line 982
    .line 983
    invoke-static/range {v21 .. v27}, Lkotlin/collections/ArraysKt;->u([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v2

    .line 987
    sget-object v4, LS1/d;->a:Ljava/util/Set;

    .line 988
    .line 989
    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 990
    .line 991
    .line 992
    move-result-object v4

    .line 993
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 994
    .line 995
    .line 996
    invoke-static {v4}, LS1/d;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v4

    .line 1000
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v2

    .line 1004
    if-eqz v2, :cond_13

    .line 1005
    .line 1006
    iget-object v2, v15, Lcom/minhub/gamehub/hub/AppLockActivity;->f:LC1/V1;

    .line 1007
    .line 1008
    if-nez v2, :cond_12

    .line 1009
    .line 1010
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1011
    .line 1012
    .line 1013
    goto :goto_a

    .line 1014
    :cond_12
    move-object v1, v2

    .line 1015
    :goto_a
    new-instance v2, LC1/W;

    .line 1016
    .line 1017
    const/4 v4, 0x2

    .line 1018
    invoke-direct {v2, v15, v4}, LC1/W;-><init>(Lcom/minhub/gamehub/hub/AppLockActivity;I)V

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v1, v2}, LC1/V1;->g(Lkotlin/jvm/functions/Function0;)V

    .line 1022
    .line 1023
    .line 1024
    goto :goto_c

    .line 1025
    :cond_13
    iget-object v2, v15, Lcom/minhub/gamehub/hub/AppLockActivity;->f:LC1/V1;

    .line 1026
    .line 1027
    if-nez v2, :cond_14

    .line 1028
    .line 1029
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1030
    .line 1031
    .line 1032
    goto :goto_b

    .line 1033
    :cond_14
    move-object v1, v2

    .line 1034
    :goto_b
    const v2, 0x7f120035

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v15, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v2

    .line 1041
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    new-instance v3, LC1/W;

    .line 1045
    .line 1046
    const/4 v4, 0x3

    .line 1047
    invoke-direct {v3, v15, v4}, LC1/W;-><init>(Lcom/minhub/gamehub/hub/AppLockActivity;I)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v1, v2, v3}, LC1/V1;->d(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1051
    .line 1052
    .line 1053
    :cond_15
    :goto_c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1054
    .line 1055
    return-object v1

    .line 1056
    :pswitch_f
    check-cast v15, LB1/z;

    .line 1057
    .line 1058
    move-object/from16 v1, p1

    .line 1059
    .line 1060
    check-cast v1, LB1/B;

    .line 1061
    .line 1062
    const-string v2, "preset"

    .line 1063
    .line 1064
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    iget-object v2, v1, LB1/B;->a:Ljava/lang/String;

    .line 1068
    .line 1069
    invoke-static {v2}, LB1/z;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v2

    .line 1073
    iget-object v1, v1, LB1/B;->b:Ljava/util/LinkedHashMap;

    .line 1074
    .line 1075
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v3

    .line 1079
    new-instance v7, LA1/e;

    .line 1080
    .line 1081
    invoke-direct {v7, v15}, LA1/e;-><init>(LB1/z;)V

    .line 1082
    .line 1083
    .line 1084
    const/16 v8, 0x18

    .line 1085
    .line 1086
    const-string v4, ","

    .line 1087
    .line 1088
    const-string v5, "{"

    .line 1089
    .line 1090
    const-string v6, "}"

    .line 1091
    .line 1092
    invoke-static/range {v3 .. v8}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v1

    .line 1096
    const-string v3, "\",\"mapping\":"

    .line 1097
    .line 1098
    const-string v4, "}"

    .line 1099
    .line 1100
    const-string v5, "{\"name\":\""

    .line 1101
    .line 1102
    invoke-static {v5, v2, v3, v1, v4}, LE/b;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v1

    .line 1106
    return-object v1

    .line 1107
    :pswitch_10
    check-cast v15, Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 1108
    .line 1109
    move-object/from16 v1, p1

    .line 1110
    .line 1111
    check-cast v1, LB1/n;

    .line 1112
    .line 1113
    sget v2, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->h:I

    .line 1114
    .line 1115
    const-string v2, "dir"

    .line 1116
    .line 1117
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v15, v1}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->c(LB1/n;)V

    .line 1121
    .line 1122
    .line 1123
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1124
    .line 1125
    return-object v1

    .line 1126
    :pswitch_11
    const/4 v2, 0x0

    .line 1127
    check-cast v15, LA1/e0;

    .line 1128
    .line 1129
    move-object/from16 v6, p1

    .line 1130
    .line 1131
    check-cast v6, LA1/a0;

    .line 1132
    .line 1133
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    .line 1135
    .line 1136
    new-instance v16, LA1/o0;

    .line 1137
    .line 1138
    iget-object v1, v15, LA1/e0;->a:Ljava/lang/String;

    .line 1139
    .line 1140
    iget v3, v15, LA1/e0;->b:I

    .line 1141
    .line 1142
    iget-object v4, v15, LA1/e0;->c:Ljava/lang/String;

    .line 1143
    .line 1144
    iget-object v7, v15, LA1/e0;->d:Ljava/lang/String;

    .line 1145
    .line 1146
    iget-wide v8, v15, LA1/e0;->f:J

    .line 1147
    .line 1148
    iget-object v10, v6, LA1/a0;->d:LA1/o0;

    .line 1149
    .line 1150
    if-eqz v10, :cond_16

    .line 1151
    .line 1152
    iget v2, v10, LA1/o0;->f:I

    .line 1153
    .line 1154
    :cond_16
    add-int/lit8 v23, v2, 0x1

    .line 1155
    .line 1156
    iget-object v2, v15, LA1/e0;->e:Ljava/lang/String;

    .line 1157
    .line 1158
    move-object/from16 v17, v1

    .line 1159
    .line 1160
    move-object/from16 v24, v2

    .line 1161
    .line 1162
    move/from16 v18, v3

    .line 1163
    .line 1164
    move-object/from16 v19, v4

    .line 1165
    .line 1166
    move-object/from16 v20, v7

    .line 1167
    .line 1168
    move-wide/from16 v21, v8

    .line 1169
    .line 1170
    invoke-direct/range {v16 .. v24}, LA1/o0;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 1171
    .line 1172
    .line 1173
    const/4 v11, 0x0

    .line 1174
    const/16 v12, 0x37

    .line 1175
    .line 1176
    const-wide/16 v7, 0x0

    .line 1177
    .line 1178
    const/4 v9, 0x0

    .line 1179
    move-object/from16 v10, v16

    .line 1180
    .line 1181
    invoke-static/range {v6 .. v12}, LA1/a0;->a(LA1/a0;JLA1/Z;LA1/o0;LA1/w0;I)LA1/a0;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v1

    .line 1185
    return-object v1

    .line 1186
    :pswitch_12
    const/4 v1, 0x0

    .line 1187
    check-cast v15, LA1/o0;

    .line 1188
    .line 1189
    move-object/from16 v3, p1

    .line 1190
    .line 1191
    check-cast v3, LA1/a0;

    .line 1192
    .line 1193
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1194
    .line 1195
    .line 1196
    iget-object v2, v3, LA1/a0;->d:LA1/o0;

    .line 1197
    .line 1198
    if-eqz v2, :cond_17

    .line 1199
    .line 1200
    iget-object v1, v2, LA1/o0;->a:Ljava/lang/String;

    .line 1201
    .line 1202
    :cond_17
    iget-object v2, v15, LA1/o0;->a:Ljava/lang/String;

    .line 1203
    .line 1204
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1205
    .line 1206
    .line 1207
    move-result v1

    .line 1208
    if-eqz v1, :cond_18

    .line 1209
    .line 1210
    const/4 v8, 0x0

    .line 1211
    const/16 v9, 0x37

    .line 1212
    .line 1213
    const-wide/16 v4, 0x0

    .line 1214
    .line 1215
    const/4 v6, 0x0

    .line 1216
    const/4 v7, 0x0

    .line 1217
    invoke-static/range {v3 .. v9}, LA1/a0;->a(LA1/a0;JLA1/Z;LA1/o0;LA1/w0;I)LA1/a0;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v3

    .line 1221
    :cond_18
    return-object v3

    .line 1222
    nop

    .line 1223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
