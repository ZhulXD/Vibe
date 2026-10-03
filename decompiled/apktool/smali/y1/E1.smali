.class public final Ly1/E1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v5, "0x52-URM"

    .line 2
    .line 3
    const-string v6, "python-packages"

    .line 4
    .line 5
    const-string v0, "minhub_cache"

    .line 6
    .line 7
    const-string v1, "saves"

    .line 8
    .line 9
    const-string v2, "cache"

    .line 10
    .line 11
    const-string v3, "tl"

    .line 12
    .line 13
    const-string v4, ".minhub_tl_parked"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Ly1/E1;->a:Ljava/util/Set;

    .line 24
    .line 25
    return-void
.end method

.method public static final a(Ljava/util/ArrayList;Ljava/io/File;I)V
    .locals 5

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-le p2, v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    array-length v0, p1

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_5

    .line 16
    .line 17
    aget-object v2, p1, v1

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    sget-object v3, Ly1/E1;->a:Ljava/util/Set;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_4

    .line 38
    .line 39
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, p2, 0x1

    .line 43
    .line 44
    invoke-static {p0, v2, v3}, Ly1/E1;->a(Ljava/util/ArrayList;Ljava/io/File;I)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "getName(...)"

    .line 53
    .line 54
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v4, ".model3.json"

    .line 58
    .line 59
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    :goto_2
    return-void
.end method

