.class public final synthetic LC1/q;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 7

    iput p1, p0, LC1/q;->b:I

    packed-switch p1, :pswitch_data_0

    .line 1
    const-string v5, "engineFilterLabel(Lcom/minhub/gamehub/hub/CatalogEngineFilter;)Ljava/lang/String;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/minhub/gamehub/hub/AddGameActivity;

    const-string v4, "engineFilterLabel"

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 2
    :pswitch_0
    const-string v5, "languageFilterLabel(Lcom/minhub/gamehub/hub/CatalogLanguageFilter;)Ljava/lang/String;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/minhub/gamehub/hub/AddGameActivity;

    const-string v4, "languageFilterLabel"

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 3
    iput p7, p0, LC1/q;->b:I

    invoke-direct/range {p0 .. p6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LC1/q;->b:I

    .line 4
    .line 5
    const-string v2, "p0"

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v0, p1

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Runnable;

    .line 13
    .line 14
    iget-object v2, v1, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lcom/minhub/gamehub/game/GameActivity;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    move-object/from16 v0, p1

    .line 25
    .line 26
    check-cast v0, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v1, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Ly1/V;

    .line 34
    .line 35
    iget-object v3, v2, Ly1/V;->a:Ljava/io/File;

    .line 36
    .line 37
    iget-object v4, v2, Ly1/V;->b:Lcom/minhub/gamehub/data/GameEngine;

    .line 38
    .line 39
    const-string v5, "requestUrl"

    .line 40
    .line 41
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 45
    .line 46
    new-instance v5, Ljava/net/URI;

    .line 47
    .line 48
    invoke-direct {v5, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

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
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

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
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_0

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    :cond_0
    check-cast v0, Ljava/net/URI;

    .line 75
    .line 76
    const/4 v5, 0x1

    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    :goto_1
    const/4 v7, 0x0

    .line 80
    goto :goto_3

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    const-string v8, "file"

    .line 86
    .line 87
    invoke-static {v7, v8, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-nez v7, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    :try_start_1
    new-instance v7, Ljava/io/File;

    .line 95
    .line 96
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    goto :goto_2

    .line 108
    :catchall_1
    move-exception v0

    .line 109
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 110
    .line 111
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_3

    .line 124
    .line 125
    const/4 v0, 0x0

    .line 126
    :cond_3
    check-cast v0, Ljava/io/File;

    .line 127
    .line 128
    move-object v7, v0

    .line 129
    :goto_3
    if-nez v7, :cond_4

    .line 130
    .line 131
    :goto_4
    const/4 v6, 0x0

    .line 132
    goto/16 :goto_15

    .line 133
    .line 134
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 142
    goto :goto_5

    .line 143
    :catchall_2
    move-exception v0

    .line 144
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 145
    .line 146
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    :goto_5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-eqz v8, :cond_5

    .line 159
    .line 160
    const/4 v0, 0x0

    .line 161
    :cond_5
    check-cast v0, Ljava/io/File;

    .line 162
    .line 163
    if-nez v0, :cond_6

    .line 164
    .line 165
    :goto_6
    const/4 v7, 0x0

    .line 166
    goto :goto_7

    .line 167
    :cond_6
    invoke-static {v0}, Landroidx/core/view/accessibility/a;->k(Ljava/io/File;)Ljava/nio/file/Path;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-static {v7}, Landroidx/core/view/accessibility/a;->k(Ljava/io/File;)Ljava/nio/file/Path;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    invoke-static {v9, v8}, Landroidx/core/view/accessibility/a;->B(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-nez v8, :cond_7

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_7
    invoke-static {v7, v0}, Lkotlin/io/FilesKt;->relativeTo(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v0}, Lkotlin/io/FilesKt;->getInvariantSeparatorsPath(Ljava/io/File;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    move-object v7, v0

    .line 191
    :goto_7
    if-nez v7, :cond_8

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_8
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->MV:Lcom/minhub/gamehub/data/GameEngine;

    .line 195
    .line 196
    const-string v9, ".m4a_"

    .line 197
    .line 198
    const-string v10, ".ogg_"

    .line 199
    .line 200
    const-string v11, ".rpgmvm"

    .line 201
    .line 202
    const-string v12, ".rpgmvo"

    .line 203
    .line 204
    const-string v13, ".png_"

    .line 205
    .line 206
    const-string v14, ".rpgmvp"

    .line 207
    .line 208
    const/4 v15, 0x2

    .line 209
    if-eq v4, v0, :cond_9

    .line 210
    .line 211
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->MZ:Lcom/minhub/gamehub/data/GameEngine;

    .line 212
    .line 213
    if-ne v4, v0, :cond_14

    .line 214
    .line 215
    :cond_9
    const-string v0, "data/System.json"

    .line 216
    .line 217
    invoke-static {v7, v0, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 218
    .line 219
    .line 220
    move-result v16

    .line 221
    if-eqz v16, :cond_14

    .line 222
    .line 223
    :try_start_3
    new-instance v6, Ljava/io/File;

    .line 224
    .line 225
    invoke-direct {v6, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 229
    .line 230
    invoke-static {v6, v0}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 238
    goto :goto_8

    .line 239
    :catchall_3
    move-exception v0

    .line 240
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 241
    .line 242
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-eqz v6, :cond_a

    .line 255
    .line 256
    const/4 v0, 0x0

    .line 257
    :cond_a
    check-cast v0, Ljava/lang/String;

    .line 258
    .line 259
    if-nez v0, :cond_b

    .line 260
    .line 261
    :goto_9
    const/4 v0, 0x0

    .line 262
    goto/16 :goto_d

    .line 263
    .line 264
    :cond_b
    sget-object v6, Ly1/W;->a:Lkotlin/text/Regex;

    .line 265
    .line 266
    invoke-virtual {v6, v0}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 267
    .line 268
    .line 269
    move-result v16

    .line 270
    sget-object v8, Ly1/W;->b:Lkotlin/text/Regex;

    .line 271
    .line 272
    invoke-virtual {v8, v0}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 273
    .line 274
    .line 275
    move-result v17

    .line 276
    if-nez v16, :cond_c

    .line 277
    .line 278
    if-nez v17, :cond_c

    .line 279
    .line 280
    goto :goto_9

    .line 281
    :cond_c
    if-eqz v16, :cond_f

    .line 282
    .line 283
    sget-object v16, Ly1/U;->a:[I

    .line 284
    .line 285
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 286
    .line 287
    .line 288
    move-result v18

    .line 289
    aget v1, v16, v18

    .line 290
    .line 291
    if-eq v1, v5, :cond_e

    .line 292
    .line 293
    if-eq v1, v15, :cond_d

    .line 294
    .line 295
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    goto :goto_a

    .line 300
    :cond_d
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    goto :goto_a

    .line 305
    :cond_e
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    :goto_a
    const-string v15, "img"

    .line 310
    .line 311
    invoke-virtual {v2, v1, v15}, Ly1/V;->a(Ljava/util/List;Ljava/lang/String;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-nez v1, :cond_f

    .line 316
    .line 317
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/h;

    .line 318
    .line 319
    const/16 v15, 0x10

    .line 320
    .line 321
    invoke-direct {v1, v15}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6, v0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    goto :goto_b

    .line 329
    :cond_f
    move-object v1, v0

    .line 330
    :goto_b
    if-eqz v17, :cond_12

    .line 331
    .line 332
    sget-object v6, Ly1/U;->a:[I

    .line 333
    .line 334
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 335
    .line 336
    .line 337
    move-result v15

    .line 338
    aget v6, v6, v15

    .line 339
    .line 340
    if-eq v6, v5, :cond_11

    .line 341
    .line 342
    const/4 v15, 0x2

    .line 343
    if-eq v6, v15, :cond_10

    .line 344
    .line 345
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    goto :goto_c

    .line 350
    :cond_10
    filled-new-array {v12, v11}, [Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    goto :goto_c

    .line 359
    :cond_11
    filled-new-array {v10, v9}, [Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    :goto_c
    const-string v15, "audio"

    .line 368
    .line 369
    invoke-virtual {v2, v6, v15}, Ly1/V;->a(Ljava/util/List;Ljava/lang/String;)Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-nez v2, :cond_12

    .line 374
    .line 375
    new-instance v2, Lcom/minhub/gamehub/hub/catalog/h;

    .line 376
    .line 377
    const/16 v6, 0x11

    .line 378
    .line 379
    invoke-direct {v2, v6}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v8, v1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    :cond_12
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    if-eqz v0, :cond_13

    .line 391
    .line 392
    goto/16 :goto_9

    .line 393
    .line 394
    :cond_13
    const-string v0, "MinHub-Enc"

    .line 395
    .line 396
    const-string v2, "System.json encryption flag(s) corrected -> false (no encrypted asset files found)"

    .line 397
    .line 398
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    new-instance v0, Ly1/q1;

    .line 402
    .line 403
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 404
    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    const-string v2, "getBytes(...)"

    .line 410
    .line 411
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    const-string v2, "application/json"

    .line 415
    .line 416
    invoke-direct {v0, v2, v1}, Ly1/q1;-><init>(Ljava/lang/String;[B)V

    .line 417
    .line 418
    .line 419
    :goto_d
    if-eqz v0, :cond_14

    .line 420
    .line 421
    :goto_e
    move-object v6, v0

    .line 422
    goto/16 :goto_15

    .line 423
    .line 424
    :cond_14
    const-string v0, "rootDir"

    .line 425
    .line 426
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    const-string v0, "engine"

    .line 430
    .line 431
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    const-string v1, "logicalPath"

    .line 435
    .line 436
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    const/16 v2, 0x5c

    .line 440
    .line 441
    const/16 v6, 0x2f

    .line 442
    .line 443
    invoke-static {v7, v2, v6}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    new-instance v15, Ljava/io/File;

    .line 448
    .line 449
    invoke-direct {v15, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    .line 453
    .line 454
    .line 455
    move-result v17

    .line 456
    const-string v5, ".png"

    .line 457
    .line 458
    const-string v2, ".ogg"

    .line 459
    .line 460
    const-string v6, ".m4a"

    .line 461
    .line 462
    move-object/from16 v21, v15

    .line 463
    .line 464
    const-string v15, "getCanonicalFile(...)"

    .line 465
    .line 466
    if-eqz v17, :cond_15

    .line 467
    .line 468
    new-instance v3, Ly1/J1;

    .line 469
    .line 470
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 471
    .line 472
    .line 473
    move-result-object v8

    .line 474
    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    const/4 v9, 0x0

    .line 478
    invoke-direct {v3, v8, v9}, Ly1/J1;-><init>(Ljava/io/File;Z)V

    .line 479
    .line 480
    .line 481
    move-object/from16 v17, v1

    .line 482
    .line 483
    move-object/from16 v20, v4

    .line 484
    .line 485
    move-object/from16 v19, v7

    .line 486
    .line 487
    goto/16 :goto_10

    .line 488
    .line 489
    :cond_15
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    move-object/from16 v17, v1

    .line 496
    .line 497
    move-object/from16 v19, v7

    .line 498
    .line 499
    const/16 v1, 0x2f

    .line 500
    .line 501
    const/16 v7, 0x5c

    .line 502
    .line 503
    invoke-static {v8, v7, v1}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 508
    .line 509
    const-string v8, "ROOT"

    .line 510
    .line 511
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v7

    .line 518
    const-string v8, "toLowerCase(...)"

    .line 519
    .line 520
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    sget-object v8, Ly1/M1;->a:[I

    .line 524
    .line 525
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 526
    .line 527
    .line 528
    move-result v20

    .line 529
    aget v8, v8, v20

    .line 530
    .line 531
    move-object/from16 v20, v4

    .line 532
    .line 533
    const/4 v4, 0x1

    .line 534
    if-eq v8, v4, :cond_1a

    .line 535
    .line 536
    const/4 v4, 0x2

    .line 537
    if-eq v8, v4, :cond_16

    .line 538
    .line 539
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    goto/16 :goto_f

    .line 544
    .line 545
    :cond_16
    invoke-static {v7, v5}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 546
    .line 547
    .line 548
    move-result v4

    .line 549
    const-string v8, "substring(...)"

    .line 550
    .line 551
    if-eqz v4, :cond_17

    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 554
    .line 555
    .line 556
    move-result v4

    .line 557
    add-int/lit8 v4, v4, -0x4

    .line 558
    .line 559
    const/4 v9, 0x0

    .line 560
    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    new-instance v4, Ljava/lang/StringBuilder;

    .line 568
    .line 569
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    goto/16 :goto_f

    .line 587
    .line 588
    :cond_17
    invoke-static {v7, v2}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 589
    .line 590
    .line 591
    move-result v4

    .line 592
    if-eqz v4, :cond_18

    .line 593
    .line 594
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    add-int/lit8 v4, v4, -0x4

    .line 599
    .line 600
    const/4 v9, 0x0

    .line 601
    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    .line 609
    .line 610
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    goto :goto_f

    .line 628
    :cond_18
    invoke-static {v7, v6}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 629
    .line 630
    .line 631
    move-result v4

    .line 632
    if-eqz v4, :cond_19

    .line 633
    .line 634
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 635
    .line 636
    .line 637
    move-result v4

    .line 638
    add-int/lit8 v4, v4, -0x4

    .line 639
    .line 640
    const/4 v7, 0x0

    .line 641
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    new-instance v4, Ljava/lang/StringBuilder;

    .line 649
    .line 650
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    goto :goto_f

    .line 668
    :cond_19
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    goto :goto_f

    .line 673
    :cond_1a
    invoke-static {v7, v5}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 674
    .line 675
    .line 676
    move-result v4

    .line 677
    if-eqz v4, :cond_1b

    .line 678
    .line 679
    invoke-static {v1, v5, v14}, Ly1/L1;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    goto :goto_f

    .line 688
    :cond_1b
    invoke-static {v7, v2}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 689
    .line 690
    .line 691
    move-result v4

    .line 692
    if-eqz v4, :cond_1c

    .line 693
    .line 694
    invoke-static {v1, v2, v12}, Ly1/L1;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    goto :goto_f

    .line 703
    :cond_1c
    invoke-static {v7, v6}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 704
    .line 705
    .line 706
    move-result v4

    .line 707
    if-eqz v4, :cond_1d

    .line 708
    .line 709
    invoke-static {v1, v6, v11}, Ly1/L1;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    goto :goto_f

    .line 718
    :cond_1d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    :goto_f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 727
    .line 728
    .line 729
    move-result v4

    .line 730
    if-eqz v4, :cond_1f

    .line 731
    .line 732
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v4

    .line 736
    const-string v7, "next(...)"

    .line 737
    .line 738
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    check-cast v4, Ljava/lang/String;

    .line 742
    .line 743
    new-instance v7, Ljava/io/File;

    .line 744
    .line 745
    invoke-direct {v7, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 749
    .line 750
    .line 751
    move-result v4

    .line 752
    if-eqz v4, :cond_1e

    .line 753
    .line 754
    new-instance v3, Ly1/J1;

    .line 755
    .line 756
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    const/4 v4, 0x1

    .line 764
    invoke-direct {v3, v1, v4}, Ly1/J1;-><init>(Ljava/io/File;Z)V

    .line 765
    .line 766
    .line 767
    goto :goto_10

    .line 768
    :cond_1f
    const/4 v3, 0x0

    .line 769
    :goto_10
    if-nez v3, :cond_20

    .line 770
    .line 771
    goto/16 :goto_4

    .line 772
    .line 773
    :cond_20
    iget-boolean v1, v3, Ly1/J1;->b:Z

    .line 774
    .line 775
    if-nez v1, :cond_21

    .line 776
    .line 777
    goto/16 :goto_4

    .line 778
    .line 779
    :cond_21
    iget-object v1, v3, Ly1/J1;->a:Ljava/io/File;

    .line 780
    .line 781
    invoke-static {v1}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    move-object/from16 v3, v20

    .line 786
    .line 787
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    move-object/from16 v0, v17

    .line 791
    .line 792
    move-object/from16 v4, v19

    .line 793
    .line 794
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    const-string v0, "bytes"

    .line 798
    .line 799
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    array-length v0, v1

    .line 803
    const/16 v15, 0x10

    .line 804
    .line 805
    if-ge v0, v15, :cond_22

    .line 806
    .line 807
    goto :goto_11

    .line 808
    :cond_22
    sget-object v0, Ly1/K1;->a:[I

    .line 809
    .line 810
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 811
    .line 812
    .line 813
    move-result v3

    .line 814
    aget v0, v0, v3

    .line 815
    .line 816
    const/4 v3, 0x1

    .line 817
    if-eq v0, v3, :cond_23

    .line 818
    .line 819
    const/4 v3, 0x2

    .line 820
    if-eq v0, v3, :cond_23

    .line 821
    .line 822
    goto :goto_11

    .line 823
    :cond_23
    const/4 v9, 0x0

    .line 824
    invoke-static {v1, v9, v15}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    sget-object v3, Ly1/L1;->a:[B

    .line 829
    .line 830
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 831
    .line 832
    .line 833
    move-result v0

    .line 834
    if-nez v0, :cond_24

    .line 835
    .line 836
    goto :goto_11

    .line 837
    :cond_24
    array-length v0, v1

    .line 838
    invoke-static {v1, v15, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 839
    .line 840
    .line 841
    move-result-object v1

    .line 842
    :goto_11
    new-instance v0, Ly1/q1;

    .line 843
    .line 844
    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 845
    .line 846
    .line 847
    move-result v3

    .line 848
    if-eqz v3, :cond_25

    .line 849
    .line 850
    const-string v2, "image/png"

    .line 851
    .line 852
    goto/16 :goto_14

    .line 853
    .line 854
    :cond_25
    const-string v3, ".jpg"

    .line 855
    .line 856
    invoke-static {v4, v3}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 857
    .line 858
    .line 859
    move-result v3

    .line 860
    if-nez v3, :cond_30

    .line 861
    .line 862
    const-string v3, ".jpeg"

    .line 863
    .line 864
    invoke-static {v4, v3}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 865
    .line 866
    .line 867
    move-result v3

    .line 868
    if-eqz v3, :cond_26

    .line 869
    .line 870
    goto/16 :goto_13

    .line 871
    .line 872
    :cond_26
    const-string v3, ".webp"

    .line 873
    .line 874
    invoke-static {v4, v3}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 875
    .line 876
    .line 877
    move-result v3

    .line 878
    if-eqz v3, :cond_27

    .line 879
    .line 880
    const-string v2, "image/webp"

    .line 881
    .line 882
    goto :goto_14

    .line 883
    :cond_27
    const-string v3, ".svg"

    .line 884
    .line 885
    invoke-static {v4, v3}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 886
    .line 887
    .line 888
    move-result v3

    .line 889
    if-eqz v3, :cond_28

    .line 890
    .line 891
    const-string v2, "image/svg+xml"

    .line 892
    .line 893
    goto :goto_14

    .line 894
    :cond_28
    invoke-static {v4, v2}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 895
    .line 896
    .line 897
    move-result v2

    .line 898
    if-eqz v2, :cond_29

    .line 899
    .line 900
    const-string v2, "audio/ogg"

    .line 901
    .line 902
    goto :goto_14

    .line 903
    :cond_29
    const-string v2, ".mp3"

    .line 904
    .line 905
    invoke-static {v4, v2}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 906
    .line 907
    .line 908
    move-result v2

    .line 909
    if-eqz v2, :cond_2a

    .line 910
    .line 911
    const-string v2, "audio/mpeg"

    .line 912
    .line 913
    goto :goto_14

    .line 914
    :cond_2a
    invoke-static {v4, v6}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 915
    .line 916
    .line 917
    move-result v2

    .line 918
    if-eqz v2, :cond_2b

    .line 919
    .line 920
    const-string v2, "audio/mp4"

    .line 921
    .line 922
    goto :goto_14

    .line 923
    :cond_2b
    const-string v2, ".wav"

    .line 924
    .line 925
    invoke-static {v4, v2}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 926
    .line 927
    .line 928
    move-result v2

    .line 929
    if-eqz v2, :cond_2c

    .line 930
    .line 931
    const-string v2, "audio/wav"

    .line 932
    .line 933
    goto :goto_14

    .line 934
    :cond_2c
    const-string v2, ".mp4"

    .line 935
    .line 936
    invoke-static {v4, v2}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 937
    .line 938
    .line 939
    move-result v2

    .line 940
    const-string v3, "video/mp4"

    .line 941
    .line 942
    if-eqz v2, :cond_2d

    .line 943
    .line 944
    :goto_12
    move-object v2, v3

    .line 945
    goto :goto_14

    .line 946
    :cond_2d
    const-string v2, ".m4v"

    .line 947
    .line 948
    invoke-static {v4, v2}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 949
    .line 950
    .line 951
    move-result v2

    .line 952
    if-eqz v2, :cond_2e

    .line 953
    .line 954
    goto :goto_12

    .line 955
    :cond_2e
    const-string v2, ".webm"

    .line 956
    .line 957
    invoke-static {v4, v2}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 958
    .line 959
    .line 960
    move-result v2

    .line 961
    if-eqz v2, :cond_2f

    .line 962
    .line 963
    const-string v2, "video/webm"

    .line 964
    .line 965
    goto :goto_14

    .line 966
    :cond_2f
    const-string v2, "application/octet-stream"

    .line 967
    .line 968
    goto :goto_14

    .line 969
    :cond_30
    :goto_13
    const-string v2, "image/jpeg"

    .line 970
    .line 971
    :goto_14
    invoke-direct {v0, v2, v1}, Ly1/q1;-><init>(Ljava/lang/String;[B)V

    .line 972
    .line 973
    .line 974
    goto/16 :goto_e

    .line 975
    .line 976
    :goto_15
    return-object v6

    .line 977
    :pswitch_1
    move-object/from16 v0, p1

    .line 978
    .line 979
    check-cast v0, LC1/c0;

    .line 980
    .line 981
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    move-object/from16 v1, p0

    .line 985
    .line 986
    iget-object v2, v1, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 987
    .line 988
    check-cast v2, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 989
    .line 990
    sget v3, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 991
    .line 992
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 993
    .line 994
    .line 995
    iget-object v0, v0, LC1/c0;->b:Ljava/lang/String;

    .line 996
    .line 997
    if-nez v0, :cond_31

    .line 998
    .line 999
    const v0, 0x7f120080

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v0

    .line 1006
    const-string v2, "getString(...)"

    .line 1007
    .line 1008
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    .line 1010
    .line 1011
    :cond_31
    return-object v0

    .line 1012
    :pswitch_2
    move-object/from16 v0, p1

    .line 1013
    .line 1014
    check-cast v0, LC1/Y;

    .line 1015
    .line 1016
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1017
    .line 1018
    .line 1019
    iget-object v2, v1, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 1020
    .line 1021
    check-cast v2, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 1022
    .line 1023
    sget v3, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 1024
    .line 1025
    invoke-virtual {v2, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->s(LC1/Y;)Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    return-object v0

    .line 1030
    nop

    .line 1031
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
