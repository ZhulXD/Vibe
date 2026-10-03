.class public final synthetic LC1/C1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/LoginActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/LoginActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/C1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/C1;->c:Lcom/minhub/gamehub/hub/LoginActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LC1/C1;->b:I

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    iget-object v5, v1, LC1/C1;->c:Lcom/minhub/gamehub/hub/LoginActivity;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget v0, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 13
    .line 14
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    const-string v2, "android.intent.action.VIEW"

    .line 17
    .line 18
    const-string v3, "https://h-game18.xyz/get-password-new/"

    .line 19
    .line 20
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-string v2, "LoginActivity"

    .line 33
    .line 34
    const-string v3, "Cannot open password page"

    .line 35
    .line 36
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :pswitch_0
    sget v0, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 41
    .line 42
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v6, v5, Lcom/minhub/gamehub/hub/LoginActivity;->j:[Ljava/lang/String;

    .line 47
    .line 48
    sget-object v7, LS1/d;->a:Ljava/util/Set;

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, LS1/d;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-static {v7, v6}, Lkotlin/collections/ArraysKt;->s(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-static {v6, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    new-instance v7, Landroid/widget/LinearLayout;

    .line 66
    .line 67
    invoke-direct {v7, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    .line 72
    .line 73
    const v8, 0x7f08008f

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    .line 82
    .line 83
    const/16 v8, 0x8

    .line 84
    .line 85
    invoke-virtual {v7, v4, v8, v4, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 86
    .line 87
    .line 88
    new-instance v8, Landroid/widget/PopupWindow;

    .line 89
    .line 90
    const/4 v9, -0x2

    .line 91
    invoke-direct {v8, v7, v9, v9, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 92
    .line 93
    .line 94
    const/high16 v3, 0x41800000    # 16.0f

    .line 95
    .line 96
    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 97
    .line 98
    .line 99
    iget-object v3, v5, Lcom/minhub/gamehub/hub/LoginActivity;->k:[Ljava/lang/String;

    .line 100
    .line 101
    array-length v9, v3

    .line 102
    move v10, v4

    .line 103
    move v11, v10

    .line 104
    :goto_1
    if-ge v10, v9, :cond_1

    .line 105
    .line 106
    aget-object v12, v3, v10

    .line 107
    .line 108
    add-int/lit8 v13, v11, 0x1

    .line 109
    .line 110
    new-instance v14, Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-direct {v14, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    const/high16 v12, 0x41600000    # 14.0f

    .line 119
    .line 120
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 121
    .line 122
    .line 123
    if-ne v11, v6, :cond_0

    .line 124
    .line 125
    const v12, 0x7f060019

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_0
    const v12, 0x7f06031b

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-virtual {v5, v12}, Landroid/content/Context;->getColor(I)I

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    .line 138
    .line 139
    const/16 v12, 0x30

    .line 140
    .line 141
    const/16 v15, 0x48

    .line 142
    .line 143
    const/16 v2, 0x1a

    .line 144
    .line 145
    invoke-virtual {v14, v12, v2, v15, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 146
    .line 147
    .line 148
    new-instance v2, LC1/z1;

    .line 149
    .line 150
    invoke-direct {v2, v8, v5, v11, v0}, LC1/z1;-><init>(Landroid/widget/PopupWindow;Lcom/minhub/gamehub/hub/LoginActivity;ILandroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v14, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    .line 158
    .line 159
    add-int/lit8 v10, v10, 0x1

    .line 160
    .line 161
    move v11, v13

    .line 162
    goto :goto_1

    .line 163
    :cond_1
    iget-object v0, v5, Lcom/minhub/gamehub/hub/LoginActivity;->e:LF/b;

    .line 164
    .line 165
    if-nez v0, :cond_2

    .line 166
    .line 167
    const-string v0, "b"

    .line 168
    .line 169
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const/4 v2, 0x0

    .line 173
    goto :goto_3

    .line 174
    :cond_2
    move-object v2, v0

    .line 175
    :goto_3
    iget-object v0, v2, LF/b;->d:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v0, Landroid/widget/Button;

    .line 178
    .line 179
    const/4 v2, 0x6

    .line 180
    invoke-virtual {v8, v0, v4, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :pswitch_1
    sget v0, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 185
    .line 186
    invoke-virtual {v5, v4}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 187
    .line 188
    .line 189
    const-string v0, "login_prefs"

    .line 190
    .line 191
    invoke-virtual {v5, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const-string v2, "account_number"

    .line 196
    .line 197
    const/4 v6, -0x1

    .line 198
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    const-wide/16 v8, 0x0

    .line 203
    .line 204
    const-string v10, "account_number_time"

    .line 205
    .line 206
    invoke-interface {v0, v10, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 207
    .line 208
    .line 209
    move-result-wide v8

    .line 210
    if-eq v7, v6, :cond_3

    .line 211
    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 213
    .line 214
    .line 215
    move-result-wide v11

    .line 216
    sub-long/2addr v11, v8

    .line 217
    const-wide/32 v8, 0x927c0

    .line 218
    .line 219
    .line 220
    cmp-long v6, v11, v8

    .line 221
    .line 222
    if-gez v6, :cond_3

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_3
    new-instance v6, Lkotlin/ranges/IntRange;

    .line 226
    .line 227
    const/16 v7, 0x9

    .line 228
    .line 229
    invoke-direct {v6, v3, v7}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 230
    .line 231
    .line 232
    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 233
    .line 234
    invoke-static {v6, v3}, Lkotlin/ranges/RangesKt;->d(Lkotlin/ranges/IntRange;Lkotlin/random/Random$Default;)I

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 247
    .line 248
    .line 249
    move-result-wide v2

    .line 250
    invoke-interface {v0, v10, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 255
    .line 256
    .line 257
    :goto_4
    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    const v2, 0x7f0c003c

    .line 262
    .line 263
    .line 264
    const/4 v3, 0x0

    .line 265
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    const v2, 0x7f09031f

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    check-cast v2, Landroid/widget/TextView;

    .line 277
    .line 278
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    .line 284
    .line 285
    const v2, 0x7f090350

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    check-cast v2, Landroid/widget/TextView;

    .line 293
    .line 294
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    const v6, 0x7f12026c

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    const v2, 0x7f09015b

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    check-cast v2, Landroid/widget/EditText;

    .line 320
    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const-string v6, "game"

    .line 324
    .line 325
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    .line 338
    const v2, 0x7f090158

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    check-cast v2, Landroid/widget/EditText;

    .line 346
    .line 347
    new-instance v3, LO0/b;

    .line 348
    .line 349
    invoke-direct {v3, v5, v4}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 350
    .line 351
    .line 352
    iget-object v6, v3, Le/f;->c:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v6, Le/b;

    .line 355
    .line 356
    iput-object v0, v6, Le/b;->t:Landroid/view/View;

    .line 357
    .line 358
    invoke-virtual {v3}, LO0/b;->c()Le/g;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    const-string v6, "create(...)"

    .line 363
    .line 364
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    if-eqz v6, :cond_4

    .line 372
    .line 373
    const v8, 0x106000d

    .line 374
    .line 375
    .line 376
    invoke-virtual {v6, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 377
    .line 378
    .line 379
    :cond_4
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 380
    .line 381
    .line 382
    const v4, 0x7f0900b1

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    new-instance v6, LC1/z1;

    .line 390
    .line 391
    invoke-direct {v6, v2, v5, v3, v7}, LC1/z1;-><init>(Landroid/widget/EditText;Lcom/minhub/gamehub/hub/LoginActivity;Le/g;I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    .line 396
    .line 397
    const v2, 0x7f09009e

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    new-instance v4, LC1/C1;

    .line 405
    .line 406
    const/4 v6, 0x3

    .line 407
    invoke-direct {v4, v5, v6}, LC1/C1;-><init>(Lcom/minhub/gamehub/hub/LoginActivity;I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    .line 412
    .line 413
    const v2, 0x7f09007c

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    new-instance v2, LC1/j;

    .line 421
    .line 422
    const/4 v4, 0x7

    .line 423
    invoke-direct {v2, v4, v5, v3}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 430
    .line 431
    .line 432
    return-void

    .line 433
    :pswitch_2
    iput-boolean v4, v5, Lcom/minhub/gamehub/hub/LoginActivity;->g:Z

    .line 434
    .line 435
    invoke-virtual {v5, v4}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 436
    .line 437
    .line 438
    new-instance v0, Ljava/lang/Thread;

    .line 439
    .line 440
    new-instance v2, LC1/g1;

    .line 441
    .line 442
    invoke-direct {v2, v3, v5}, LC1/g1;-><init>(ILjava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 449
    .line 450
    .line 451
    return-void

    .line 452
    nop

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
