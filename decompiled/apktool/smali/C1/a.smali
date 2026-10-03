.class public final synthetic LC1/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/AddGameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/a;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

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
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LC1/a;->b:I

    .line 4
    .line 5
    const/16 v2, 0xe

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v6, v0, LC1/a;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v1, v6, Lcom/minhub/gamehub/hub/AddGameActivity;->l:Landroidx/activity/result/ActivityResultLauncher;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    const v1, 0x7f120322

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v6, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :pswitch_0
    sget v1, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 37
    .line 38
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    iget-object v9, v0, LC1/a;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 43
    .line 44
    iget-boolean v1, v9, Lcom/minhub/gamehub/hub/AddGameActivity;->v:Z

    .line 45
    .line 46
    iget-boolean v2, v9, Lcom/minhub/gamehub/hub/AddGameActivity;->w:Z

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    new-instance v1, LH0/o;

    .line 53
    .line 54
    invoke-direct {v1, v9}, LH0/o;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const v6, 0x7f0c00a9

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v6, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const v3, 0x7f090076

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    move-object v12, v6

    .line 76
    check-cast v12, Landroid/widget/Button;

    .line 77
    .line 78
    if-eqz v12, :cond_3

    .line 79
    .line 80
    const v3, 0x7f0900d1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    move-object v13, v6

    .line 88
    check-cast v13, Landroid/widget/Button;

    .line 89
    .line 90
    if-eqz v13, :cond_3

    .line 91
    .line 92
    const v3, 0x7f090159

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    move-object v14, v6

    .line 100
    check-cast v14, Landroid/widget/EditText;

    .line 101
    .line 102
    if-eqz v14, :cond_3

    .line 103
    .line 104
    const v3, 0x7f0901e0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    move-object v15, v6

    .line 112
    check-cast v15, Landroid/widget/LinearLayout;

    .line 113
    .line 114
    if-eqz v15, :cond_3

    .line 115
    .line 116
    const v3, 0x7f0901e2

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    move-object/from16 v16, v6

    .line 124
    .line 125
    check-cast v16, Landroid/widget/LinearLayout;

    .line 126
    .line 127
    if-eqz v16, :cond_3

    .line 128
    .line 129
    const v3, 0x7f09027c

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    move-object/from16 v17, v6

    .line 137
    .line 138
    check-cast v17, Landroid/widget/LinearLayout;

    .line 139
    .line 140
    if-eqz v17, :cond_3

    .line 141
    .line 142
    const v3, 0x7f090281

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    move-object/from16 v18, v6

    .line 150
    .line 151
    check-cast v18, Landroid/widget/LinearLayout;

    .line 152
    .line 153
    if-eqz v18, :cond_3

    .line 154
    .line 155
    const v3, 0x7f090299

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    move-object/from16 v19, v6

    .line 163
    .line 164
    check-cast v19, Landroidx/core/widget/NestedScrollView;

    .line 165
    .line 166
    if-eqz v19, :cond_3

    .line 167
    .line 168
    const v3, 0x7f09029a

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    move-object/from16 v20, v6

    .line 176
    .line 177
    check-cast v20, Landroidx/core/widget/NestedScrollView;

    .line 178
    .line 179
    if-eqz v20, :cond_3

    .line 180
    .line 181
    const v3, 0x7f090348

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    move-object/from16 v21, v6

    .line 189
    .line 190
    check-cast v21, Landroid/widget/TextView;

    .line 191
    .line 192
    if-eqz v21, :cond_3

    .line 193
    .line 194
    const v3, 0x7f090349

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    move-object/from16 v22, v6

    .line 202
    .line 203
    check-cast v22, Landroid/widget/TextView;

    .line 204
    .line 205
    if-eqz v22, :cond_3

    .line 206
    .line 207
    const v3, 0x7f09035f

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    move-object/from16 v23, v6

    .line 215
    .line 216
    check-cast v23, Landroid/widget/TextView;

    .line 217
    .line 218
    if-eqz v23, :cond_3

    .line 219
    .line 220
    const v3, 0x7f090360

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    move-object/from16 v24, v6

    .line 228
    .line 229
    check-cast v24, Landroid/widget/TextView;

    .line 230
    .line 231
    if-eqz v24, :cond_3

    .line 232
    .line 233
    new-instance v10, Lk/m1;

    .line 234
    .line 235
    move-object v11, v2

    .line 236
    check-cast v11, Landroid/widget/LinearLayout;

    .line 237
    .line 238
    invoke-direct/range {v10 .. v24}, Lk/m1;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 239
    .line 240
    .line 241
    move-object v5, v11

    .line 242
    move-object v6, v12

    .line 243
    move-object v2, v13

    .line 244
    move-object/from16 v3, v16

    .line 245
    .line 246
    move-object/from16 v7, v17

    .line 247
    .line 248
    move-object/from16 v8, v19

    .line 249
    .line 250
    move-object/from16 v11, v22

    .line 251
    .line 252
    move-object/from16 v12, v24

    .line 253
    .line 254
    move-object v13, v10

    .line 255
    move-object/from16 v10, v21

    .line 256
    .line 257
    const-string v4, "inflate(...)"

    .line 258
    .line 259
    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v5}, LH0/o;->setContentView(Landroid/view/View;)V

    .line 263
    .line 264
    .line 265
    iget-object v4, v1, LH0/o;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 266
    .line 267
    if-nez v4, :cond_0

    .line 268
    .line 269
    invoke-virtual {v1}, LH0/o;->e()V

    .line 270
    .line 271
    .line 272
    :cond_0
    iget-object v4, v1, LH0/o;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 273
    .line 274
    const/4 v5, 0x0

    .line 275
    iput-boolean v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    .line 276
    .line 277
    if-nez v4, :cond_1

    .line 278
    .line 279
    invoke-virtual {v1}, LH0/o;->e()V

    .line 280
    .line 281
    .line 282
    :cond_1
    iget-object v4, v1, LH0/o;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 283
    .line 284
    const/4 v5, 0x3

    .line 285
    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H(I)V

    .line 286
    .line 287
    .line 288
    iget-object v4, v9, Lcom/minhub/gamehub/hub/AddGameActivity;->u:LC1/Z;

    .line 289
    .line 290
    iget-object v4, v4, LC1/Z;->a:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    .line 294
    .line 295
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 296
    .line 297
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 298
    .line 299
    .line 300
    iget-object v5, v9, Lcom/minhub/gamehub/hub/AddGameActivity;->u:LC1/Z;

    .line 301
    .line 302
    iget-object v5, v5, LC1/Z;->c:LC1/Y;

    .line 303
    .line 304
    iput-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 305
    .line 306
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 307
    .line 308
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 309
    .line 310
    .line 311
    iget-object v14, v9, Lcom/minhub/gamehub/hub/AddGameActivity;->u:LC1/Z;

    .line 312
    .line 313
    iget-object v14, v14, LC1/Z;->d:LC1/c0;

    .line 314
    .line 315
    iput-object v14, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 316
    .line 317
    iget-object v14, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v14, LC1/Y;

    .line 320
    .line 321
    invoke-virtual {v9, v14}, Lcom/minhub/gamehub/hub/AddGameActivity;->s(LC1/Y;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v14

    .line 325
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    .line 327
    .line 328
    iget-object v11, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v11, LC1/c0;

    .line 331
    .line 332
    iget-object v11, v11, LC1/c0;->b:Ljava/lang/String;

    .line 333
    .line 334
    if-nez v11, :cond_2

    .line 335
    .line 336
    const v11, 0x7f120080

    .line 337
    .line 338
    .line 339
    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v11

    .line 343
    const-string v14, "getString(...)"

    .line 344
    .line 345
    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    :cond_2
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    const-string v11, "rowEngine"

    .line 352
    .line 353
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-string v11, "tvEngineChevron"

    .line 357
    .line 358
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    const-string v11, "listEngineOptions"

    .line 362
    .line 363
    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string v11, "scrollEngineOptions"

    .line 367
    .line 368
    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    sget-object v11, LC1/Y;->e:Lkotlin/enums/EnumEntries;

    .line 372
    .line 373
    move-object v12, v15

    .line 374
    new-instance v15, LC1/q;

    .line 375
    .line 376
    const/4 v14, 0x0

    .line 377
    invoke-direct {v15, v14, v9}, LC1/q;-><init>(ILjava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 381
    .line 382
    move-object/from16 v16, v11

    .line 383
    .line 384
    new-instance v11, LC1/f;

    .line 385
    .line 386
    invoke-direct {v11, v9, v13, v14}, LC1/f;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Lk/m1;I)V

    .line 387
    .line 388
    .line 389
    move-object/from16 v19, v1

    .line 390
    .line 391
    new-instance v1, LC1/g;

    .line 392
    .line 393
    invoke-direct {v1, v4, v13, v9, v14}, LC1/g;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lk/m1;Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 394
    .line 395
    .line 396
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 397
    .line 398
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 399
    .line 400
    .line 401
    iput-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 402
    .line 403
    move-object v0, v7

    .line 404
    new-instance v7, LC1/l;

    .line 405
    .line 406
    move-object/from16 v21, v6

    .line 407
    .line 408
    move-object v6, v13

    .line 409
    move-object/from16 v13, v16

    .line 410
    .line 411
    move-object/from16 v16, v1

    .line 412
    .line 413
    move-object/from16 v1, v18

    .line 414
    .line 415
    move-object/from16 v18, v4

    .line 416
    .line 417
    move-object/from16 v4, v20

    .line 418
    .line 419
    move-object/from16 v20, v2

    .line 420
    .line 421
    move-object/from16 v2, v23

    .line 422
    .line 423
    invoke-direct/range {v7 .. v16}, LC1/l;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/minhub/gamehub/hub/AddGameActivity;Landroid/widget/TextView;Lkotlin/jvm/functions/Function0;Landroid/widget/LinearLayout;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 424
    .line 425
    .line 426
    move-object v11, v15

    .line 427
    move-object v15, v12

    .line 428
    move-object/from16 v12, v16

    .line 429
    .line 430
    move-object/from16 v16, v13

    .line 431
    .line 432
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    .line 434
    .line 435
    move-object v13, v10

    .line 436
    move-object v7, v15

    .line 437
    move-object v10, v9

    .line 438
    move-object v9, v14

    .line 439
    move-object v14, v8

    .line 440
    move-object/from16 v8, v16

    .line 441
    .line 442
    invoke-static/range {v7 .. v14}, Lcom/minhub/gamehub/hub/AddGameActivity;->o(Landroid/widget/LinearLayout;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/minhub/gamehub/hub/AddGameActivity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroid/widget/TextView;Landroidx/core/widget/NestedScrollView;)V

    .line 443
    .line 444
    .line 445
    move-object v9, v10

    .line 446
    const-string v0, "rowLanguage"

    .line 447
    .line 448
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    const-string v0, "tvLanguageChevron"

    .line 452
    .line 453
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    const-string v0, "listLanguageOptions"

    .line 457
    .line 458
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    const-string v0, "scrollLanguageOptions"

    .line 462
    .line 463
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    sget-object v8, LC1/c0;->e:Lkotlin/enums/EnumEntries;

    .line 467
    .line 468
    new-instance v15, LC1/q;

    .line 469
    .line 470
    const/4 v0, 0x1

    .line 471
    invoke-direct {v15, v0, v9}, LC1/q;-><init>(ILjava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    iget-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 475
    .line 476
    new-instance v11, LC1/f;

    .line 477
    .line 478
    invoke-direct {v11, v9, v6, v0}, LC1/f;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Lk/m1;I)V

    .line 479
    .line 480
    .line 481
    new-instance v12, LC1/g;

    .line 482
    .line 483
    invoke-direct {v12, v5, v6, v9, v0}, LC1/g;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lk/m1;Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 484
    .line 485
    .line 486
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 487
    .line 488
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 489
    .line 490
    .line 491
    iput-object v7, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 492
    .line 493
    new-instance v7, LC1/l;

    .line 494
    .line 495
    move-object v10, v2

    .line 496
    move-object v13, v8

    .line 497
    move-object/from16 v16, v12

    .line 498
    .line 499
    move-object v12, v3

    .line 500
    move-object v8, v4

    .line 501
    invoke-direct/range {v7 .. v16}, LC1/l;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/minhub/gamehub/hub/AddGameActivity;Landroid/widget/TextView;Lkotlin/jvm/functions/Function0;Landroid/widget/LinearLayout;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 502
    .line 503
    .line 504
    move-object/from16 v23, v16

    .line 505
    .line 506
    move-object/from16 v16, v12

    .line 507
    .line 508
    move-object/from16 v12, v23

    .line 509
    .line 510
    move-object/from16 v23, v10

    .line 511
    .line 512
    move-object v10, v9

    .line 513
    move-object v9, v14

    .line 514
    move-object v14, v8

    .line 515
    move-object v8, v13

    .line 516
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    .line 518
    .line 519
    move-object v11, v15

    .line 520
    move-object/from16 v7, v16

    .line 521
    .line 522
    move-object/from16 v13, v23

    .line 523
    .line 524
    invoke-static/range {v7 .. v14}, Lcom/minhub/gamehub/hub/AddGameActivity;->o(Landroid/widget/LinearLayout;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/minhub/gamehub/hub/AddGameActivity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroid/widget/TextView;Landroidx/core/widget/NestedScrollView;)V

    .line 525
    .line 526
    .line 527
    move-object v9, v10

    .line 528
    new-instance v7, LC1/i;

    .line 529
    .line 530
    const/4 v13, 0x0

    .line 531
    move-object v11, v5

    .line 532
    move-object v8, v9

    .line 533
    move-object/from16 v10, v18

    .line 534
    .line 535
    move-object/from16 v12, v19

    .line 536
    .line 537
    move-object v9, v6

    .line 538
    invoke-direct/range {v7 .. v13}, LC1/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 539
    .line 540
    .line 541
    move-object v9, v8

    .line 542
    move-object/from16 v6, v21

    .line 543
    .line 544
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    .line 546
    .line 547
    new-instance v0, LC1/j;

    .line 548
    .line 549
    const/4 v14, 0x0

    .line 550
    invoke-direct {v0, v14, v9, v12}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    move-object/from16 v2, v20

    .line 554
    .line 555
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    .line 559
    .line 560
    .line 561
    goto :goto_1

    .line 562
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    new-instance v1, Ljava/lang/NullPointerException;

    .line 571
    .line 572
    const-string v2, "Missing required view with ID: "

    .line 573
    .line 574
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    throw v1

    .line 582
    :cond_4
    :goto_1
    return-void

    .line 583
    :pswitch_2
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 584
    .line 585
    new-instance v0, Landroid/widget/PopupMenu;

    .line 586
    .line 587
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 588
    .line 589
    const v2, 0x7f1302f5

    .line 590
    .line 591
    .line 592
    invoke-direct {v1, v6, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 593
    .line 594
    .line 595
    iget-object v2, v6, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 596
    .line 597
    if-nez v2, :cond_5

    .line 598
    .line 599
    const-string v2, "b"

    .line 600
    .line 601
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    goto :goto_2

    .line 605
    :cond_5
    move-object v3, v2

    .line 606
    :goto_2
    iget-object v2, v3, Lw1/a;->e:Landroid/widget/ImageButton;

    .line 607
    .line 608
    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    const/high16 v2, 0x7f0e0000

    .line 616
    .line 617
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 622
    .line 623
    .line 624
    new-instance v1, LC1/d;

    .line 625
    .line 626
    invoke-direct {v1, v6}, LC1/d;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 633
    .line 634
    .line 635
    return-void

    .line 636
    :pswitch_3
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 637
    .line 638
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 639
    .line 640
    .line 641
    return-void

    .line 642
    :pswitch_4
    iget-object v0, v6, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 643
    .line 644
    iget v1, v0, LC1/E1;->a:I

    .line 645
    .line 646
    const/4 v4, 0x1

    .line 647
    add-int/2addr v1, v4

    .line 648
    iget v5, v0, LC1/E1;->b:I

    .line 649
    .line 650
    invoke-static {v5, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 651
    .line 652
    .line 653
    move-result v5

    .line 654
    invoke-static {v1, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    const/4 v14, 0x0

    .line 659
    invoke-static {v0, v1, v14, v3, v2}, LC1/E1;->a(LC1/E1;IZLjava/lang/String;I)LC1/E1;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    iget v0, v0, LC1/E1;->a:I

    .line 664
    .line 665
    invoke-virtual {v6, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->A(I)V

    .line 666
    .line 667
    .line 668
    return-void

    .line 669
    :pswitch_5
    move v14, v4

    .line 670
    move v4, v5

    .line 671
    iget-object v0, v6, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 672
    .line 673
    iget v1, v0, LC1/E1;->a:I

    .line 674
    .line 675
    sub-int/2addr v1, v4

    .line 676
    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 677
    .line 678
    .line 679
    move-result v1

    .line 680
    invoke-static {v0, v1, v14, v3, v2}, LC1/E1;->a(LC1/E1;IZLjava/lang/String;I)LC1/E1;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    iget v0, v0, LC1/E1;->a:I

    .line 685
    .line 686
    invoke-virtual {v6, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->A(I)V

    .line 687
    .line 688
    .line 689
    return-void

    .line 690
    :pswitch_6
    iget-object v0, v6, Lcom/minhub/gamehub/hub/AddGameActivity;->p:LC1/E1;

    .line 691
    .line 692
    iget-boolean v1, v0, LC1/E1;->c:Z

    .line 693
    .line 694
    if-nez v1, :cond_6

    .line 695
    .line 696
    iget-object v0, v0, LC1/E1;->d:Ljava/lang/String;

    .line 697
    .line 698
    if-eqz v0, :cond_6

    .line 699
    .line 700
    iget-object v0, v6, Lcom/minhub/gamehub/hub/AddGameActivity;->q:LC1/E1;

    .line 701
    .line 702
    iget v0, v0, LC1/E1;->a:I

    .line 703
    .line 704
    const/4 v4, 0x1

    .line 705
    invoke-virtual {v6, v0, v4}, Lcom/minhub/gamehub/hub/AddGameActivity;->u(II)V

    .line 706
    .line 707
    .line 708
    :cond_6
    return-void

    .line 709
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
