.class public final synthetic LA1/r;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, LA1/r;->b:I

    iput-object p1, p0, LA1/r;->c:Ljava/lang/Object;

    iput-object p2, p0, LA1/r;->d:Ljava/lang/Object;

    iput-object p3, p0, LA1/r;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lx1/a;Lcom/minhub/gamehub/editor/ButtonEditorActivity;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/16 v0, 0x8

    iput v0, p0, LA1/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA1/r;->d:Ljava/lang/Object;

    iput-object p2, p0, LA1/r;->e:Ljava/lang/Object;

    iput-object p3, p0, LA1/r;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LA1/r;->b:I

    .line 4
    .line 5
    const-string v2, "Parse error"

    .line 6
    .line 7
    const-string v3, "json"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    iget-object v6, v1, LA1/r;->e:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v7, v1, LA1/r;->d:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v8, v1, LA1/r;->c:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object v11, v8

    .line 21
    check-cast v11, Lcom/minhub/gamehub/game/GameActivity;

    .line 22
    .line 23
    move-object v12, v7

    .line 24
    check-cast v12, LQ1/d;

    .line 25
    .line 26
    move-object v13, v6

    .line 27
    check-cast v13, Landroid/webkit/WebView;

    .line 28
    .line 29
    move-object/from16 v14, p1

    .line 30
    .line 31
    check-cast v14, Ljava/lang/String;

    .line 32
    .line 33
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 34
    .line 35
    new-instance v9, LC1/n;

    .line 36
    .line 37
    const/4 v10, 0x6

    .line 38
    invoke-direct/range {v9 .. v14}, LC1/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    return-object v0

    .line 47
    :pswitch_0
    check-cast v7, Lx1/a;

    .line 48
    .line 49
    move-object v0, v6

    .line 50
    check-cast v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;

    .line 51
    .line 52
    move-object v2, v8

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    move-object v6, v7

    .line 56
    move-object/from16 v7, p1

    .line 57
    .line 58
    check-cast v7, Ljava/lang/String;

    .line 59
    .line 60
    sget v3, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->i:I

    .line 61
    .line 62
    const-string v3, "keyCode"

    .line 63
    .line 64
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 v15, 0x0

    .line 68
    const/16 v16, 0x7fb

    .line 69
    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v10, 0x0

    .line 73
    const/4 v11, 0x0

    .line 74
    const/4 v12, 0x0

    .line 75
    const/4 v13, 0x0

    .line 76
    const/4 v14, 0x0

    .line 77
    invoke-static/range {v6 .. v16}, Lx1/a;->a(Lx1/a;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZI)Lx1/a;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-object v6, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 82
    .line 83
    if-nez v6, :cond_0

    .line 84
    .line 85
    const-string v6, "b"

    .line 86
    .line 87
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move-object v5, v6

    .line 92
    :goto_0
    iget-object v5, v5, Lw1/c;->i:Landroid/view/View;

    .line 93
    .line 94
    check-cast v5, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 95
    .line 96
    invoke-virtual {v5, v2, v3}, Lcom/minhub/gamehub/editor/EditModeOverlay;->f(Ljava/lang/String;Lx1/a;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->m(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const v2, 0x7f1203fc

    .line 103
    .line 104
    .line 105
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    .line 119
    .line 120
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 121
    .line 122
    return-object v0

    .line 123
    :pswitch_1
    check-cast v8, Landroid/content/Context;

    .line 124
    .line 125
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 126
    .line 127
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 128
    .line 129
    move-object/from16 v0, p1

    .line 130
    .line 131
    check-cast v0, Lorg/json/JSONObject;

    .line 132
    .line 133
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :try_start_0
    invoke-static {v8}, LS1/d;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Lorg/json/JSONObject;Ljava/lang/String;)LR1/a;

    .line 141
    .line 142
    .line 143
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    :try_start_1
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-virtual {v3, v8, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-static {v3}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    .line 157
    .line 158
    .line 159
    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    goto :goto_1

    .line 161
    :catch_0
    const-wide/16 v3, 0x1

    .line 162
    .line 163
    :goto_1
    :try_start_2
    iget-wide v8, v0, LR1/a;->a:J

    .line 164
    .line 165
    cmp-long v3, v8, v3

    .line 166
    .line 167
    if-lez v3, :cond_1

    .line 168
    .line 169
    move-object v5, v0

    .line 170
    :cond_1
    invoke-interface {v7, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :catch_1
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    if-nez v0, :cond_2

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_2
    move-object v2, v0

    .line 183
    :goto_2
    invoke-interface {v6, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 187
    .line 188
    return-object v0

    .line 189
    :pswitch_2
    check-cast v8, LA1/p;

    .line 190
    .line 191
    check-cast v7, Landroid/content/Context;

    .line 192
    .line 193
    check-cast v6, LA1/e;

    .line 194
    .line 195
    move-object/from16 v0, p1

    .line 196
    .line 197
    check-cast v0, Lorg/json/JSONObject;

    .line 198
    .line 199
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :try_start_3
    invoke-static {v7}, LS1/d;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-static {v0, v3}, Lcom/bumptech/glide/d;->S(Lorg/json/JSONObject;Ljava/lang/String;)LR1/a;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v8, v0}, LA1/p;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :catch_2
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-nez v0, :cond_3

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_3
    move-object v2, v0

    .line 223
    :goto_4
    invoke-virtual {v6, v2}, LA1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 227
    .line 228
    return-object v0

    .line 229
    :pswitch_3
    check-cast v8, LE1/w;

    .line 230
    .line 231
    check-cast v7, Landroid/widget/ProgressBar;

    .line 232
    .line 233
    check-cast v6, Landroid/widget/TextView;

    .line 234
    .line 235
    move-object/from16 v0, p1

    .line 236
    .line 237
    check-cast v0, Ljava/lang/Integer;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    new-instance v3, LC1/C0;

    .line 248
    .line 249
    const/4 v4, 0x1

    .line 250
    invoke-direct {v3, v7, v0, v6, v4}, LC1/C0;-><init>(Landroid/widget/ProgressBar;ILandroid/widget/TextView;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 254
    .line 255
    .line 256
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 257
    .line 258
    return-object v0

    .line 259
    :pswitch_4
    check-cast v8, LH0/o;

    .line 260
    .line 261
    check-cast v7, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 262
    .line 263
    check-cast v6, Lcom/minhub/gamehub/data/Game;

    .line 264
    .line 265
    move-object/from16 v0, p1

    .line 266
    .line 267
    check-cast v0, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;

    .line 268
    .line 269
    const-string v2, "item"

    .line 270
    .line 271
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v8}, Le/D;->dismiss()V

    .line 275
    .line 276
    .line 277
    const-string v3, "<this>"

    .line 278
    .line 279
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    const-string v3, "game"

    .line 283
    .line 284
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    new-instance v2, LO0/b;

    .line 291
    .line 292
    invoke-direct {v2, v7, v4}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 293
    .line 294
    .line 295
    const v3, 0x7f120345

    .line 296
    .line 297
    .line 298
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    iget-object v4, v2, Le/f;->c:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v4, Le/b;

    .line 305
    .line 306
    iput-object v3, v4, Le/b;->d:Ljava/lang/CharSequence;

    .line 307
    .line 308
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getTitle()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    const v8, 0x7f120344

    .line 317
    .line 318
    .line 319
    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    iput-object v3, v4, Le/b;->f:Ljava/lang/CharSequence;

    .line 324
    .line 325
    const v3, 0x7f120348

    .line 326
    .line 327
    .line 328
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    new-instance v4, LC1/s0;

    .line 333
    .line 334
    invoke-direct {v4, v7, v6, v0}, LC1/s0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2, v3, v4}, LO0/b;->i(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 338
    .line 339
    .line 340
    const v0, 0x7f1200bc

    .line 341
    .line 342
    .line 343
    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v2, v0, v5}, LO0/b;->g(Ljava/lang/String;LC1/h1;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2}, Le/f;->e()Le/g;

    .line 351
    .line 352
    .line 353
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 354
    .line 355
    return-object v0

    .line 356
    :pswitch_5
    check-cast v8, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 357
    .line 358
    check-cast v7, LC1/c2;

    .line 359
    .line 360
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 361
    .line 362
    move-object/from16 v0, p1

    .line 363
    .line 364
    check-cast v0, LC1/X1;

    .line 365
    .line 366
    const-string v2, "state"

    .line 367
    .line 368
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-static {v8}, LS1/d;->p(Landroid/content/Context;)Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    iget-object v3, v0, LC1/X1;->d:Ljava/util/List;

    .line 376
    .line 377
    iget-object v4, v7, LC1/c2;->a:Ljava/lang/String;

    .line 378
    .line 379
    sget-object v7, LC1/X0;->a:Li1/l;

    .line 380
    .line 381
    const-string v7, "draft"

    .line 382
    .line 383
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    const-string v8, "pluginName"

    .line 387
    .line 388
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    const-string v9, "parameters"

    .line 392
    .line 393
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    if-nez v2, :cond_4

    .line 397
    .line 398
    goto :goto_8

    .line 399
    :cond_4
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    new-instance v2, Ljava/util/ArrayList;

    .line 409
    .line 410
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 411
    .line 412
    .line 413
    move-result v7

    .line 414
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 415
    .line 416
    .line 417
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 422
    .line 423
    .line 424
    move-result v7

    .line 425
    if-eqz v7, :cond_6

    .line 426
    .line 427
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v7

    .line 431
    move-object v8, v7

    .line 432
    check-cast v8, Lcom/minhub/gamehub/data/RpgMakerPluginConfig;

    .line 433
    .line 434
    invoke-virtual {v8}, Lcom/minhub/gamehub/data/RpgMakerPluginConfig;->getName()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v7

    .line 442
    if-nez v7, :cond_5

    .line 443
    .line 444
    goto :goto_7

    .line 445
    :cond_5
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 446
    .line 447
    invoke-direct {v12, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 448
    .line 449
    .line 450
    const/16 v14, 0x17

    .line 451
    .line 452
    const/4 v15, 0x0

    .line 453
    const/4 v9, 0x0

    .line 454
    const/4 v10, 0x0

    .line 455
    const/4 v11, 0x0

    .line 456
    const/4 v13, 0x0

    .line 457
    invoke-static/range {v8 .. v15}, Lcom/minhub/gamehub/data/RpgMakerPluginConfig;->copy$default(Lcom/minhub/gamehub/data/RpgMakerPluginConfig;Ljava/lang/String;ZLjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;ILjava/lang/Object;)Lcom/minhub/gamehub/data/RpgMakerPluginConfig;

    .line 458
    .line 459
    .line 460
    move-result-object v8

    .line 461
    :goto_7
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    goto :goto_6

    .line 465
    :cond_6
    move-object v3, v2

    .line 466
    :goto_8
    const/16 v2, 0x17

    .line 467
    .line 468
    invoke-static {v0, v3, v5, v2}, LC1/X1;->a(LC1/X1;Ljava/util/List;Ljava/lang/String;I)LC1/X1;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    return-object v0

    .line 473
    :pswitch_6
    check-cast v8, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 474
    .line 475
    check-cast v7, Landroid/widget/ProgressBar;

    .line 476
    .line 477
    check-cast v6, Landroid/widget/TextView;

    .line 478
    .line 479
    move-object/from16 v0, p1

    .line 480
    .line 481
    check-cast v0, Ljava/lang/Integer;

    .line 482
    .line 483
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    new-instance v2, LC1/C0;

    .line 488
    .line 489
    invoke-direct {v2, v7, v0, v6, v4}, LC1/C0;-><init>(Landroid/widget/ProgressBar;ILandroid/widget/TextView;I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v8, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 493
    .line 494
    .line 495
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 496
    .line 497
    return-object v0

    .line 498
    :pswitch_7
    check-cast v8, LH0/o;

    .line 499
    .line 500
    check-cast v7, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 501
    .line 502
    check-cast v6, LC1/I;

    .line 503
    .line 504
    move-object/from16 v0, p1

    .line 505
    .line 506
    check-cast v0, LD1/l;

    .line 507
    .line 508
    const-string v2, "candidate"

    .line 509
    .line 510
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v8, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v7, v8}, Lcom/minhub/gamehub/hub/AddGameActivity;->C(Landroid/app/Dialog;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v8}, Le/D;->dismiss()V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v6, v0}, LC1/I;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 526
    .line 527
    return-object v0

    .line 528
    :pswitch_8
    check-cast v8, Ljava/lang/String;

    .line 529
    .line 530
    check-cast v7, LA1/y;

    .line 531
    .line 532
    move-object v13, v6

    .line 533
    check-cast v13, LA1/o0;

    .line 534
    .line 535
    move-object/from16 v9, p1

    .line 536
    .line 537
    check-cast v9, LA1/a0;

    .line 538
    .line 539
    const-string v0, "snapshot"

    .line 540
    .line 541
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    iget-object v0, v9, LA1/a0;->d:LA1/o0;

    .line 545
    .line 546
    if-eqz v0, :cond_7

    .line 547
    .line 548
    iget-object v5, v0, LA1/o0;->a:Ljava/lang/String;

    .line 549
    .line 550
    :cond_7
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-nez v0, :cond_8

    .line 555
    .line 556
    iget-object v0, v9, LA1/a0;->d:LA1/o0;

    .line 557
    .line 558
    if-nez v0, :cond_9

    .line 559
    .line 560
    iget-object v0, v7, LA1/y;->f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 561
    .line 562
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->contains(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    if-nez v0, :cond_9

    .line 567
    .line 568
    :cond_8
    const/4 v14, 0x0

    .line 569
    const/16 v15, 0x37

    .line 570
    .line 571
    const-wide/16 v10, 0x0

    .line 572
    .line 573
    const/4 v12, 0x0

    .line 574
    invoke-static/range {v9 .. v15}, LA1/a0;->a(LA1/a0;JLA1/Z;LA1/o0;LA1/w0;I)LA1/a0;

    .line 575
    .line 576
    .line 577
    move-result-object v9

    .line 578
    :cond_9
    return-object v9

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
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
