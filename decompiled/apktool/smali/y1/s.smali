.class public abstract Ly1/s;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v6, "[Manual report] Image / graphics broken"

    .line 2
    .line 3
    const-string v7, "[Manual report] No sound / audio issue"

    .line 4
    .line 5
    const-string v0, "[Manual report] Unknown error"

    .line 6
    .line 7
    const-string v1, "[Manual report] Black screen"

    .line 8
    .line 9
    const-string v2, "[Manual report] Freeze / not responding"

    .line 10
    .line 11
    const-string v3, "[Manual report] Crash / app closes"

    .line 12
    .line 13
    const-string v4, "[Manual report] Save / load broken"

    .line 14
    .line 15
    const-string v5, "[Manual report] Text missing / garbled"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Ly1/s;->a:[Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public static a(Lcom/minhub/gamehub/game/GameActivity;)Z
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "connectivity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/16 v0, 0xc

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p0

    .line 35
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public static b(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Game;LQ1/d;LQ1/c;Z)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v5, v3, LQ1/c;->a:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, v3, LQ1/c;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v1}, Ly1/s;->a(Lcom/minhub/gamehub/game/GameActivity;)Z

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    invoke-virtual {v1}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 31
    .line 32
    const/16 v6, 0x14

    .line 33
    .line 34
    int-to-float v6, v6

    .line 35
    mul-float/2addr v6, v4

    .line 36
    float-to-int v6, v6

    .line 37
    new-instance v7, Landroid/widget/EditText;

    .line 38
    .line 39
    invoke-direct {v7, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    if-eqz p4, :cond_1

    .line 43
    .line 44
    const v9, 0x7f120055

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const v9, 0x7f120054

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setHint(I)V

    .line 52
    .line 53
    .line 54
    const/4 v9, 0x2

    .line 55
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMinLines(I)V

    .line 56
    .line 57
    .line 58
    const/4 v10, 0x4

    .line 59
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 60
    .line 61
    .line 62
    move v11, v4

    .line 63
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 64
    .line 65
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 66
    .line 67
    .line 68
    const/4 v12, 0x0

    .line 69
    if-eqz p4, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    const v14, 0x7f030001

    .line 76
    .line 77
    .line 78
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v13

    .line 82
    const-string v14, "getStringArray(...)"

    .line 83
    .line 84
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    new-array v13, v12, [Ljava/lang/String;

    .line 89
    .line 90
    :goto_1
    array-length v14, v13

    .line 91
    const/16 v15, 0x8

    .line 92
    .line 93
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    new-instance v15, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v9, "\n\n"

    .line 103
    .line 104
    if-eqz p4, :cond_3

    .line 105
    .line 106
    const v0, 0x7f12005e

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    const v12, 0x7f12005c

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    invoke-static {v0}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    const/4 v12, 0x3

    .line 142
    invoke-static {v0, v12}, Lkotlin/sequences/SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->s(Lkotlin/sequences/Sequence;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v12

    .line 158
    if-nez v12, :cond_4

    .line 159
    .line 160
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    :cond_4
    :goto_2
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const v0, 0x7f12005f

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    if-eqz v8, :cond_5

    .line 183
    .line 184
    const v0, 0x7f120058

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_5
    const v0, 0x7f120057

    .line 189
    .line 190
    .line 191
    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    if-eqz v8, :cond_6

    .line 199
    .line 200
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const v0, 0x7f120060

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    :cond_6
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    new-instance v9, Landroid/util/TypedValue;

    .line 218
    .line 219
    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 223
    .line 224
    .line 225
    move-result-object v12

    .line 226
    const v15, 0x1010038

    .line 227
    .line 228
    .line 229
    const/4 v10, 0x1

    .line 230
    invoke-virtual {v12, v15, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 231
    .line 232
    .line 233
    iget v12, v9, Landroid/util/TypedValue;->resourceId:I

    .line 234
    .line 235
    if-eqz v12, :cond_7

    .line 236
    .line 237
    invoke-virtual {v1, v12}, Landroid/content/Context;->getColor(I)I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    goto :goto_4

    .line 242
    :cond_7
    iget v9, v9, Landroid/util/TypedValue;->data:I

    .line 243
    .line 244
    :goto_4
    new-instance v12, Landroid/widget/TextView;

    .line 245
    .line 246
    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    .line 254
    .line 255
    const/high16 v0, 0x41700000    # 15.0f

    .line 256
    .line 257
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 258
    .line 259
    .line 260
    const/4 v0, 0x0

    .line 261
    const v9, 0x3f933333    # 1.15f

    .line 262
    .line 263
    .line 264
    invoke-virtual {v12, v0, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 265
    .line 266
    .line 267
    new-instance v0, Landroid/widget/LinearLayout;

    .line 268
    .line 269
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 273
    .line 274
    .line 275
    const/16 v9, 0xc

    .line 276
    .line 277
    int-to-float v9, v9

    .line 278
    mul-float/2addr v9, v11

    .line 279
    float-to-int v9, v9

    .line 280
    const/4 v15, 0x4

    .line 281
    int-to-float v15, v15

    .line 282
    mul-float/2addr v15, v11

    .line 283
    float-to-int v15, v15

    .line 284
    invoke-virtual {v0, v6, v9, v6, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 288
    .line 289
    .line 290
    if-eqz p4, :cond_a

    .line 291
    .line 292
    if-lez v14, :cond_a

    .line 293
    .line 294
    new-instance v15, Landroid/widget/RadioGroup;

    .line 295
    .line 296
    invoke-direct {v15, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 300
    .line 301
    .line 302
    const/4 v10, 0x0

    .line 303
    :goto_5
    if-ge v10, v14, :cond_9

    .line 304
    .line 305
    new-instance v6, Landroid/widget/RadioButton;

    .line 306
    .line 307
    invoke-direct {v6, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 308
    .line 309
    .line 310
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 311
    .line 312
    .line 313
    move-result v12

    .line 314
    invoke-virtual {v6, v12}, Landroid/view/View;->setId(I)V

    .line 315
    .line 316
    .line 317
    aget-object v12, v13, v10

    .line 318
    .line 319
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    .line 321
    .line 322
    if-nez v10, :cond_8

    .line 323
    .line 324
    const/4 v12, 0x1

    .line 325
    goto :goto_6

    .line 326
    :cond_8
    const/4 v12, 0x0

    .line 327
    :goto_6
    invoke-virtual {v6, v12}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 331
    .line 332
    .line 333
    add-int/lit8 v10, v10, 0x1

    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_9
    iput-object v15, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 337
    .line 338
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 339
    .line 340
    const/4 v10, -0x2

    .line 341
    const/4 v12, -0x1

    .line 342
    invoke-direct {v6, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 343
    .line 344
    .line 345
    const/16 v10, 0xa

    .line 346
    .line 347
    int-to-float v10, v10

    .line 348
    mul-float/2addr v10, v11

    .line 349
    float-to-int v10, v10

    .line 350
    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 351
    .line 352
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 353
    .line 354
    invoke-virtual {v0, v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    .line 356
    .line 357
    :cond_a
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 358
    .line 359
    const/4 v10, -0x2

    .line 360
    const/4 v12, -0x1

    .line 361
    invoke-direct {v6, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 362
    .line 363
    .line 364
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 365
    .line 366
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 367
    .line 368
    invoke-virtual {v0, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    .line 370
    .line 371
    new-instance v6, Landroid/widget/ScrollView;

    .line 372
    .line 373
    invoke-direct {v6, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v6, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 377
    .line 378
    .line 379
    new-instance v9, LO0/b;

    .line 380
    .line 381
    const/4 v0, 0x0

    .line 382
    invoke-direct {v9, v1, v0}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 383
    .line 384
    .line 385
    iget-object v0, v9, Le/f;->c:Ljava/lang/Object;

    .line 386
    .line 387
    move-object v10, v0

    .line 388
    check-cast v10, Le/b;

    .line 389
    .line 390
    const v0, 0x7f120065

    .line 391
    .line 392
    .line 393
    invoke-virtual {v9, v0}, LO0/b;->j(I)V

    .line 394
    .line 395
    .line 396
    iput-object v6, v10, Le/b;->t:Landroid/view/View;

    .line 397
    .line 398
    const/4 v0, 0x1

    .line 399
    iput-boolean v0, v10, Le/b;->m:Z

    .line 400
    .line 401
    const-string v0, "setCancelable(...)"

    .line 402
    .line 403
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    new-instance v0, Ly1/o;

    .line 407
    .line 408
    invoke-direct/range {v0 .. v5}, Ly1/o;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;LQ1/c;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    iget-object v1, v10, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 412
    .line 413
    const v2, 0x7f120053

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    iput-object v1, v10, Le/b;->k:Ljava/lang/CharSequence;

    .line 421
    .line 422
    iput-object v0, v10, Le/b;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 423
    .line 424
    if-eqz v8, :cond_b

    .line 425
    .line 426
    new-instance v0, Ly1/p;

    .line 427
    .line 428
    move-object/from16 v1, p0

    .line 429
    .line 430
    move-object/from16 v2, p2

    .line 431
    .line 432
    move-object v6, v5

    .line 433
    move-object v3, v7

    .line 434
    move-object/from16 v7, p3

    .line 435
    .line 436
    move-object v5, v4

    .line 437
    move-object/from16 v4, p1

    .line 438
    .line 439
    invoke-direct/range {v0 .. v7}, Ly1/p;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Landroid/widget/EditText;Lcom/minhub/gamehub/data/Game;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;LQ1/c;)V

    .line 440
    .line 441
    .line 442
    const v4, 0x7f120061

    .line 443
    .line 444
    .line 445
    invoke-virtual {v9, v4, v0}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 446
    .line 447
    .line 448
    goto :goto_7

    .line 449
    :cond_b
    move-object/from16 v1, p0

    .line 450
    .line 451
    move-object/from16 v2, p2

    .line 452
    .line 453
    move-object v3, v7

    .line 454
    :goto_7
    new-instance v0, Ly1/h;

    .line 455
    .line 456
    const/4 v4, 0x2

    .line 457
    invoke-direct {v0, v2, v4}, Ly1/h;-><init>(LQ1/d;I)V

    .line 458
    .line 459
    .line 460
    const v4, 0x7f120051

    .line 461
    .line 462
    .line 463
    invoke-virtual {v9, v4, v0}, LO0/b;->f(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 464
    .line 465
    .line 466
    new-instance v0, Ly1/i;

    .line 467
    .line 468
    const/4 v4, 0x1

    .line 469
    invoke-direct {v0, v4, v2}, Ly1/i;-><init>(ILjava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    iput-object v0, v10, Le/b;->n:Landroid/content/DialogInterface$OnCancelListener;

    .line 473
    .line 474
    invoke-virtual {v9}, LO0/b;->c()Le/g;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    const-string v2, "create(...)"

    .line 479
    .line 480
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    if-eqz p4, :cond_c

    .line 484
    .line 485
    if-eqz v8, :cond_c

    .line 486
    .line 487
    new-instance v2, Ly1/q;

    .line 488
    .line 489
    invoke-direct {v2, v0, v3, v1}, Ly1/q;-><init>(Le/g;Landroid/widget/EditText;Lcom/minhub/gamehub/game/GameActivity;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 493
    .line 494
    .line 495
    :cond_c
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 496
    .line 497
    .line 498
    return-void
.end method

.method public static final c(Landroid/widget/EditText;Landroid/widget/Button;Lcom/minhub/gamehub/game/GameActivity;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    const/16 v2, 0xf

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_6

    .line 28
    .line 29
    new-instance v4, Lkotlin/text/Regex;

    .line 30
    .line 31
    const-string v5, "\\s+"

    .line 32
    .line 33
    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v5, " "

    .line 37
    .line 38
    invoke-virtual {v4, v0, v5}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-ge v4, v2, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move v4, v3

    .line 53
    move v5, v4

    .line 54
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-ge v4, v6, :cond_4

    .line 59
    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_3

    .line 69
    .line 70
    add-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    const/4 v4, 0x5

    .line 76
    if-ge v5, v4, :cond_5

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    invoke-static {v0}, Lkotlin/text/StringsKt;->Z(Ljava/lang/String;)Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-lt v0, v4, :cond_6

    .line 88
    .line 89
    const/4 v3, 0x1

    .line 90
    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    .line 91
    .line 92
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 93
    .line 94
    .line 95
    :cond_7
    if-nez v3, :cond_9

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_9

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_8

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const v0, 0x7f120056

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    :cond_9
    :goto_3
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public static final d(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/widget/RadioGroup;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v2, v1

    .line 32
    check-cast v2, Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "null cannot be cast to non-null type android.widget.RadioButton"

    .line 43
    .line 44
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    check-cast v2, Landroid/widget/RadioButton;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    :goto_0
    check-cast v1, Ljava/lang/Integer;

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move p0, v0

    .line 67
    :goto_1
    sget-object p1, Ly1/s;->a:[Ljava/lang/String;

    .line 68
    .line 69
    if-ltz p0, :cond_4

    .line 70
    .line 71
    const/16 v1, 0x8

    .line 72
    .line 73
    if-ge p0, v1, :cond_4

    .line 74
    .line 75
    aget-object p0, p1, p0

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_4
    aget-object p0, p1, v0

    .line 79
    .line 80
    return-object p0
.end method

.method public static e(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Game;LQ1/d;LQ1/c;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0, p2}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p0}, Ly1/s;->a(Lcom/minhub/gamehub/game/GameActivity;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ly1/n;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v1, p0

    .line 18
    move-object v3, p1

    .line 19
    move-object v2, p2

    .line 20
    move-object v4, p3

    .line 21
    move v5, p4

    .line 22
    invoke-direct/range {v0 .. v6}, Ly1/n;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Lcom/minhub/gamehub/data/Game;LQ1/c;ZI)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v7, Ljava/lang/Thread;

    .line 30
    .line 31
    new-instance v0, Ly1/n;

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    move-object v1, p0

    .line 35
    move-object v3, p1

    .line 36
    move-object v2, p2

    .line 37
    move-object v4, p3

    .line 38
    move v5, p4

    .line 39
    invoke-direct/range {v0 .. v6}, Ly1/n;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Lcom/minhub/gamehub/data/Game;LQ1/c;ZI)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
