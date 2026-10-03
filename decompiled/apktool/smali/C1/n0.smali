.class public final synthetic LC1/n0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/GameDetailActivity;

.field public final synthetic d:Lcom/minhub/gamehub/data/Game;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;I)V
    .locals 0

    .line 1
    iput p3, p0, LC1/n0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/n0;->c:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 4
    .line 5
    iput-object p2, p0, LC1/n0;->d:Lcom/minhub/gamehub/data/Game;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LC1/n0;->b:I

    .line 4
    .line 5
    const-string v2, "<set-?>"

    .line 6
    .line 7
    const-string v3, "getString(...)"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    const-string v6, "g"

    .line 12
    .line 13
    const-string v7, "<this>"

    .line 14
    .line 15
    iget-object v8, v0, LC1/n0;->c:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 16
    .line 17
    const/4 v9, 0x3

    .line 18
    const/4 v10, 0x1

    .line 19
    iget-object v11, v0, LC1/n0;->d:Lcom/minhub/gamehub/data/Game;

    .line 20
    .line 21
    const/4 v12, 0x0

    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    iget-boolean v1, v8, Lcom/minhub/gamehub/hub/GameDetailActivity;->m:Z

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-boolean v10, v8, Lcom/minhub/gamehub/hub/GameDetailActivity;->m:Z

    .line 36
    .line 37
    const v1, 0x7f120159

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, v8, Lcom/minhub/gamehub/hub/GameDetailActivity;->n:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v8, v11}, Lcom/bumptech/glide/d;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v8}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, LC1/V0;

    .line 60
    .line 61
    invoke-direct {v2, v8, v11, v12, v5}, LC1/V0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v12, v2, v9}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void

    .line 68
    :pswitch_0
    iget-object v14, v0, LC1/n0;->c:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 69
    .line 70
    iget-object v1, v14, Lcom/minhub/gamehub/hub/GameDetailActivity;->o:Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 71
    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-boolean v4, v14, Lcom/minhub/gamehub/hub/GameDetailActivity;->m:Z

    .line 76
    .line 77
    if-nez v4, :cond_2

    .line 78
    .line 79
    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v15, v0, LC1/n0;->d:Lcom/minhub/gamehub/data/Game;

    .line 83
    .line 84
    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v4, "pkg"

    .line 88
    .line 89
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iput-boolean v10, v14, Lcom/minhub/gamehub/hub/GameDetailActivity;->m:Z

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getLabel()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const v5, 0x7f120157

    .line 103
    .line 104
    .line 105
    invoke-virtual {v14, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iput-object v4, v14, Lcom/minhub/gamehub/hub/GameDetailActivity;->n:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v14, v15}, Lcom/bumptech/glide/d;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v14}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    new-instance v13, LC1/w0;

    .line 125
    .line 126
    const/16 v18, 0x1

    .line 127
    .line 128
    const/16 v17, 0x0

    .line 129
    .line 130
    move-object/from16 v16, v1

    .line 131
    .line 132
    invoke-direct/range {v13 .. v18}, LC1/w0;-><init>(LS1/c;Lcom/minhub/gamehub/data/Game;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 133
    .line 134
    .line 135
    move-object/from16 v1, v17

    .line 136
    .line 137
    invoke-static {v2, v1, v13, v9}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 138
    .line 139
    .line 140
    :cond_2
    :goto_0
    return-void

    .line 141
    :pswitch_1
    sget v1, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 142
    .line 143
    new-instance v1, LO0/b;

    .line 144
    .line 145
    invoke-direct {v1, v8, v4}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 146
    .line 147
    .line 148
    const v2, 0x7f12015a

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iget-object v3, v1, Le/f;->c:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v3, Le/b;

    .line 158
    .line 159
    iput-object v2, v3, Le/b;->d:Ljava/lang/CharSequence;

    .line 160
    .line 161
    const v2, 0x7f1200b6

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v11}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    const-string v6, " "

    .line 173
    .line 174
    invoke-static {v2, v6, v5}, Lkotlin/collections/unsigned/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    iput-object v2, v3, Le/b;->f:Ljava/lang/CharSequence;

    .line 179
    .line 180
    const v2, 0x7f1200b9

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    new-instance v3, LC1/o0;

    .line 188
    .line 189
    invoke-direct {v3, v4, v8, v11}, LC1/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v2, v3}, LO0/b;->i(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    const v2, 0x7f1200bc

    .line 196
    .line 197
    .line 198
    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2, v12}, LO0/b;->g(Ljava/lang/String;LC1/h1;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Le/f;->e()Le/g;

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :pswitch_2
    iget-object v1, v8, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 210
    .line 211
    if-nez v1, :cond_3

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_3
    move-object v11, v1

    .line 215
    :goto_1
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v11}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 222
    .line 223
    .line 224
    move-result-wide v1

    .line 225
    const-wide/16 v5, 0x0

    .line 226
    .line 227
    cmp-long v1, v1, v5

    .line 228
    .line 229
    if-gtz v1, :cond_4

    .line 230
    .line 231
    const v1, 0x7f12014e

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-static {v8, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_4
    invoke-virtual {v8}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    iget-object v1, v1, Lw1/e;->j:Landroid/widget/Button;

    .line 251
    .line 252
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 253
    .line 254
    .line 255
    invoke-static {v8}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    new-instance v2, LC1/V0;

    .line 260
    .line 261
    invoke-direct {v2, v8, v11, v12, v10}, LC1/V0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 262
    .line 263
    .line 264
    invoke-static {v1, v12, v2, v9}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 265
    .line 266
    .line 267
    :goto_2
    return-void

    .line 268
    :pswitch_3
    sget v1, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 269
    .line 270
    invoke-virtual {v11}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    invoke-virtual {v11}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v11}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v8, "detail.startGame gameId="

    .line 285
    .line 286
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v1, " engine="

    .line 293
    .line 294
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v1, " path="

    .line 301
    .line 302
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    const-string v2, "GameLaunch"

    .line 313
    .line 314
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    sget-object v1, LC1/X0;->a:Li1/l;

    .line 318
    .line 319
    new-instance v13, LC1/W0;

    .line 320
    .line 321
    sget-object v15, Lcom/minhub/gamehub/data/GameMetadataSync;->INSTANCE:Lcom/minhub/gamehub/data/GameMetadataSync;

    .line 322
    .line 323
    const-string v18, "syncFromDisk(Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/data/EngineCache;)Lcom/minhub/gamehub/data/Game;"

    .line 324
    .line 325
    const/16 v19, 0x0

    .line 326
    .line 327
    const/4 v14, 0x1

    .line 328
    const-class v16, Lcom/minhub/gamehub/data/GameMetadataSync;

    .line 329
    .line 330
    const-string v17, "syncFromDisk"

    .line 331
    .line 332
    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 333
    .line 334
    .line 335
    const-string v1, "game"

    .line 336
    .line 337
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    const-string v1, "syncFromDisk"

    .line 341
    .line 342
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v13, v11}, LC1/W0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    check-cast v1, Lcom/minhub/gamehub/data/Game;

    .line 350
    .line 351
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    iget-object v15, v0, LC1/n0;->c:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 356
    .line 357
    if-nez v2, :cond_5

    .line 358
    .line 359
    iput-object v1, v15, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 360
    .line 361
    invoke-virtual {v15}, Lcom/minhub/gamehub/hub/GameDetailActivity;->q()LC1/Z0;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v2, v1}, LC1/Z0;->a(Lcom/minhub/gamehub/data/Game;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v15, v1}, Lcom/minhub/gamehub/hub/GameDetailActivity;->m(Lcom/minhub/gamehub/data/Game;)V

    .line 369
    .line 370
    .line 371
    :cond_5
    new-instance v2, LA1/G0;

    .line 372
    .line 373
    invoke-direct {v2, v5, v15, v1}, LA1/G0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    const-string v1, "onReady"

    .line 380
    .line 381
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-object v1, v15, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 385
    .line 386
    if-nez v1, :cond_6

    .line 387
    .line 388
    goto/16 :goto_a

    .line 389
    .line 390
    :cond_6
    sget-object v3, Ly1/v1;->f:Ly1/c0;

    .line 391
    .line 392
    invoke-static {v1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 393
    .line 394
    .line 395
    move-result-object v6

    .line 396
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    const-string v3, "engine"

    .line 400
    .line 401
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    sget-object v3, Ly1/u1;->a:[I

    .line 405
    .line 406
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 407
    .line 408
    .line 409
    move-result v6

    .line 410
    aget v3, v3, v6

    .line 411
    .line 412
    if-eq v3, v10, :cond_a

    .line 413
    .line 414
    if-eq v3, v5, :cond_9

    .line 415
    .line 416
    if-eq v3, v9, :cond_8

    .line 417
    .line 418
    const/4 v6, 0x4

    .line 419
    if-eq v3, v6, :cond_7

    .line 420
    .line 421
    move-object v3, v12

    .line 422
    goto :goto_3

    .line 423
    :cond_7
    sget-object v3, Ly1/v1;->j:Ly1/v1;

    .line 424
    .line 425
    goto :goto_3

    .line 426
    :cond_8
    sget-object v3, Ly1/v1;->i:Ly1/v1;

    .line 427
    .line 428
    goto :goto_3

    .line 429
    :cond_9
    sget-object v3, Ly1/v1;->h:Ly1/v1;

    .line 430
    .line 431
    goto :goto_3

    .line 432
    :cond_a
    sget-object v3, Ly1/v1;->g:Ly1/v1;

    .line 433
    .line 434
    :goto_3
    if-nez v3, :cond_b

    .line 435
    .line 436
    invoke-virtual {v2}, LA1/G0;->invoke()Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    goto/16 :goto_a

    .line 440
    .line 441
    :cond_b
    iget-object v6, v3, Ly1/v1;->c:Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {v3}, Ly1/v1;->a()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v7

    .line 447
    if-eqz v7, :cond_1a

    .line 448
    .line 449
    sget-object v7, Ly1/G1;->a:Lkotlin/text/Regex;

    .line 450
    .line 451
    new-instance v7, Ljava/io/File;

    .line 452
    .line 453
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v8

    .line 457
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-static {v7}, Ly1/G1;->a(Ljava/io/File;)Ljava/io/File;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    sget-object v8, LC1/B0;->a:[I

    .line 465
    .line 466
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 467
    .line 468
    .line 469
    move-result v11

    .line 470
    aget v11, v8, v11

    .line 471
    .line 472
    if-ne v11, v10, :cond_d

    .line 473
    .line 474
    sget-object v11, Ly1/W0;->a:Lkotlin/text/Regex;

    .line 475
    .line 476
    invoke-static {v1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v7

    .line 484
    invoke-static {v1, v7}, Ly1/W0;->c(Lcom/minhub/gamehub/data/GameEngine;Ljava/lang/String;)LL1/c;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    if-eqz v1, :cond_c

    .line 489
    .line 490
    iget-object v1, v1, LL1/c;->a:LL1/a;

    .line 491
    .line 492
    goto :goto_4

    .line 493
    :cond_c
    move-object v1, v12

    .line 494
    goto :goto_4

    .line 495
    :cond_d
    invoke-static {v1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 496
    .line 497
    .line 498
    move-result-object v11

    .line 499
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v13

    .line 503
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v7

    .line 511
    invoke-static {v15, v7, v1}, Ly1/G1;->f(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    invoke-static {v11, v13, v1}, Ly1/G1;->g(Lcom/minhub/gamehub/data/GameEngine;Ljava/lang/String;Ljava/util/ArrayList;)LL1/c;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    if-eqz v1, :cond_c

    .line 520
    .line 521
    iget-object v1, v1, LL1/c;->a:LL1/a;

    .line 522
    .line 523
    :goto_4
    sget-object v7, Ly1/y1;->a:Ly1/y1;

    .line 524
    .line 525
    invoke-static {v1, v15, v3}, Ly1/y1;->k(LL1/a;Landroid/content/Context;Ly1/v1;)Z

    .line 526
    .line 527
    .line 528
    move-result v7

    .line 529
    if-eqz v7, :cond_e

    .line 530
    .line 531
    invoke-virtual {v2}, LA1/G0;->invoke()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    goto/16 :goto_a

    .line 535
    .line 536
    :cond_e
    if-eqz v1, :cond_10

    .line 537
    .line 538
    iget-object v2, v1, LL1/a;->c:Ljava/lang/String;

    .line 539
    .line 540
    if-nez v2, :cond_f

    .line 541
    .line 542
    goto :goto_6

    .line 543
    :cond_f
    :goto_5
    move-object/from16 v18, v2

    .line 544
    .line 545
    goto :goto_7

    .line 546
    :cond_10
    :goto_6
    const-string v2, "plugin"

    .line 547
    .line 548
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    if-eqz v2, :cond_14

    .line 556
    .line 557
    if-eq v2, v10, :cond_13

    .line 558
    .line 559
    if-eq v2, v5, :cond_12

    .line 560
    .line 561
    if-ne v2, v9, :cond_11

    .line 562
    .line 563
    const-string v2, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Godot/4.7.1/PluginGodot.zip"

    .line 564
    .line 565
    goto :goto_5

    .line 566
    :cond_11
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 567
    .line 568
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 569
    .line 570
    .line 571
    throw v1

    .line 572
    :cond_12
    const-string v2, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Renpy7/7.8.7/PluginRenpy7.zip"

    .line 573
    .line 574
    goto :goto_5

    .line 575
    :cond_13
    const-string v2, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Renpy/PluginRenpy.zip"

    .line 576
    .line 577
    goto :goto_5

    .line 578
    :cond_14
    const-string v2, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/ACE/PluginACE.zip"

    .line 579
    .line 580
    goto :goto_5

    .line 581
    :goto_7
    if-eqz v1, :cond_17

    .line 582
    .line 583
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 584
    .line 585
    .line 586
    move-result v2

    .line 587
    aget v2, v8, v2

    .line 588
    .line 589
    if-ne v2, v10, :cond_15

    .line 590
    .line 591
    invoke-static {v1}, Ly1/W0;->a(LL1/a;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    goto :goto_8

    .line 596
    :cond_15
    invoke-static {v1}, Ly1/G1;->b(LL1/a;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    :goto_8
    if-nez v2, :cond_16

    .line 601
    .line 602
    goto :goto_9

    .line 603
    :cond_16
    move-object v6, v2

    .line 604
    :cond_17
    :goto_9
    invoke-static/range {v18 .. v18}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 605
    .line 606
    .line 607
    move-result v2

    .line 608
    if-eqz v2, :cond_18

    .line 609
    .line 610
    const v1, 0x7f1200f2

    .line 611
    .line 612
    .line 613
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    invoke-virtual {v15, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    invoke-static {v15, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 626
    .line 627
    .line 628
    goto/16 :goto_a

    .line 629
    .line 630
    :cond_18
    invoke-virtual {v15}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    const v5, 0x7f0c003f

    .line 635
    .line 636
    .line 637
    invoke-virtual {v2, v5, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    const v5, 0x7f09038b

    .line 642
    .line 643
    .line 644
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 645
    .line 646
    .line 647
    move-result-object v5

    .line 648
    check-cast v5, Landroid/widget/TextView;

    .line 649
    .line 650
    const v7, 0x7f1200f0

    .line 651
    .line 652
    .line 653
    invoke-virtual {v15, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v7

    .line 657
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    .line 659
    .line 660
    const v5, 0x7f09038a

    .line 661
    .line 662
    .line 663
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 664
    .line 665
    .line 666
    move-result-object v5

    .line 667
    check-cast v5, Landroid/widget/TextView;

    .line 668
    .line 669
    const v7, 0x7f1200ef

    .line 670
    .line 671
    .line 672
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v6

    .line 676
    invoke-virtual {v15, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v6

    .line 680
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    .line 682
    .line 683
    new-instance v5, LO0/b;

    .line 684
    .line 685
    invoke-direct {v5, v15, v4}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 686
    .line 687
    .line 688
    iget-object v4, v5, Le/f;->c:Ljava/lang/Object;

    .line 689
    .line 690
    check-cast v4, Le/b;

    .line 691
    .line 692
    iput-object v2, v4, Le/b;->t:Landroid/view/View;

    .line 693
    .line 694
    invoke-virtual {v5}, LO0/b;->c()Le/g;

    .line 695
    .line 696
    .line 697
    move-result-object v14

    .line 698
    const-string v4, "create(...)"

    .line 699
    .line 700
    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 704
    .line 705
    .line 706
    move-result-object v4

    .line 707
    if-eqz v4, :cond_19

    .line 708
    .line 709
    const v5, 0x106000d

    .line 710
    .line 711
    .line 712
    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 713
    .line 714
    .line 715
    :cond_19
    const v4, 0x7f0900ca

    .line 716
    .line 717
    .line 718
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 719
    .line 720
    .line 721
    move-result-object v4

    .line 722
    check-cast v4, Landroid/widget/Button;

    .line 723
    .line 724
    new-instance v5, LC1/z;

    .line 725
    .line 726
    invoke-direct {v5, v14, v9}, LC1/z;-><init>(Le/g;I)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    .line 731
    .line 732
    const v4, 0x7f0900cb

    .line 733
    .line 734
    .line 735
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    check-cast v2, Landroid/widget/Button;

    .line 740
    .line 741
    new-instance v13, LC1/i;

    .line 742
    .line 743
    const/16 v19, 0x1

    .line 744
    .line 745
    move-object/from16 v17, v1

    .line 746
    .line 747
    move-object/from16 v16, v3

    .line 748
    .line 749
    invoke-direct/range {v13 .. v19}, LC1/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v2, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v14}, Landroid/app/Dialog;->show()V

    .line 756
    .line 757
    .line 758
    goto :goto_a

    .line 759
    :cond_1a
    const v1, 0x7f1200f1

    .line 760
    .line 761
    .line 762
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    invoke-virtual {v15, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    invoke-static {v15, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 771
    .line 772
    .line 773
    move-result-object v1

    .line 774
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 775
    .line 776
    .line 777
    :goto_a
    return-void

    .line 778
    :pswitch_4
    sget v1, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 779
    .line 780
    invoke-virtual {v8}, Lcom/minhub/gamehub/hub/GameDetailActivity;->q()LC1/Z0;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 785
    .line 786
    .line 787
    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)LV1/x;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    sget-object v3, LV1/H;->b:Lc2/c;

    .line 795
    .line 796
    new-instance v4, LC1/Y0;

    .line 797
    .line 798
    invoke-direct {v4, v1, v11, v12, v10}, LC1/Y0;-><init>(LC1/Z0;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 799
    .line 800
    .line 801
    invoke-static {v2, v3, v4, v5}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 802
    .line 803
    .line 804
    return-void

    .line 805
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
