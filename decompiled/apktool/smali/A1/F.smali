.class public final synthetic LA1/F;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, LA1/F;->b:I

    iput p1, p0, LA1/F;->c:I

    iput-object p2, p0, LA1/F;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p3, p0, LA1/F;->b:I

    iput-object p1, p0, LA1/F;->d:Ljava/lang/Object;

    iput p2, p0, LA1/F;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LA1/F;->b:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, LA1/F;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lcom/minhub/gamehub/game/SplashGameActivity;

    .line 14
    .line 15
    iget v5, v0, LA1/F;->c:I

    .line 16
    .line 17
    move-object/from16 v6, p1

    .line 18
    .line 19
    check-cast v6, Ljava/util/List;

    .line 20
    .line 21
    iget-boolean v7, v1, Lcom/minhub/gamehub/game/SplashGameActivity;->g:Z

    .line 22
    .line 23
    if-eqz v7, :cond_0

    .line 24
    .line 25
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    goto/16 :goto_6

    .line 28
    .line 29
    :cond_0
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_2

    .line 41
    .line 42
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    move-object v8, v7

    .line 47
    check-cast v8, Lcom/minhub/gamehub/data/Game;

    .line 48
    .line 49
    invoke-virtual {v8}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-ne v8, v5, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move-object v7, v2

    .line 57
    :goto_0
    check-cast v7, Lcom/minhub/gamehub/data/Game;

    .line 58
    .line 59
    if-eqz v7, :cond_f

    .line 60
    .line 61
    invoke-static {v7}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    sget-object v6, Lcom/minhub/gamehub/data/GameEngine;->VXACE:Lcom/minhub/gamehub/data/GameEngine;

    .line 66
    .line 67
    if-ne v5, v6, :cond_5

    .line 68
    .line 69
    sget-object v5, Ly1/p2;->a:Ljava/util/List;

    .line 70
    .line 71
    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 72
    .line 73
    const-string v6, "SUPPORTED_ABIS"

    .line 74
    .line 75
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    array-length v6, v5

    .line 79
    move v8, v3

    .line 80
    :goto_1
    if-ge v8, v6, :cond_4

    .line 81
    .line 82
    aget-object v9, v5, v8

    .line 83
    .line 84
    const-string v10, "arm64-v8a"

    .line 85
    .line 86
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-nez v10, :cond_5

    .line 91
    .line 92
    const-string v10, "x86_64"

    .line 93
    .line 94
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_3

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    const v2, 0x7f120457

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :cond_5
    :goto_2
    iput-boolean v4, v1, Lcom/minhub/gamehub/game/SplashGameActivity;->g:Z

    .line 124
    .line 125
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    .line 126
    .line 127
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 128
    .line 129
    invoke-virtual {v7}, Lcom/minhub/gamehub/data/Game;->getCoverColor1()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-static {v8}, Lcom/bumptech/glide/d;->Z(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    invoke-virtual {v7}, Lcom/minhub/gamehub/data/Game;->getCoverColor2()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    invoke-static {v9}, Lcom/bumptech/glide/d;->Z(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    filled-new-array {v8, v9}, [I

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-direct {v5, v6, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 150
    .line 151
    .line 152
    iget-object v6, v1, Lcom/minhub/gamehub/game/SplashGameActivity;->e:Lk/v;

    .line 153
    .line 154
    const-string v8, "b"

    .line 155
    .line 156
    if-nez v6, :cond_6

    .line 157
    .line 158
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    move-object v6, v2

    .line 162
    :cond_6
    iget-object v6, v6, Lk/v;->c:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v6, Landroid/widget/FrameLayout;

    .line 165
    .line 166
    invoke-virtual {v6, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    .line 168
    .line 169
    iget-object v5, v1, Lcom/minhub/gamehub/game/SplashGameActivity;->e:Lk/v;

    .line 170
    .line 171
    if-nez v5, :cond_7

    .line 172
    .line 173
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    move-object v5, v2

    .line 177
    :cond_7
    iget-object v5, v5, Lk/v;->a:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v5, Landroid/widget/ImageView;

    .line 180
    .line 181
    invoke-static {v5}, Lcom/bumptech/glide/b;->c(Landroid/view/View;)Lcom/bumptech/glide/n;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    iget-object v6, v1, Lcom/minhub/gamehub/game/SplashGameActivity;->e:Lk/v;

    .line 186
    .line 187
    if-nez v6, :cond_8

    .line 188
    .line 189
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    move-object v6, v2

    .line 193
    :cond_8
    iget-object v6, v6, Lk/v;->a:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v6, Landroid/widget/ImageView;

    .line 196
    .line 197
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    new-instance v9, Lcom/bumptech/glide/l;

    .line 201
    .line 202
    invoke-direct {v9, v6}, Lv0/d;-><init>(Landroid/view/View;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5, v9}, Lcom/bumptech/glide/n;->j(Lv0/f;)V

    .line 206
    .line 207
    .line 208
    new-instance v5, Ly1/T1;

    .line 209
    .line 210
    invoke-direct {v5, v2, v4}, Ly1/T1;-><init>(Ljava/lang/String;Z)V

    .line 211
    .line 212
    .line 213
    const-string v6, "binding"

    .line 214
    .line 215
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    new-instance v5, Ly1/U1;

    .line 219
    .line 220
    sget-object v6, Ly1/V1;->b:Ly1/V1;

    .line 221
    .line 222
    invoke-direct {v5, v4, v4, v4, v6}, Ly1/U1;-><init>(ZZZLy1/V1;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v5}, Lcom/minhub/gamehub/game/SplashGameActivity;->n(Ly1/U1;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v7, v3}, Ly1/L1;->G(Lcom/minhub/gamehub/data/Game;Z)Ly1/T1;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    iget-object v5, v4, Ly1/T1;->a:Ljava/lang/String;

    .line 233
    .line 234
    iget-boolean v6, v4, Ly1/T1;->b:Z

    .line 235
    .line 236
    if-nez v6, :cond_c

    .line 237
    .line 238
    if-nez v5, :cond_9

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_9
    iget-object v6, v1, Lcom/minhub/gamehub/game/SplashGameActivity;->e:Lk/v;

    .line 242
    .line 243
    if-nez v6, :cond_a

    .line 244
    .line 245
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    move-object v6, v2

    .line 249
    :cond_a
    iget-object v6, v6, Lk/v;->a:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v6, Landroid/widget/ImageView;

    .line 252
    .line 253
    invoke-static {v6}, Lcom/bumptech/glide/b;->c(Landroid/view/View;)Lcom/bumptech/glide/n;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    new-instance v9, Lcom/bumptech/glide/k;

    .line 261
    .line 262
    iget-object v10, v6, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/b;

    .line 263
    .line 264
    iget-object v11, v6, Lcom/bumptech/glide/n;->c:Landroid/content/Context;

    .line 265
    .line 266
    const-class v12, Landroid/graphics/drawable/Drawable;

    .line 267
    .line 268
    invoke-direct {v9, v10, v6, v12, v11}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/n;Ljava/lang/Class;Landroid/content/Context;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v9, v5}, Lcom/bumptech/glide/k;->x(Ljava/lang/Object;)Lcom/bumptech/glide/k;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    iget-object v6, v1, Lcom/minhub/gamehub/game/SplashGameActivity;->e:Lk/v;

    .line 276
    .line 277
    if-nez v6, :cond_b

    .line 278
    .line 279
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    move-object v6, v2

    .line 283
    :cond_b
    iget-object v6, v6, Lk/v;->a:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v6, Landroid/widget/ImageView;

    .line 286
    .line 287
    new-instance v9, Ly1/P1;

    .line 288
    .line 289
    invoke-direct {v9, v1, v7, v4, v6}, Ly1/P1;-><init>(Lcom/minhub/gamehub/game/SplashGameActivity;Lcom/minhub/gamehub/data/Game;Ly1/T1;Landroid/widget/ImageView;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5, v9, v5}, Lcom/bumptech/glide/k;->w(Lv0/f;Lu0/a;)V

    .line 293
    .line 294
    .line 295
    :cond_c
    :goto_3
    iget-object v4, v1, Lcom/minhub/gamehub/game/SplashGameActivity;->e:Lk/v;

    .line 296
    .line 297
    if-nez v4, :cond_d

    .line 298
    .line 299
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    move-object v4, v2

    .line 303
    :cond_d
    iget-object v4, v4, Lk/v;->d:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v4, Landroid/widget/TextView;

    .line 306
    .line 307
    invoke-virtual {v7}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    iget-object v4, v1, Lcom/minhub/gamehub/game/SplashGameActivity;->e:Lk/v;

    .line 315
    .line 316
    if-nez v4, :cond_e

    .line 317
    .line 318
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_e
    move-object v2, v4

    .line 323
    :goto_4
    iget-object v2, v2, Lk/v;->f:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v2, Landroid/widget/TextView;

    .line 326
    .line 327
    const v4, 0x7f120215

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    .line 336
    .line 337
    const/16 v2, 0x64

    .line 338
    .line 339
    filled-new-array {v3, v2}, [I

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    const-wide/16 v3, 0xaf0

    .line 348
    .line 349
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 350
    .line 351
    .line 352
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    .line 353
    .line 354
    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 358
    .line 359
    .line 360
    new-instance v3, Ly1/N1;

    .line 361
    .line 362
    invoke-direct {v3, v1, v7}, Ly1/N1;-><init>(Lcom/minhub/gamehub/game/SplashGameActivity;Lcom/minhub/gamehub/data/Game;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 369
    .line 370
    .line 371
    :cond_f
    :goto_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 372
    .line 373
    :goto_6
    return-object v1

    .line 374
    :pswitch_0
    iget-object v1, v0, LA1/F;->d:Ljava/lang/Object;

    .line 375
    .line 376
    move-object v6, v1

    .line 377
    check-cast v6, Lcom/minhub/gamehub/game/GameActivity;

    .line 378
    .line 379
    iget v1, v0, LA1/F;->c:I

    .line 380
    .line 381
    move-object/from16 v2, p1

    .line 382
    .line 383
    check-cast v2, Ljava/util/List;

    .line 384
    .line 385
    iget-boolean v5, v6, Lcom/minhub/gamehub/game/GameActivity;->C:Z

    .line 386
    .line 387
    if-nez v5, :cond_34

    .line 388
    .line 389
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    const/4 v9, 0x0

    .line 401
    if-eqz v5, :cond_11

    .line 402
    .line 403
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    move-object v7, v5

    .line 408
    check-cast v7, Lcom/minhub/gamehub/data/Game;

    .line 409
    .line 410
    invoke-virtual {v7}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 411
    .line 412
    .line 413
    move-result v7

    .line 414
    if-ne v7, v1, :cond_10

    .line 415
    .line 416
    goto :goto_7

    .line 417
    :cond_11
    move-object v5, v9

    .line 418
    :goto_7
    move-object v7, v5

    .line 419
    check-cast v7, Lcom/minhub/gamehub/data/Game;

    .line 420
    .line 421
    if-eqz v7, :cond_34

    .line 422
    .line 423
    iput-boolean v4, v6, Lcom/minhub/gamehub/game/GameActivity;->C:Z

    .line 424
    .line 425
    sget-object v1, Lcom/minhub/gamehub/data/GameEngine;->RENPY7:Lcom/minhub/gamehub/data/GameEngine;

    .line 426
    .line 427
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->RENPY8:Lcom/minhub/gamehub/data/GameEngine;

    .line 428
    .line 429
    sget-object v5, Lcom/minhub/gamehub/data/GameEngine;->VXACE:Lcom/minhub/gamehub/data/GameEngine;

    .line 430
    .line 431
    sget-object v8, Lcom/minhub/gamehub/data/GameEngine;->KIRI:Lcom/minhub/gamehub/data/GameEngine;

    .line 432
    .line 433
    sget-object v10, Lcom/minhub/gamehub/data/GameEngine;->GODOT:Lcom/minhub/gamehub/data/GameEngine;

    .line 434
    .line 435
    filled-new-array {v1, v2, v5, v8, v10}, [Lcom/minhub/gamehub/data/GameEngine;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-static {v7}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    const/4 v2, 0x5

    .line 452
    const/4 v14, 0x4

    .line 453
    const/4 v15, 0x3

    .line 454
    const/4 v12, 0x2

    .line 455
    if-eqz v1, :cond_18

    .line 456
    .line 457
    invoke-static {v7}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    sget-object v3, Ly1/K;->a:[I

    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    aget v1, v3, v1

    .line 468
    .line 469
    if-eq v1, v4, :cond_16

    .line 470
    .line 471
    if-eq v1, v12, :cond_15

    .line 472
    .line 473
    if-eq v1, v15, :cond_14

    .line 474
    .line 475
    if-eq v1, v14, :cond_13

    .line 476
    .line 477
    if-eq v1, v2, :cond_12

    .line 478
    .line 479
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    :goto_8
    move-object v8, v1

    .line 484
    goto :goto_a

    .line 485
    :cond_12
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    const-string v2, ":godot"

    .line 490
    .line 491
    :goto_9
    invoke-static {v1, v2}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    goto :goto_8

    .line 496
    :cond_13
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    const-string v2, ":kirikiri"

    .line 501
    .line 502
    goto :goto_9

    .line 503
    :cond_14
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    const-string v2, ":vxace"

    .line 508
    .line 509
    goto :goto_9

    .line 510
    :cond_15
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    const-string v2, ":renpy"

    .line 515
    .line 516
    goto :goto_9

    .line 517
    :cond_16
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    const-string v2, ":renpy7"

    .line 522
    .line 523
    goto :goto_9

    .line 524
    :goto_a
    invoke-static {v6}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    new-instance v5, LC1/w0;

    .line 529
    .line 530
    const/4 v10, 0x4

    .line 531
    invoke-direct/range {v5 .. v10}, LC1/w0;-><init>(LS1/c;Lcom/minhub/gamehub/data/Game;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 532
    .line 533
    .line 534
    move-object v13, v9

    .line 535
    invoke-static {v1, v13, v5, v15}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 536
    .line 537
    .line 538
    iget-object v1, v6, Lcom/minhub/gamehub/game/GameActivity;->H:LA1/v0;

    .line 539
    .line 540
    if-eqz v1, :cond_17

    .line 541
    .line 542
    invoke-virtual {v1}, LA1/v0;->b()V

    .line 543
    .line 544
    .line 545
    :cond_17
    iput-object v13, v6, Lcom/minhub/gamehub/game/GameActivity;->H:LA1/v0;

    .line 546
    .line 547
    goto/16 :goto_24

    .line 548
    .line 549
    :cond_18
    move-object v13, v9

    .line 550
    iget-object v1, v6, Lcom/minhub/gamehub/game/GameActivity;->n:LQ1/d;

    .line 551
    .line 552
    if-eqz v1, :cond_19

    .line 553
    .line 554
    invoke-virtual {v1}, LQ1/d;->b()V

    .line 555
    .line 556
    .line 557
    :cond_19
    const/16 v1, 0x1a

    .line 558
    .line 559
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 560
    .line 561
    if-lt v5, v1, :cond_1a

    .line 562
    .line 563
    invoke-static {}, Lm0/o;->f()Landroid/content/pm/PackageInfo;

    .line 564
    .line 565
    .line 566
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    goto :goto_b

    .line 568
    :catch_0
    :cond_1a
    move-object v9, v13

    .line 569
    :goto_b
    sget-object v5, LS1/d;->a:Ljava/util/Set;

    .line 570
    .line 571
    const-string v5, "ctx"

    .line 572
    .line 573
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-static {v6}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 577
    .line 578
    .line 579
    move-result-object v5

    .line 580
    const-string v8, "utilities_json"

    .line 581
    .line 582
    const-string v10, "{}"

    .line 583
    .line 584
    invoke-interface {v5, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v5

    .line 588
    invoke-static {v5}, LS1/d;->t(Ljava/lang/String;)LG1/s;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    invoke-virtual {v7}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v19

    .line 596
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 597
    .line 598
    :try_start_1
    const-string v8, "os.arch"

    .line 599
    .line 600
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 604
    move-object/from16 v20, v8

    .line 605
    .line 606
    goto :goto_c

    .line 607
    :catch_1
    move-object/from16 v20, v13

    .line 608
    .line 609
    :goto_c
    if-eqz v9, :cond_1b

    .line 610
    .line 611
    iget-object v8, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 612
    .line 613
    move-object/from16 v21, v8

    .line 614
    .line 615
    goto :goto_d

    .line 616
    :cond_1b
    move-object/from16 v21, v13

    .line 617
    .line 618
    :goto_d
    if-eqz v9, :cond_1c

    .line 619
    .line 620
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 621
    .line 622
    move-object/from16 v22, v9

    .line 623
    .line 624
    goto :goto_e

    .line 625
    :cond_1c
    move-object/from16 v22, v13

    .line 626
    .line 627
    :goto_e
    new-instance v16, LQ1/d;

    .line 628
    .line 629
    const/16 v18, 0x20

    .line 630
    .line 631
    invoke-direct/range {v16 .. v22}, LQ1/d;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    move-object/from16 v8, v16

    .line 635
    .line 636
    iput-object v8, v6, Lcom/minhub/gamehub/game/GameActivity;->n:LQ1/d;

    .line 637
    .line 638
    invoke-static {v6}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 639
    .line 640
    .line 641
    move-result-object v9

    .line 642
    new-instance v10, LC1/w0;

    .line 643
    .line 644
    invoke-direct {v10, v6, v8, v7, v13}, LC1/w0;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;)V

    .line 645
    .line 646
    .line 647
    invoke-static {v9, v13, v10, v15}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 648
    .line 649
    .line 650
    invoke-static {v6}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 651
    .line 652
    .line 653
    move-result-object v9

    .line 654
    move-object v10, v9

    .line 655
    move-object v9, v5

    .line 656
    new-instance v5, LC1/L0;

    .line 657
    .line 658
    move-object v11, v10

    .line 659
    const/4 v10, 0x0

    .line 660
    move-object/from16 v16, v11

    .line 661
    .line 662
    const/4 v11, 0x1

    .line 663
    move-object/from16 p1, v8

    .line 664
    .line 665
    move-object v8, v7

    .line 666
    move-object/from16 v7, p1

    .line 667
    .line 668
    move/from16 p1, v12

    .line 669
    .line 670
    move-object/from16 v12, v16

    .line 671
    .line 672
    invoke-direct/range {v5 .. v11}, LC1/L0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/minhub/gamehub/data/Game;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 673
    .line 674
    .line 675
    move-object v7, v5

    .line 676
    move-object v5, v8

    .line 677
    invoke-static {v12, v13, v7, v15}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 678
    .line 679
    .line 680
    sget-object v7, Lcom/minhub/gamehub/data/GameEngine;->Companion:Lcom/minhub/gamehub/data/GameEngine$Companion;

    .line 681
    .line 682
    invoke-virtual {v5}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v8

    .line 686
    invoke-virtual {v7, v8}, Lcom/minhub/gamehub/data/GameEngine$Companion;->fromString(Ljava/lang/String;)Lcom/minhub/gamehub/data/GameEngine;

    .line 687
    .line 688
    .line 689
    move-result-object v7

    .line 690
    iput-object v5, v6, Lcom/minhub/gamehub/game/GameActivity;->o:Lcom/minhub/gamehub/data/Game;

    .line 691
    .line 692
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 693
    .line 694
    .line 695
    move-result-object v8

    .line 696
    iget-object v8, v8, Lw1/d;->K:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 697
    .line 698
    sget-object v9, Lcom/minhub/gamehub/data/GameEngine;->MV:Lcom/minhub/gamehub/data/GameEngine;

    .line 699
    .line 700
    if-eq v7, v9, :cond_1e

    .line 701
    .line 702
    sget-object v10, Lcom/minhub/gamehub/data/GameEngine;->MZ:Lcom/minhub/gamehub/data/GameEngine;

    .line 703
    .line 704
    if-ne v7, v10, :cond_1d

    .line 705
    .line 706
    goto :goto_f

    .line 707
    :cond_1d
    move v10, v3

    .line 708
    goto :goto_10

    .line 709
    :cond_1e
    :goto_f
    move v10, v4

    .line 710
    :goto_10
    invoke-virtual {v8, v10}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->setDefaultButtonsEnabled(Z)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 714
    .line 715
    .line 716
    move-result-object v8

    .line 717
    iget-object v8, v8, Lw1/d;->K:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 718
    .line 719
    invoke-virtual {v5}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 720
    .line 721
    .line 722
    move-result v10

    .line 723
    iput v10, v8, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->b:I

    .line 724
    .line 725
    invoke-virtual {v8}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->d()V

    .line 726
    .line 727
    .line 728
    iget-object v8, v6, Lcom/minhub/gamehub/game/GameActivity;->u:Ly1/j1;

    .line 729
    .line 730
    if-nez v8, :cond_1f

    .line 731
    .line 732
    const-string v8, "controlsCoordinator"

    .line 733
    .line 734
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    move-object v8, v13

    .line 738
    :cond_1f
    invoke-virtual {v5}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 739
    .line 740
    .line 741
    move-result v10

    .line 742
    iput v10, v8, Ly1/j1;->g:I

    .line 743
    .line 744
    new-instance v8, Lj/h;

    .line 745
    .line 746
    new-instance v10, Lt1/e;

    .line 747
    .line 748
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 749
    .line 750
    .line 751
    new-instance v11, Lu1/a;

    .line 752
    .line 753
    new-instance v12, Ly1/u;

    .line 754
    .line 755
    invoke-direct {v12, v6, v3}, Ly1/u;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 756
    .line 757
    .line 758
    invoke-direct {v11, v6, v12}, Lu1/a;-><init>(Landroid/app/Activity;Ly1/u;)V

    .line 759
    .line 760
    .line 761
    new-instance v12, Lv1/a;

    .line 762
    .line 763
    invoke-direct {v12, v6}, Lv1/a;-><init>(Landroid/content/Context;)V

    .line 764
    .line 765
    .line 766
    new-array v13, v15, [Lr1/a;

    .line 767
    .line 768
    aput-object v10, v13, v3

    .line 769
    .line 770
    aput-object v11, v13, v4

    .line 771
    .line 772
    aput-object v12, v13, p1

    .line 773
    .line 774
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 775
    .line 776
    .line 777
    move-result-object v10

    .line 778
    invoke-direct {v8, v10}, Lj/h;-><init>(Ljava/util/List;)V

    .line 779
    .line 780
    .line 781
    iput-object v8, v6, Lcom/minhub/gamehub/game/GameActivity;->v:Lj/h;

    .line 782
    .line 783
    new-instance v8, LN1/w;

    .line 784
    .line 785
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->v()Landroid/widget/ImageView;

    .line 786
    .line 787
    .line 788
    move-result-object v10

    .line 789
    new-instance v11, Ly1/u;

    .line 790
    .line 791
    invoke-direct {v11, v6, v4}, Ly1/u;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 792
    .line 793
    .line 794
    const-string v12, "context"

    .line 795
    .line 796
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    const-string v12, "anchorView"

    .line 800
    .line 801
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    const-string v12, "webViewProvider"

    .line 805
    .line 806
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 810
    .line 811
    .line 812
    iput-object v6, v8, LN1/w;->a:Ljava/lang/Object;

    .line 813
    .line 814
    iput-object v10, v8, LN1/w;->b:Ljava/lang/Object;

    .line 815
    .line 816
    iput-object v11, v8, LN1/w;->c:Ljava/lang/Object;

    .line 817
    .line 818
    iput-object v8, v6, Lcom/minhub/gamehub/game/GameActivity;->w:LN1/w;

    .line 819
    .line 820
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 821
    .line 822
    .line 823
    move-result-wide v10

    .line 824
    iput-wide v10, v6, Lcom/minhub/gamehub/game/GameActivity;->p:J

    .line 825
    .line 826
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 827
    .line 828
    .line 829
    move-result-object v8

    .line 830
    iget-object v8, v8, Lw1/d;->n0:Landroid/widget/TextView;

    .line 831
    .line 832
    invoke-static {v6}, LS1/d;->e(Landroid/content/Context;)Z

    .line 833
    .line 834
    .line 835
    move-result v10

    .line 836
    const/16 v11, 0x8

    .line 837
    .line 838
    if-eqz v10, :cond_20

    .line 839
    .line 840
    move v10, v3

    .line 841
    goto :goto_11

    .line 842
    :cond_20
    move v10, v11

    .line 843
    :goto_11
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 847
    .line 848
    .line 849
    move-result-object v8

    .line 850
    iget-object v8, v8, Lw1/d;->W:Landroid/widget/LinearLayout;

    .line 851
    .line 852
    sget-object v10, Lcom/minhub/gamehub/data/GameEngine;->HTML:Lcom/minhub/gamehub/data/GameEngine;

    .line 853
    .line 854
    if-eq v7, v10, :cond_22

    .line 855
    .line 856
    sget-object v10, Lcom/minhub/gamehub/data/GameEngine;->BROWSE:Lcom/minhub/gamehub/data/GameEngine;

    .line 857
    .line 858
    if-ne v7, v10, :cond_21

    .line 859
    .line 860
    goto :goto_12

    .line 861
    :cond_21
    move v7, v11

    .line 862
    goto :goto_13

    .line 863
    :cond_22
    :goto_12
    move v7, v3

    .line 864
    :goto_13
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->v()Landroid/widget/ImageView;

    .line 868
    .line 869
    .line 870
    move-result-object v7

    .line 871
    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->v()Landroid/widget/ImageView;

    .line 875
    .line 876
    .line 877
    move-result-object v7

    .line 878
    new-instance v8, Ly1/w;

    .line 879
    .line 880
    invoke-direct {v8, v6, v4}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 884
    .line 885
    .line 886
    iget-object v7, v6, Lcom/minhub/gamehub/game/GameActivity;->g:Landroid/widget/ImageView;

    .line 887
    .line 888
    const-string v8, "cheatQuickButton"

    .line 889
    .line 890
    if-eqz v7, :cond_23

    .line 891
    .line 892
    goto :goto_14

    .line 893
    :cond_23
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    const/4 v7, 0x0

    .line 897
    :goto_14
    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 898
    .line 899
    .line 900
    iget-object v7, v6, Lcom/minhub/gamehub/game/GameActivity;->g:Landroid/widget/ImageView;

    .line 901
    .line 902
    if-eqz v7, :cond_24

    .line 903
    .line 904
    goto :goto_15

    .line 905
    :cond_24
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    const/4 v7, 0x0

    .line 909
    :goto_15
    new-instance v10, Ly1/w;

    .line 910
    .line 911
    const/16 v12, 0xc

    .line 912
    .line 913
    invoke-direct {v10, v6, v12}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 917
    .line 918
    .line 919
    const-string v7, "<this>"

    .line 920
    .line 921
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->v()Landroid/widget/ImageView;

    .line 925
    .line 926
    .line 927
    move-result-object v10

    .line 928
    invoke-static {v6, v10}, Ly1/T;->b(Lcom/minhub/gamehub/game/GameActivity;Landroid/widget/ImageView;)Landroid/animation/AnimatorSet;

    .line 929
    .line 930
    .line 931
    move-result-object v10

    .line 932
    iput-object v10, v6, Lcom/minhub/gamehub/game/GameActivity;->i:Landroid/animation/AnimatorSet;

    .line 933
    .line 934
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    iget-object v10, v6, Lcom/minhub/gamehub/game/GameActivity;->g:Landroid/widget/ImageView;

    .line 938
    .line 939
    if-eqz v10, :cond_25

    .line 940
    .line 941
    goto :goto_16

    .line 942
    :cond_25
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    const/4 v10, 0x0

    .line 946
    :goto_16
    invoke-static {v6, v10}, Ly1/T;->b(Lcom/minhub/gamehub/game/GameActivity;Landroid/widget/ImageView;)Landroid/animation/AnimatorSet;

    .line 947
    .line 948
    .line 949
    move-result-object v8

    .line 950
    iput-object v8, v6, Lcom/minhub/gamehub/game/GameActivity;->j:Landroid/animation/AnimatorSet;

    .line 951
    .line 952
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 956
    .line 957
    .line 958
    move-result-object v8

    .line 959
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 960
    .line 961
    .line 962
    move-result v8

    .line 963
    invoke-virtual {v6}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 964
    .line 965
    .line 966
    move-result-object v10

    .line 967
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 968
    .line 969
    .line 970
    move-result-object v10

    .line 971
    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    .line 972
    .line 973
    const/high16 v12, 0x41c00000    # 24.0f

    .line 974
    .line 975
    mul-float v13, v10, v12

    .line 976
    .line 977
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    .line 978
    .line 979
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 980
    .line 981
    .line 982
    move-object v12, v7

    .line 983
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 984
    .line 985
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 986
    .line 987
    .line 988
    move-object/from16 v17, v10

    .line 989
    .line 990
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 991
    .line 992
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 993
    .line 994
    .line 995
    move/from16 v18, v11

    .line 996
    .line 997
    move v11, v8

    .line 998
    new-instance v8, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 999
    .line 1000
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 1001
    .line 1002
    .line 1003
    move-object/from16 v19, v9

    .line 1004
    .line 1005
    new-instance v9, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1006
    .line 1007
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v3

    .line 1014
    iget-object v3, v3, Lw1/d;->g:Landroid/widget/ImageView;

    .line 1015
    .line 1016
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v3

    .line 1023
    iget-object v3, v3, Lw1/d;->g:Landroid/widget/ImageView;

    .line 1024
    .line 1025
    invoke-virtual {v6}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v21

    .line 1029
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v2

    .line 1033
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1034
    .line 1035
    const/high16 v21, 0x42000000    # 32.0f

    .line 1036
    .line 1037
    mul-float v2, v2, v21

    .line 1038
    .line 1039
    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v2

    .line 1046
    iget-object v2, v2, Lw1/d;->g:Landroid/widget/ImageView;

    .line 1047
    .line 1048
    const-string v3, "btnMenu"

    .line 1049
    .line 1050
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    invoke-static {v2}, Ly1/T;->a(Landroid/view/View;)Landroid/animation/AnimatorSet;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v2

    .line 1057
    iput-object v2, v6, Lcom/minhub/gamehub/game/GameActivity;->h:Landroid/animation/AnimatorSet;

    .line 1058
    .line 1059
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v2

    .line 1063
    iget-object v2, v2, Lw1/d;->g:Landroid/widget/ImageView;

    .line 1064
    .line 1065
    move-object v3, v5

    .line 1066
    new-instance v5, Ly1/Q;

    .line 1067
    .line 1068
    move/from16 v14, p1

    .line 1069
    .line 1070
    move-object/from16 v23, v3

    .line 1071
    .line 1072
    move-object v15, v12

    .line 1073
    move-object/from16 v3, v19

    .line 1074
    .line 1075
    move-object v12, v6

    .line 1076
    move-object/from16 v6, v17

    .line 1077
    .line 1078
    const/16 v17, 0x0

    .line 1079
    .line 1080
    invoke-direct/range {v5 .. v13}, Ly1/Q;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;ILcom/minhub/gamehub/game/GameActivity;F)V

    .line 1081
    .line 1082
    .line 1083
    move-object v6, v12

    .line 1084
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v2

    .line 1091
    iget-object v2, v2, Lw1/d;->g:Landroid/widget/ImageView;

    .line 1092
    .line 1093
    new-instance v5, Ly1/w;

    .line 1094
    .line 1095
    const/16 v7, 0x16

    .line 1096
    .line 1097
    invoke-direct {v5, v6, v7}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v2

    .line 1107
    iget-object v2, v2, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 1108
    .line 1109
    new-instance v5, Ly1/w;

    .line 1110
    .line 1111
    const/16 v7, 0x17

    .line 1112
    .line 1113
    invoke-direct {v5, v6, v7}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v2

    .line 1123
    iget-object v2, v2, Lw1/d;->R:Landroid/widget/ScrollView;

    .line 1124
    .line 1125
    new-instance v5, Lorg/renpy/android/b;

    .line 1126
    .line 1127
    invoke-direct {v5, v4}, Lorg/renpy/android/b;-><init>(I)V

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1131
    .line 1132
    .line 1133
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    .line 1135
    .line 1136
    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v2

    .line 1140
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 1141
    .line 1142
    .line 1143
    move-result v12

    .line 1144
    invoke-virtual {v6}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v2

    .line 1148
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v2

    .line 1152
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1153
    .line 1154
    const/high16 v5, 0x41800000    # 16.0f

    .line 1155
    .line 1156
    mul-float v13, v2, v5

    .line 1157
    .line 1158
    new-instance v7, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1159
    .line 1160
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 1161
    .line 1162
    .line 1163
    new-instance v8, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1164
    .line 1165
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 1166
    .line 1167
    .line 1168
    new-instance v9, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1169
    .line 1170
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 1171
    .line 1172
    .line 1173
    new-instance v10, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1174
    .line 1175
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 1176
    .line 1177
    .line 1178
    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1179
    .line 1180
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v2

    .line 1187
    iget-object v2, v2, Lw1/d;->l0:Landroid/widget/TextView;

    .line 1188
    .line 1189
    new-instance v5, Ly1/Q;

    .line 1190
    .line 1191
    invoke-direct/range {v5 .. v13}, Ly1/Q;-><init>(Lcom/minhub/gamehub/game/GameActivity;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;IF)V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v2

    .line 1201
    iget-object v2, v2, Lw1/d;->X:Landroid/widget/LinearLayout;

    .line 1202
    .line 1203
    new-instance v5, Ly1/w;

    .line 1204
    .line 1205
    const/16 v7, 0x18

    .line 1206
    .line 1207
    invoke-direct {v5, v6, v7}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v2

    .line 1217
    iget-object v2, v2, Lw1/d;->Y:Landroid/widget/LinearLayout;

    .line 1218
    .line 1219
    new-instance v5, Ly1/w;

    .line 1220
    .line 1221
    const/16 v7, 0x19

    .line 1222
    .line 1223
    invoke-direct {v5, v6, v7}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v2

    .line 1233
    iget-object v2, v2, Lw1/d;->b0:Landroid/widget/LinearLayout;

    .line 1234
    .line 1235
    new-instance v5, Ly1/w;

    .line 1236
    .line 1237
    invoke-direct {v5, v6, v1}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v1

    .line 1247
    iget-object v1, v1, Lw1/d;->Z:Landroid/widget/LinearLayout;

    .line 1248
    .line 1249
    new-instance v2, Ly1/w;

    .line 1250
    .line 1251
    const/16 v5, 0x1b

    .line 1252
    .line 1253
    invoke-direct {v2, v6, v5}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v1

    .line 1263
    iget-object v1, v1, Lw1/d;->a0:Landroid/widget/LinearLayout;

    .line 1264
    .line 1265
    new-instance v2, Ly1/w;

    .line 1266
    .line 1267
    const/16 v5, 0x1c

    .line 1268
    .line 1269
    invoke-direct {v2, v6, v5}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->E()V

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v1

    .line 1282
    iget-object v1, v1, Lw1/d;->k:Landroid/widget/Button;

    .line 1283
    .line 1284
    new-instance v2, Ly1/w;

    .line 1285
    .line 1286
    invoke-direct {v2, v6, v14}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1287
    .line 1288
    .line 1289
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v1

    .line 1296
    iget-object v1, v1, Lw1/d;->l:Landroid/widget/Button;

    .line 1297
    .line 1298
    new-instance v2, Ly1/w;

    .line 1299
    .line 1300
    const/4 v5, 0x3

    .line 1301
    invoke-direct {v2, v6, v5}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v1

    .line 1311
    iget-object v1, v1, Lw1/d;->i:Landroid/widget/Button;

    .line 1312
    .line 1313
    new-instance v2, Ly1/w;

    .line 1314
    .line 1315
    const/4 v5, 0x4

    .line 1316
    invoke-direct {v2, v6, v5}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v1

    .line 1326
    iget-object v1, v1, Lw1/d;->h:Landroid/widget/Button;

    .line 1327
    .line 1328
    new-instance v2, Ly1/w;

    .line 1329
    .line 1330
    const/4 v5, 0x5

    .line 1331
    invoke-direct {v2, v6, v5}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v1

    .line 1341
    iget-object v1, v1, Lw1/d;->r:Landroid/widget/Button;

    .line 1342
    .line 1343
    new-instance v2, Ly1/w;

    .line 1344
    .line 1345
    const/4 v5, 0x6

    .line 1346
    invoke-direct {v2, v6, v5}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v1

    .line 1356
    iget-object v1, v1, Lw1/d;->p:Landroid/widget/Button;

    .line 1357
    .line 1358
    new-instance v2, Ly1/w;

    .line 1359
    .line 1360
    const/4 v5, 0x7

    .line 1361
    invoke-direct {v2, v6, v5}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1365
    .line 1366
    .line 1367
    iget-object v1, v6, Lcom/minhub/gamehub/game/GameActivity;->o:Lcom/minhub/gamehub/data/Game;

    .line 1368
    .line 1369
    if-eqz v1, :cond_26

    .line 1370
    .line 1371
    invoke-static {v1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v9

    .line 1375
    goto :goto_17

    .line 1376
    :cond_26
    move-object/from16 v9, v17

    .line 1377
    .line 1378
    :goto_17
    if-eq v9, v3, :cond_28

    .line 1379
    .line 1380
    sget-object v1, Lcom/minhub/gamehub/data/GameEngine;->MZ:Lcom/minhub/gamehub/data/GameEngine;

    .line 1381
    .line 1382
    if-ne v9, v1, :cond_27

    .line 1383
    .line 1384
    goto :goto_18

    .line 1385
    :cond_27
    const/4 v1, 0x0

    .line 1386
    goto :goto_19

    .line 1387
    :cond_28
    :goto_18
    move v1, v4

    .line 1388
    :goto_19
    if-eq v9, v3, :cond_2a

    .line 1389
    .line 1390
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->MZ:Lcom/minhub/gamehub/data/GameEngine;

    .line 1391
    .line 1392
    if-eq v9, v2, :cond_2a

    .line 1393
    .line 1394
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->TYRANO:Lcom/minhub/gamehub/data/GameEngine;

    .line 1395
    .line 1396
    if-ne v9, v2, :cond_29

    .line 1397
    .line 1398
    goto :goto_1a

    .line 1399
    :cond_29
    const/4 v2, 0x0

    .line 1400
    goto :goto_1b

    .line 1401
    :cond_2a
    :goto_1a
    move v2, v4

    .line 1402
    :goto_1b
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v3

    .line 1406
    iget-object v3, v3, Lw1/d;->i:Landroid/widget/Button;

    .line 1407
    .line 1408
    if-eqz v1, :cond_2b

    .line 1409
    .line 1410
    const/4 v11, 0x0

    .line 1411
    goto :goto_1c

    .line 1412
    :cond_2b
    const/16 v11, 0x8

    .line 1413
    .line 1414
    :goto_1c
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v3

    .line 1421
    iget-object v3, v3, Lw1/d;->r:Landroid/widget/Button;

    .line 1422
    .line 1423
    if-eqz v1, :cond_2c

    .line 1424
    .line 1425
    const/4 v11, 0x0

    .line 1426
    goto :goto_1d

    .line 1427
    :cond_2c
    const/16 v11, 0x8

    .line 1428
    .line 1429
    :goto_1d
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v3

    .line 1436
    iget-object v3, v3, Lw1/d;->p:Landroid/widget/Button;

    .line 1437
    .line 1438
    if-eqz v1, :cond_2d

    .line 1439
    .line 1440
    const/4 v11, 0x0

    .line 1441
    goto :goto_1e

    .line 1442
    :cond_2d
    const/16 v11, 0x8

    .line 1443
    .line 1444
    :goto_1e
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v3

    .line 1451
    iget-object v3, v3, Lw1/d;->h:Landroid/widget/Button;

    .line 1452
    .line 1453
    if-eqz v2, :cond_2e

    .line 1454
    .line 1455
    const/4 v11, 0x0

    .line 1456
    goto :goto_1f

    .line 1457
    :cond_2e
    const/16 v11, 0x8

    .line 1458
    .line 1459
    :goto_1f
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v3

    .line 1466
    iget-object v3, v3, Lw1/d;->h:Landroid/widget/Button;

    .line 1467
    .line 1468
    sget-object v5, Lcom/minhub/gamehub/data/GameEngine;->TYRANO:Lcom/minhub/gamehub/data/GameEngine;

    .line 1469
    .line 1470
    if-ne v9, v5, :cond_2f

    .line 1471
    .line 1472
    const v5, 0x7f1202dc

    .line 1473
    .line 1474
    .line 1475
    goto :goto_20

    .line 1476
    :cond_2f
    const v5, 0x7f1202b8

    .line 1477
    .line 1478
    .line 1479
    :goto_20
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v5

    .line 1483
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1484
    .line 1485
    .line 1486
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v3

    .line 1490
    iget-object v3, v3, Lw1/d;->Y:Landroid/widget/LinearLayout;

    .line 1491
    .line 1492
    if-nez v1, :cond_31

    .line 1493
    .line 1494
    if-eqz v2, :cond_30

    .line 1495
    .line 1496
    goto :goto_21

    .line 1497
    :cond_30
    const/16 v11, 0x8

    .line 1498
    .line 1499
    goto :goto_22

    .line 1500
    :cond_31
    :goto_21
    const/4 v11, 0x0

    .line 1501
    :goto_22
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1502
    .line 1503
    .line 1504
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v1

    .line 1508
    iget-object v1, v1, Lw1/d;->s:Landroid/widget/Button;

    .line 1509
    .line 1510
    new-instance v2, Ly1/w;

    .line 1511
    .line 1512
    const/16 v3, 0x8

    .line 1513
    .line 1514
    invoke-direct {v2, v6, v3}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1518
    .line 1519
    .line 1520
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v1

    .line 1524
    iget-object v1, v1, Lw1/d;->o:Landroid/widget/Button;

    .line 1525
    .line 1526
    new-instance v2, Ly1/w;

    .line 1527
    .line 1528
    const/16 v3, 0x9

    .line 1529
    .line 1530
    invoke-direct {v2, v6, v3}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1534
    .line 1535
    .line 1536
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1537
    .line 1538
    .line 1539
    const-string v1, "minhub_prefs"

    .line 1540
    .line 1541
    const/4 v2, 0x0

    .line 1542
    invoke-virtual {v6, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v3

    .line 1546
    const-string v5, "show_fps"

    .line 1547
    .line 1548
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1549
    .line 1550
    .line 1551
    move-result v3

    .line 1552
    iput-boolean v3, v6, Lcom/minhub/gamehub/game/GameActivity;->s:Z

    .line 1553
    .line 1554
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->m()V

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v3

    .line 1561
    iget-object v3, v3, Lw1/d;->n:Landroid/widget/Button;

    .line 1562
    .line 1563
    new-instance v5, Ly1/w;

    .line 1564
    .line 1565
    const/16 v7, 0xa

    .line 1566
    .line 1567
    invoke-direct {v5, v6, v7}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1568
    .line 1569
    .line 1570
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1571
    .line 1572
    .line 1573
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1574
    .line 1575
    .line 1576
    invoke-virtual {v6, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v3

    .line 1580
    const-string v5, "reduce_fx_mvmz"

    .line 1581
    .line 1582
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1583
    .line 1584
    .line 1585
    move-result v3

    .line 1586
    iput-boolean v3, v6, Lcom/minhub/gamehub/game/GameActivity;->t:Z

    .line 1587
    .line 1588
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v2

    .line 1592
    iget-object v2, v2, Lw1/d;->q:Landroid/widget/Button;

    .line 1593
    .line 1594
    iget-boolean v3, v6, Lcom/minhub/gamehub/game/GameActivity;->t:Z

    .line 1595
    .line 1596
    if-eqz v3, :cond_32

    .line 1597
    .line 1598
    const v3, 0x7f1202d0

    .line 1599
    .line 1600
    .line 1601
    goto :goto_23

    .line 1602
    :cond_32
    const v3, 0x7f1202cf

    .line 1603
    .line 1604
    .line 1605
    :goto_23
    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v3

    .line 1609
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1610
    .line 1611
    .line 1612
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v2

    .line 1616
    iget-object v2, v2, Lw1/d;->q:Landroid/widget/Button;

    .line 1617
    .line 1618
    new-instance v3, Ly1/w;

    .line 1619
    .line 1620
    const/16 v5, 0xb

    .line 1621
    .line 1622
    invoke-direct {v3, v6, v5}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1623
    .line 1624
    .line 1625
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1626
    .line 1627
    .line 1628
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v2

    .line 1632
    iget-object v2, v2, Lw1/d;->t:Landroid/widget/Button;

    .line 1633
    .line 1634
    new-instance v3, Ly1/w;

    .line 1635
    .line 1636
    const/16 v5, 0xd

    .line 1637
    .line 1638
    invoke-direct {v3, v6, v5}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1639
    .line 1640
    .line 1641
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v2

    .line 1648
    iget-object v2, v2, Lw1/d;->j:Landroid/widget/Button;

    .line 1649
    .line 1650
    new-instance v3, Ly1/w;

    .line 1651
    .line 1652
    const/16 v5, 0xe

    .line 1653
    .line 1654
    invoke-direct {v3, v6, v5}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1655
    .line 1656
    .line 1657
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1658
    .line 1659
    .line 1660
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1661
    .line 1662
    .line 1663
    const/4 v2, 0x0

    .line 1664
    invoke-virtual {v6, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v3

    .line 1668
    const-string v5, "game_font_size"

    .line 1669
    .line 1670
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 1671
    .line 1672
    .line 1673
    move-result v3

    .line 1674
    if-lez v3, :cond_33

    .line 1675
    .line 1676
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v2

    .line 1680
    iget-object v2, v2, Lw1/d;->J:Landroid/widget/EditText;

    .line 1681
    .line 1682
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v3

    .line 1686
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1687
    .line 1688
    .line 1689
    :cond_33
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v2

    .line 1693
    iget-object v2, v2, Lw1/d;->e:Landroid/widget/TextView;

    .line 1694
    .line 1695
    new-instance v3, Ly1/w;

    .line 1696
    .line 1697
    const/16 v5, 0xf

    .line 1698
    .line 1699
    invoke-direct {v3, v6, v5}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1700
    .line 1701
    .line 1702
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1703
    .line 1704
    .line 1705
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v2

    .line 1709
    iget-object v2, v2, Lw1/d;->f:Landroid/widget/TextView;

    .line 1710
    .line 1711
    new-instance v3, Ly1/w;

    .line 1712
    .line 1713
    const/16 v5, 0x10

    .line 1714
    .line 1715
    invoke-direct {v3, v6, v5}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1716
    .line 1717
    .line 1718
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1719
    .line 1720
    .line 1721
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v2

    .line 1725
    iget-object v2, v2, Lw1/d;->e0:Landroid/widget/Switch;

    .line 1726
    .line 1727
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1728
    .line 1729
    .line 1730
    const/4 v3, 0x0

    .line 1731
    invoke-virtual {v6, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v1

    .line 1735
    const-string v5, "game_word_wrap"

    .line 1736
    .line 1737
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1738
    .line 1739
    .line 1740
    move-result v1

    .line 1741
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1742
    .line 1743
    .line 1744
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v1

    .line 1748
    iget-object v1, v1, Lw1/d;->e0:Landroid/widget/Switch;

    .line 1749
    .line 1750
    new-instance v2, LM0/a;

    .line 1751
    .line 1752
    invoke-direct {v2, v6, v4}, LM0/a;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 1753
    .line 1754
    .line 1755
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1756
    .line 1757
    .line 1758
    invoke-static {v6}, LS1/d;->c(Landroid/content/Context;)I

    .line 1759
    .line 1760
    .line 1761
    move-result v1

    .line 1762
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v2

    .line 1766
    iget-object v2, v2, Lw1/d;->d0:Landroid/widget/SeekBar;

    .line 1767
    .line 1768
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1769
    .line 1770
    .line 1771
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1772
    .line 1773
    .line 1774
    move-result-object v2

    .line 1775
    iget-object v2, v2, Lw1/d;->p0:Landroid/widget/TextView;

    .line 1776
    .line 1777
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v1

    .line 1781
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v1

    .line 1785
    const v3, 0x7f120450

    .line 1786
    .line 1787
    .line 1788
    invoke-virtual {v6, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v1

    .line 1792
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1793
    .line 1794
    .line 1795
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v1

    .line 1799
    iget-object v1, v1, Lw1/d;->d0:Landroid/widget/SeekBar;

    .line 1800
    .line 1801
    new-instance v2, Lx1/d;

    .line 1802
    .line 1803
    invoke-direct {v2, v6, v14}, Lx1/d;-><init>(LS1/c;I)V

    .line 1804
    .line 1805
    .line 1806
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1807
    .line 1808
    .line 1809
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->F()V

    .line 1810
    .line 1811
    .line 1812
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v1

    .line 1816
    iget-object v1, v1, Lw1/d;->x:Landroid/widget/Button;

    .line 1817
    .line 1818
    new-instance v2, Ly1/w;

    .line 1819
    .line 1820
    const/16 v3, 0x11

    .line 1821
    .line 1822
    invoke-direct {v2, v6, v3}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1823
    .line 1824
    .line 1825
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1826
    .line 1827
    .line 1828
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v1

    .line 1832
    iget-object v1, v1, Lw1/d;->v:Landroid/widget/Button;

    .line 1833
    .line 1834
    new-instance v2, Ly1/w;

    .line 1835
    .line 1836
    const/16 v3, 0x12

    .line 1837
    .line 1838
    invoke-direct {v2, v6, v3}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1839
    .line 1840
    .line 1841
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1842
    .line 1843
    .line 1844
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1845
    .line 1846
    .line 1847
    move-result-object v1

    .line 1848
    iget-object v1, v1, Lw1/d;->w:Landroid/widget/Button;

    .line 1849
    .line 1850
    new-instance v2, Ly1/w;

    .line 1851
    .line 1852
    const/16 v3, 0x13

    .line 1853
    .line 1854
    invoke-direct {v2, v6, v3}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1855
    .line 1856
    .line 1857
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1858
    .line 1859
    .line 1860
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v1

    .line 1864
    iget-object v1, v1, Lw1/d;->u:Landroid/widget/Button;

    .line 1865
    .line 1866
    new-instance v2, Ly1/w;

    .line 1867
    .line 1868
    const/16 v3, 0x14

    .line 1869
    .line 1870
    invoke-direct {v2, v6, v3}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1871
    .line 1872
    .line 1873
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1874
    .line 1875
    .line 1876
    invoke-virtual {v6}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v1

    .line 1880
    iget-object v1, v1, Lw1/d;->m:Landroid/widget/Button;

    .line 1881
    .line 1882
    new-instance v2, Ly1/w;

    .line 1883
    .line 1884
    const/16 v3, 0x15

    .line 1885
    .line 1886
    invoke-direct {v2, v6, v3}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1887
    .line 1888
    .line 1889
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1890
    .line 1891
    .line 1892
    move-object/from16 v7, v23

    .line 1893
    .line 1894
    invoke-virtual {v6, v7}, Lcom/minhub/gamehub/game/GameActivity;->C(Lcom/minhub/gamehub/data/Game;)V

    .line 1895
    .line 1896
    .line 1897
    :cond_34
    :goto_24
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1898
    .line 1899
    return-object v1

    .line 1900
    :pswitch_1
    iget v1, v0, LA1/F;->c:I

    .line 1901
    .line 1902
    iget-object v2, v0, LA1/F;->d:Ljava/lang/Object;

    .line 1903
    .line 1904
    check-cast v2, Ljava/io/File;

    .line 1905
    .line 1906
    move-object/from16 v3, p1

    .line 1907
    .line 1908
    check-cast v3, Lcom/minhub/gamehub/data/Save;

    .line 1909
    .line 1910
    invoke-static {v1, v2, v3}, Lcom/minhub/gamehub/data/SaveRepository;->f(ILjava/io/File;Lcom/minhub/gamehub/data/Save;)Z

    .line 1911
    .line 1912
    .line 1913
    move-result v1

    .line 1914
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v1

    .line 1918
    return-object v1

    .line 1919
    :pswitch_2
    iget v1, v0, LA1/F;->c:I

    .line 1920
    .line 1921
    iget-object v3, v0, LA1/F;->d:Ljava/lang/Object;

    .line 1922
    .line 1923
    check-cast v3, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 1924
    .line 1925
    move-object/from16 v4, p1

    .line 1926
    .line 1927
    check-cast v4, Ljava/util/List;

    .line 1928
    .line 1929
    sget v5, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 1930
    .line 1931
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1932
    .line 1933
    .line 1934
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v4

    .line 1938
    :cond_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1939
    .line 1940
    .line 1941
    move-result v5

    .line 1942
    if-eqz v5, :cond_36

    .line 1943
    .line 1944
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v5

    .line 1948
    move-object v6, v5

    .line 1949
    check-cast v6, Lcom/minhub/gamehub/data/Game;

    .line 1950
    .line 1951
    invoke-virtual {v6}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 1952
    .line 1953
    .line 1954
    move-result v6

    .line 1955
    if-ne v6, v1, :cond_35

    .line 1956
    .line 1957
    move-object v2, v5

    .line 1958
    :cond_36
    check-cast v2, Lcom/minhub/gamehub/data/Game;

    .line 1959
    .line 1960
    if-eqz v2, :cond_37

    .line 1961
    .line 1962
    invoke-virtual {v3, v2}, Lcom/minhub/gamehub/hub/GameDetailActivity;->m(Lcom/minhub/gamehub/data/Game;)V

    .line 1963
    .line 1964
    .line 1965
    :cond_37
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1966
    .line 1967
    return-object v1

    .line 1968
    :pswitch_3
    iget-object v1, v0, LA1/F;->d:Ljava/lang/Object;

    .line 1969
    .line 1970
    move-object v2, v1

    .line 1971
    check-cast v2, LA1/Z;

    .line 1972
    .line 1973
    iget v3, v0, LA1/F;->c:I

    .line 1974
    .line 1975
    move-object/from16 v1, p1

    .line 1976
    .line 1977
    check-cast v1, LA1/a0;

    .line 1978
    .line 1979
    const-string v4, "it"

    .line 1980
    .line 1981
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1982
    .line 1983
    .line 1984
    sget-object v4, LA1/L0;->c:LA1/L0;

    .line 1985
    .line 1986
    const-wide/16 v5, 0x0

    .line 1987
    .line 1988
    const/16 v7, 0x7cf

    .line 1989
    .line 1990
    invoke-static/range {v2 .. v7}, LA1/Z;->a(LA1/Z;ILA1/L0;JI)LA1/Z;

    .line 1991
    .line 1992
    .line 1993
    move-result-object v7

    .line 1994
    const/4 v9, 0x0

    .line 1995
    const/16 v10, 0x33

    .line 1996
    .line 1997
    const/4 v8, 0x0

    .line 1998
    move-object v4, v1

    .line 1999
    invoke-static/range {v4 .. v10}, LA1/a0;->a(LA1/a0;JLA1/Z;LA1/o0;LA1/w0;I)LA1/a0;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v1

    .line 2003
    return-object v1

    .line 2004
    nop

    .line 2005
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
