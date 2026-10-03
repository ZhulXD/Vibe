.class public final synthetic LC1/t;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/AddGameActivity;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/net/Uri;

.field public final synthetic f:LD1/b;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Landroid/net/Uri;LD1/b;I)V
    .locals 0

    .line 1
    iput p5, p0, LC1/t;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/t;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 4
    .line 5
    iput-object p2, p0, LC1/t;->d:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, LC1/t;->e:Landroid/net/Uri;

    .line 8
    .line 9
    iput-object p4, p0, LC1/t;->f:LD1/b;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, LC1/t;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LC1/t;->e:Landroid/net/Uri;

    .line 7
    .line 8
    iget-object v1, p0, LC1/t;->f:LD1/b;

    .line 9
    .line 10
    new-instance v3, Ljava/io/File;

    .line 11
    .line 12
    iget-object v8, p0, LC1/t;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v8, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v9, v8, Lcom/minhub/gamehub/hub/AddGameActivity;->f:Landroid/os/Handler;

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    :cond_0
    move-object v5, v2

    .line 28
    iget-object v2, p0, LC1/t;->d:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v2}, LC1/O;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v10

    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v12, "games/"

    .line 41
    .line 42
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v6, "_"

    .line 49
    .line 50
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 64
    .line 65
    .line 66
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 67
    .line 68
    const-string v6, "game.apk"

    .line 69
    .line 70
    invoke-direct {v4, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 78
    .line 79
    .line 80
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    .line 84
    .line 85
    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    .line 87
    .line 88
    const/4 v4, 0x0

    .line 89
    const/4 v10, 0x2

    .line 90
    :try_start_2
    invoke-static {v6, v7, v4, v10, v5}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 91
    .line 92
    .line 93
    :try_start_3
    invoke-static {v7, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    .line 95
    .line 96
    :try_start_4
    invoke-static {v6, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    new-instance v4, LC1/e;

    .line 100
    .line 101
    const/4 v5, 0x3

    .line 102
    invoke-direct {v4, v8, v5}, LC1/e;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    .line 107
    .line 108
    invoke-static {v8, v0}, LC1/O;->f(Lcom/minhub/gamehub/hub/AddGameActivity;Landroid/net/Uri;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const/16 v6, 0x8

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    const/4 v5, 0x0

    .line 116
    invoke-static/range {v2 .. v7}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->buildImportedGameFromDirectory$default(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ZILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v8, v1, v3, v0}, LC1/O;->k(Lcom/minhub/gamehub/hub/AddGameActivity;LD1/b;Ljava/io/File;Lcom/minhub/gamehub/data/Game;)Z

    .line 121
    .line 122
    .line 123
    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    if-nez v0, :cond_1

    .line 125
    .line 126
    :goto_0
    invoke-virtual {v8, v1}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_1
    :try_start_5
    new-instance v0, LC1/e;

    .line 131
    .line 132
    const/4 v2, 0x4

    .line 133
    invoke-direct {v0, v8, v2}, LC1/e;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    goto :goto_4

    .line 142
    :catch_0
    move-exception v0

    .line 143
    goto :goto_2

    .line 144
    :catchall_1
    move-exception v0

    .line 145
    move-object v2, v0

    .line 146
    goto :goto_1

    .line 147
    :catchall_2
    move-exception v0

    .line 148
    move-object v2, v0

    .line 149
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 150
    :catchall_3
    move-exception v0

    .line 151
    :try_start_7
    invoke-static {v7, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 155
    :goto_1
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 156
    :catchall_4
    move-exception v0

    .line 157
    :try_start_9
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 162
    .line 163
    const-string v2, "Cannot open APK stream"

    .line 164
    .line 165
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 169
    :goto_2
    :try_start_a
    const-string v2, "MinHub"

    .line 170
    .line 171
    const-string v4, "APK import failed"

    .line 172
    .line 173
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, LD1/b;->a()Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_3

    .line 181
    .line 182
    invoke-static {v3}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 183
    .line 184
    .line 185
    :cond_3
    invoke-static {v8, v0}, LC1/O;->h(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    new-instance v2, LC1/B;

    .line 190
    .line 191
    const/4 v3, 0x0

    .line 192
    invoke-direct {v2, v8, v0, v3}, LC1/B;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v9, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :goto_3
    return-void

    .line 200
    :goto_4
    invoke-virtual {v8, v1}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 201
    .line 202
    .line 203
    throw v0

    .line 204
    :pswitch_0
    iget-object v0, p0, LC1/t;->e:Landroid/net/Uri;

    .line 205
    .line 206
    iget-object v6, p0, LC1/t;->f:LD1/b;

    .line 207
    .line 208
    new-instance v4, Ljava/io/File;

    .line 209
    .line 210
    const/4 v1, 0x0

    .line 211
    iget-object v2, p0, LC1/t;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 212
    .line 213
    invoke-virtual {v2, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    iget-object v8, v2, Lcom/minhub/gamehub/hub/AddGameActivity;->f:Landroid/os/Handler;

    .line 218
    .line 219
    if-nez v1, :cond_4

    .line 220
    .line 221
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    :cond_4
    iget-object v3, p0, LC1/t;->d:Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v3}, LC1/O;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 232
    .line 233
    .line 234
    move-result-wide v9

    .line 235
    new-instance v7, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string v11, "games/"

    .line 238
    .line 239
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v5, "_"

    .line 246
    .line 247
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :try_start_b
    invoke-static {v2, v0}, LE/a;->g(Landroid/content/Context;Landroid/net/Uri;)LE/e;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 265
    .line 266
    .line 267
    invoke-static {v0}, LC1/O;->b(LE/a;)I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    const/4 v5, 0x1

    .line 272
    invoke-static {v1, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 277
    .line 278
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 279
    .line 280
    .line 281
    new-instance v7, LC1/D;

    .line 282
    .line 283
    const/4 v9, 0x0

    .line 284
    invoke-direct {v7, v5, v2, v1, v9}, LC1/D;-><init>(Ljava/io/Serializable;Ljava/lang/Object;II)V

    .line 285
    .line 286
    .line 287
    invoke-static {v2, v0, v4, v7}, LC1/O;->a(Lcom/minhub/gamehub/hub/AddGameActivity;LE/a;Ljava/io/File;LC1/D;)V

    .line 288
    .line 289
    .line 290
    iget v0, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 291
    .line 292
    if-eqz v0, :cond_6

    .line 293
    .line 294
    invoke-static {v4}, LD1/n;->b(Ljava/io/File;)LD1/p;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    iget-object v0, v5, LD1/p;->a:Ljava/util/List;

    .line 299
    .line 300
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    check-cast v0, LD1/l;

    .line 305
    .line 306
    if-eqz v0, :cond_5

    .line 307
    .line 308
    iget-object v1, v0, LD1/l;->d:LD1/k;

    .line 309
    .line 310
    sget-object v7, LD1/k;->b:LD1/k;

    .line 311
    .line 312
    if-ne v1, v7, :cond_5

    .line 313
    .line 314
    iget-object v0, v0, LD1/l;->b:Ljava/io/File;

    .line 315
    .line 316
    invoke-static {v2, v3, v4, v0, v6}, LC1/O;->c(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;LD1/b;)V

    .line 317
    .line 318
    .line 319
    goto :goto_6

    .line 320
    :catch_1
    move-exception v0

    .line 321
    goto :goto_5

    .line 322
    :cond_5
    new-instance v1, LC1/E;

    .line 323
    .line 324
    const/4 v7, 0x0

    .line 325
    invoke-direct/range {v1 .. v7}, LC1/E;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_6
    new-instance v0, LC1/h0;

    .line 333
    .line 334
    const-string v1, "Picked folder is empty"

    .line 335
    .line 336
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 340
    :goto_5
    const-string v1, "MinHub"

    .line 341
    .line 342
    const-string v3, "Folder import failed"

    .line 343
    .line 344
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    .line 346
    .line 347
    invoke-virtual {v6}, LD1/b;->b()Z

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v6}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 351
    .line 352
    .line 353
    invoke-static {v4}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 354
    .line 355
    .line 356
    invoke-static {v2, v0}, LC1/O;->d(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    new-instance v1, LC1/B;

    .line 361
    .line 362
    const/4 v3, 0x1

    .line 363
    invoke-direct {v1, v2, v0, v3}, LC1/B;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    .line 368
    .line 369
    :goto_6
    return-void

    .line 370
    :pswitch_1
    iget-object v0, p0, LC1/t;->e:Landroid/net/Uri;

    .line 371
    .line 372
    const-string v1, "MinHub"

    .line 373
    .line 374
    new-instance v5, Ljava/io/File;

    .line 375
    .line 376
    iget-object v3, p0, LC1/t;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 377
    .line 378
    const/4 v2, 0x0

    .line 379
    invoke-virtual {v3, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    iget-object v8, v3, Lcom/minhub/gamehub/hub/AddGameActivity;->f:Landroid/os/Handler;

    .line 384
    .line 385
    if-nez v4, :cond_7

    .line 386
    .line 387
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    :cond_7
    iget-object v6, p0, LC1/t;->d:Ljava/lang/String;

    .line 392
    .line 393
    invoke-static {v6}, LC1/O;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 398
    .line 399
    .line 400
    move-result-wide v9

    .line 401
    new-instance v11, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    const-string v12, "games/"

    .line 404
    .line 405
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v7, "_"

    .line 412
    .line 413
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    invoke-direct {v5, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    new-instance v4, Ljava/io/File;

    .line 427
    .line 428
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 429
    .line 430
    .line 431
    move-result-object v7

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 433
    .line 434
    .line 435
    move-result-wide v9

    .line 436
    new-instance v11, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    const-string v12, "import_"

    .line 439
    .line 440
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    const-string v9, ".zip"

    .line 447
    .line 448
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v9

    .line 455
    invoke-direct {v4, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    const/4 v7, 0x1

    .line 459
    const-wide/16 v9, 0x0

    .line 460
    .line 461
    :try_start_c
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 462
    .line 463
    .line 464
    move-result-object v11

    .line 465
    invoke-virtual {v11, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 466
    .line 467
    .line 468
    move-result-object v11
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 469
    if-eqz v11, :cond_8

    .line 470
    .line 471
    :try_start_d
    new-instance v12, Ljava/io/FileOutputStream;

    .line 472
    .line 473
    invoke-direct {v12, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 474
    .line 475
    .line 476
    const/high16 v0, 0x40000

    .line 477
    .line 478
    :try_start_e
    invoke-static {v11, v12, v0}, Lkotlin/io/ByteStreamsKt;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 479
    .line 480
    .line 481
    :try_start_f
    invoke-static {v12, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 482
    .line 483
    .line 484
    :try_start_10
    invoke-static {v11, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 488
    .line 489
    .line 490
    move-result-wide v9

    .line 491
    new-instance v0, LC1/e;

    .line 492
    .line 493
    const/4 v11, 0x2

    .line 494
    invoke-direct {v0, v3, v11}, LC1/e;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    .line 499
    .line 500
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 501
    .line 502
    .line 503
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;

    .line 504
    .line 505
    new-instance v11, LC1/h;

    .line 506
    .line 507
    const/4 v12, 0x2

    .line 508
    invoke-direct {v11, v3, v12}, LC1/h;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 509
    .line 510
    .line 511
    invoke-static {v0, v4, v5, v11}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterExtractKt;->extractZip(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/io/File;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 512
    .line 513
    .line 514
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 515
    .line 516
    .line 517
    const/4 v0, 0x0

    .line 518
    :goto_7
    move-object v4, v6

    .line 519
    goto :goto_a

    .line 520
    :catchall_5
    move-exception v0

    .line 521
    goto/16 :goto_10

    .line 522
    .line 523
    :catch_2
    move-exception v0

    .line 524
    move-object v2, v0

    .line 525
    goto :goto_9

    .line 526
    :catchall_6
    move-exception v0

    .line 527
    move-object v2, v0

    .line 528
    goto :goto_8

    .line 529
    :catchall_7
    move-exception v0

    .line 530
    move-object v2, v0

    .line 531
    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 532
    :catchall_8
    move-exception v0

    .line 533
    :try_start_12
    invoke-static {v12, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 534
    .line 535
    .line 536
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 537
    :goto_8
    :try_start_13
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 538
    :catchall_9
    move-exception v0

    .line 539
    :try_start_14
    invoke-static {v11, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 540
    .line 541
    .line 542
    throw v0

    .line 543
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 544
    .line 545
    const-string v2, "Cannot open archive stream"

    .line 546
    .line 547
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 551
    :goto_9
    :try_start_15
    const-string v0, "ZIP import failed"

    .line 552
    .line 553
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    .line 555
    .line 556
    invoke-static {v5}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 557
    .line 558
    .line 559
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 560
    .line 561
    .line 562
    move v0, v7

    .line 563
    goto :goto_7

    .line 564
    :goto_a
    iget-object v6, p0, LC1/t;->f:LD1/b;

    .line 565
    .line 566
    if-eqz v0, :cond_a

    .line 567
    .line 568
    invoke-virtual {v6}, LD1/b;->b()Z

    .line 569
    .line 570
    .line 571
    invoke-virtual {v3, v6}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 572
    .line 573
    .line 574
    if-nez v2, :cond_9

    .line 575
    .line 576
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 577
    .line 578
    const-string v0, "unknown"

    .line 579
    .line 580
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    :cond_9
    invoke-static {v3, v2}, LC1/O;->h(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    new-instance v1, LC1/B;

    .line 588
    .line 589
    const/4 v2, 0x3

    .line 590
    invoke-direct {v1, v3, v0, v2}, LC1/B;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;I)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 594
    .line 595
    .line 596
    goto :goto_e

    .line 597
    :cond_a
    :try_start_16
    invoke-static {v9, v10}, LC1/O;->e(J)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-static {v4, v5, v0, v7}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->buildImportedGameFromDirectory(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)Lcom/minhub/gamehub/data/Game;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    invoke-static {v3, v6, v5, v0}, LC1/O;->k(Lcom/minhub/gamehub/hub/AddGameActivity;LD1/b;Ljava/io/File;Lcom/minhub/gamehub/data/Game;)Z

    .line 606
    .line 607
    .line 608
    move-result v0
    :try_end_16
    .catch Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException; {:try_start_16 .. :try_end_16} :catch_4
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 609
    if-nez v0, :cond_b

    .line 610
    .line 611
    :goto_b
    invoke-virtual {v3, v6}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 612
    .line 613
    .line 614
    goto :goto_e

    .line 615
    :cond_b
    :try_start_17
    new-instance v0, LC1/e;

    .line 616
    .line 617
    const/16 v2, 0x8

    .line 618
    .line 619
    invoke-direct {v0, v3, v2}, LC1/e;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_17
    .catch Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 623
    .line 624
    .line 625
    goto :goto_b

    .line 626
    :catchall_a
    move-exception v0

    .line 627
    goto :goto_f

    .line 628
    :catch_3
    move-exception v0

    .line 629
    goto :goto_c

    .line 630
    :catch_4
    move-exception v0

    .line 631
    goto :goto_d

    .line 632
    :goto_c
    :try_start_18
    const-string v2, "ZIP import failed while building/committing game"

    .line 633
    .line 634
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 635
    .line 636
    .line 637
    invoke-virtual {v6}, LD1/b;->a()Z

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    if-eqz v1, :cond_c

    .line 642
    .line 643
    invoke-static {v5}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 644
    .line 645
    .line 646
    :cond_c
    invoke-static {v3, v0}, LC1/O;->h(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    new-instance v1, LC1/B;

    .line 651
    .line 652
    const/4 v2, 0x4

    .line 653
    invoke-direct {v1, v3, v0, v2}, LC1/B;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;I)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 657
    .line 658
    .line 659
    goto :goto_b

    .line 660
    :goto_d
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException;->getReason()Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    sget-object v1, Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;->KIRI_NOT_EXTRACTED:Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;

    .line 665
    .line 666
    if-ne v0, v1, :cond_d

    .line 667
    .line 668
    new-instance v2, LC1/G;

    .line 669
    .line 670
    const/4 v7, 0x1

    .line 671
    invoke-direct/range {v2 .. v7}, LC1/G;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/lang/String;Ljava/io/File;LD1/b;I)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v8, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 675
    .line 676
    .line 677
    goto :goto_b

    .line 678
    :cond_d
    invoke-virtual {v6}, LD1/b;->a()Z

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    if-eqz v0, :cond_e

    .line 683
    .line 684
    invoke-static {v5}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 685
    .line 686
    .line 687
    :cond_e
    new-instance v0, LC1/e;

    .line 688
    .line 689
    const/16 v1, 0x9

    .line 690
    .line 691
    invoke-direct {v0, v3, v1}, LC1/e;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 695
    .line 696
    .line 697
    goto :goto_b

    .line 698
    :goto_e
    return-void

    .line 699
    :goto_f
    invoke-virtual {v3, v6}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 700
    .line 701
    .line 702
    throw v0

    .line 703
    :goto_10
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 704
    .line 705
    .line 706
    throw v0

    .line 707
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
