.class public final Lcom/minhub/gamehub/hub/SetupAppLockActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/SetupAppLockActivity;",
        "LS1/c;",
        "<init>",
        "()V",
        "com/bumptech/glide/c",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic j:I


# instance fields
.field public e:Lw1/g;

.field public f:LC1/V1;

.field public final g:Ljava/lang/StringBuilder;

.field public h:Ljava/lang/String;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->g:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final m()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7f12002f

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x7f120030

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "getString(...)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->f:LC1/V1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ui"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->g:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, LC1/V1;->f(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const v2, 0x7f0c002a

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const v2, 0x7f090065

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    move-object v7, v3

    .line 27
    check-cast v7, Landroid/widget/Button;

    .line 28
    .line 29
    if-eqz v7, :cond_18

    .line 30
    .line 31
    const v2, 0x7f090066

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    move-object v8, v3

    .line 39
    check-cast v8, Landroid/widget/Button;

    .line 40
    .line 41
    if-eqz v8, :cond_18

    .line 42
    .line 43
    const v2, 0x7f090067

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    move-object v9, v3

    .line 51
    check-cast v9, Landroid/widget/Button;

    .line 52
    .line 53
    if-eqz v9, :cond_18

    .line 54
    .line 55
    const v2, 0x7f090068

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    move-object v10, v3

    .line 63
    check-cast v10, Landroid/widget/Button;

    .line 64
    .line 65
    if-eqz v10, :cond_18

    .line 66
    .line 67
    const v2, 0x7f090069

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    move-object v11, v3

    .line 75
    check-cast v11, Landroid/widget/Button;

    .line 76
    .line 77
    if-eqz v11, :cond_18

    .line 78
    .line 79
    const v2, 0x7f09006a

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    move-object v12, v3

    .line 87
    check-cast v12, Landroid/widget/Button;

    .line 88
    .line 89
    if-eqz v12, :cond_18

    .line 90
    .line 91
    const v2, 0x7f09006b

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    move-object v13, v3

    .line 99
    check-cast v13, Landroid/widget/Button;

    .line 100
    .line 101
    if-eqz v13, :cond_18

    .line 102
    .line 103
    const v2, 0x7f09006c

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    move-object v14, v3

    .line 111
    check-cast v14, Landroid/widget/Button;

    .line 112
    .line 113
    if-eqz v14, :cond_18

    .line 114
    .line 115
    const v2, 0x7f09006d

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    move-object v15, v3

    .line 123
    check-cast v15, Landroid/widget/Button;

    .line 124
    .line 125
    if-eqz v15, :cond_18

    .line 126
    .line 127
    const v2, 0x7f09006e

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    move-object/from16 v16, v3

    .line 135
    .line 136
    check-cast v16, Landroid/widget/Button;

    .line 137
    .line 138
    if-eqz v16, :cond_18

    .line 139
    .line 140
    const v2, 0x7f09007a

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    move-object/from16 v17, v3

    .line 148
    .line 149
    check-cast v17, Landroid/widget/ImageButton;

    .line 150
    .line 151
    if-eqz v17, :cond_18

    .line 152
    .line 153
    const v2, 0x7f090137

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    move-object/from16 v18, v3

    .line 161
    .line 162
    check-cast v18, Landroid/widget/ImageView;

    .line 163
    .line 164
    if-eqz v18, :cond_18

    .line 165
    .line 166
    const v2, 0x7f090138

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    move-object/from16 v19, v3

    .line 174
    .line 175
    check-cast v19, Landroid/widget/ImageView;

    .line 176
    .line 177
    if-eqz v19, :cond_18

    .line 178
    .line 179
    const v2, 0x7f090139

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    move-object/from16 v20, v3

    .line 187
    .line 188
    check-cast v20, Landroid/widget/ImageView;

    .line 189
    .line 190
    if-eqz v20, :cond_18

    .line 191
    .line 192
    const v2, 0x7f09013a

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    move-object/from16 v21, v3

    .line 200
    .line 201
    check-cast v21, Landroid/widget/ImageView;

    .line 202
    .line 203
    if-eqz v21, :cond_18

    .line 204
    .line 205
    const v2, 0x7f09013c

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    move-object/from16 v22, v3

    .line 213
    .line 214
    check-cast v22, Landroid/widget/LinearLayout;

    .line 215
    .line 216
    if-eqz v22, :cond_18

    .line 217
    .line 218
    const v2, 0x7f09025c

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    move-object/from16 v23, v3

    .line 226
    .line 227
    check-cast v23, Landroid/widget/LinearLayout;

    .line 228
    .line 229
    if-eqz v23, :cond_18

    .line 230
    .line 231
    const v2, 0x7f090368

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    move-object/from16 v24, v3

    .line 239
    .line 240
    check-cast v24, Landroid/widget/TextView;

    .line 241
    .line 242
    if-eqz v24, :cond_18

    .line 243
    .line 244
    const v2, 0x7f090383

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    move-object/from16 v25, v3

    .line 252
    .line 253
    check-cast v25, Landroid/widget/TextView;

    .line 254
    .line 255
    if-eqz v25, :cond_18

    .line 256
    .line 257
    new-instance v5, Lw1/g;

    .line 258
    .line 259
    move-object v6, v1

    .line 260
    check-cast v6, Landroid/widget/LinearLayout;

    .line 261
    .line 262
    invoke-direct/range {v5 .. v25}, Lw1/g;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 263
    .line 264
    .line 265
    const-string v1, "inflate(...)"

    .line 266
    .line 267
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iput-object v5, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 271
    .line 272
    invoke-virtual {v0, v6}, Le/j;->setContentView(Landroid/view/View;)V

    .line 273
    .line 274
    .line 275
    new-instance v7, LC1/V1;

    .line 276
    .line 277
    iget-object v1, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 278
    .line 279
    const-string v2, "b"

    .line 280
    .line 281
    if-nez v1, :cond_0

    .line 282
    .line 283
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    move-object v1, v4

    .line 287
    :cond_0
    iget-object v8, v1, Lw1/g;->r:Landroid/widget/TextView;

    .line 288
    .line 289
    const-string v1, "tvLockTitle"

    .line 290
    .line 291
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-object v1, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 295
    .line 296
    if-nez v1, :cond_1

    .line 297
    .line 298
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    move-object v1, v4

    .line 302
    :cond_1
    iget-object v9, v1, Lw1/g;->p:Landroid/widget/LinearLayout;

    .line 303
    .line 304
    const-string v1, "dotsRow"

    .line 305
    .line 306
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object v1, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 310
    .line 311
    if-nez v1, :cond_2

    .line 312
    .line 313
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    move-object v1, v4

    .line 317
    :cond_2
    iget-object v1, v1, Lw1/g;->l:Landroid/widget/ImageView;

    .line 318
    .line 319
    iget-object v3, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 320
    .line 321
    if-nez v3, :cond_3

    .line 322
    .line 323
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    move-object v3, v4

    .line 327
    :cond_3
    iget-object v3, v3, Lw1/g;->m:Landroid/widget/ImageView;

    .line 328
    .line 329
    iget-object v5, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 330
    .line 331
    if-nez v5, :cond_4

    .line 332
    .line 333
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    move-object v5, v4

    .line 337
    :cond_4
    iget-object v5, v5, Lw1/g;->n:Landroid/widget/ImageView;

    .line 338
    .line 339
    iget-object v6, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 340
    .line 341
    if-nez v6, :cond_5

    .line 342
    .line 343
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    move-object v6, v4

    .line 347
    :cond_5
    iget-object v6, v6, Lw1/g;->o:Landroid/widget/ImageView;

    .line 348
    .line 349
    filled-new-array {v1, v3, v5, v6}, [Landroid/widget/ImageView;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 354
    .line 355
    .line 356
    move-result-object v10

    .line 357
    iget-object v1, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 358
    .line 359
    if-nez v1, :cond_6

    .line 360
    .line 361
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    move-object v1, v4

    .line 365
    :cond_6
    iget-object v11, v1, Lw1/g;->s:Landroid/widget/TextView;

    .line 366
    .line 367
    const-string v1, "tvPinHint"

    .line 368
    .line 369
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    iget-object v1, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 373
    .line 374
    if-nez v1, :cond_7

    .line 375
    .line 376
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    move-object v1, v4

    .line 380
    :cond_7
    iget-object v12, v1, Lw1/g;->q:Landroid/widget/LinearLayout;

    .line 381
    .line 382
    const-string v1, "pinPad"

    .line 383
    .line 384
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-direct/range {v7 .. v12}, LC1/V1;-><init>(Landroid/widget/TextView;Landroid/widget/LinearLayout;Ljava/util/List;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 388
    .line 389
    .line 390
    iput-object v7, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->f:LC1/V1;

    .line 391
    .line 392
    iget-object v1, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 393
    .line 394
    if-nez v1, :cond_8

    .line 395
    .line 396
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    move-object v1, v4

    .line 400
    :cond_8
    iget-object v1, v1, Lw1/g;->r:Landroid/widget/TextView;

    .line 401
    .line 402
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->m()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    .line 408
    .line 409
    iget-object v1, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->f:LC1/V1;

    .line 410
    .line 411
    const-string v3, "ui"

    .line 412
    .line 413
    if-nez v1, :cond_9

    .line 414
    .line 415
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    move-object v1, v4

    .line 419
    :cond_9
    iget-object v5, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 420
    .line 421
    if-nez v5, :cond_a

    .line 422
    .line 423
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    move-object v5, v4

    .line 427
    :cond_a
    iget-object v6, v5, Lw1/g;->a:Landroid/widget/Button;

    .line 428
    .line 429
    iget-object v5, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 430
    .line 431
    if-nez v5, :cond_b

    .line 432
    .line 433
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    move-object v5, v4

    .line 437
    :cond_b
    iget-object v7, v5, Lw1/g;->b:Landroid/widget/Button;

    .line 438
    .line 439
    iget-object v5, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 440
    .line 441
    if-nez v5, :cond_c

    .line 442
    .line 443
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    move-object v5, v4

    .line 447
    :cond_c
    iget-object v8, v5, Lw1/g;->c:Landroid/widget/Button;

    .line 448
    .line 449
    iget-object v5, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 450
    .line 451
    if-nez v5, :cond_d

    .line 452
    .line 453
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    move-object v5, v4

    .line 457
    :cond_d
    iget-object v9, v5, Lw1/g;->d:Landroid/widget/Button;

    .line 458
    .line 459
    iget-object v5, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 460
    .line 461
    if-nez v5, :cond_e

    .line 462
    .line 463
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    move-object v5, v4

    .line 467
    :cond_e
    iget-object v10, v5, Lw1/g;->e:Landroid/widget/Button;

    .line 468
    .line 469
    iget-object v5, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 470
    .line 471
    if-nez v5, :cond_f

    .line 472
    .line 473
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    move-object v5, v4

    .line 477
    :cond_f
    iget-object v11, v5, Lw1/g;->f:Landroid/widget/Button;

    .line 478
    .line 479
    iget-object v5, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 480
    .line 481
    if-nez v5, :cond_10

    .line 482
    .line 483
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    move-object v5, v4

    .line 487
    :cond_10
    iget-object v12, v5, Lw1/g;->g:Landroid/widget/Button;

    .line 488
    .line 489
    iget-object v5, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 490
    .line 491
    if-nez v5, :cond_11

    .line 492
    .line 493
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    move-object v5, v4

    .line 497
    :cond_11
    iget-object v13, v5, Lw1/g;->h:Landroid/widget/Button;

    .line 498
    .line 499
    iget-object v5, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 500
    .line 501
    if-nez v5, :cond_12

    .line 502
    .line 503
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    move-object v5, v4

    .line 507
    :cond_12
    iget-object v14, v5, Lw1/g;->i:Landroid/widget/Button;

    .line 508
    .line 509
    iget-object v5, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 510
    .line 511
    if-nez v5, :cond_13

    .line 512
    .line 513
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    move-object v5, v4

    .line 517
    :cond_13
    iget-object v15, v5, Lw1/g;->j:Landroid/widget/Button;

    .line 518
    .line 519
    filled-new-array/range {v6 .. v15}, [Landroid/widget/Button;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 524
    .line 525
    .line 526
    move-result-object v5

    .line 527
    new-instance v6, LA1/p;

    .line 528
    .line 529
    const/16 v7, 0xa

    .line 530
    .line 531
    invoke-direct {v6, v7, v0}, LA1/p;-><init>(ILjava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1, v5, v6}, LC1/V1;->b(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 535
    .line 536
    .line 537
    iget-object v1, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->f:LC1/V1;

    .line 538
    .line 539
    if-nez v1, :cond_14

    .line 540
    .line 541
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    move-object v1, v4

    .line 545
    :cond_14
    iget-object v5, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->e:Lw1/g;

    .line 546
    .line 547
    if-nez v5, :cond_15

    .line 548
    .line 549
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    move-object v5, v4

    .line 553
    :cond_15
    iget-object v2, v5, Lw1/g;->k:Landroid/widget/ImageButton;

    .line 554
    .line 555
    const-string v5, "btnBackspace"

    .line 556
    .line 557
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    new-instance v5, LC1/i2;

    .line 561
    .line 562
    const/4 v6, 0x0

    .line 563
    invoke-direct {v5, v0, v6}, LC1/i2;-><init>(Lcom/minhub/gamehub/hub/SetupAppLockActivity;I)V

    .line 564
    .line 565
    .line 566
    new-instance v6, LC1/i2;

    .line 567
    .line 568
    const/4 v7, 0x1

    .line 569
    invoke-direct {v6, v0, v7}, LC1/i2;-><init>(Lcom/minhub/gamehub/hub/SetupAppLockActivity;I)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v1, v2, v5, v6}, LC1/V1;->a(Landroid/widget/ImageButton;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->n()V

    .line 576
    .line 577
    .line 578
    if-nez p1, :cond_17

    .line 579
    .line 580
    iget-object v1, v0, Lcom/minhub/gamehub/hub/SetupAppLockActivity;->f:LC1/V1;

    .line 581
    .line 582
    if-nez v1, :cond_16

    .line 583
    .line 584
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    goto :goto_0

    .line 588
    :cond_16
    move-object v4, v1

    .line 589
    :goto_0
    invoke-virtual {v4}, LC1/V1;->e()V

    .line 590
    .line 591
    .line 592
    :cond_17
    return-void

    .line 593
    :cond_18
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    new-instance v2, Ljava/lang/NullPointerException;

    .line 602
    .line 603
    const-string v3, "Missing required view with ID: "

    .line 604
    .line 605
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    throw v2
.end method