.method public static b(Ljava/io/File;)Ly1/D1;
    .locals 26

    .line 1
    const-string v0, "root"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-static {v1}, Ly1/E1;->c(Ljava/io/File;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const-string v5, "gameDir"

    .line 17
    .line 18
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v6, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {v6, v4, v0}, Ly1/E1;->a(Ljava/util/ArrayList;Ljava/io/File;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    move v9, v0

    .line 35
    move v10, v9

    .line 36
    move v11, v10

    .line 37
    :goto_0
    const-string v14, ": "

    .line 38
    .line 39
    const-string v15, "RenpyLive2DTextures"

    .line 40
    .line 41
    if-ge v0, v7, :cond_1a

    .line 42
    .line 43
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    add-int/lit8 v12, v0, 0x1

    .line 48
    .line 49
    check-cast v8, Ljava/io/File;

    .line 50
    .line 51
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 52
    .line 53
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    invoke-static {v8, v0}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Ly1/E1;->f(Ljava/lang/String;)Ljava/util/List;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    sget-object v13, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 70
    .line 71
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    if-nez v13, :cond_0

    .line 84
    .line 85
    move-wide/from16 v16, v2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    move-wide/from16 v16, v2

    .line 99
    .line 100
    const-string v2, "Unreadable model "

    .line 101
    .line 102
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :goto_2
    check-cast v0, Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_19

    .line 136
    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v2, "next(...)"

    .line 142
    .line 143
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    check-cast v0, Ljava/lang/String;

    .line 147
    .line 148
    new-instance v2, Ljava/io/File;

    .line 149
    .line 150
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_18

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const-string v3, "getCanonicalPath(...)"

    .line 168
    .line 169
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    .line 177
    .line 178
    move-object/from16 v18, v1

    .line 179
    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_1

    .line 200
    .line 201
    :goto_4
    move-object/from16 v19, v4

    .line 202
    .line 203
    :goto_5
    move-object/from16 v20, v5

    .line 204
    .line 205
    move-object/from16 v24, v6

    .line 206
    .line 207
    move/from16 v25, v7

    .line 208
    .line 209
    goto/16 :goto_17

    .line 210
    .line 211
    :cond_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string v0, "source"

    .line 215
    .line 216
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v3, v1}, Lkotlin/io/FilesKt;->relativeToOrNull(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    if-eqz v3, :cond_3

    .line 238
    .line 239
    invoke-static {v3}, Lkotlin/io/FilesKt;->getInvariantSeparatorsPath(Ljava/io/File;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    if-nez v3, :cond_2

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_2
    const-string v13, ".."

    .line 247
    .line 248
    invoke-static {v3, v13}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v13

    .line 252
    if-nez v13, :cond_3

    .line 253
    .line 254
    const-string v13, "minhub_cache/live2d"

    .line 255
    .line 256
    invoke-static {v3, v13}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v13

    .line 260
    if-eqz v13, :cond_4

    .line 261
    .line 262
    :cond_3
    :goto_6
    move-object/from16 v19, v4

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_4
    new-instance v13, Ljava/io/File;

    .line 266
    .line 267
    move-object/from16 v19, v4

    .line 268
    .line 269
    const-string v4, "minhub_cache/live2d/"

    .line 270
    .line 271
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-direct {v13, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    goto :goto_8

    .line 279
    :goto_7
    const/4 v13, 0x0

    .line 280
    :goto_8
    if-nez v13, :cond_5

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_5
    const-string v1, ".tmp"

    .line 284
    .line 285
    const/4 v3, 0x1

    .line 286
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    .line 287
    .line 288
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 289
    .line 290
    .line 291
    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 292
    .line 293
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 298
    .line 299
    .line 300
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 301
    .line 302
    if-lez v3, :cond_13

    .line 303
    .line 304
    move-object/from16 v20, v5

    .line 305
    .line 306
    :try_start_2
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 307
    .line 308
    if-gtz v5, :cond_6

    .line 309
    .line 310
    :goto_9
    move-object/from16 v23, v2

    .line 311
    .line 312
    move-object/from16 v24, v6

    .line 313
    .line 314
    move/from16 v25, v7

    .line 315
    .line 316
    goto/16 :goto_14

    .line 317
    .line 318
    :cond_6
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    const/16 v5, 0x1000

    .line 323
    .line 324
    if-gt v3, v5, :cond_8

    .line 325
    .line 326
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_7

    .line 331
    .line 332
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 333
    .line 334
    .line 335
    invoke-static {v13}, Ly1/E1;->d(Ljava/io/File;)Ljava/io/File;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 340
    .line 341
    .line 342
    goto :goto_c

    .line 343
    :catchall_1
    move-exception v0

    .line 344
    move-object/from16 v23, v2

    .line 345
    .line 346
    :goto_a
    move-object/from16 v24, v6

    .line 347
    .line 348
    :goto_b
    move/from16 v25, v7

    .line 349
    .line 350
    goto/16 :goto_15

    .line 351
    .line 352
    :cond_7
    :goto_c
    sget-object v0, Ly1/C1;->d:Ly1/C1;

    .line 353
    .line 354
    :goto_d
    move-object/from16 v24, v6

    .line 355
    .line 356
    move/from16 v25, v7

    .line 357
    .line 358
    goto/16 :goto_16

    .line 359
    .line 360
    :cond_8
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    const-string v0, "target"

    .line 364
    .line 365
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-eqz v0, :cond_b

    .line 373
    .line 374
    invoke-static {v13}, Ly1/E1;->d(Ljava/io/File;)Ljava/io/File;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    if-eqz v3, :cond_9

    .line 383
    .line 384
    goto :goto_e

    .line 385
    :cond_9
    const/4 v0, 0x0

    .line 386
    :goto_e
    if-eqz v0, :cond_a

    .line 387
    .line 388
    invoke-static {v0}, Lkotlin/io/FilesKt;->f(Ljava/io/File;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    if-eqz v0, :cond_a

    .line 393
    .line 394
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    goto :goto_f

    .line 403
    :cond_a
    const/4 v0, 0x0

    .line 404
    :goto_f
    invoke-static {v2}, Ly1/E1;->e(Ljava/io/File;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_b

    .line 413
    .line 414
    sget-object v0, Ly1/C1;->c:Ly1/C1;

    .line 415
    .line 416
    goto :goto_d

    .line 417
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 418
    .line 419
    .line 420
    move-result-wide v21

    .line 421
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 422
    .line 423
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 424
    .line 425
    .line 426
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 427
    .line 428
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 429
    .line 430
    move-object/from16 v23, v2

    .line 431
    .line 432
    const/4 v2, 0x1

    .line 433
    :goto_10
    :try_start_3
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 434
    .line 435
    .line 436
    move-result v24

    .line 437
    move/from16 v25, v3

    .line 438
    .line 439
    div-int v3, v24, v2

    .line 440
    .line 441
    move/from16 v24, v5

    .line 442
    .line 443
    const/16 v5, 0x1000

    .line 444
    .line 445
    if-le v3, v5, :cond_c

    .line 446
    .line 447
    mul-int/lit8 v2, v2, 0x2

    .line 448
    .line 449
    move/from16 v5, v24

    .line 450
    .line 451
    move/from16 v3, v25

    .line 452
    .line 453
    goto :goto_10

    .line 454
    :cond_c
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 455
    .line 456
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 457
    .line 458
    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 459
    .line 460
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    if-nez v0, :cond_d

    .line 469
    .line 470
    sget-object v0, Ly1/C1;->e:Ly1/C1;

    .line 471
    .line 472
    goto :goto_d

    .line 473
    :catchall_2
    move-exception v0

    .line 474
    goto/16 :goto_a

    .line 475
    .line 476
    :cond_d
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 481
    .line 482
    .line 483
    move-result v3

    .line 484
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 493
    .line 494
    .line 495
    move-result v5

    .line 496
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 497
    .line 498
    .line 499
    move-result v3

    .line 500
    const/16 v5, 0x1000

    .line 501
    .line 502
    if-le v3, v5, :cond_e

    .line 503
    .line 504
    int-to-float v3, v5

    .line 505
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 506
    .line 507
    .line 508
    move-result v5

    .line 509
    move/from16 v24, v3

    .line 510
    .line 511
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 512
    .line 513
    .line 514
    move-result v3

    .line 515
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    int-to-float v3, v3

    .line 520
    div-float v3, v24, v3

    .line 521
    .line 522
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 523
    .line 524
    .line 525
    move-result v5

    .line 526
    int-to-float v5, v5

    .line 527
    mul-float/2addr v5, v3

    .line 528
    float-to-int v5, v5

    .line 529
    move/from16 v24, v3

    .line 530
    .line 531
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 532
    .line 533
    .line 534
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 535
    int-to-float v3, v3

    .line 536
    mul-float v3, v3, v24

    .line 537
    .line 538
    float-to-int v3, v3

    .line 539
    move-object/from16 v24, v6

    .line 540
    .line 541
    const/4 v6, 0x1

    .line 542
    :try_start_4
    invoke-static {v0, v5, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    const-string v5, "createScaledBitmap(...)"

    .line 547
    .line 548
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 552
    .line 553
    .line 554
    goto :goto_11

    .line 555
    :catchall_3
    move-exception v0

    .line 556
    goto/16 :goto_b

    .line 557
    .line 558
    :cond_e
    move-object/from16 v24, v6

    .line 559
    .line 560
    move-object v3, v0

    .line 561
    :goto_11
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    if-eqz v0, :cond_f

    .line 566
    .line 567
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 568
    .line 569
    .line 570
    :cond_f
    new-instance v0, Ljava/io/File;

    .line 571
    .line 572
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v5

    .line 576
    new-instance v6, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 592
    .line 593
    .line 594
    :try_start_5
    new-instance v5, Ljava/io/FileOutputStream;

    .line 595
    .line 596
    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 597
    .line 598
    .line 599
    new-instance v6, Ljava/io/BufferedOutputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 600
    .line 601
    move/from16 v25, v7

    .line 602
    .line 603
    const/16 v7, 0x2000

    .line 604
    .line 605
    :try_start_6
    invoke-direct {v6, v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 606
    .line 607
    .line 608
    :try_start_7
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 609
    .line 610
    const/16 v7, 0x64

    .line 611
    .line 612
    invoke-virtual {v3, v5, v7, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 613
    .line 614
    .line 615
    move-result v5

    .line 616
    if-nez v5, :cond_10

    .line 617
    .line 618
    sget-object v0, Ly1/C1;->e:Ly1/C1;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 619
    .line 620
    const/4 v2, 0x0

    .line 621
    :try_start_8
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 622
    .line 623
    .line 624
    :try_start_9
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 625
    .line 626
    .line 627
    goto/16 :goto_16

    .line 628
    .line 629
    :catchall_4
    move-exception v0

    .line 630
    goto/16 :goto_15

    .line 631
    .line 632
    :catchall_5
    move-exception v0

    .line 633
    goto/16 :goto_13

    .line 634
    .line 635
    :catchall_6
    move-exception v0

    .line 636
    move-object v2, v0

    .line 637
    goto/16 :goto_12

    .line 638
    .line 639
    :cond_10
    :try_start_a
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 640
    .line 641
    const/4 v5, 0x0

    .line 642
    :try_start_b
    invoke-static {v6, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 643
    .line 644
    .line 645
    :try_start_c
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v0, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 649
    .line 650
    .line 651
    move-result v3

    .line 652
    if-nez v3, :cond_12

    .line 653
    .line 654
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 655
    .line 656
    .line 657
    move-result v3

    .line 658
    if-eqz v3, :cond_11

    .line 659
    .line 660
    invoke-virtual {v0, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 661
    .line 662
    .line 663
    move-result v3

    .line 664
    if-nez v3, :cond_12

    .line 665
    .line 666
    :cond_11
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 667
    .line 668
    .line 669
    sget-object v0, Ly1/C1;->e:Ly1/C1;

    .line 670
    .line 671
    goto/16 :goto_16

    .line 672
    .line 673
    :cond_12
    invoke-static {v13}, Ly1/E1;->d(Ljava/io/File;)Ljava/io/File;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    invoke-static/range {v23 .. v23}, Ly1/E1;->e(Ljava/io/File;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    invoke-static {v0, v3}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 689
    .line 690
    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 691
    .line 692
    const/16 v5, 0x1000

    .line 693
    .line 694
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 695
    .line 696
    .line 697
    move-result v2

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 699
    .line 700
    .line 701
    move-result-wide v5

    .line 702
    sub-long v5, v5, v21

    .line 703
    .line 704
    new-instance v7, Ljava/lang/StringBuilder;

    .line 705
    .line 706
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    const-string v0, " "

    .line 713
    .line 714
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    const-string v0, "x"

    .line 721
    .line 722
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    const-string v0, " -> "

    .line 729
    .line 730
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    const-string v0, "px copy in "

    .line 737
    .line 738
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    const-string v0, " ms"

    .line 745
    .line 746
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    .line 755
    .line 756
    sget-object v0, Ly1/C1;->b:Ly1/C1;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 757
    .line 758
    goto :goto_16

    .line 759
    :goto_12
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 760
    :catchall_7
    move-exception v0

    .line 761
    :try_start_e
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 762
    .line 763
    .line 764
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 765
    :catchall_8
    move-exception v0

    .line 766
    move/from16 v25, v7

    .line 767
    .line 768
    :goto_13
    :try_start_f
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 769
    .line 770
    .line 771
    throw v0

    .line 772
    :cond_13
    move-object/from16 v20, v5

    .line 773
    .line 774
    goto/16 :goto_9

    .line 775
    .line 776
    :goto_14
    sget-object v0, Ly1/C1;->e:Ly1/C1;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 777
    .line 778
    goto :goto_16

    .line 779
    :catchall_9
    move-exception v0

    .line 780
    move-object/from16 v23, v2

    .line 781
    .line 782
    move-object/from16 v20, v5

    .line 783
    .line 784
    goto/16 :goto_a

    .line 785
    .line 786
    :goto_15
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v2

    .line 790
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    new-instance v3, Ljava/lang/StringBuilder;

    .line 795
    .line 796
    const-string v4, "Could not prepare "

    .line 797
    .line 798
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    .line 816
    .line 817
    new-instance v0, Ljava/io/File;

    .line 818
    .line 819
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v2

    .line 823
    invoke-static {v2, v1}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v1

    .line 827
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 831
    .line 832
    .line 833
    sget-object v0, Ly1/C1;->e:Ly1/C1;

    .line 834
    .line 835
    :goto_16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 836
    .line 837
    .line 838
    move-result v0

    .line 839
    if-eqz v0, :cond_17

    .line 840
    .line 841
    const/4 v6, 0x1

    .line 842
    if-eq v0, v6, :cond_16

    .line 843
    .line 844
    const/4 v1, 0x2

    .line 845
    if-eq v0, v1, :cond_14

    .line 846
    .line 847
    const/4 v1, 0x3

    .line 848
    if-ne v0, v1, :cond_15

    .line 849
    .line 850
    add-int/lit8 v11, v11, 0x1

    .line 851
    .line 852
    :cond_14
    :goto_17
    move-object/from16 v1, v18

    .line 853
    .line 854
    move-object/from16 v4, v19

    .line 855
    .line 856
    move-object/from16 v5, v20

    .line 857
    .line 858
    move-object/from16 v6, v24

    .line 859
    .line 860
    move/from16 v7, v25

    .line 861
    .line 862
    goto/16 :goto_3

    .line 863
    .line 864
    :cond_15
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 865
    .line 866
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 867
    .line 868
    .line 869
    throw v0

    .line 870
    :cond_16
    add-int/lit8 v10, v10, 0x1

    .line 871
    .line 872
    goto :goto_17

    .line 873
    :cond_17
    add-int/lit8 v9, v9, 0x1

    .line 874
    .line 875
    goto :goto_17

    .line 876
    :cond_18
    move-object/from16 v18, v1

    .line 877
    .line 878
    goto/16 :goto_4

    .line 879
    .line 880
    :cond_19
    move-object/from16 v1, p0

    .line 881
    .line 882
    move v0, v12

    .line 883
    move-wide/from16 v2, v16

    .line 884
    .line 885
    goto/16 :goto_0

    .line 886
    .line 887
    :cond_1a
    move-wide/from16 v16, v2

    .line 888
    .line 889
    new-instance v8, Ly1/D1;

    .line 890
    .line 891
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 892
    .line 893
    .line 894
    move-result-wide v0

    .line 895
    sub-long v12, v0, v16

    .line 896
    .line 897
    invoke-direct/range {v8 .. v13}, Ly1/D1;-><init>(IIIJ)V

    .line 898
    .line 899
    .line 900
    add-int/2addr v9, v11

    .line 901
    if-lez v9, :cond_1b

    .line 902
    .line 903
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    .line 908
    .line 909
    const-string v2, "Live2D textures for "

    .line 910
    .line 911
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .line 929
    .line 930
    :cond_1b
    return-object v8
.end method

.method public static c(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 1
    const-string v0, "root"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    const-string v1, "game"

    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/io/File;

    .line 20
    .line 21
    const-string v2, "start.rpyc"

    .line 22
    .line 23
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    return-object p0
.end method

.method public static d(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 1
    const-string v0, "target"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, ".minhub-source"

    .line 13
    .line 14
    invoke-static {p0, v1}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static e(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ":"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    const-string v0, "modelJson"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "FileReferences"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_4

    .line 18
    .line 19
    const-string v0, "Textures"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    move-object v2, v0

    .line 53
    check-cast v2, Lkotlin/collections/IntIterator;

    .line 54
    .line 55
    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const/4 v2, 0x0

    .line 71
    :goto_1
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    return-object v1

    .line 78
    :cond_4
    :goto_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
