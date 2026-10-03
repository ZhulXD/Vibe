.class public final Ly1/x1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ly1/v1;

.field public final synthetic d:LL1/a;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ly1/v1;LL1/a;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly1/x1;->c:Ly1/v1;

    .line 2
    .line 3
    iput-object p2, p0, Ly1/x1;->d:LL1/a;

    .line 4
    .line 5
    iput-object p3, p0, Ly1/x1;->e:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Ly1/x1;->f:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Ly1/x1;->g:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Ly1/x1;

    .line 2
    .line 3
    iget-object v4, p0, Ly1/x1;->f:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v5, p0, Ly1/x1;->g:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object v1, p0, Ly1/x1;->c:Ly1/v1;

    .line 8
    .line 9
    iget-object v2, p0, Ly1/x1;->d:LL1/a;

    .line 10
    .line 11
    iget-object v3, p0, Ly1/x1;->e:Ljava/lang/String;

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Ly1/x1;-><init>(Ly1/v1;LL1/a;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, v0, Ly1/x1;->b:Ljava/lang/Object;

    .line 18
    .line 19
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, LV1/x;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ly1/x1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ly1/x1;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ly1/x1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "-"

    .line 4
    .line 5
    const-string v2, "."

    .line 6
    .line 7
    const-string v3, "[0-9a-fA-F]{64}"

    .line 8
    .line 9
    iget-object v4, v1, Ly1/x1;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, LV1/x;

    .line 12
    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v4, v1, Ly1/x1;->c:Ly1/v1;

    .line 20
    .line 21
    iget-object v5, v1, Ly1/x1;->d:LL1/a;

    .line 22
    .line 23
    iget-object v6, v1, Ly1/x1;->e:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v7, v1, Ly1/x1;->f:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v8, v1, Ly1/x1;->g:Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    :try_start_0
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 30
    .line 31
    sget-object v9, Ly1/v1;->j:Ly1/v1;

    .line 32
    .line 33
    if-ne v4, v9, :cond_0

    .line 34
    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    const/4 v9, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v9, 0x0

    .line 40
    :goto_0
    if-eqz v9, :cond_5

    .line 41
    .line 42
    sget-object v11, Ly1/W0;->b:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    const-string v12, "Failed requirement."

    .line 45
    .line 46
    if-eqz v11, :cond_1

    .line 47
    .line 48
    :try_start_1
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v13

    .line 52
    if-nez v13, :cond_4

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto/16 :goto_16

    .line 57
    .line 58
    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v13

    .line 66
    if-eqz v13, :cond_4

    .line 67
    .line 68
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    check-cast v13, LL1/a;

    .line 73
    .line 74
    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v13

    .line 78
    if-eqz v13, :cond_2

    .line 79
    .line 80
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v11, v5, LL1/a;->c:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    if-eqz v11, :cond_3

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_5
    :goto_2
    if-eqz v9, :cond_6

    .line 105
    .line 106
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object v12, v5, LL1/a;->e:Ljava/lang/String;

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    const/4 v12, 0x0

    .line 113
    :goto_3
    if-eqz v9, :cond_7

    .line 114
    .line 115
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v13, v5, LL1/a;->f:Ljava/lang/String;

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_7
    const/4 v13, 0x0

    .line 122
    :goto_4
    if-eqz v9, :cond_9

    .line 123
    .line 124
    if-eqz v12, :cond_8

    .line 125
    .line 126
    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v14

    .line 130
    if-nez v14, :cond_8

    .line 131
    .line 132
    if-eqz v13, :cond_8

    .line 133
    .line 134
    invoke-static {v13}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v14

    .line 138
    if-nez v14, :cond_8

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 142
    .line 143
    const-string v2, "Missing hashes"

    .line 144
    .line 145
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :cond_9
    :goto_5
    if-eqz v9, :cond_b

    .line 150
    .line 151
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    new-instance v14, Lkotlin/text/Regex;

    .line 155
    .line 156
    invoke-direct {v14, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v14, v12}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v14

    .line 163
    if-eqz v14, :cond_a

    .line 164
    .line 165
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    new-instance v14, Lkotlin/text/Regex;

    .line 169
    .line 170
    invoke-direct {v14, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v14, v13}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_a

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_a
    new-instance v0, Ljava/io/IOException;

    .line 181
    .line 182
    const-string v2, "Invalid catalog hashes"

    .line 183
    .line 184
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v0

    .line 188
    :cond_b
    :goto_6
    sget-object v3, Ly1/y1;->a:Ly1/y1;

    .line 189
    .line 190
    invoke-static {v5, v7, v4}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    if-eqz v3, :cond_1d

    .line 199
    .line 200
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 201
    .line 202
    .line 203
    move-result v14

    .line 204
    if-nez v14, :cond_c

    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 207
    .line 208
    .line 209
    :cond_c
    new-instance v14, Ljava/io/FileOutputStream;

    .line 210
    .line 211
    new-instance v15, Ljava/io/File;

    .line 212
    .line 213
    const/16 p1, 0x0

    .line 214
    .line 215
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    invoke-static {v4, v5}, Ly1/y1;->l(Ly1/v1;LL1/a;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    if-nez v12, :cond_d

    .line 224
    .line 225
    const-string v17, "legacy"

    .line 226
    .line 227
    move-object/from16 v1, v17

    .line 228
    .line 229
    :goto_7
    move/from16 v17, v9

    .line 230
    .line 231
    goto :goto_8

    .line 232
    :cond_d
    move-object v1, v12

    .line 233
    goto :goto_7

    .line 234
    :goto_8
    const-string v9, "engine-plugins/."

    .line 235
    .line 236
    move-object/from16 v18, v13

    .line 237
    .line 238
    const-string v13, ".lock"

    .line 239
    .line 240
    invoke-static {v9, v10, v0, v1, v13}, LE/b;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-direct {v15, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const/4 v1, 0x1

    .line 248
    invoke-direct {v14, v15, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 252
    .line 253
    .line 254
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 256
    .line 257
    .line 258
    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 259
    :try_start_3
    invoke-static {v5, v7, v4}, Ly1/y1;->a(LL1/a;Landroid/content/Context;Ly1/v1;)V

    .line 260
    .line 261
    .line 262
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v10

    .line 270
    const-string v11, "toString(...)"

    .line 271
    .line 272
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    new-instance v11, Ljava/io/File;

    .line 276
    .line 277
    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 278
    .line 279
    .line 280
    move-result-object v13

    .line 281
    invoke-static {v4, v5}, Ly1/y1;->l(Ly1/v1;LL1/a;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v14

    .line 285
    new-instance v15, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 288
    .line 289
    .line 290
    move-object/from16 v16, v1

    .line 291
    .line 292
    :try_start_4
    const-string v1, "plugin-"

    .line 293
    .line 294
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v0, ".zip"

    .line 307
    .line 308
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-direct {v11, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    new-instance v1, Ljava/io/File;

    .line 319
    .line 320
    invoke-static {v4, v5}, Ly1/y1;->l(Ly1/v1;LL1/a;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    new-instance v13, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string v0, ".staging"

    .line 342
    .line 343
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 351
    .line 352
    .line 353
    :try_start_5
    invoke-static {v6, v11, v8}, Ly1/y1;->b(Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 354
    .line 355
    .line 356
    const-string v0, "toLowerCase(...)"

    .line 357
    .line 358
    if-eqz v17, :cond_f

    .line 359
    .line 360
    :try_start_6
    invoke-static {v11}, Ly1/z1;->a(Ljava/io/File;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 368
    .line 369
    invoke-virtual {v12, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    if-eqz v2, :cond_e

    .line 381
    .line 382
    goto :goto_9

    .line 383
    :cond_e
    new-instance v0, Ljava/io/IOException;

    .line 384
    .line 385
    const-string v2, "Downloaded archive hash mismatch"

    .line 386
    .line 387
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    throw v0

    .line 391
    :catchall_1
    move-exception v0

    .line 392
    move-object/from16 v2, v16

    .line 393
    .line 394
    goto/16 :goto_12

    .line 395
    .line 396
    :cond_f
    :goto_9
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 397
    .line 398
    .line 399
    invoke-static {v11, v1}, Ly1/y1;->c(Ljava/io/File;Ljava/io/File;)V

    .line 400
    .line 401
    .line 402
    invoke-static {v4, v1}, Ly1/y1;->g(Ly1/v1;Ljava/io/File;)V

    .line 403
    .line 404
    .line 405
    if-eqz v17, :cond_15

    .line 406
    .line 407
    if-eqz v17, :cond_10

    .line 408
    .line 409
    invoke-static {v1}, LM1/e;->c(Ljava/io/File;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    goto :goto_c

    .line 414
    :cond_10
    invoke-virtual {v4}, Ly1/v1;->a()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    if-eqz v2, :cond_14

    .line 419
    .line 420
    invoke-virtual {v4}, Ly1/v1;->b()Ljava/util/List;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    new-instance v8, Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 427
    .line 428
    .line 429
    move-result v10

    .line 430
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 431
    .line 432
    .line 433
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 438
    .line 439
    .line 440
    move-result v10

    .line 441
    if-eqz v10, :cond_11

    .line 442
    .line 443
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v10

    .line 447
    check-cast v10, Ljava/lang/String;

    .line 448
    .line 449
    new-instance v12, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string v13, "/"

    .line 458
    .line 459
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v10

    .line 469
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    goto :goto_a

    .line 473
    :cond_11
    sget-object v2, Ly1/v1;->i:Ly1/v1;

    .line 474
    .line 475
    if-ne v4, v2, :cond_12

    .line 476
    .line 477
    const-string v2, "private.mp3"

    .line 478
    .line 479
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    goto :goto_b

    .line 484
    :cond_12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    :goto_b
    invoke-static {v8, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-static {v1, v2}, LM1/e;->d(Ljava/io/File;Ljava/util/List;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    :goto_c
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 500
    .line 501
    move-object/from16 v13, v18

    .line 502
    .line 503
    invoke-virtual {v13, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    if-eqz v0, :cond_13

    .line 515
    .line 516
    goto :goto_d

    .line 517
    :cond_13
    new-instance v0, Ljava/io/IOException;

    .line 518
    .line 519
    const-string v2, "Extracted installed-tree hash mismatch"

    .line 520
    .line 521
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    throw v0

    .line 525
    :cond_14
    new-instance v0, Ljava/io/IOException;

    .line 526
    .line 527
    const-string v2, "Unsupported ABI"

    .line 528
    .line 529
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    throw v0

    .line 533
    :cond_15
    :goto_d
    sget-object v0, Ly1/y1;->a:Ly1/y1;

    .line 534
    .line 535
    invoke-static {v1, v4, v5}, Ly1/y1;->h(Ljava/io/File;Ly1/v1;LL1/a;)V

    .line 536
    .line 537
    .line 538
    invoke-static {v5, v7, v4}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-static {v1, v0}, Ly1/y1;->d(Ljava/io/File;Ljava/io/File;)V

    .line 543
    .line 544
    .line 545
    invoke-static {v5, v7, v4}, Ly1/y1;->p(LL1/a;Landroid/content/Context;Ly1/v1;)V

    .line 546
    .line 547
    .line 548
    if-eqz v17, :cond_16

    .line 549
    .line 550
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    invoke-static {v5, v7, v4}, Ly1/y1;->e(LL1/a;Landroid/content/Context;Ly1/v1;)V

    .line 554
    .line 555
    .line 556
    goto :goto_e

    .line 557
    :cond_16
    if-eqz v17, :cond_17

    .line 558
    .line 559
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 563
    .line 564
    .line 565
    invoke-static {v5, v7, v4}, Ly1/y1;->f(LL1/a;Landroid/content/Context;Ly1/v1;)V

    .line 566
    .line 567
    .line 568
    goto :goto_e

    .line 569
    :cond_17
    invoke-static {v5, v7, v4}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 574
    .line 575
    .line 576
    move-result v2

    .line 577
    if-nez v2, :cond_18

    .line 578
    .line 579
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 580
    .line 581
    .line 582
    :cond_18
    new-instance v0, Ljava/io/File;

    .line 583
    .line 584
    invoke-static {v5, v7, v4}, Ly1/y1;->o(LL1/a;Landroid/content/Context;Ly1/v1;)Ljava/io/File;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    const-string v3, ".install-trust"

    .line 589
    .line 590
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    const-string v2, "UNVERIFIED_LEGACY\n"

    .line 594
    .line 595
    invoke-static {v0, v2}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 596
    .line 597
    .line 598
    :goto_e
    :try_start_7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 599
    .line 600
    .line 601
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 602
    if-eqz v0, :cond_19

    .line 603
    .line 604
    :try_start_8
    invoke-static {v1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 605
    .line 606
    .line 607
    goto :goto_f

    .line 608
    :catchall_2
    move-exception v0

    .line 609
    move-object v1, v0

    .line 610
    move-object/from16 v2, v16

    .line 611
    .line 612
    goto :goto_14

    .line 613
    :cond_19
    :goto_f
    :try_start_9
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 614
    .line 615
    .line 616
    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 617
    if-eqz v0, :cond_1a

    .line 618
    .line 619
    :try_start_a
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 620
    .line 621
    .line 622
    :cond_1a
    :try_start_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 623
    .line 624
    move-object/from16 v0, p1

    .line 625
    .line 626
    :try_start_c
    invoke-static {v9, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 627
    .line 628
    .line 629
    move-object/from16 v2, v16

    .line 630
    .line 631
    :try_start_d
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 632
    .line 633
    .line 634
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 635
    .line 636
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 640
    goto :goto_17

    .line 641
    :catchall_3
    move-exception v0

    .line 642
    move-object/from16 v2, v16

    .line 643
    .line 644
    :goto_10
    move-object v1, v0

    .line 645
    goto :goto_15

    .line 646
    :catchall_4
    move-exception v0

    .line 647
    move-object/from16 v2, v16

    .line 648
    .line 649
    :goto_11
    move-object v1, v0

    .line 650
    goto :goto_14

    .line 651
    :goto_12
    :try_start_e
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 652
    .line 653
    .line 654
    move-result v3

    .line 655
    if-eqz v3, :cond_1b

    .line 656
    .line 657
    invoke-static {v1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 658
    .line 659
    .line 660
    goto :goto_13

    .line 661
    :catchall_5
    move-exception v0

    .line 662
    goto :goto_11

    .line 663
    :cond_1b
    :goto_13
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    if-eqz v1, :cond_1c

    .line 668
    .line 669
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 670
    .line 671
    .line 672
    :cond_1c
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 673
    :catchall_6
    move-exception v0

    .line 674
    move-object v2, v1

    .line 675
    goto :goto_11

    .line 676
    :goto_14
    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 677
    :catchall_7
    move-exception v0

    .line 678
    :try_start_10
    invoke-static {v9, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 679
    .line 680
    .line 681
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 682
    :catchall_8
    move-exception v0

    .line 683
    goto :goto_10

    .line 684
    :catchall_9
    move-exception v0

    .line 685
    move-object v2, v1

    .line 686
    goto :goto_10

    .line 687
    :goto_15
    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 688
    :catchall_a
    move-exception v0

    .line 689
    :try_start_12
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 690
    .line 691
    .line 692
    throw v0

    .line 693
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    .line 694
    .line 695
    const-string v1, "Missing plugin parent"

    .line 696
    .line 697
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 701
    :goto_16
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 702
    .line 703
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    :goto_17
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    if-eqz v1, :cond_1e

    .line 716
    .line 717
    sget-object v2, Ly1/y1;->a:Ly1/y1;

    .line 718
    .line 719
    invoke-static {v4, v5}, Ly1/y1;->l(Ly1/v1;LL1/a;)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v2

    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    .line 724
    .line 725
    const-string v4, "downloadAndInstall "

    .line 726
    .line 727
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    const-string v2, " failed from "

    .line 734
    .line 735
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    const-string v3, "NativePluginManager"

    .line 746
    .line 747
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    .line 749
    .line 750
    :cond_1e
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    return-object v0
.end method
