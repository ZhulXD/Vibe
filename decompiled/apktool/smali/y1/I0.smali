.class public final synthetic Ly1/I0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lcom/minhub/gamehub/game/GodotGameActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/minhub/gamehub/game/GodotGameActivity;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly1/I0;->b:I

    iput-object p1, p0, Ly1/I0;->c:Landroid/view/View;

    iput-object p2, p0, Ly1/I0;->d:Lcom/minhub/gamehub/game/GodotGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GodotGameActivity;Landroid/view/View;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Ly1/I0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/I0;->d:Lcom/minhub/gamehub/game/GodotGameActivity;

    iput-object p2, p0, Ly1/I0;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ly1/I0;->b:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x3

    .line 7
    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x2

    .line 11
    iget-object v7, v0, Ly1/I0;->d:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 12
    .line 13
    const/16 v8, 0x8

    .line 14
    .line 15
    iget-object v9, v0, Ly1/I0;->c:Landroid/view/View;

    .line 16
    .line 17
    const/4 v10, 0x1

    .line 18
    const/4 v11, 0x0

    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    sget v1, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 23
    .line 24
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v13, v0, Ly1/I0;->d:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 28
    .line 29
    iget-object v14, v13, Lcom/minhub/gamehub/game/GodotGameActivity;->d:Ljava/io/File;

    .line 30
    .line 31
    iget-object v1, v13, Lcom/minhub/gamehub/game/GodotGameActivity;->e:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    new-instance v5, Ljava/io/File;

    .line 36
    .line 37
    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    move-object v15, v5

    .line 41
    new-instance v1, Ly1/D0;

    .line 42
    .line 43
    invoke-direct {v1, v13, v11}, Ly1/D0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Ly1/D0;

    .line 47
    .line 48
    invoke-direct {v2, v13, v10}, Ly1/D0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 49
    .line 50
    .line 51
    new-instance v12, Ly1/x0;

    .line 52
    .line 53
    move-object/from16 v16, v1

    .line 54
    .line 55
    move-object/from16 v17, v2

    .line 56
    .line 57
    invoke-direct/range {v12 .. v17}, Ly1/x0;-><init>(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    if-nez v14, :cond_1

    .line 61
    .line 62
    const v1, 0x7f120177

    .line 63
    .line 64
    .line 65
    invoke-static {v13, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    .line 74
    .line 75
    new-instance v2, Ly1/l0;

    .line 76
    .line 77
    invoke-direct {v2, v12, v14, v11}, Ly1/l0;-><init>(Ly1/x0;Ljava/io/File;I)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void

    .line 87
    :pswitch_0
    sget v1, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 88
    .line 89
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    check-cast v1, Landroid/view/ViewGroup;

    .line 104
    .line 105
    iget-object v4, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->j:Landroid/widget/FrameLayout;

    .line 106
    .line 107
    const/4 v9, 0x4

    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v4, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->m:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 114
    .line 115
    if-nez v4, :cond_3

    .line 116
    .line 117
    new-instance v4, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 118
    .line 119
    invoke-direct {v4, v7, v5}, Lcom/minhub/gamehub/editor/EditModeOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    .line 121
    .line 122
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 123
    .line 124
    invoke-direct {v5, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 139
    .line 140
    const/high16 v5, 0x41800000    # 16.0f

    .line 141
    .line 142
    mul-float/2addr v2, v5

    .line 143
    invoke-virtual {v4, v2}, Landroid/view/View;->setElevation(F)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    .line 148
    .line 149
    iput-object v4, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->m:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 150
    .line 151
    new-instance v2, Ly1/F0;

    .line 152
    .line 153
    invoke-direct {v2, v7, v10}, Ly1/F0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v2}, Lcom/minhub/gamehub/editor/EditModeOverlay;->setOnButtonSelected(Lkotlin/jvm/functions/Function1;)V

    .line 157
    .line 158
    .line 159
    new-instance v2, Ly1/F0;

    .line 160
    .line 161
    invoke-direct {v2, v7, v6}, Ly1/F0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v2}, Lcom/minhub/gamehub/editor/EditModeOverlay;->setOnLayoutChanged(Lkotlin/jvm/functions/Function1;)V

    .line 165
    .line 166
    .line 167
    :cond_3
    iget-object v2, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->n:Landroid/view/View;

    .line 168
    .line 169
    if-nez v2, :cond_4

    .line 170
    .line 171
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    const v4, 0x7f0c00b5

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v4, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    .line 184
    .line 185
    iput-object v2, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->n:Landroid/view/View;

    .line 186
    .line 187
    const v4, 0x7f090077

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    new-instance v5, Ly1/z0;

    .line 195
    .line 196
    invoke-direct {v5, v7, v10}, Ly1/z0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    const v4, 0x7f090078

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    new-instance v4, Ly1/z0;

    .line 210
    .line 211
    invoke-direct {v4, v7, v6}, Ly1/z0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    :cond_4
    iget-object v2, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->o:Landroid/view/View;

    .line 218
    .line 219
    if-nez v2, :cond_7

    .line 220
    .line 221
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    const v4, 0x7f0c00b4

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v4, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 233
    .line 234
    .line 235
    iput-object v2, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->o:Landroid/view/View;

    .line 236
    .line 237
    if-nez v2, :cond_5

    .line 238
    .line 239
    goto/16 :goto_2

    .line 240
    .line 241
    :cond_5
    const v1, 0x7f0900dc

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    new-instance v4, Ly1/z0;

    .line 249
    .line 250
    invoke-direct {v4, v7, v3}, Ly1/z0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    .line 255
    .line 256
    const v1, 0x7f0900de

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    new-instance v3, Ly1/z0;

    .line 264
    .line 265
    invoke-direct {v3, v7, v9}, Ly1/z0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    .line 270
    .line 271
    const v1, 0x7f0900dd

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    new-instance v3, Ly1/z0;

    .line 279
    .line 280
    const/4 v4, 0x5

    .line 281
    invoke-direct {v3, v7, v4}, Ly1/z0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    .line 286
    .line 287
    const v1, 0x7f090104

    .line 288
    .line 289
    .line 290
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    const-string v3, "#22C55E"

    .line 295
    .line 296
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 297
    .line 298
    .line 299
    move-result-object v12

    .line 300
    const v1, 0x7f090108

    .line 301
    .line 302
    .line 303
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    const-string v3, "#EF4444"

    .line 308
    .line 309
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 310
    .line 311
    .line 312
    move-result-object v13

    .line 313
    const v1, 0x7f090102

    .line 314
    .line 315
    .line 316
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    const-string v3, "#3B82F6"

    .line 321
    .line 322
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 323
    .line 324
    .line 325
    move-result-object v14

    .line 326
    const v1, 0x7f09010a

    .line 327
    .line 328
    .line 329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    const-string v3, "#F59E0B"

    .line 334
    .line 335
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 336
    .line 337
    .line 338
    move-result-object v15

    .line 339
    const v1, 0x7f090107

    .line 340
    .line 341
    .line 342
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    const-string v3, "#8B5CF6"

    .line 347
    .line 348
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 349
    .line 350
    .line 351
    move-result-object v16

    .line 352
    const v1, 0x7f090105

    .line 353
    .line 354
    .line 355
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    const-string v3, "#F97316"

    .line 360
    .line 361
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 362
    .line 363
    .line 364
    move-result-object v17

    .line 365
    const v1, 0x7f090106

    .line 366
    .line 367
    .line 368
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    const-string v3, "#EC4899"

    .line 373
    .line 374
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 375
    .line 376
    .line 377
    move-result-object v18

    .line 378
    const v1, 0x7f090103

    .line 379
    .line 380
    .line 381
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    const-string v3, "#6B7280"

    .line 386
    .line 387
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 388
    .line 389
    .line 390
    move-result-object v19

    .line 391
    const v1, 0x7f090109

    .line 392
    .line 393
    .line 394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    const-string v3, "#F5F5F5"

    .line 399
    .line 400
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 401
    .line 402
    .line 403
    move-result-object v20

    .line 404
    filled-new-array/range {v12 .. v20}, [Lkotlin/Pair;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    if-eqz v3, :cond_6

    .line 425
    .line 426
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    check-cast v3, Ljava/util/Map$Entry;

    .line 431
    .line 432
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    check-cast v4, Ljava/lang/Number;

    .line 437
    .line 438
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    check-cast v3, Ljava/lang/String;

    .line 447
    .line 448
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    new-instance v5, LC1/j;

    .line 453
    .line 454
    const/16 v6, 0x1c

    .line 455
    .line 456
    invoke-direct {v5, v6, v7, v3}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    .line 461
    .line 462
    goto :goto_1

    .line 463
    :cond_6
    const v1, 0x7f090084

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    new-instance v3, Ly1/z0;

    .line 471
    .line 472
    const/4 v4, 0x6

    .line 473
    invoke-direct {v3, v7, v4}, Ly1/z0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    .line 478
    .line 479
    const v1, 0x7f0900e5

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    new-instance v3, Ly1/z0;

    .line 487
    .line 488
    const/4 v4, 0x7

    .line 489
    invoke-direct {v3, v7, v4}, Ly1/z0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    .line 494
    .line 495
    const v1, 0x7f0902a8

    .line 496
    .line 497
    .line 498
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    check-cast v1, Landroid/widget/SeekBar;

    .line 503
    .line 504
    new-instance v3, Ly1/K0;

    .line 505
    .line 506
    invoke-direct {v3, v7, v11}, Ly1/K0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 510
    .line 511
    .line 512
    const v1, 0x7f0902a7

    .line 513
    .line 514
    .line 515
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    check-cast v1, Landroid/widget/SeekBar;

    .line 520
    .line 521
    new-instance v2, Ly1/K0;

    .line 522
    .line 523
    invoke-direct {v2, v7, v10}, Ly1/K0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 527
    .line 528
    .line 529
    :cond_7
    :goto_2
    iget-object v1, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->m:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 530
    .line 531
    if-eqz v1, :cond_8

    .line 532
    .line 533
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 534
    .line 535
    .line 536
    :cond_8
    iget-object v1, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->n:Landroid/view/View;

    .line 537
    .line 538
    if-eqz v1, :cond_9

    .line 539
    .line 540
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 541
    .line 542
    .line 543
    :cond_9
    iget-object v1, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->o:Landroid/view/View;

    .line 544
    .line 545
    if-eqz v1, :cond_a

    .line 546
    .line 547
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 548
    .line 549
    .line 550
    :cond_a
    iput-boolean v11, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->p:Z

    .line 551
    .line 552
    iget-object v1, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->m:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 553
    .line 554
    if-eqz v1, :cond_b

    .line 555
    .line 556
    invoke-virtual {v7}, Lcom/minhub/gamehub/game/GodotGameActivity;->p()Ljava/util/List;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    invoke-virtual {v1, v2}, Lcom/minhub/gamehub/editor/EditModeOverlay;->d(Ljava/util/List;)V

    .line 561
    .line 562
    .line 563
    :cond_b
    invoke-virtual {v7}, Lcom/minhub/gamehub/game/GodotGameActivity;->r()V

    .line 564
    .line 565
    .line 566
    return-void

    .line 567
    :pswitch_1
    sget v1, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 568
    .line 569
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 570
    .line 571
    .line 572
    iget-object v1, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->k:Landroid/widget/FrameLayout;

    .line 573
    .line 574
    if-eqz v1, :cond_c

    .line 575
    .line 576
    goto :goto_3

    .line 577
    :cond_c
    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    check-cast v1, Landroid/view/ViewGroup;

    .line 589
    .line 590
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 595
    .line 596
    .line 597
    move-result-object v4

    .line 598
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 599
    .line 600
    new-instance v5, Landroid/widget/FrameLayout;

    .line 601
    .line 602
    invoke-direct {v5, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 603
    .line 604
    .line 605
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 606
    .line 607
    invoke-direct {v8, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    .line 612
    .line 613
    const/16 v2, 0x14

    .line 614
    .line 615
    int-to-float v2, v2

    .line 616
    mul-float/2addr v2, v4

    .line 617
    invoke-virtual {v5, v2}, Landroid/view/View;->setElevation(F)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 621
    .line 622
    .line 623
    iput-object v5, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->k:Landroid/widget/FrameLayout;

    .line 624
    .line 625
    new-instance v1, LI1/j;

    .line 626
    .line 627
    new-instance v2, Ly1/F0;

    .line 628
    .line 629
    invoke-direct {v2, v7, v11}, Ly1/F0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 630
    .line 631
    .line 632
    new-instance v4, Ly1/D0;

    .line 633
    .line 634
    invoke-direct {v4, v7, v6}, Ly1/D0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 635
    .line 636
    .line 637
    invoke-direct {v1, v5, v2, v4}, LI1/j;-><init>(Landroid/widget/FrameLayout;Ly1/F0;Ly1/D0;)V

    .line 638
    .line 639
    .line 640
    iput-object v1, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->l:LI1/j;

    .line 641
    .line 642
    :goto_3
    iget-object v1, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->l:LI1/j;

    .line 643
    .line 644
    if-eqz v1, :cond_e

    .line 645
    .line 646
    iget-object v2, v1, LI1/j;->b:Ljava/lang/Object;

    .line 647
    .line 648
    check-cast v2, Landroid/widget/FrameLayout;

    .line 649
    .line 650
    iget-object v4, v1, LI1/j;->f:Ljava/lang/Object;

    .line 651
    .line 652
    check-cast v4, Landroid/view/View;

    .line 653
    .line 654
    if-eqz v4, :cond_d

    .line 655
    .line 656
    goto/16 :goto_4

    .line 657
    .line 658
    :cond_d
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 663
    .line 664
    .line 665
    move-result-object v4

    .line 666
    const v5, 0x7f0c00bb

    .line 667
    .line 668
    .line 669
    invoke-virtual {v4, v5, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 670
    .line 671
    .line 672
    move-result-object v4

    .line 673
    new-instance v5, Ly1/L0;

    .line 674
    .line 675
    invoke-direct {v5, v1, v11}, Ly1/L0;-><init>(LI1/j;I)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    .line 680
    .line 681
    const v5, 0x7f0901c5

    .line 682
    .line 683
    .line 684
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 685
    .line 686
    .line 687
    move-result-object v5

    .line 688
    new-instance v7, Lorg/renpy/android/b;

    .line 689
    .line 690
    invoke-direct {v7, v3}, Lorg/renpy/android/b;-><init>(I)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    .line 695
    .line 696
    const v5, 0x7f090090

    .line 697
    .line 698
    .line 699
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 700
    .line 701
    .line 702
    move-result-object v5

    .line 703
    check-cast v5, Landroid/widget/Button;

    .line 704
    .line 705
    new-instance v7, Ly1/L0;

    .line 706
    .line 707
    invoke-direct {v7, v1, v10}, Ly1/L0;-><init>(LI1/j;I)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    .line 712
    .line 713
    const v5, 0x7f0902eb

    .line 714
    .line 715
    .line 716
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 717
    .line 718
    .line 719
    move-result-object v5

    .line 720
    check-cast v5, Landroid/widget/TextView;

    .line 721
    .line 722
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 723
    .line 724
    .line 725
    move-result-object v7

    .line 726
    const v8, 0x7f12018f

    .line 727
    .line 728
    .line 729
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v7

    .line 733
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    .line 735
    .line 736
    new-instance v7, Ly1/L0;

    .line 737
    .line 738
    invoke-direct {v7, v1, v6}, Ly1/L0;-><init>(LI1/j;I)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    .line 743
    .line 744
    const v5, 0x7f0902e8

    .line 745
    .line 746
    .line 747
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 748
    .line 749
    .line 750
    move-result-object v5

    .line 751
    check-cast v5, Landroid/widget/TextView;

    .line 752
    .line 753
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 754
    .line 755
    .line 756
    move-result-object v6

    .line 757
    const v7, 0x7f120200

    .line 758
    .line 759
    .line 760
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v6

    .line 764
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    .line 766
    .line 767
    new-instance v6, Ly1/L0;

    .line 768
    .line 769
    invoke-direct {v6, v1, v3}, Ly1/L0;-><init>(LI1/j;I)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 779
    .line 780
    .line 781
    iput-object v4, v1, LI1/j;->f:Ljava/lang/Object;

    .line 782
    .line 783
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 784
    .line 785
    .line 786
    :goto_4
    invoke-virtual {v1}, LI1/j;->c()V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 793
    .line 794
    .line 795
    :cond_e
    return-void

    .line 796
    :pswitch_2
    sget v1, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 797
    .line 798
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 799
    .line 800
    .line 801
    iget-object v1, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->j:Landroid/widget/FrameLayout;

    .line 802
    .line 803
    if-eqz v1, :cond_f

    .line 804
    .line 805
    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 810
    .line 811
    .line 812
    move-result-object v2

    .line 813
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    check-cast v2, Landroid/view/ViewGroup;

    .line 817
    .line 818
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 819
    .line 820
    .line 821
    iput-object v5, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->j:Landroid/widget/FrameLayout;

    .line 822
    .line 823
    goto :goto_5

    .line 824
    :cond_f
    invoke-virtual {v7}, Lcom/minhub/gamehub/game/GodotGameActivity;->k()Landroid/widget/FrameLayout;

    .line 825
    .line 826
    .line 827
    move-result-object v1

    .line 828
    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    check-cast v2, Landroid/view/ViewGroup;

    .line 840
    .line 841
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 842
    .line 843
    .line 844
    iput-object v1, v7, Lcom/minhub/gamehub/game/GodotGameActivity;->j:Landroid/widget/FrameLayout;

    .line 845
    .line 846
    :goto_5
    return-void

    .line 847
    :pswitch_3
    sget v1, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 848
    .line 849
    const/16 v1, 0x6f

    .line 850
    .line 851
    invoke-virtual {v7, v11, v1}, Lcom/minhub/gamehub/game/GodotGameActivity;->s(II)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v7, v10, v1}, Lcom/minhub/gamehub/game/GodotGameActivity;->s(II)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 858
    .line 859
    .line 860
    return-void

    .line 861
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
