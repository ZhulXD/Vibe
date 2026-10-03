.class public final synthetic LC1/g1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LC1/g1;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LC1/g1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LC1/g1;->b:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/minhub/gamehub/game/KiriKiriGameActivity;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/minhub/gamehub/game/KiriKiriGameActivity;->k(Lcom/minhub/gamehub/game/KiriKiriGameActivity;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 24
    .line 25
    sget v3, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v7, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 36
    .line 37
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    check-cast v3, Landroid/view/ViewGroup;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    .line 51
    .line 52
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const v10, 0x7f0c00b6

    .line 57
    .line 58
    .line 59
    invoke-virtual {v9, v10, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    iput-object v9, v0, Lcom/minhub/gamehub/game/GodotGameActivity;->i:Landroid/view/View;

    .line 67
    .line 68
    new-instance v10, Ly1/A0;

    .line 69
    .line 70
    invoke-direct {v10, v9, v6}, Ly1/A0;-><init>(Landroid/view/View;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    const v10, 0x7f0901c2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    new-instance v11, Lorg/renpy/android/b;

    .line 84
    .line 85
    invoke-direct {v11, v5}, Lorg/renpy/android/b;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    const v10, 0x7f0900a5

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    new-instance v11, Ly1/I0;

    .line 99
    .line 100
    invoke-direct {v11, v0, v9}, Ly1/I0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    const v10, 0x7f0900a0

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    new-instance v11, Ly1/I0;

    .line 114
    .line 115
    invoke-direct {v11, v9, v0, v6}, Ly1/I0;-><init>(Landroid/view/View;Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    const v10, 0x7f0900a3

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    new-instance v11, Ly1/I0;

    .line 129
    .line 130
    invoke-direct {v11, v9, v0, v5}, Ly1/I0;-><init>(Landroid/view/View;Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    const v10, 0x7f0900a1

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    new-instance v11, Ly1/I0;

    .line 144
    .line 145
    invoke-direct {v11, v9, v0, v2}, Ly1/I0;-><init>(Landroid/view/View;Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    const v2, 0x7f0900a2

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    new-instance v10, Ly1/I0;

    .line 159
    .line 160
    const/4 v11, 0x4

    .line 161
    invoke-direct {v10, v9, v0, v11}, Ly1/I0;-><init>(Landroid/view/View;Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    const v2, 0x7f0900a4

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    new-instance v10, Ly1/z0;

    .line 175
    .line 176
    invoke-direct {v10, v0, v4}, Ly1/z0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    new-instance v2, Landroid/widget/ImageView;

    .line 183
    .line 184
    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 185
    .line 186
    .line 187
    const v10, 0x7f0800d1

    .line 188
    .line 189
    .line 190
    invoke-static {v0, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    .line 196
    .line 197
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 198
    .line 199
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 206
    .line 207
    .line 208
    const/16 v10, 0x8

    .line 209
    .line 210
    int-to-float v10, v10

    .line 211
    mul-float/2addr v10, v8

    .line 212
    invoke-virtual {v2, v10}, Landroid/view/View;->setElevation(F)V

    .line 213
    .line 214
    .line 215
    const/16 v11, 0x2c

    .line 216
    .line 217
    int-to-float v11, v11

    .line 218
    mul-float/2addr v11, v8

    .line 219
    float-to-int v8, v11

    .line 220
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 221
    .line 222
    invoke-direct {v11, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 223
    .line 224
    .line 225
    const v8, 0x800033

    .line 226
    .line 227
    .line 228
    iput v8, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 229
    .line 230
    float-to-int v8, v10

    .line 231
    iput v8, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 232
    .line 233
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    .line 238
    .line 239
    new-instance v8, Ly1/A0;

    .line 240
    .line 241
    invoke-direct {v8, v9, v4}, Ly1/A0;-><init>(Landroid/view/View;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    .line 246
    .line 247
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 252
    .line 253
    .line 254
    move-result v15

    .line 255
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    .line 264
    .line 265
    const/high16 v9, 0x41c00000    # 24.0f

    .line 266
    .line 267
    mul-float v16, v8, v9

    .line 268
    .line 269
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    .line 270
    .line 271
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 272
    .line 273
    .line 274
    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    .line 275
    .line 276
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 277
    .line 278
    .line 279
    new-instance v12, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 280
    .line 281
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 282
    .line 283
    .line 284
    new-instance v13, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 285
    .line 286
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 287
    .line 288
    .line 289
    new-instance v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 290
    .line 291
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 292
    .line 293
    .line 294
    new-instance v9, Ly1/S;

    .line 295
    .line 296
    invoke-direct/range {v9 .. v16}, Ly1/S;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;IF)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    .line 301
    .line 302
    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 303
    .line 304
    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 305
    .line 306
    .line 307
    new-instance v9, Landroid/animation/AnimatorSet;

    .line 308
    .line 309
    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 310
    .line 311
    .line 312
    const-string v10, "scaleX"

    .line 313
    .line 314
    new-array v11, v5, [F

    .line 315
    .line 316
    fill-array-data v11, :array_0

    .line 317
    .line 318
    .line 319
    invoke-static {v2, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    const-wide/16 v11, 0x4b0

    .line 324
    .line 325
    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 326
    .line 327
    .line 328
    const/4 v13, -0x1

    .line 329
    invoke-virtual {v10, v13}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v10, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v10, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 336
    .line 337
    .line 338
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 339
    .line 340
    const-string v14, "scaleY"

    .line 341
    .line 342
    new-array v15, v5, [F

    .line 343
    .line 344
    fill-array-data v15, :array_1

    .line 345
    .line 346
    .line 347
    invoke-static {v2, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 348
    .line 349
    .line 350
    move-result-object v14

    .line 351
    invoke-virtual {v14, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v14, v13}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v14, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v14, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 361
    .line 362
    .line 363
    new-array v5, v5, [Landroid/animation/Animator;

    .line 364
    .line 365
    aput-object v10, v5, v4

    .line 366
    .line 367
    aput-object v14, v5, v6

    .line 368
    .line 369
    invoke-virtual {v9, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 376
    .line 377
    .line 378
    iget-object v2, v0, Lcom/minhub/gamehub/game/GodotGameActivity;->j:Landroid/widget/FrameLayout;

    .line 379
    .line 380
    if-eqz v2, :cond_0

    .line 381
    .line 382
    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {v0}, Lcom/minhub/gamehub/game/GodotGameActivity;->k()Landroid/widget/FrameLayout;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    check-cast v3, Landroid/view/ViewGroup;

    .line 399
    .line 400
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 401
    .line 402
    .line 403
    iput-object v2, v0, Lcom/minhub/gamehub/game/GodotGameActivity;->j:Landroid/widget/FrameLayout;

    .line 404
    .line 405
    :goto_0
    return-void

    .line 406
    :pswitch_1
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;

    .line 409
    .line 410
    const-string v2, "b"

    .line 411
    .line 412
    iget v4, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->h:I

    .line 413
    .line 414
    iget-object v5, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 415
    .line 416
    if-nez v5, :cond_1

    .line 417
    .line 418
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    move-object v5, v3

    .line 422
    :cond_1
    iget-object v5, v5, Lw1/c;->i:Landroid/view/View;

    .line 423
    .line 424
    check-cast v5, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 425
    .line 426
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 427
    .line 428
    .line 429
    iget-object v5, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 430
    .line 431
    if-nez v5, :cond_2

    .line 432
    .line 433
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    move-object v5, v3

    .line 437
    :cond_2
    iget-object v5, v5, Lw1/c;->i:Landroid/view/View;

    .line 438
    .line 439
    check-cast v5, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 440
    .line 441
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 442
    .line 443
    .line 444
    invoke-static {v0, v4, v6}, Lx1/e;->a(Landroid/content/Context;IZ)Ljava/util/List;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    iput-object v4, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->f:Ljava/util/List;

    .line 449
    .line 450
    iget-object v0, v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->e:Lw1/c;

    .line 451
    .line 452
    if-nez v0, :cond_3

    .line 453
    .line 454
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    goto :goto_1

    .line 458
    :cond_3
    move-object v3, v0

    .line 459
    :goto_1
    iget-object v0, v3, Lw1/c;->i:Landroid/view/View;

    .line 460
    .line 461
    check-cast v0, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 462
    .line 463
    invoke-virtual {v0, v4}, Lcom/minhub/gamehub/editor/EditModeOverlay;->d(Ljava/util/List;)V

    .line 464
    .line 465
    .line 466
    return-void

    .line 467
    :pswitch_2
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v0, Lorg/godotengine/godot/service/GodotService;

    .line 470
    .line 471
    invoke-static {v0}, Lorg/godotengine/godot/service/GodotService;->a(Lorg/godotengine/godot/service/GodotService;)V

    .line 472
    .line 473
    .line 474
    return-void

    .line 475
    :pswitch_3
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast v0, Lorg/godotengine/godot/variant/Callable;

    .line 478
    .line 479
    invoke-static {v0}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->b(Lorg/godotengine/godot/variant/Callable;)V

    .line 480
    .line 481
    .line 482
    return-void

    .line 483
    :pswitch_4
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 484
    .line 485
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 486
    .line 487
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    .line 488
    .line 489
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 490
    .line 491
    .line 492
    return-void

    .line 493
    :pswitch_5
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 494
    .line 495
    check-cast v0, Ld1/i;

    .line 496
    .line 497
    iget-object v2, v0, Ld1/i;->h:Landroid/widget/AutoCompleteTextView;

    .line 498
    .line 499
    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    invoke-virtual {v0, v2}, Ld1/i;->s(Z)V

    .line 504
    .line 505
    .line 506
    iput-boolean v2, v0, Ld1/i;->m:Z

    .line 507
    .line 508
    return-void

    .line 509
    :pswitch_6
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 510
    .line 511
    check-cast v0, Ld1/d;

    .line 512
    .line 513
    invoke-virtual {v0, v6}, Ld1/d;->s(Z)V

    .line 514
    .line 515
    .line 516
    return-void

    .line 517
    :pswitch_7
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast v0, Lcom/hatkid/mkxpz/gamepad/Gamepad;

    .line 520
    .line 521
    invoke-static {v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->f(Lcom/hatkid/mkxpz/gamepad/Gamepad;)V

    .line 522
    .line 523
    .line 524
    return-void

    .line 525
    :pswitch_8
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 526
    .line 527
    check-cast v0, Lcom/google/android/material/timepicker/e;

    .line 528
    .line 529
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/e;->e()V

    .line 530
    .line 531
    .line 532
    return-void

    .line 533
    :pswitch_9
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast v0, Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 536
    .line 537
    invoke-static {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;->a(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    .line 538
    .line 539
    .line 540
    return-void

    .line 541
    :pswitch_a
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 542
    .line 543
    move-object v2, v0

    .line 544
    check-cast v2, Landroidx/emoji2/text/q;

    .line 545
    .line 546
    const-string v0, "fetchFonts result is not OK. ("

    .line 547
    .line 548
    iget-object v6, v2, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 549
    .line 550
    monitor-enter v6

    .line 551
    :try_start_0
    iget-object v4, v2, Landroidx/emoji2/text/q;->i:Lcom/bumptech/glide/c;

    .line 552
    .line 553
    if-nez v4, :cond_4

    .line 554
    .line 555
    monitor-exit v6

    .line 556
    goto/16 :goto_7

    .line 557
    .line 558
    :catchall_0
    move-exception v0

    .line 559
    goto/16 :goto_9

    .line 560
    .line 561
    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :try_start_1
    invoke-virtual {v2}, Landroidx/emoji2/text/q;->c()Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 563
    .line 564
    .line 565
    move-result-object v4

    .line 566
    invoke-virtual {v4}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    .line 567
    .line 568
    .line 569
    move-result v6

    .line 570
    if-ne v6, v5, :cond_5

    .line 571
    .line 572
    iget-object v5, v2, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 573
    .line 574
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 575
    :try_start_2
    monitor-exit v5

    .line 576
    goto :goto_2

    .line 577
    :catchall_1
    move-exception v0

    .line 578
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 579
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 580
    :catchall_2
    move-exception v0

    .line 581
    goto/16 :goto_5

    .line 582
    .line 583
    :cond_5
    :goto_2
    if-nez v6, :cond_8

    .line 584
    .line 585
    :try_start_4
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 586
    .line 587
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    iget-object v0, v2, Landroidx/emoji2/text/q;->d:Landroidx/emoji2/text/p;

    .line 591
    .line 592
    iget-object v5, v2, Landroidx/emoji2/text/q;->b:Landroid/content/Context;

    .line 593
    .line 594
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 595
    .line 596
    .line 597
    filled-new-array {v4}, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-static {v5, v3, v0}, Landroidx/core/provider/FontsContractCompat;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    iget-object v5, v2, Landroidx/emoji2/text/q;->b:Landroid/content/Context;

    .line 606
    .line 607
    invoke-virtual {v4}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    .line 608
    .line 609
    .line 610
    move-result-object v4

    .line 611
    invoke-static {v5, v3, v4}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    .line 612
    .line 613
    .line 614
    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 615
    if-eqz v3, :cond_7

    .line 616
    .line 617
    if-eqz v0, :cond_7

    .line 618
    .line 619
    :try_start_5
    const-string v4, "EmojiCompat.MetadataRepo.create"

    .line 620
    .line 621
    invoke-static {v4}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    new-instance v4, LN1/w;

    .line 625
    .line 626
    invoke-static {v3}, La/a;->F(Ljava/nio/ByteBuffer;)LG/b;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    invoke-direct {v4, v0, v3}, LN1/w;-><init>(Landroid/graphics/Typeface;LG/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 631
    .line 632
    .line 633
    :try_start_6
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 634
    .line 635
    .line 636
    :try_start_7
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 637
    .line 638
    .line 639
    iget-object v3, v2, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 640
    .line 641
    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 642
    :try_start_8
    iget-object v0, v2, Landroidx/emoji2/text/q;->i:Lcom/bumptech/glide/c;

    .line 643
    .line 644
    if-eqz v0, :cond_6

    .line 645
    .line 646
    invoke-virtual {v0, v4}, Lcom/bumptech/glide/c;->C(LN1/w;)V

    .line 647
    .line 648
    .line 649
    goto :goto_3

    .line 650
    :catchall_3
    move-exception v0

    .line 651
    goto :goto_4

    .line 652
    :cond_6
    :goto_3
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 653
    :try_start_9
    invoke-virtual {v2}, Landroidx/emoji2/text/q;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 654
    .line 655
    .line 656
    goto :goto_7

    .line 657
    :goto_4
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 658
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 659
    :catchall_4
    move-exception v0

    .line 660
    :try_start_c
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 661
    .line 662
    .line 663
    throw v0

    .line 664
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    .line 665
    .line 666
    const-string v3, "Unable to open file."

    .line 667
    .line 668
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 672
    :catchall_5
    move-exception v0

    .line 673
    :try_start_d
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 674
    .line 675
    .line 676
    throw v0

    .line 677
    :cond_8
    new-instance v3, Ljava/lang/RuntimeException;

    .line 678
    .line 679
    new-instance v4, Ljava/lang/StringBuilder;

    .line 680
    .line 681
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    const-string v0, ")"

    .line 688
    .line 689
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 700
    :goto_5
    iget-object v3, v2, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 701
    .line 702
    monitor-enter v3

    .line 703
    :try_start_e
    iget-object v4, v2, Landroidx/emoji2/text/q;->i:Lcom/bumptech/glide/c;

    .line 704
    .line 705
    if-eqz v4, :cond_9

    .line 706
    .line 707
    invoke-virtual {v4, v0}, Lcom/bumptech/glide/c;->B(Ljava/lang/Throwable;)V

    .line 708
    .line 709
    .line 710
    goto :goto_6

    .line 711
    :catchall_6
    move-exception v0

    .line 712
    goto :goto_8

    .line 713
    :cond_9
    :goto_6
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 714
    invoke-virtual {v2}, Landroidx/emoji2/text/q;->b()V

    .line 715
    .line 716
    .line 717
    :goto_7
    return-void

    .line 718
    :goto_8
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 719
    throw v0

    .line 720
    :goto_9
    :try_start_10
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 721
    throw v0

    .line 722
    :pswitch_b
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 723
    .line 724
    check-cast v0, LH0/i;

    .line 725
    .line 726
    iput-boolean v4, v0, LH0/i;->c:Z

    .line 727
    .line 728
    iget-object v2, v0, LH0/i;->e:Lz/a;

    .line 729
    .line 730
    check-cast v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 731
    .line 732
    iget-object v3, v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:LD/e;

    .line 733
    .line 734
    if-eqz v3, :cond_a

    .line 735
    .line 736
    invoke-virtual {v3}, LD/e;->f()Z

    .line 737
    .line 738
    .line 739
    move-result v3

    .line 740
    if-eqz v3, :cond_a

    .line 741
    .line 742
    iget v2, v0, LH0/i;->b:I

    .line 743
    .line 744
    invoke-virtual {v0, v2}, LH0/i;->a(I)V

    .line 745
    .line 746
    .line 747
    goto :goto_a

    .line 748
    :cond_a
    iget v3, v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 749
    .line 750
    if-ne v3, v5, :cond_b

    .line 751
    .line 752
    iget v0, v0, LH0/i;->b:I

    .line 753
    .line 754
    invoke-virtual {v2, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->w(I)V

    .line 755
    .line 756
    .line 757
    :cond_b
    :goto_a
    return-void

    .line 758
    :pswitch_c
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 759
    .line 760
    check-cast v0, Landroid/view/View;

    .line 761
    .line 762
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    .line 767
    .line 768
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v2

    .line 772
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 773
    .line 774
    invoke-virtual {v2, v0, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 775
    .line 776
    .line 777
    return-void

    .line 778
    :pswitch_d
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 779
    .line 780
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 781
    .line 782
    invoke-virtual {v0}, LP/g0;->r0()V

    .line 783
    .line 784
    .line 785
    return-void

    .line 786
    :pswitch_e
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 787
    .line 788
    check-cast v0, LC1/l2;

    .line 789
    .line 790
    invoke-static {v0}, LC1/l2;->b(LC1/l2;)V

    .line 791
    .line 792
    .line 793
    return-void

    .line 794
    :pswitch_f
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 795
    .line 796
    check-cast v0, Landroid/widget/ImageView;

    .line 797
    .line 798
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    const-wide/16 v2, 0x0

    .line 803
    .line 804
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    const/high16 v2, 0x3f800000    # 1.0f

    .line 809
    .line 810
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    const-wide/16 v2, 0xaa

    .line 819
    .line 820
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .line 825
    .line 826
    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 834
    .line 835
    .line 836
    return-void

    .line 837
    :pswitch_10
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 838
    .line 839
    check-cast v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 840
    .line 841
    sget v2, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->i:I

    .line 842
    .line 843
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->m()V

    .line 844
    .line 845
    .line 846
    return-void

    .line 847
    :pswitch_11
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 848
    .line 849
    move-object v2, v0

    .line 850
    check-cast v2, Lcom/minhub/gamehub/hub/LoginActivity;

    .line 851
    .line 852
    sget v0, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 853
    .line 854
    :try_start_11
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 855
    .line 856
    sget-object v0, LS1/j;->a:Ljava/util/List;

    .line 857
    .line 858
    const-string v0, "auth.h-game18.xyz"

    .line 859
    .line 860
    const-string v5, "host"

    .line 861
    .line 862
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    invoke-static {v0}, LS1/j;->a(Ljava/lang/String;)Ljava/util/List;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 870
    .line 871
    .line 872
    move-result v0

    .line 873
    xor-int/2addr v0, v6

    .line 874
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 882
    goto :goto_b

    .line 883
    :catchall_7
    move-exception v0

    .line 884
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 885
    .line 886
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    :goto_b
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 895
    .line 896
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result v7

    .line 900
    if-eqz v7, :cond_c

    .line 901
    .line 902
    move-object v0, v5

    .line 903
    :cond_c
    check-cast v0, Ljava/lang/Boolean;

    .line 904
    .line 905
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 906
    .line 907
    .line 908
    move-result v0

    .line 909
    sget-object v5, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;->INSTANCE:Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;

    .line 910
    .line 911
    invoke-static {v5, v3, v0, v6, v3}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;->buildPatreonStartUrl$default(Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    new-instance v3, LC1/y1;

    .line 916
    .line 917
    invoke-direct {v3, v2, v0, v4}, LC1/y1;-><init>(Lcom/minhub/gamehub/hub/LoginActivity;Ljava/lang/String;I)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 921
    .line 922
    .line 923
    return-void

    .line 924
    :pswitch_12
    iget-object v0, v1, LC1/g1;->c:Ljava/lang/Object;

    .line 925
    .line 926
    check-cast v0, Lcom/minhub/gamehub/hub/HubActivity;

    .line 927
    .line 928
    sget v3, Lcom/minhub/gamehub/hub/HubActivity;->j:I

    .line 929
    .line 930
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 931
    .line 932
    .line 933
    move-result v3

    .line 934
    if-nez v3, :cond_e

    .line 935
    .line 936
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 937
    .line 938
    .line 939
    move-result v3

    .line 940
    if-eqz v3, :cond_d

    .line 941
    .line 942
    goto :goto_c

    .line 943
    :cond_d
    new-instance v3, LA1/p;

    .line 944
    .line 945
    const/4 v4, 0x5

    .line 946
    invoke-direct {v3, v4, v0}, LA1/p;-><init>(ILjava/lang/Object;)V

    .line 947
    .line 948
    .line 949
    new-instance v4, LA1/e;

    .line 950
    .line 951
    const/16 v5, 0x12

    .line 952
    .line 953
    invoke-direct {v4, v5}, LA1/e;-><init>(I)V

    .line 954
    .line 955
    .line 956
    const-string v5, "ctx"

    .line 957
    .line 958
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    .line 960
    .line 961
    const-string v5, "onResult"

    .line 962
    .line 963
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    const-string v5, "onError"

    .line 967
    .line 968
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    new-instance v5, LA1/r;

    .line 972
    .line 973
    const/4 v7, 0x7

    .line 974
    invoke-direct {v5, v0, v3, v4, v7}, LA1/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 975
    .line 976
    .line 977
    new-instance v0, Landroid/os/Handler;

    .line 978
    .line 979
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 980
    .line 981
    .line 982
    move-result-object v3

    .line 983
    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 984
    .line 985
    .line 986
    new-instance v3, Ljava/lang/Thread;

    .line 987
    .line 988
    new-instance v7, LC1/A1;

    .line 989
    .line 990
    invoke-direct {v7, v0, v5, v4, v2}, LC1/A1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 991
    .line 992
    .line 993
    invoke-direct {v3, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 994
    .line 995
    .line 996
    invoke-virtual {v3, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 997
    .line 998
    .line 999
    const-string v0, "update-check"

    .line 1000
    .line 1001
    invoke-virtual {v3, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1005
    .line 1006
    .line 1007
    :cond_e
    :goto_c
    return-void

    .line 1008
    nop

    .line 1009
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

    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f570a3d    # 0.84f
    .end array-data

    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f570a3d    # 0.84f
    .end array-data
.end method
