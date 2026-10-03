.class public final Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;",
        "LS1/c;",
        "<init>",
        "()V",
        "C1/K1",
        "com/bumptech/glide/d",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOnlineGameDetailActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnlineGameDetailActivity.kt\ncom/minhub/gamehub/hub/OnlineGameDetailActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,551:1\n1#2:552\n257#3,2:553\n161#3,8:560\n1761#4,3:555\n295#4,2:558\n*S KotlinDebug\n*F\n+ 1 OnlineGameDetailActivity.kt\ncom/minhub/gamehub/hub/OnlineGameDetailActivity\n*L\n251#1:553,2\n177#1:560,8\n354#1:555,3\n490#1:558,2\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public e:Lw1/f;

.field public f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

.field public g:LC1/j0;

.field public h:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final m()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 4
    .line 5
    const-string v2, "item"

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getStreamUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->o()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v1, v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    :cond_2
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->effectiveDownloadLinks()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v4, v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 40
    .line 41
    const-string v5, "b"

    .line 42
    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    :cond_3
    iget-object v4, v4, Lw1/f;->n:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 52
    .line 53
    .line 54
    iget-object v4, v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->h:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 55
    .line 56
    const-string v6, "downloadQueue"

    .line 57
    .line 58
    if-nez v4, :cond_4

    .line 59
    .line 60
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    :cond_4
    iget-object v7, v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 65
    .line 66
    if-nez v7, :cond_5

    .line 67
    .line 68
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    :cond_5
    invoke-virtual {v4, v7}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->jobForItem(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    sget-object v4, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->QUEUED:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 77
    .line 78
    sget-object v7, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->RUNNING:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 79
    .line 80
    filled-new-array {v4, v7}, [Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    if-eqz v2, :cond_6

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    goto :goto_0

    .line 95
    :cond_6
    const/4 v9, 0x0

    .line 96
    :goto_0
    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-eqz v2, :cond_7

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    goto :goto_1

    .line 107
    :cond_7
    const/4 v9, 0x0

    .line 108
    :goto_1
    sget-object v10, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->COMPLETED:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 109
    .line 110
    const/4 v11, 0x1

    .line 111
    const/4 v12, 0x0

    .line 112
    if-ne v9, v10, :cond_8

    .line 113
    .line 114
    move v9, v11

    .line 115
    goto :goto_2

    .line 116
    :cond_8
    move v9, v12

    .line 117
    :goto_2
    iget-object v13, v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 118
    .line 119
    if-nez v13, :cond_9

    .line 120
    .line 121
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/4 v13, 0x0

    .line 125
    :cond_9
    iget-object v13, v13, Lw1/f;->y:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    const v15, 0x7f1200e4

    .line 132
    .line 133
    .line 134
    if-eqz v14, :cond_a

    .line 135
    .line 136
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    goto :goto_3

    .line 141
    :cond_a
    if-nez v2, :cond_b

    .line 142
    .line 143
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    goto :goto_3

    .line 148
    :cond_b
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 149
    .line 150
    .line 151
    move-result-object v14

    .line 152
    if-ne v14, v4, :cond_c

    .line 153
    .line 154
    const v4, 0x7f1200e5

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    goto :goto_3

    .line 162
    :cond_c
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    if-ne v4, v7, :cond_d

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getProgress()I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    const v7, 0x7f1200e6

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    goto :goto_3

    .line 188
    :cond_d
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    if-ne v4, v10, :cond_e

    .line 193
    .line 194
    const v4, 0x7f1200e1

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    goto :goto_3

    .line 202
    :cond_e
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getErrorMessage()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    if-nez v4, :cond_f

    .line 207
    .line 208
    const v4, 0x7f1200e3

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    const-string v7, "getString(...)"

    .line 216
    .line 217
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :cond_f
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    const v7, 0x7f1200e2

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    :goto_3
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    iget-object v4, v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 235
    .line 236
    if-nez v4, :cond_10

    .line 237
    .line 238
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const/4 v4, 0x0

    .line 242
    :cond_10
    iget-object v4, v4, Lw1/f;->r:Landroid/widget/ProgressBar;

    .line 243
    .line 244
    const/16 v7, 0x8

    .line 245
    .line 246
    if-eqz v8, :cond_11

    .line 247
    .line 248
    move v10, v12

    .line 249
    goto :goto_4

    .line 250
    :cond_11
    move v10, v7

    .line 251
    :goto_4
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    iget-object v4, v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 255
    .line 256
    if-nez v4, :cond_12

    .line 257
    .line 258
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    const/4 v4, 0x0

    .line 262
    :cond_12
    iget-object v4, v4, Lw1/f;->r:Landroid/widget/ProgressBar;

    .line 263
    .line 264
    if-eqz v8, :cond_13

    .line 265
    .line 266
    if-eqz v2, :cond_13

    .line 267
    .line 268
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getProgress()I

    .line 269
    .line 270
    .line 271
    move-result v10

    .line 272
    goto :goto_5

    .line 273
    :cond_13
    move v10, v12

    .line 274
    :goto_5
    invoke-virtual {v4, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 275
    .line 276
    .line 277
    iget-object v4, v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 278
    .line 279
    if-nez v4, :cond_14

    .line 280
    .line 281
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const/4 v4, 0x0

    .line 285
    :cond_14
    iget-object v4, v4, Lw1/f;->c:Landroid/widget/Button;

    .line 286
    .line 287
    if-eqz v9, :cond_15

    .line 288
    .line 289
    move v10, v12

    .line 290
    goto :goto_6

    .line 291
    :cond_15
    move v10, v7

    .line 292
    :goto_6
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    if-eqz v9, :cond_19

    .line 296
    .line 297
    if-eqz v2, :cond_17

    .line 298
    .line 299
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getImportedGameId()Ljava/lang/Long;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    if-eqz v2, :cond_17

    .line 304
    .line 305
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 306
    .line 307
    .line 308
    move-result-wide v9

    .line 309
    const-wide/16 v13, 0x0

    .line 310
    .line 311
    cmp-long v4, v9, v13

    .line 312
    .line 313
    if-lez v4, :cond_16

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_16
    const/4 v2, 0x0

    .line 317
    :goto_7
    if-eqz v2, :cond_17

    .line 318
    .line 319
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 320
    .line 321
    .line 322
    move-result-wide v9

    .line 323
    long-to-int v2, v9

    .line 324
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    goto :goto_8

    .line 329
    :cond_17
    const/4 v2, 0x0

    .line 330
    :goto_8
    if-eqz v2, :cond_19

    .line 331
    .line 332
    iget-object v4, v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 333
    .line 334
    if-nez v4, :cond_18

    .line 335
    .line 336
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const/4 v4, 0x0

    .line 340
    :cond_18
    iget-object v4, v4, Lw1/f;->c:Landroid/widget/Button;

    .line 341
    .line 342
    new-instance v9, LC1/j;

    .line 343
    .line 344
    const/16 v10, 0xb

    .line 345
    .line 346
    invoke-direct {v9, v10, v0, v2}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    .line 351
    .line 352
    :cond_19
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    const/4 v4, -0x2

    .line 357
    const/4 v9, -0x1

    .line 358
    const/16 v10, 0xc

    .line 359
    .line 360
    if-eqz v2, :cond_1a

    .line 361
    .line 362
    goto/16 :goto_9

    .line 363
    .line 364
    :cond_1a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    .line 370
    .line 371
    move-result v13

    .line 372
    if-eqz v13, :cond_1e

    .line 373
    .line 374
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v13

    .line 378
    check-cast v13, Lcom/minhub/gamehub/hub/catalog/DownloadLink;

    .line 379
    .line 380
    invoke-virtual {v13}, Lcom/minhub/gamehub/hub/catalog/DownloadLink;->getUrl()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v13

    .line 384
    const-string v14, "buzzheavier.com"

    .line 385
    .line 386
    invoke-static {v13, v14}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 387
    .line 388
    .line 389
    move-result v14

    .line 390
    if-nez v14, :cond_1c

    .line 391
    .line 392
    const-string v14, "bzzhr.to"

    .line 393
    .line 394
    invoke-static {v13, v14}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 395
    .line 396
    .line 397
    move-result v13

    .line 398
    if-eqz v13, :cond_1b

    .line 399
    .line 400
    :cond_1c
    iget-object v2, v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 401
    .line 402
    if-nez v2, :cond_1d

    .line 403
    .line 404
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    const/4 v2, 0x0

    .line 408
    :cond_1d
    iget-object v2, v2, Lw1/f;->n:Landroid/widget/LinearLayout;

    .line 409
    .line 410
    invoke-virtual {v0}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 411
    .line 412
    .line 413
    move-result-object v13

    .line 414
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 415
    .line 416
    .line 417
    move-result-object v13

    .line 418
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 419
    .line 420
    new-instance v14, Landroid/widget/TextView;

    .line 421
    .line 422
    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 423
    .line 424
    .line 425
    const v15, 0x7f1200d7

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v15

    .line 432
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    .line 434
    .line 435
    const/high16 v15, 0x41400000    # 12.0f

    .line 436
    .line 437
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 438
    .line 439
    .line 440
    const-string v15, "#FCD34D"

    .line 441
    .line 442
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    move-result v15

    .line 446
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    .line 448
    .line 449
    int-to-float v15, v10

    .line 450
    mul-float/2addr v15, v13

    .line 451
    float-to-int v15, v15

    .line 452
    int-to-float v3, v7

    .line 453
    mul-float/2addr v3, v13

    .line 454
    float-to-int v7, v3

    .line 455
    invoke-virtual {v14, v15, v7, v15, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 456
    .line 457
    .line 458
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    .line 459
    .line 460
    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v7, v12}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v7, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 467
    .line 468
    .line 469
    const-string v3, "#1A78350A"

    .line 470
    .line 471
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    move-result v3

    .line 475
    invoke-virtual {v7, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 476
    .line 477
    .line 478
    int-to-float v3, v11

    .line 479
    mul-float/2addr v3, v13

    .line 480
    float-to-int v3, v3

    .line 481
    const-string v15, "#44D97706"

    .line 482
    .line 483
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    move-result v15

    .line 487
    invoke-virtual {v7, v3, v15}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v14, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 491
    .line 492
    .line 493
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 494
    .line 495
    invoke-direct {v3, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 496
    .line 497
    .line 498
    const/16 v7, 0xa

    .line 499
    .line 500
    int-to-float v7, v7

    .line 501
    mul-float/2addr v7, v13

    .line 502
    float-to-int v7, v7

    .line 503
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 504
    .line 505
    invoke-virtual {v14, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 509
    .line 510
    .line 511
    :cond_1e
    :goto_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    if-eqz v2, :cond_35

    .line 520
    .line 521
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    check-cast v2, Lcom/minhub/gamehub/hub/catalog/DownloadLink;

    .line 526
    .line 527
    iget-object v3, v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->h:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 528
    .line 529
    if-nez v3, :cond_1f

    .line 530
    .line 531
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    const/4 v3, 0x0

    .line 535
    :cond_1f
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/DownloadLink;->getUrl()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v7

    .line 539
    invoke-virtual {v3, v7}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->jobForUrl(Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    iget-object v7, v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 544
    .line 545
    if-nez v7, :cond_20

    .line 546
    .line 547
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    const/4 v7, 0x0

    .line 551
    :cond_20
    iget-object v7, v7, Lw1/f;->n:Landroid/widget/LinearLayout;

    .line 552
    .line 553
    invoke-virtual {v0}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 554
    .line 555
    .line 556
    move-result-object v13

    .line 557
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 558
    .line 559
    .line 560
    move-result-object v13

    .line 561
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 562
    .line 563
    if-eqz v3, :cond_21

    .line 564
    .line 565
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 566
    .line 567
    .line 568
    move-result-object v14

    .line 569
    goto :goto_b

    .line 570
    :cond_21
    const/4 v14, 0x0

    .line 571
    :goto_b
    sget-object v15, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->COMPLETED:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 572
    .line 573
    if-ne v14, v15, :cond_22

    .line 574
    .line 575
    move v14, v11

    .line 576
    goto :goto_c

    .line 577
    :cond_22
    move v14, v12

    .line 578
    :goto_c
    if-eqz v3, :cond_23

    .line 579
    .line 580
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 581
    .line 582
    .line 583
    move-result-object v15

    .line 584
    goto :goto_d

    .line 585
    :cond_23
    const/4 v15, 0x0

    .line 586
    :goto_d
    sget-object v4, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->RUNNING:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 587
    .line 588
    if-eq v15, v4, :cond_26

    .line 589
    .line 590
    if-eqz v3, :cond_24

    .line 591
    .line 592
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 593
    .line 594
    .line 595
    move-result-object v4

    .line 596
    goto :goto_e

    .line 597
    :cond_24
    const/4 v4, 0x0

    .line 598
    :goto_e
    sget-object v15, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->QUEUED:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 599
    .line 600
    if-ne v4, v15, :cond_25

    .line 601
    .line 602
    goto :goto_f

    .line 603
    :cond_25
    move v4, v12

    .line 604
    goto :goto_10

    .line 605
    :cond_26
    :goto_f
    move v4, v11

    .line 606
    :goto_10
    if-eqz v3, :cond_27

    .line 607
    .line 608
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 609
    .line 610
    .line 611
    move-result-object v15

    .line 612
    goto :goto_11

    .line 613
    :cond_27
    const/4 v15, 0x0

    .line 614
    :goto_11
    sget-object v10, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->FAILED:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 615
    .line 616
    if-ne v15, v10, :cond_28

    .line 617
    .line 618
    move v10, v11

    .line 619
    goto :goto_12

    .line 620
    :cond_28
    move v10, v12

    .line 621
    :goto_12
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/DownloadLink;->getLabel()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v15

    .line 625
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 626
    .line 627
    .line 628
    move-result v16

    .line 629
    if-lez v16, :cond_29

    .line 630
    .line 631
    new-instance v9, Ljava/lang/StringBuilder;

    .line 632
    .line 633
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    .line 637
    .line 638
    .line 639
    move-result v17

    .line 640
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v12

    .line 644
    const-string v11, "null cannot be cast to non-null type java.lang.String"

    .line 645
    .line 646
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 650
    .line 651
    invoke-virtual {v12, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v11

    .line 655
    const-string v12, "toUpperCase(...)"

    .line 656
    .line 657
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    const/4 v11, 0x1

    .line 664
    invoke-virtual {v15, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v12

    .line 668
    const-string v11, "substring(...)"

    .line 669
    .line 670
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v15

    .line 680
    :cond_29
    new-instance v9, Landroid/widget/Button;

    .line 681
    .line 682
    invoke-direct {v9, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 683
    .line 684
    .line 685
    if-eqz v3, :cond_2a

    .line 686
    .line 687
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 688
    .line 689
    .line 690
    move-result-object v11

    .line 691
    goto :goto_13

    .line 692
    :cond_2a
    const/4 v11, 0x0

    .line 693
    :goto_13
    if-nez v11, :cond_2b

    .line 694
    .line 695
    const/4 v11, -0x1

    .line 696
    goto :goto_14

    .line 697
    :cond_2b
    sget-object v12, LC1/L1;->a:[I

    .line 698
    .line 699
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 700
    .line 701
    .line 702
    move-result v11

    .line 703
    aget v11, v12, v11

    .line 704
    .line 705
    :goto_14
    const-string v12, "\u2b07  "

    .line 706
    .line 707
    move-object/from16 v18, v1

    .line 708
    .line 709
    const-string v1, "  "

    .line 710
    .line 711
    move-object/from16 v19, v3

    .line 712
    .line 713
    const/4 v3, 0x1

    .line 714
    if-eq v11, v3, :cond_2f

    .line 715
    .line 716
    const/4 v3, 0x2

    .line 717
    if-eq v11, v3, :cond_2e

    .line 718
    .line 719
    const/4 v3, 0x3

    .line 720
    if-eq v11, v3, :cond_2d

    .line 721
    .line 722
    const/4 v3, 0x4

    .line 723
    if-eq v11, v3, :cond_2c

    .line 724
    .line 725
    invoke-static {v12, v15}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    goto :goto_15

    .line 730
    :cond_2c
    const v3, 0x7f1200d6

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v3

    .line 737
    new-instance v11, Ljava/lang/StringBuilder;

    .line 738
    .line 739
    const-string v12, "\u2717  "

    .line 740
    .line 741
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    goto :goto_15

    .line 758
    :cond_2d
    const v3, 0x7f1200d4

    .line 759
    .line 760
    .line 761
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v3

    .line 765
    new-instance v11, Ljava/lang/StringBuilder;

    .line 766
    .line 767
    const-string v12, "\u2713  "

    .line 768
    .line 769
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    goto :goto_15

    .line 786
    :cond_2e
    const v3, 0x7f1200d5

    .line 787
    .line 788
    .line 789
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v3

    .line 793
    new-instance v11, Ljava/lang/StringBuilder;

    .line 794
    .line 795
    const-string v12, "\u23f3  "

    .line 796
    .line 797
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    goto :goto_15

    .line 814
    :cond_2f
    invoke-virtual/range {v19 .. v19}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getProgress()I

    .line 815
    .line 816
    .line 817
    move-result v3

    .line 818
    new-instance v11, Ljava/lang/StringBuilder;

    .line 819
    .line 820
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    const-string v1, "%"

    .line 833
    .line 834
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v1

    .line 841
    :goto_15
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    .line 843
    .line 844
    const/4 v11, 0x0

    .line 845
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 846
    .line 847
    .line 848
    const/4 v1, -0x1

    .line 849
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 850
    .line 851
    .line 852
    const/high16 v1, 0x41600000    # 14.0f

    .line 853
    .line 854
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 855
    .line 856
    .line 857
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 858
    .line 859
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 863
    .line 864
    .line 865
    const/16 v3, 0xc

    .line 866
    .line 867
    int-to-float v12, v3

    .line 868
    mul-float/2addr v12, v13

    .line 869
    invoke-virtual {v1, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 870
    .line 871
    .line 872
    if-eqz v14, :cond_30

    .line 873
    .line 874
    const-string v4, "#22C55E"

    .line 875
    .line 876
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 877
    .line 878
    .line 879
    move-result v4

    .line 880
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 881
    .line 882
    .line 883
    :goto_16
    const/4 v4, 0x1

    .line 884
    goto :goto_17

    .line 885
    :cond_30
    if-eqz v4, :cond_31

    .line 886
    .line 887
    const-string v4, "#2563EB"

    .line 888
    .line 889
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 890
    .line 891
    .line 892
    move-result v4

    .line 893
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 894
    .line 895
    .line 896
    goto :goto_16

    .line 897
    :cond_31
    if-eqz v10, :cond_32

    .line 898
    .line 899
    const-string v4, "#7F1D1D"

    .line 900
    .line 901
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 902
    .line 903
    .line 904
    move-result v4

    .line 905
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 906
    .line 907
    .line 908
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 909
    .line 910
    const/4 v4, 0x1

    .line 911
    int-to-float v12, v4

    .line 912
    mul-float/2addr v12, v13

    .line 913
    float-to-int v12, v12

    .line 914
    const-string v14, "#EF4444"

    .line 915
    .line 916
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 917
    .line 918
    .line 919
    move-result v14

    .line 920
    invoke-virtual {v1, v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 921
    .line 922
    .line 923
    goto :goto_17

    .line 924
    :cond_32
    const/4 v4, 0x1

    .line 925
    const-string v12, "#1E293B"

    .line 926
    .line 927
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 928
    .line 929
    .line 930
    move-result v12

    .line 931
    invoke-virtual {v1, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 932
    .line 933
    .line 934
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 935
    .line 936
    int-to-float v12, v4

    .line 937
    mul-float/2addr v12, v13

    .line 938
    float-to-int v12, v12

    .line 939
    const-string v14, "#334155"

    .line 940
    .line 941
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 942
    .line 943
    .line 944
    move-result v14

    .line 945
    invoke-virtual {v1, v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 946
    .line 947
    .line 948
    :goto_17
    invoke-virtual {v9, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 949
    .line 950
    .line 951
    const/16 v1, 0x10

    .line 952
    .line 953
    int-to-float v1, v1

    .line 954
    mul-float/2addr v1, v13

    .line 955
    float-to-int v1, v1

    .line 956
    const/16 v12, 0xe

    .line 957
    .line 958
    int-to-float v12, v12

    .line 959
    mul-float/2addr v12, v13

    .line 960
    float-to-int v12, v12

    .line 961
    invoke-virtual {v9, v1, v12, v1, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 962
    .line 963
    .line 964
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 965
    .line 966
    const/4 v12, -0x2

    .line 967
    const/4 v14, -0x1

    .line 968
    invoke-direct {v1, v14, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 969
    .line 970
    .line 971
    const/16 v15, 0x8

    .line 972
    .line 973
    int-to-float v3, v15

    .line 974
    mul-float/2addr v3, v13

    .line 975
    float-to-int v3, v3

    .line 976
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 977
    .line 978
    invoke-virtual {v9, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 979
    .line 980
    .line 981
    if-eqz v8, :cond_34

    .line 982
    .line 983
    if-eqz v10, :cond_33

    .line 984
    .line 985
    goto :goto_18

    .line 986
    :cond_33
    move v1, v11

    .line 987
    goto :goto_19

    .line 988
    :cond_34
    :goto_18
    move v1, v4

    .line 989
    :goto_19
    invoke-virtual {v9, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 990
    .line 991
    .line 992
    new-instance v1, LC1/j;

    .line 993
    .line 994
    const/16 v3, 0xd

    .line 995
    .line 996
    invoke-direct {v1, v3, v0, v2}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 997
    .line 998
    .line 999
    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1003
    .line 1004
    .line 1005
    move v1, v11

    .line 1006
    move v11, v4

    .line 1007
    move v4, v12

    .line 1008
    move v12, v1

    .line 1009
    move v9, v14

    .line 1010
    move-object/from16 v1, v18

    .line 1011
    .line 1012
    const/16 v10, 0xc

    .line 1013
    .line 1014
    goto/16 :goto_a

    .line 1015
    .line 1016
    :cond_35
    return-void
.end method

.method public final n(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->isSupportedRemoteUrl$app_release(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    new-instance v0, LC1/j;

    .line 21
    .line 22
    const/16 v1, 0xc

    .line 23
    .line 24
    invoke-direct {v0, v1, p0, p2}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 2
    .line 3
    const-string v1, "b"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v2

    .line 12
    :cond_0
    iget-object v0, v0, Lw1/f;->n:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object v0, v2

    .line 25
    :cond_1
    iget-object v0, v0, Lw1/f;->r:Landroid/widget/ProgressBar;

    .line 26
    .line 27
    const/16 v3, 0x8

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move-object v0, v2

    .line 40
    :cond_2
    iget-object v0, v0, Lw1/f;->y:Landroid/widget/TextView;

    .line 41
    .line 42
    const v4, 0x7f1203e4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 53
    .line 54
    const-string v4, "item"

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v0, v2

    .line 62
    :cond_3
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getPostId()J

    .line 63
    .line 64
    .line 65
    move-result-wide v5

    .line 66
    const-wide/16 v7, 0x0

    .line 67
    .line 68
    cmp-long v0, v5, v7

    .line 69
    .line 70
    if-lez v0, :cond_7

    .line 71
    .line 72
    new-instance v0, Lcom/minhub/gamehub/data/GameRepository;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    const-string v6, "getApplicationContext(...)"

    .line 79
    .line 80
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v5}, Lcom/minhub/gamehub/data/GameRepository;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/GameRepository;->getGames()Landroidx/lifecycle/LiveData;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/util/List;

    .line 95
    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_6

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    move-object v6, v5

    .line 113
    check-cast v6, Lcom/minhub/gamehub/data/Game;

    .line 114
    .line 115
    invoke-virtual {v6}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 116
    .line 117
    .line 118
    move-result-wide v6

    .line 119
    iget-object v8, p0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 120
    .line 121
    if-nez v8, :cond_5

    .line 122
    .line 123
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    move-object v8, v2

    .line 127
    :cond_5
    invoke-virtual {v8}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getPostId()J

    .line 128
    .line 129
    .line 130
    move-result-wide v8

    .line 131
    cmp-long v6, v6, v8

    .line 132
    .line 133
    if-nez v6, :cond_4

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_6
    move-object v5, v2

    .line 137
    :goto_0
    check-cast v5, Lcom/minhub/gamehub/data/Game;

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_7
    move-object v5, v2

    .line 141
    :goto_1
    const/4 v0, 0x0

    .line 142
    if-eqz v5, :cond_b

    .line 143
    .line 144
    iget-object v3, p0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 145
    .line 146
    if-nez v3, :cond_8

    .line 147
    .line 148
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    move-object v3, v2

    .line 152
    :cond_8
    iget-object v3, v3, Lw1/f;->c:Landroid/widget/Button;

    .line 153
    .line 154
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 158
    .line 159
    if-nez v0, :cond_9

    .line 160
    .line 161
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    move-object v0, v2

    .line 165
    :cond_9
    iget-object v0, v0, Lw1/f;->y:Landroid/widget/TextView;

    .line 166
    .line 167
    const v3, 0x7f1203e3

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 178
    .line 179
    if-nez v0, :cond_a

    .line 180
    .line 181
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_a
    move-object v2, v0

    .line 186
    :goto_2
    iget-object v0, v2, Lw1/f;->c:Landroid/widget/Button;

    .line 187
    .line 188
    new-instance v1, LC1/j;

    .line 189
    .line 190
    const/16 v2, 0x9

    .line 191
    .line 192
    invoke-direct {v1, v2, p0, v5}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_b
    iget-object v4, p0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 200
    .line 201
    if-nez v4, :cond_c

    .line 202
    .line 203
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    move-object v4, v2

    .line 207
    :cond_c
    iget-object v4, v4, Lw1/f;->c:Landroid/widget/Button;

    .line 208
    .line 209
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 221
    .line 222
    new-instance v5, Landroid/widget/Button;

    .line 223
    .line 224
    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 225
    .line 226
    .line 227
    const v6, 0x7f1203e1

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 238
    .line 239
    .line 240
    const/4 v6, -0x1

    .line 241
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    .line 243
    .line 244
    const/high16 v7, 0x41600000    # 14.0f

    .line 245
    .line 246
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 247
    .line 248
    .line 249
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    .line 250
    .line 251
    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 255
    .line 256
    .line 257
    const/16 v0, 0xc

    .line 258
    .line 259
    int-to-float v0, v0

    .line 260
    mul-float/2addr v0, v4

    .line 261
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 262
    .line 263
    .line 264
    const-string v0, "#7C3AED"

    .line 265
    .line 266
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 271
    .line 272
    .line 273
    const/4 v0, 0x1

    .line 274
    int-to-float v0, v0

    .line 275
    mul-float/2addr v0, v4

    .line 276
    float-to-int v0, v0

    .line 277
    const-string v8, "#A78BFA"

    .line 278
    .line 279
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    invoke-virtual {v7, v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 287
    .line 288
    .line 289
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 290
    .line 291
    const/4 v7, -0x2

    .line 292
    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 293
    .line 294
    .line 295
    int-to-float v3, v3

    .line 296
    mul-float/2addr v3, v4

    .line 297
    float-to-int v3, v3

    .line 298
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 299
    .line 300
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    .line 302
    .line 303
    new-instance v0, LC1/j;

    .line 304
    .line 305
    const/16 v3, 0xa

    .line 306
    .line 307
    invoke-direct {v0, v3, v5, p0}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 314
    .line 315
    if-nez v0, :cond_d

    .line 316
    .line 317
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_d
    move-object v2, v0

    .line 322
    :goto_3
    iget-object v0, v2, Lw1/f;->n:Landroid/widget/LinearLayout;

    .line 323
    .line 324
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 325
    .line 326
    .line 327
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 39

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v2, "extra_item_json"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_5b

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_b

    .line 25
    .line 26
    :cond_0
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 27
    .line 28
    const-string v2, "json"

    .line 29
    .line 30
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Li1/l;

    .line 34
    .line 35
    invoke-direct {v2}, Li1/l;-><init>()V

    .line 36
    .line 37
    .line 38
    const-class v3, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 39
    .line 40
    invoke-virtual {v2, v0, v3}, Li1/l;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v2, "fromJson(...)"

    .line 45
    .line 46
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    check-cast v0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-nez v2, :cond_5a

    .line 72
    .line 73
    check-cast v0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 74
    .line 75
    iput-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const v2, 0x7f0c0028

    .line 82
    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    const/4 v4, 0x0

    .line 86
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const v2, 0x7f090079

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    move-object v8, v5

    .line 98
    check-cast v8, Landroid/widget/ImageButton;

    .line 99
    .line 100
    if-eqz v8, :cond_59

    .line 101
    .line 102
    const v2, 0x7f09009f

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    move-object v9, v5

    .line 110
    check-cast v9, Landroid/widget/Button;

    .line 111
    .line 112
    if-eqz v9, :cond_59

    .line 113
    .line 114
    const v2, 0x7f0900df

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    move-object v10, v5

    .line 122
    check-cast v10, Landroid/widget/TextView;

    .line 123
    .line 124
    if-eqz v10, :cond_59

    .line 125
    .line 126
    const v2, 0x7f0900e0

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    move-object v11, v5

    .line 134
    check-cast v11, Landroid/widget/TextView;

    .line 135
    .line 136
    if-eqz v11, :cond_59

    .line 137
    .line 138
    const v2, 0x7f0900e1

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    move-object v12, v5

    .line 146
    check-cast v12, Landroid/widget/TextView;

    .line 147
    .line 148
    if-eqz v12, :cond_59

    .line 149
    .line 150
    const v2, 0x7f0900e2

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    move-object v13, v5

    .line 158
    check-cast v13, Landroid/widget/TextView;

    .line 159
    .line 160
    if-eqz v13, :cond_59

    .line 161
    .line 162
    const v2, 0x7f0900e3

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    move-object v14, v5

    .line 170
    check-cast v14, Landroid/widget/TextView;

    .line 171
    .line 172
    if-eqz v14, :cond_59

    .line 173
    .line 174
    const v2, 0x7f090180

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    move-object v15, v5

    .line 182
    check-cast v15, Landroid/widget/FrameLayout;

    .line 183
    .line 184
    if-eqz v15, :cond_59

    .line 185
    .line 186
    const v2, 0x7f09018e

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    move-object/from16 v16, v5

    .line 194
    .line 195
    check-cast v16, Landroid/widget/ImageView;

    .line 196
    .line 197
    if-eqz v16, :cond_59

    .line 198
    .line 199
    const v2, 0x7f0901ae

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    move-object/from16 v17, v5

    .line 207
    .line 208
    check-cast v17, Landroid/widget/TextView;

    .line 209
    .line 210
    if-eqz v17, :cond_59

    .line 211
    .line 212
    const v2, 0x7f0901af

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    move-object/from16 v18, v5

    .line 220
    .line 221
    check-cast v18, Landroid/widget/TextView;

    .line 222
    .line 223
    if-eqz v18, :cond_59

    .line 224
    .line 225
    const v2, 0x7f0901b0

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    move-object/from16 v19, v5

    .line 233
    .line 234
    check-cast v19, Landroid/widget/TextView;

    .line 235
    .line 236
    if-eqz v19, :cond_59

    .line 237
    .line 238
    const v2, 0x7f0901e3

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    move-object/from16 v20, v5

    .line 246
    .line 247
    check-cast v20, Landroid/widget/LinearLayout;

    .line 248
    .line 249
    if-eqz v20, :cond_59

    .line 250
    .line 251
    const v2, 0x7f09024b

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    move-object/from16 v21, v5

    .line 259
    .line 260
    check-cast v21, Landroid/widget/ScrollView;

    .line 261
    .line 262
    if-eqz v21, :cond_59

    .line 263
    .line 264
    const v2, 0x7f09024c

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    move-object/from16 v22, v5

    .line 272
    .line 273
    check-cast v22, Landroid/widget/LinearLayout;

    .line 274
    .line 275
    if-eqz v22, :cond_59

    .line 276
    .line 277
    const v2, 0x7f09024d

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    move-object/from16 v23, v5

    .line 285
    .line 286
    check-cast v23, Landroid/widget/ScrollView;

    .line 287
    .line 288
    if-eqz v23, :cond_59

    .line 289
    .line 290
    const v2, 0x7f090266

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    move-object/from16 v24, v5

    .line 298
    .line 299
    check-cast v24, Landroid/widget/ProgressBar;

    .line 300
    .line 301
    if-eqz v24, :cond_59

    .line 302
    .line 303
    const v2, 0x7f090270

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    move-object/from16 v25, v5

    .line 311
    .line 312
    check-cast v25, Landroidx/recyclerview/widget/RecyclerView;

    .line 313
    .line 314
    if-eqz v25, :cond_59

    .line 315
    .line 316
    const v2, 0x7f090287

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    check-cast v5, Landroid/widget/LinearLayout;

    .line 324
    .line 325
    if-eqz v5, :cond_59

    .line 326
    .line 327
    const v2, 0x7f09029b

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    move-object/from16 v26, v5

    .line 335
    .line 336
    check-cast v26, Landroid/widget/HorizontalScrollView;

    .line 337
    .line 338
    if-eqz v26, :cond_59

    .line 339
    .line 340
    const v2, 0x7f0902ec

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    move-object/from16 v27, v5

    .line 348
    .line 349
    check-cast v27, Lcom/google/android/material/tabs/TabLayout;

    .line 350
    .line 351
    if-eqz v27, :cond_59

    .line 352
    .line 353
    const v2, 0x7f090325

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    move-object/from16 v28, v5

    .line 361
    .line 362
    check-cast v28, Landroid/widget/TextView;

    .line 363
    .line 364
    if-eqz v28, :cond_59

    .line 365
    .line 366
    const v2, 0x7f09032e

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    move-object/from16 v29, v5

    .line 374
    .line 375
    check-cast v29, Landroid/widget/TextView;

    .line 376
    .line 377
    if-eqz v29, :cond_59

    .line 378
    .line 379
    const v2, 0x7f090336

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    move-object/from16 v30, v5

    .line 387
    .line 388
    check-cast v30, Landroid/widget/TextView;

    .line 389
    .line 390
    if-eqz v30, :cond_59

    .line 391
    .line 392
    const v2, 0x7f090344

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    move-object/from16 v31, v5

    .line 400
    .line 401
    check-cast v31, Landroid/widget/TextView;

    .line 402
    .line 403
    if-eqz v31, :cond_59

    .line 404
    .line 405
    const v2, 0x7f09034c

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    move-object/from16 v32, v5

    .line 413
    .line 414
    check-cast v32, Landroid/widget/TextView;

    .line 415
    .line 416
    if-eqz v32, :cond_59

    .line 417
    .line 418
    const v2, 0x7f09034f

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    move-object/from16 v33, v5

    .line 426
    .line 427
    check-cast v33, Landroid/widget/TextView;

    .line 428
    .line 429
    if-eqz v33, :cond_59

    .line 430
    .line 431
    const v2, 0x7f090370

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    move-object/from16 v34, v5

    .line 439
    .line 440
    check-cast v34, Landroid/widget/TextView;

    .line 441
    .line 442
    if-eqz v34, :cond_59

    .line 443
    .line 444
    const v2, 0x7f0903a2

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    move-object/from16 v35, v5

    .line 452
    .line 453
    check-cast v35, Landroid/widget/TextView;

    .line 454
    .line 455
    if-eqz v35, :cond_59

    .line 456
    .line 457
    const v2, 0x7f0903a9

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    move-object/from16 v36, v5

    .line 465
    .line 466
    check-cast v36, Landroid/widget/TextView;

    .line 467
    .line 468
    if-eqz v36, :cond_59

    .line 469
    .line 470
    const v2, 0x7f0903ab

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    move-object/from16 v37, v5

    .line 478
    .line 479
    check-cast v37, Landroid/widget/TextView;

    .line 480
    .line 481
    if-eqz v37, :cond_59

    .line 482
    .line 483
    const v2, 0x7f0903b0

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    move-object/from16 v38, v5

    .line 491
    .line 492
    check-cast v38, Landroid/widget/TextView;

    .line 493
    .line 494
    if-eqz v38, :cond_59

    .line 495
    .line 496
    new-instance v6, Lw1/f;

    .line 497
    .line 498
    move-object v7, v0

    .line 499
    check-cast v7, Landroid/widget/LinearLayout;

    .line 500
    .line 501
    invoke-direct/range {v6 .. v38}, Lw1/f;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/ScrollView;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/HorizontalScrollView;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 502
    .line 503
    .line 504
    const-string v0, "inflate(...)"

    .line 505
    .line 506
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    iput-object v6, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 510
    .line 511
    invoke-virtual {v1, v7}, Le/j;->setContentView(Landroid/view/View;)V

    .line 512
    .line 513
    .line 514
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->Companion:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;

    .line 515
    .line 516
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    const-string v5, "getApplicationContext(...)"

    .line 521
    .line 522
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0, v2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;->getInstance(Landroid/content/Context;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    iput-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->h:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 530
    .line 531
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 532
    .line 533
    const-string v2, "b"

    .line 534
    .line 535
    if-nez v0, :cond_1

    .line 536
    .line 537
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    move-object v0, v3

    .line 541
    :cond_1
    iget-object v0, v0, Lw1/f;->a:Landroid/widget/LinearLayout;

    .line 542
    .line 543
    new-instance v5, LB1/b;

    .line 544
    .line 545
    const/4 v6, 0x4

    .line 546
    invoke-direct {v5, v6, v1}, LB1/b;-><init>(ILjava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    invoke-static {v0, v5}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 550
    .line 551
    .line 552
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 553
    .line 554
    if-nez v0, :cond_2

    .line 555
    .line 556
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    move-object v0, v3

    .line 560
    :cond_2
    iget-object v0, v0, Lw1/f;->u:Lcom/google/android/material/tabs/TabLayout;

    .line 561
    .line 562
    iget-object v5, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 563
    .line 564
    if-nez v5, :cond_3

    .line 565
    .line 566
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    move-object v5, v3

    .line 570
    :cond_3
    iget-object v5, v5, Lw1/f;->u:Lcom/google/android/material/tabs/TabLayout;

    .line 571
    .line 572
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->h()Lc1/f;

    .line 573
    .line 574
    .line 575
    move-result-object v5

    .line 576
    const v6, 0x7f12032f

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v6

    .line 583
    invoke-virtual {v5, v6}, Lc1/f;->b(Ljava/lang/CharSequence;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v0, v5}, Lcom/google/android/material/tabs/TabLayout;->b(Lc1/f;)V

    .line 587
    .line 588
    .line 589
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 590
    .line 591
    if-nez v0, :cond_4

    .line 592
    .line 593
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    move-object v0, v3

    .line 597
    :cond_4
    iget-object v0, v0, Lw1/f;->u:Lcom/google/android/material/tabs/TabLayout;

    .line 598
    .line 599
    iget-object v5, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 600
    .line 601
    if-nez v5, :cond_5

    .line 602
    .line 603
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    move-object v5, v3

    .line 607
    :cond_5
    iget-object v5, v5, Lw1/f;->u:Lcom/google/android/material/tabs/TabLayout;

    .line 608
    .line 609
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->h()Lc1/f;

    .line 610
    .line 611
    .line 612
    move-result-object v5

    .line 613
    const v6, 0x7f12032d

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v6

    .line 620
    invoke-virtual {v5, v6}, Lc1/f;->b(Ljava/lang/CharSequence;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v0, v5}, Lcom/google/android/material/tabs/TabLayout;->b(Lc1/f;)V

    .line 624
    .line 625
    .line 626
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 627
    .line 628
    if-nez v0, :cond_6

    .line 629
    .line 630
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    move-object v0, v3

    .line 634
    :cond_6
    iget-object v0, v0, Lw1/f;->u:Lcom/google/android/material/tabs/TabLayout;

    .line 635
    .line 636
    iget-object v5, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 637
    .line 638
    if-nez v5, :cond_7

    .line 639
    .line 640
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    move-object v5, v3

    .line 644
    :cond_7
    iget-object v5, v5, Lw1/f;->u:Lcom/google/android/material/tabs/TabLayout;

    .line 645
    .line 646
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->h()Lc1/f;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    const v6, 0x7f12032e

    .line 651
    .line 652
    .line 653
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v6

    .line 657
    invoke-virtual {v5, v6}, Lc1/f;->b(Ljava/lang/CharSequence;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v0, v5}, Lcom/google/android/material/tabs/TabLayout;->b(Lc1/f;)V

    .line 661
    .line 662
    .line 663
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 664
    .line 665
    if-nez v0, :cond_8

    .line 666
    .line 667
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    move-object v0, v3

    .line 671
    :cond_8
    iget-object v0, v0, Lw1/f;->u:Lcom/google/android/material/tabs/TabLayout;

    .line 672
    .line 673
    new-instance v5, LC1/y0;

    .line 674
    .line 675
    const/4 v6, 0x1

    .line 676
    invoke-direct {v5, v1, v6}, LC1/y0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v0, v5}, Lcom/google/android/material/tabs/TabLayout;->a(Lc1/b;)V

    .line 680
    .line 681
    .line 682
    new-instance v0, LC1/j0;

    .line 683
    .line 684
    const/4 v5, 0x3

    .line 685
    invoke-direct {v0, v5}, LC1/j0;-><init>(I)V

    .line 686
    .line 687
    .line 688
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 689
    .line 690
    .line 691
    move-result-object v7

    .line 692
    iput-object v7, v0, LC1/j0;->e:Ljava/lang/Object;

    .line 693
    .line 694
    iput-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->g:LC1/j0;

    .line 695
    .line 696
    new-instance v7, LB1/d;

    .line 697
    .line 698
    invoke-direct {v7, v1, v5}, LB1/d;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 699
    .line 700
    .line 701
    iput-object v7, v0, LC1/j0;->f:Ljava/lang/Object;

    .line 702
    .line 703
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 704
    .line 705
    if-nez v0, :cond_9

    .line 706
    .line 707
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    move-object v0, v3

    .line 711
    :cond_9
    iget-object v0, v0, Lw1/f;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 712
    .line 713
    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 714
    .line 715
    invoke-direct {v7, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LP/g0;)V

    .line 719
    .line 720
    .line 721
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 722
    .line 723
    if-nez v0, :cond_a

    .line 724
    .line 725
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    move-object v0, v3

    .line 729
    :cond_a
    iget-object v0, v0, Lw1/f;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 730
    .line 731
    iget-object v7, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->g:LC1/j0;

    .line 732
    .line 733
    const-string v8, "imageAdapter"

    .line 734
    .line 735
    if-nez v7, :cond_b

    .line 736
    .line 737
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    move-object v7, v3

    .line 741
    :cond_b
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LP/W;)V

    .line 742
    .line 743
    .line 744
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 745
    .line 746
    if-nez v0, :cond_c

    .line 747
    .line 748
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    move-object v0, v3

    .line 752
    :cond_c
    iget-object v0, v0, Lw1/f;->b:Landroid/widget/ImageButton;

    .line 753
    .line 754
    new-instance v7, LC1/J1;

    .line 755
    .line 756
    invoke-direct {v7, v1, v4}, LC1/J1;-><init>(Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;I)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    .line 761
    .line 762
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 763
    .line 764
    if-nez v0, :cond_d

    .line 765
    .line 766
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    move-object v0, v3

    .line 770
    :cond_d
    iget-object v0, v0, Lw1/f;->c:Landroid/widget/Button;

    .line 771
    .line 772
    new-instance v7, LC1/J1;

    .line 773
    .line 774
    invoke-direct {v7, v1, v6}, LC1/J1;-><init>(Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;I)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    .line 779
    .line 780
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 781
    .line 782
    if-nez v0, :cond_e

    .line 783
    .line 784
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    move-object v0, v3

    .line 788
    :cond_e
    iget-object v0, v0, Lw1/f;->E:Landroid/widget/TextView;

    .line 789
    .line 790
    iget-object v7, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 791
    .line 792
    const-string v9, "item"

    .line 793
    .line 794
    if-nez v7, :cond_f

    .line 795
    .line 796
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    move-object v7, v3

    .line 800
    :cond_f
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v7

    .line 804
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    .line 806
    .line 807
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 808
    .line 809
    if-nez v0, :cond_10

    .line 810
    .line 811
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    move-object v0, v3

    .line 815
    :cond_10
    iget-object v0, v0, Lw1/f;->B:Landroid/widget/TextView;

    .line 816
    .line 817
    iget-object v7, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 818
    .line 819
    if-nez v7, :cond_11

    .line 820
    .line 821
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    move-object v7, v3

    .line 825
    :cond_11
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getCategories()Ljava/util/List;

    .line 829
    .line 830
    .line 831
    move-result-object v10

    .line 832
    new-instance v11, Ljava/util/ArrayList;

    .line 833
    .line 834
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .line 836
    .line 837
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 838
    .line 839
    .line 840
    move-result-object v10

    .line 841
    :cond_12
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 842
    .line 843
    .line 844
    move-result v12

    .line 845
    if-eqz v12, :cond_13

    .line 846
    .line 847
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v12

    .line 851
    move-object v13, v12

    .line 852
    check-cast v13, Ljava/lang/String;

    .line 853
    .line 854
    invoke-static {v13}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 855
    .line 856
    .line 857
    move-result v13

    .line 858
    if-nez v13, :cond_12

    .line 859
    .line 860
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    goto :goto_1

    .line 864
    :cond_13
    const/4 v10, 0x2

    .line 865
    invoke-static {v11, v10}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 866
    .line 867
    .line 868
    move-result-object v12

    .line 869
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 870
    .line 871
    .line 872
    move-result v11

    .line 873
    if-nez v11, :cond_14

    .line 874
    .line 875
    const/16 v16, 0x0

    .line 876
    .line 877
    const/16 v17, 0x3e

    .line 878
    .line 879
    const-string v13, " \u2022 "

    .line 880
    .line 881
    const/4 v14, 0x0

    .line 882
    const/4 v15, 0x0

    .line 883
    invoke-static/range {v12 .. v17}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v7

    .line 887
    goto :goto_3

    .line 888
    :cond_14
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTags()Ljava/util/List;

    .line 889
    .line 890
    .line 891
    move-result-object v11

    .line 892
    new-instance v12, Ljava/util/ArrayList;

    .line 893
    .line 894
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .line 896
    .line 897
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 898
    .line 899
    .line 900
    move-result-object v11

    .line 901
    :cond_15
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 902
    .line 903
    .line 904
    move-result v13

    .line 905
    if-eqz v13, :cond_16

    .line 906
    .line 907
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v13

    .line 911
    move-object v14, v13

    .line 912
    check-cast v14, Ljava/lang/String;

    .line 913
    .line 914
    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 915
    .line 916
    .line 917
    move-result v14

    .line 918
    if-nez v14, :cond_15

    .line 919
    .line 920
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    .line 922
    .line 923
    goto :goto_2

    .line 924
    :cond_16
    invoke-static {v12, v10}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 925
    .line 926
    .line 927
    move-result-object v15

    .line 928
    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    .line 929
    .line 930
    .line 931
    move-result v11

    .line 932
    if-nez v11, :cond_17

    .line 933
    .line 934
    const/16 v19, 0x0

    .line 935
    .line 936
    const/16 v20, 0x3e

    .line 937
    .line 938
    const-string v16, " \u2022 "

    .line 939
    .line 940
    const/16 v17, 0x0

    .line 941
    .line 942
    const/16 v18, 0x0

    .line 943
    .line 944
    invoke-static/range {v15 .. v20}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v7

    .line 948
    goto :goto_3

    .line 949
    :cond_17
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getExcerpt()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v11

    .line 953
    new-instance v12, Lkotlin/text/Regex;

    .line 954
    .line 955
    const-string v13, "\\s+"

    .line 956
    .line 957
    invoke-direct {v12, v13}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 958
    .line 959
    .line 960
    const-string v13, " "

    .line 961
    .line 962
    invoke-virtual {v12, v11, v13}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v11

    .line 966
    invoke-static {v11}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 967
    .line 968
    .line 969
    move-result-object v11

    .line 970
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v11

    .line 974
    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 975
    .line 976
    .line 977
    move-result v12

    .line 978
    if-eqz v12, :cond_18

    .line 979
    .line 980
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getSlug()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v11

    .line 984
    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 985
    .line 986
    .line 987
    move-result v12

    .line 988
    if-eqz v12, :cond_18

    .line 989
    .line 990
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v7

    .line 994
    goto :goto_3

    .line 995
    :cond_18
    move-object v7, v11

    .line 996
    :goto_3
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    .line 998
    .line 999
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1000
    .line 1001
    if-nez v0, :cond_19

    .line 1002
    .line 1003
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    move-object v0, v3

    .line 1007
    :cond_19
    iget-object v0, v0, Lw1/f;->w:Landroid/widget/TextView;

    .line 1008
    .line 1009
    iget-object v7, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1010
    .line 1011
    if-nez v7, :cond_1a

    .line 1012
    .line 1013
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    move-object v7, v3

    .line 1017
    :cond_1a
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getCategories()Ljava/util/List;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v11

    .line 1021
    const/4 v15, 0x0

    .line 1022
    const/16 v16, 0x3e

    .line 1023
    .line 1024
    const-string v12, ", "

    .line 1025
    .line 1026
    const/4 v13, 0x0

    .line 1027
    const/4 v14, 0x0

    .line 1028
    invoke-static/range {v11 .. v16}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v7

    .line 1032
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1033
    .line 1034
    .line 1035
    move-result v11

    .line 1036
    const-string v12, "-"

    .line 1037
    .line 1038
    if-eqz v11, :cond_1b

    .line 1039
    .line 1040
    move-object v7, v12

    .line 1041
    :cond_1b
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    .line 1043
    .line 1044
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1045
    .line 1046
    if-nez v0, :cond_1c

    .line 1047
    .line 1048
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    move-object v0, v3

    .line 1052
    :cond_1c
    iget-object v0, v0, Lw1/f;->D:Landroid/widget/TextView;

    .line 1053
    .line 1054
    iget-object v7, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1055
    .line 1056
    if-nez v7, :cond_1d

    .line 1057
    .line 1058
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    move-object v7, v3

    .line 1062
    :cond_1d
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTags()Ljava/util/List;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v13

    .line 1066
    const/16 v17, 0x0

    .line 1067
    .line 1068
    const/16 v18, 0x3e

    .line 1069
    .line 1070
    const-string v14, ", "

    .line 1071
    .line 1072
    const/4 v15, 0x0

    .line 1073
    const/16 v16, 0x0

    .line 1074
    .line 1075
    invoke-static/range {v13 .. v18}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v7

    .line 1079
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1080
    .line 1081
    .line 1082
    move-result v11

    .line 1083
    if-eqz v11, :cond_1e

    .line 1084
    .line 1085
    goto :goto_4

    .line 1086
    :cond_1e
    move-object v12, v7

    .line 1087
    :goto_4
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    .line 1089
    .line 1090
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1091
    .line 1092
    if-nez v0, :cond_1f

    .line 1093
    .line 1094
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    move-object v0, v3

    .line 1098
    :cond_1f
    iget-object v0, v0, Lw1/f;->x:Landroid/widget/TextView;

    .line 1099
    .line 1100
    iget-object v7, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1101
    .line 1102
    if-nez v7, :cond_20

    .line 1103
    .line 1104
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    move-object v7, v3

    .line 1108
    :cond_20
    invoke-static {v7}, La/a;->C(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;)Ljava/lang/String;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v7

    .line 1112
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    .line 1114
    .line 1115
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1116
    .line 1117
    if-nez v0, :cond_21

    .line 1118
    .line 1119
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1120
    .line 1121
    .line 1122
    move-object v0, v3

    .line 1123
    :cond_21
    iget-object v0, v0, Lw1/f;->z:Landroid/widget/TextView;

    .line 1124
    .line 1125
    const-string v7, "tvGalleryEmpty"

    .line 1126
    .line 1127
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    iget-object v7, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1131
    .line 1132
    if-nez v7, :cond_22

    .line 1133
    .line 1134
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1135
    .line 1136
    .line 1137
    move-object v7, v3

    .line 1138
    :cond_22
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getGalleryImages()Ljava/util/List;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v7

    .line 1142
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 1143
    .line 1144
    .line 1145
    move-result v7

    .line 1146
    const/16 v11, 0x8

    .line 1147
    .line 1148
    if-eqz v7, :cond_23

    .line 1149
    .line 1150
    move v7, v4

    .line 1151
    goto :goto_5

    .line 1152
    :cond_23
    move v7, v11

    .line 1153
    :goto_5
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    .line 1155
    .line 1156
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->g:LC1/j0;

    .line 1157
    .line 1158
    if-nez v0, :cond_24

    .line 1159
    .line 1160
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1161
    .line 1162
    .line 1163
    move-object v0, v3

    .line 1164
    :cond_24
    iget-object v7, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1165
    .line 1166
    if-nez v7, :cond_25

    .line 1167
    .line 1168
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1169
    .line 1170
    .line 1171
    move-object v7, v3

    .line 1172
    :cond_25
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getGalleryImages()Ljava/util/List;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v7

    .line 1176
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1177
    .line 1178
    .line 1179
    const-string v8, "list"

    .line 1180
    .line 1181
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1182
    .line 1183
    .line 1184
    iput-object v7, v0, LC1/j0;->e:Ljava/lang/Object;

    .line 1185
    .line 1186
    invoke-virtual {v0}, LP/W;->c()V

    .line 1187
    .line 1188
    .line 1189
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1190
    .line 1191
    if-nez v0, :cond_26

    .line 1192
    .line 1193
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1194
    .line 1195
    .line 1196
    move-object v0, v3

    .line 1197
    :cond_26
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getGameSize()Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v0

    .line 1204
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v0

    .line 1208
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v0

    .line 1212
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1213
    .line 1214
    .line 1215
    move-result v7

    .line 1216
    const-string v8, ""

    .line 1217
    .line 1218
    if-nez v7, :cond_2a

    .line 1219
    .line 1220
    iget-object v7, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1221
    .line 1222
    if-nez v7, :cond_27

    .line 1223
    .line 1224
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1225
    .line 1226
    .line 1227
    move-object v7, v3

    .line 1228
    :cond_27
    iget-object v7, v7, Lw1/f;->k:Landroid/widget/TextView;

    .line 1229
    .line 1230
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1231
    .line 1232
    .line 1233
    iget-object v7, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1234
    .line 1235
    if-nez v7, :cond_28

    .line 1236
    .line 1237
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    move-object v7, v3

    .line 1241
    :cond_28
    iget-object v7, v7, Lw1/f;->C:Landroid/widget/TextView;

    .line 1242
    .line 1243
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1244
    .line 1245
    .line 1246
    iget-object v7, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1247
    .line 1248
    if-nez v7, :cond_29

    .line 1249
    .line 1250
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1251
    .line 1252
    .line 1253
    move-object v7, v3

    .line 1254
    :cond_29
    iget-object v7, v7, Lw1/f;->C:Landroid/widget/TextView;

    .line 1255
    .line 1256
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1257
    .line 1258
    .line 1259
    goto :goto_6

    .line 1260
    :cond_2a
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1261
    .line 1262
    if-nez v0, :cond_2b

    .line 1263
    .line 1264
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1265
    .line 1266
    .line 1267
    move-object v0, v3

    .line 1268
    :cond_2b
    iget-object v0, v0, Lw1/f;->k:Landroid/widget/TextView;

    .line 1269
    .line 1270
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1271
    .line 1272
    .line 1273
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1274
    .line 1275
    if-nez v0, :cond_2c

    .line 1276
    .line 1277
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1278
    .line 1279
    .line 1280
    move-object v0, v3

    .line 1281
    :cond_2c
    iget-object v0, v0, Lw1/f;->C:Landroid/widget/TextView;

    .line 1282
    .line 1283
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    .line 1285
    .line 1286
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1287
    .line 1288
    if-nez v0, :cond_2d

    .line 1289
    .line 1290
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1291
    .line 1292
    .line 1293
    move-object v0, v3

    .line 1294
    :cond_2d
    iget-object v0, v0, Lw1/f;->C:Landroid/widget/TextView;

    .line 1295
    .line 1296
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    .line 1298
    .line 1299
    :goto_6
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1300
    .line 1301
    if-nez v0, :cond_2e

    .line 1302
    .line 1303
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1304
    .line 1305
    .line 1306
    move-object v0, v3

    .line 1307
    :cond_2e
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getThumbnailUrl()Ljava/lang/String;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v0

    .line 1311
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1312
    .line 1313
    .line 1314
    move-result v0

    .line 1315
    const-string v7, "toUpperCase(...)"

    .line 1316
    .line 1317
    if-eqz v0, :cond_33

    .line 1318
    .line 1319
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1320
    .line 1321
    if-nez v0, :cond_2f

    .line 1322
    .line 1323
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1324
    .line 1325
    .line 1326
    move-object v0, v3

    .line 1327
    :cond_2f
    iget-object v0, v0, Lw1/f;->j:Landroid/widget/ImageView;

    .line 1328
    .line 1329
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1330
    .line 1331
    .line 1332
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1333
    .line 1334
    if-nez v0, :cond_30

    .line 1335
    .line 1336
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1337
    .line 1338
    .line 1339
    move-object v0, v3

    .line 1340
    :cond_30
    iget-object v0, v0, Lw1/f;->A:Landroid/widget/TextView;

    .line 1341
    .line 1342
    iget-object v8, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1343
    .line 1344
    if-nez v8, :cond_31

    .line 1345
    .line 1346
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1347
    .line 1348
    .line 1349
    move-object v8, v3

    .line 1350
    :cond_31
    invoke-virtual {v8}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v8

    .line 1354
    invoke-static {v8, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v8

    .line 1358
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1359
    .line 1360
    invoke-virtual {v8, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v8

    .line 1364
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    .line 1369
    .line 1370
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1371
    .line 1372
    if-nez v0, :cond_32

    .line 1373
    .line 1374
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1375
    .line 1376
    .line 1377
    move-object v0, v3

    .line 1378
    :cond_32
    iget-object v0, v0, Lw1/f;->j:Landroid/widget/ImageView;

    .line 1379
    .line 1380
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1381
    .line 1382
    .line 1383
    goto/16 :goto_8

    .line 1384
    .line 1385
    :cond_33
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1386
    .line 1387
    if-nez v0, :cond_34

    .line 1388
    .line 1389
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1390
    .line 1391
    .line 1392
    move-object v0, v3

    .line 1393
    :cond_34
    iget-object v0, v0, Lw1/f;->A:Landroid/widget/TextView;

    .line 1394
    .line 1395
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1396
    .line 1397
    .line 1398
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1399
    .line 1400
    if-nez v0, :cond_35

    .line 1401
    .line 1402
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1403
    .line 1404
    .line 1405
    move-object v0, v3

    .line 1406
    :cond_35
    iget-object v0, v0, Lw1/f;->j:Landroid/widget/ImageView;

    .line 1407
    .line 1408
    invoke-static {v0}, Lcom/bumptech/glide/b;->c(Landroid/view/View;)Lcom/bumptech/glide/n;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    iget-object v8, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1413
    .line 1414
    if-nez v8, :cond_36

    .line 1415
    .line 1416
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1417
    .line 1418
    .line 1419
    move-object v8, v3

    .line 1420
    :cond_36
    invoke-virtual {v8}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getThumbnailUrl()Ljava/lang/String;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v8

    .line 1424
    const-string v12, "url"

    .line 1425
    .line 1426
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1427
    .line 1428
    .line 1429
    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1430
    .line 1431
    .line 1432
    move-result v12

    .line 1433
    if-eqz v12, :cond_37

    .line 1434
    .line 1435
    goto :goto_7

    .line 1436
    :cond_37
    :try_start_1
    invoke-static {v8}, Lcom/bumptech/glide/c;->U(Ljava/lang/String;)Z

    .line 1437
    .line 1438
    .line 1439
    move-result v12

    .line 1440
    if-nez v12, :cond_38

    .line 1441
    .line 1442
    goto :goto_7

    .line 1443
    :cond_38
    new-instance v12, Lj0/g;

    .line 1444
    .line 1445
    new-instance v13, Lj0/i;

    .line 1446
    .line 1447
    invoke-direct {v13}, Lj0/i;-><init>()V

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v13}, Lj0/i;->a()V

    .line 1451
    .line 1452
    .line 1453
    iput-boolean v6, v13, Lj0/i;->a:Z

    .line 1454
    .line 1455
    new-instance v14, Lj0/k;

    .line 1456
    .line 1457
    iget-object v13, v13, Lj0/i;->b:Ljava/util/Map;

    .line 1458
    .line 1459
    invoke-direct {v14, v13}, Lj0/k;-><init>(Ljava/util/Map;)V

    .line 1460
    .line 1461
    .line 1462
    invoke-direct {v12, v8, v14}, Lj0/g;-><init>(Ljava/lang/String;Lj0/h;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1463
    .line 1464
    .line 1465
    move-object v8, v12

    .line 1466
    :catch_0
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1467
    .line 1468
    .line 1469
    new-instance v12, Lcom/bumptech/glide/k;

    .line 1470
    .line 1471
    iget-object v13, v0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/b;

    .line 1472
    .line 1473
    iget-object v14, v0, Lcom/bumptech/glide/n;->c:Landroid/content/Context;

    .line 1474
    .line 1475
    const-class v15, Landroid/graphics/drawable/Drawable;

    .line 1476
    .line 1477
    invoke-direct {v12, v13, v0, v15, v14}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/n;Ljava/lang/Class;Landroid/content/Context;)V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v12, v8}, Lcom/bumptech/glide/k;->x(Ljava/lang/Object;)Lcom/bumptech/glide/k;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v0

    .line 1484
    iget-object v8, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1485
    .line 1486
    if-nez v8, :cond_39

    .line 1487
    .line 1488
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1489
    .line 1490
    .line 1491
    move-object v8, v3

    .line 1492
    :cond_39
    iget-object v8, v8, Lw1/f;->j:Landroid/widget/ImageView;

    .line 1493
    .line 1494
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/k;->v(Landroid/widget/ImageView;)Lv0/a;

    .line 1495
    .line 1496
    .line 1497
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1498
    .line 1499
    if-nez v0, :cond_3a

    .line 1500
    .line 1501
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1502
    .line 1503
    .line 1504
    move-object v0, v3

    .line 1505
    :cond_3a
    iget-object v0, v0, Lw1/f;->j:Landroid/widget/ImageView;

    .line 1506
    .line 1507
    new-instance v8, LC1/J1;

    .line 1508
    .line 1509
    invoke-direct {v8, v1, v10}, LC1/J1;-><init>(Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;I)V

    .line 1510
    .line 1511
    .line 1512
    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1513
    .line 1514
    .line 1515
    :goto_8
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1516
    .line 1517
    if-nez v0, :cond_3b

    .line 1518
    .line 1519
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1520
    .line 1521
    .line 1522
    move-object v0, v3

    .line 1523
    :cond_3b
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getCategories()Ljava/util/List;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v0

    .line 1527
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v0

    .line 1531
    check-cast v0, Ljava/lang/String;

    .line 1532
    .line 1533
    if-eqz v0, :cond_3c

    .line 1534
    .line 1535
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1536
    .line 1537
    invoke-virtual {v0, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v0

    .line 1541
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1542
    .line 1543
    .line 1544
    if-nez v0, :cond_3d

    .line 1545
    .line 1546
    :cond_3c
    const v0, 0x7f12020a

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v0

    .line 1553
    const-string v7, "getString(...)"

    .line 1554
    .line 1555
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1556
    .line 1557
    .line 1558
    :cond_3d
    iget-object v7, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1559
    .line 1560
    if-nez v7, :cond_3e

    .line 1561
    .line 1562
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1563
    .line 1564
    .line 1565
    move-object v7, v3

    .line 1566
    :cond_3e
    iget-object v7, v7, Lw1/f;->v:Landroid/widget/TextView;

    .line 1567
    .line 1568
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1569
    .line 1570
    .line 1571
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1572
    .line 1573
    if-nez v0, :cond_3f

    .line 1574
    .line 1575
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1576
    .line 1577
    .line 1578
    move-object v0, v3

    .line 1579
    :cond_3f
    iget-object v0, v0, Lw1/f;->v:Landroid/widget/TextView;

    .line 1580
    .line 1581
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    .line 1582
    .line 1583
    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1587
    .line 1588
    .line 1589
    const/high16 v8, 0x41200000    # 10.0f

    .line 1590
    .line 1591
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1592
    .line 1593
    .line 1594
    const-string v8, "#22EF4444"

    .line 1595
    .line 1596
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1597
    .line 1598
    .line 1599
    move-result v8

    .line 1600
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1601
    .line 1602
    .line 1603
    const-string v8, "#44EF4444"

    .line 1604
    .line 1605
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1606
    .line 1607
    .line 1608
    move-result v8

    .line 1609
    invoke-virtual {v7, v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1610
    .line 1611
    .line 1612
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1613
    .line 1614
    .line 1615
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1616
    .line 1617
    if-nez v0, :cond_40

    .line 1618
    .line 1619
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1620
    .line 1621
    .line 1622
    move-object v0, v3

    .line 1623
    :cond_40
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTranslator()Ljava/lang/String;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v0

    .line 1627
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1628
    .line 1629
    .line 1630
    move-result v0

    .line 1631
    if-nez v0, :cond_45

    .line 1632
    .line 1633
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1634
    .line 1635
    if-nez v0, :cond_41

    .line 1636
    .line 1637
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1638
    .line 1639
    .line 1640
    move-object v0, v3

    .line 1641
    :cond_41
    iget-object v0, v0, Lw1/f;->m:Landroid/widget/TextView;

    .line 1642
    .line 1643
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1644
    .line 1645
    .line 1646
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1647
    .line 1648
    if-nez v0, :cond_42

    .line 1649
    .line 1650
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1651
    .line 1652
    .line 1653
    move-object v0, v3

    .line 1654
    :cond_42
    iget-object v0, v0, Lw1/f;->F:Landroid/widget/TextView;

    .line 1655
    .line 1656
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1657
    .line 1658
    .line 1659
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1660
    .line 1661
    if-nez v0, :cond_43

    .line 1662
    .line 1663
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1664
    .line 1665
    .line 1666
    move-object v0, v3

    .line 1667
    :cond_43
    iget-object v0, v0, Lw1/f;->F:Landroid/widget/TextView;

    .line 1668
    .line 1669
    iget-object v6, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1670
    .line 1671
    if-nez v6, :cond_44

    .line 1672
    .line 1673
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1674
    .line 1675
    .line 1676
    move-object v6, v3

    .line 1677
    :cond_44
    invoke-virtual {v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTranslator()Ljava/lang/String;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v6

    .line 1681
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1682
    .line 1683
    .line 1684
    :cond_45
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1685
    .line 1686
    if-nez v0, :cond_46

    .line 1687
    .line 1688
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1689
    .line 1690
    .line 1691
    move-object v0, v3

    .line 1692
    :cond_46
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getStoreLinks()Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v0

    .line 1696
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;->hasAny()Z

    .line 1697
    .line 1698
    .line 1699
    move-result v0

    .line 1700
    if-eqz v0, :cond_53

    .line 1701
    .line 1702
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1703
    .line 1704
    if-nez v0, :cond_47

    .line 1705
    .line 1706
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1707
    .line 1708
    .line 1709
    move-object v0, v3

    .line 1710
    :cond_47
    iget-object v0, v0, Lw1/f;->l:Landroid/widget/TextView;

    .line 1711
    .line 1712
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1713
    .line 1714
    .line 1715
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1716
    .line 1717
    if-nez v0, :cond_48

    .line 1718
    .line 1719
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1720
    .line 1721
    .line 1722
    move-object v0, v3

    .line 1723
    :cond_48
    iget-object v0, v0, Lw1/f;->t:Landroid/widget/HorizontalScrollView;

    .line 1724
    .line 1725
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1726
    .line 1727
    .line 1728
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1729
    .line 1730
    if-nez v0, :cond_49

    .line 1731
    .line 1732
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1733
    .line 1734
    .line 1735
    move-object v0, v3

    .line 1736
    :cond_49
    iget-object v0, v0, Lw1/f;->h:Landroid/widget/TextView;

    .line 1737
    .line 1738
    const-string v4, "btnStoreSteam"

    .line 1739
    .line 1740
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1741
    .line 1742
    .line 1743
    iget-object v4, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1744
    .line 1745
    if-nez v4, :cond_4a

    .line 1746
    .line 1747
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1748
    .line 1749
    .line 1750
    move-object v4, v3

    .line 1751
    :cond_4a
    invoke-virtual {v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getStoreLinks()Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v4

    .line 1755
    invoke-virtual {v4}, Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;->getSteam()Ljava/lang/String;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v4

    .line 1759
    invoke-virtual {v1, v0, v4}, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1760
    .line 1761
    .line 1762
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1763
    .line 1764
    if-nez v0, :cond_4b

    .line 1765
    .line 1766
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1767
    .line 1768
    .line 1769
    move-object v0, v3

    .line 1770
    :cond_4b
    iget-object v0, v0, Lw1/f;->d:Landroid/widget/TextView;

    .line 1771
    .line 1772
    const-string v4, "btnStoreDlsite"

    .line 1773
    .line 1774
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1775
    .line 1776
    .line 1777
    iget-object v4, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1778
    .line 1779
    if-nez v4, :cond_4c

    .line 1780
    .line 1781
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1782
    .line 1783
    .line 1784
    move-object v4, v3

    .line 1785
    :cond_4c
    invoke-virtual {v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getStoreLinks()Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v4

    .line 1789
    invoke-virtual {v4}, Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;->getDlsite()Ljava/lang/String;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v4

    .line 1793
    invoke-virtual {v1, v0, v4}, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1794
    .line 1795
    .line 1796
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1797
    .line 1798
    if-nez v0, :cond_4d

    .line 1799
    .line 1800
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1801
    .line 1802
    .line 1803
    move-object v0, v3

    .line 1804
    :cond_4d
    iget-object v0, v0, Lw1/f;->e:Landroid/widget/TextView;

    .line 1805
    .line 1806
    const-string v4, "btnStoreDmm"

    .line 1807
    .line 1808
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1809
    .line 1810
    .line 1811
    iget-object v4, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1812
    .line 1813
    if-nez v4, :cond_4e

    .line 1814
    .line 1815
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1816
    .line 1817
    .line 1818
    move-object v4, v3

    .line 1819
    :cond_4e
    invoke-virtual {v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getStoreLinks()Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v4

    .line 1823
    invoke-virtual {v4}, Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;->getDmm()Ljava/lang/String;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v4

    .line 1827
    invoke-virtual {v1, v0, v4}, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1828
    .line 1829
    .line 1830
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1831
    .line 1832
    if-nez v0, :cond_4f

    .line 1833
    .line 1834
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1835
    .line 1836
    .line 1837
    move-object v0, v3

    .line 1838
    :cond_4f
    iget-object v0, v0, Lw1/f;->f:Landroid/widget/TextView;

    .line 1839
    .line 1840
    const-string v4, "btnStoreItchio"

    .line 1841
    .line 1842
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1843
    .line 1844
    .line 1845
    iget-object v4, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1846
    .line 1847
    if-nez v4, :cond_50

    .line 1848
    .line 1849
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1850
    .line 1851
    .line 1852
    move-object v4, v3

    .line 1853
    :cond_50
    invoke-virtual {v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getStoreLinks()Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v4

    .line 1857
    invoke-virtual {v4}, Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;->getItchio()Ljava/lang/String;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v4

    .line 1861
    invoke-virtual {v1, v0, v4}, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1862
    .line 1863
    .line 1864
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 1865
    .line 1866
    if-nez v0, :cond_51

    .line 1867
    .line 1868
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1869
    .line 1870
    .line 1871
    move-object v0, v3

    .line 1872
    :cond_51
    iget-object v0, v0, Lw1/f;->g:Landroid/widget/TextView;

    .line 1873
    .line 1874
    const-string v2, "btnStoreOther"

    .line 1875
    .line 1876
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1877
    .line 1878
    .line 1879
    iget-object v2, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1880
    .line 1881
    if-nez v2, :cond_52

    .line 1882
    .line 1883
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1884
    .line 1885
    .line 1886
    move-object v2, v3

    .line 1887
    :cond_52
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getStoreLinks()Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v2

    .line 1891
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;->getOther()Ljava/lang/String;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v2

    .line 1895
    invoke-virtual {v1, v0, v2}, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1896
    .line 1897
    .line 1898
    :cond_53
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->m()V

    .line 1899
    .line 1900
    .line 1901
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1902
    .line 1903
    if-nez v0, :cond_54

    .line 1904
    .line 1905
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1906
    .line 1907
    .line 1908
    move-object v0, v3

    .line 1909
    :cond_54
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getContentHtml()Ljava/lang/String;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v0

    .line 1913
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1914
    .line 1915
    .line 1916
    move-result v0

    .line 1917
    if-eqz v0, :cond_57

    .line 1918
    .line 1919
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 1920
    .line 1921
    if-nez v0, :cond_55

    .line 1922
    .line 1923
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1924
    .line 1925
    .line 1926
    move-object v0, v3

    .line 1927
    :cond_55
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getPostId()J

    .line 1928
    .line 1929
    .line 1930
    move-result-wide v6

    .line 1931
    const-wide/16 v8, 0x0

    .line 1932
    .line 1933
    cmp-long v0, v6, v8

    .line 1934
    .line 1935
    if-gtz v0, :cond_56

    .line 1936
    .line 1937
    goto :goto_9

    .line 1938
    :cond_56
    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v0

    .line 1942
    new-instance v2, LC1/N1;

    .line 1943
    .line 1944
    invoke-direct {v2, v1, v3}, LC1/N1;-><init>(Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;Lkotlin/coroutines/Continuation;)V

    .line 1945
    .line 1946
    .line 1947
    invoke-static {v0, v3, v2, v5}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 1948
    .line 1949
    .line 1950
    :cond_57
    :goto_9
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->h:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 1951
    .line 1952
    if-nez v0, :cond_58

    .line 1953
    .line 1954
    const-string v0, "downloadQueue"

    .line 1955
    .line 1956
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1957
    .line 1958
    .line 1959
    goto :goto_a

    .line 1960
    :cond_58
    move-object v3, v0

    .line 1961
    :goto_a
    new-instance v0, LA1/p;

    .line 1962
    .line 1963
    invoke-direct {v0, v11, v1}, LA1/p;-><init>(ILjava/lang/Object;)V

    .line 1964
    .line 1965
    .line 1966
    invoke-virtual {v3, v0}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->observe(Lkotlin/jvm/functions/Function1;)V

    .line 1967
    .line 1968
    .line 1969
    sget-object v0, LC1/K1;->b:LC1/K1;

    .line 1970
    .line 1971
    invoke-virtual {v1, v0}, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->p(LC1/K1;)V

    .line 1972
    .line 1973
    .line 1974
    return-void

    .line 1975
    :cond_59
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1976
    .line 1977
    .line 1978
    move-result-object v0

    .line 1979
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v0

    .line 1983
    new-instance v2, Ljava/lang/NullPointerException;

    .line 1984
    .line 1985
    const-string v3, "Missing required view with ID: "

    .line 1986
    .line 1987
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1988
    .line 1989
    .line 1990
    move-result-object v0

    .line 1991
    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1992
    .line 1993
    .line 1994
    throw v2

    .line 1995
    :cond_5a
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1996
    .line 1997
    .line 1998
    return-void

    .line 1999
    :cond_5b
    :goto_b
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 2000
    .line 2001
    .line 2002
    return-void
.end method

.method public final p(LC1/K1;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "b"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    iget-object v0, v0, Lw1/f;->q:Landroid/widget/ScrollView;

    .line 13
    .line 14
    sget-object v3, LC1/K1;->b:LC1/K1;

    .line 15
    .line 16
    const/16 v4, 0x8

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    if-ne p1, v3, :cond_1

    .line 20
    .line 21
    move v3, v5

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v3, v4

    .line 24
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    move-object v0, v1

    .line 35
    :cond_2
    iget-object v0, v0, Lw1/f;->o:Landroid/widget/ScrollView;

    .line 36
    .line 37
    sget-object v3, LC1/K1;->c:LC1/K1;

    .line 38
    .line 39
    if-ne p1, v3, :cond_3

    .line 40
    .line 41
    move v3, v5

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move v3, v4

    .line 44
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    move-object v1, v0

    .line 56
    :goto_2
    iget-object v0, v1, Lw1/f;->p:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    sget-object v1, LC1/K1;->d:LC1/K1;

    .line 59
    .line 60
    if-ne p1, v1, :cond_5

    .line 61
    .line 62
    move v4, v5

    .line 63
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
