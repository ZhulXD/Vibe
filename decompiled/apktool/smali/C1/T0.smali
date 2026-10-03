.class public final LC1/T0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/data/Game;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/minhub/gamehub/data/Game;LG1/s;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LC1/T0;->b:I

    .line 1
    iput-object p1, p0, LC1/T0;->c:Lcom/minhub/gamehub/data/Game;

    iput-object p2, p0, LC1/T0;->e:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LC1/T0;->b:I

    .line 2
    iput-object p1, p0, LC1/T0;->d:Ljava/lang/Object;

    iput-object p2, p0, LC1/T0;->c:Lcom/minhub/gamehub/data/Game;

    iput-object p3, p0, LC1/T0;->e:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    iget v0, p0, LC1/T0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, LC1/T0;

    .line 7
    .line 8
    iget-object v1, p0, LC1/T0;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, LG1/s;

    .line 11
    .line 12
    iget-object v2, p0, LC1/T0;->c:Lcom/minhub/gamehub/data/Game;

    .line 13
    .line 14
    invoke-direct {v0, v2, v1, p2}, LC1/T0;-><init>(Lcom/minhub/gamehub/data/Game;LG1/s;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, v0, LC1/T0;->d:Ljava/lang/Object;

    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    new-instance p1, LC1/T0;

    .line 21
    .line 22
    iget-object v0, p0, LC1/T0;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 25
    .line 26
    iget-object v1, p0, LC1/T0;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 29
    .line 30
    iget-object v2, p0, LC1/T0;->c:Lcom/minhub/gamehub/data/Game;

    .line 31
    .line 32
    invoke-direct {p1, v0, v2, v1, p2}, LC1/T0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;Lkotlin/coroutines/Continuation;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LC1/T0;->b:I

    .line 2
    .line 3
    check-cast p1, LV1/x;

    .line 4
    .line 5
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, LC1/T0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, LC1/T0;

    .line 15
    .line 16
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, LC1/T0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, LC1/T0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, LC1/T0;

    .line 28
    .line 29
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, LC1/T0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LC1/T0;->b:I

    .line 4
    .line 5
    iget-object v2, v1, LC1/T0;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, v1, LC1/T0;->c:Lcom/minhub/gamehub/data/Game;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v1, LC1/T0;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, LV1/x;

    .line 15
    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getStreamUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v4, 0x0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :cond_0
    check-cast v2, LG1/s;

    .line 36
    .line 37
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 38
    .line 39
    new-instance v0, Ljava/io/File;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/bumptech/glide/c;->K(Ljava/io/File;)LS1/b;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object v0, v0, LS1/b;->a:Ljava/io/File;

    .line 55
    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v0}, Lcom/minhub/gamehub/data/GameKt;->rmCoreEngine(Ljava/io/File;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-eqz v5, :cond_3

    .line 64
    .line 65
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const-string v6, "toLowerCase(...)"

    .line 72
    .line 73
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    if-nez v5, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-string v6, "mv"

    .line 80
    .line 81
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-nez v6, :cond_4

    .line 86
    .line 87
    const-string v6, "mz"

    .line 88
    .line 89
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-nez v6, :cond_4

    .line 94
    .line 95
    :cond_3
    :goto_0
    move-object v0, v4

    .line 96
    goto :goto_2

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    goto :goto_3

    .line 99
    :cond_4
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    sget-object v6, Lcom/minhub/gamehub/data/GamePluginScanner;->INSTANCE:Lcom/minhub/gamehub/data/GamePluginScanner;

    .line 108
    .line 109
    invoke-virtual {v6, v0}, Lcom/minhub/gamehub/data/GamePluginScanner;->scanEnabledPluginNames(Ljava/io/File;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v2}, LG1/s;->a()Ljava/util/LinkedHashMap;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 118
    .line 119
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_6

    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    check-cast v7, Ljava/util/Map$Entry;

    .line 141
    .line 142
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    check-cast v8, Ljava/lang/Boolean;

    .line 147
    .line 148
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-eqz v8, :cond_5

    .line 153
    .line 154
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {v6, v8, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_6
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    new-instance v6, LH1/a;

    .line 171
    .line 172
    invoke-direct {v6, v5, v3, v0, v2}, LH1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v6}, Lcom/bumptech/glide/d;->T(LH1/a;)LH1/b;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    goto :goto_4

    .line 184
    :goto_3
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 185
    .line 186
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_7

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_7
    move-object v4, v0

    .line 202
    :goto_5
    check-cast v4, LH1/b;

    .line 203
    .line 204
    :goto_6
    return-object v4

    .line 205
    :pswitch_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, v1, LC1/T0;->d:Ljava/lang/Object;

    .line 212
    .line 213
    move-object v4, v0

    .line 214
    check-cast v4, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 215
    .line 216
    check-cast v2, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 217
    .line 218
    const-string v5, "Sample KS after install ("

    .line 219
    .line 220
    const-string v0, "<this>"

    .line 221
    .line 222
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const-string v0, "g"

    .line 226
    .line 227
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v0, "pkg"

    .line 231
    .line 232
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Ljava/io/File;

    .line 236
    .line 237
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    if-eqz v6, :cond_d

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-nez v6, :cond_8

    .line 255
    .line 256
    goto/16 :goto_c

    .line 257
    .line 258
    :cond_8
    sget-object v6, Lcom/minhub/gamehub/data/TranslationOverlayPaths;->INSTANCE:Lcom/minhub/gamehub/data/TranslationOverlayPaths;

    .line 259
    .line 260
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    const-string v8, "getCacheDir(...)"

    .line 265
    .line 266
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    invoke-virtual {v6, v7, v8}, Lcom/minhub/gamehub/data/TranslationOverlayPaths;->workRoot(Ljava/io/File;I)Ljava/io/File;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    sget-object v7, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;

    .line 278
    .line 279
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getUrl()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    invoke-virtual {v7, v8, v9}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->resolveArchiveFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    invoke-static {v6, v8}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    const-string v8, "staging"

    .line 296
    .line 297
    invoke-static {v6, v8}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 298
    .line 299
    .line 300
    move-result-object v14

    .line 301
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getUrl()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    const/16 v12, 0xc

    .line 309
    .line 310
    const/4 v13, 0x0

    .line 311
    const/4 v10, 0x0

    .line 312
    const/4 v11, 0x0

    .line 313
    invoke-static/range {v7 .. v13}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->downloadZip$default(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    new-instance v2, Ljava/io/File;

    .line 317
    .line 318
    const-string v6, "game.zip"

    .line 319
    .line 320
    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-static {v3}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    sget-object v7, Lcom/minhub/gamehub/data/GameEngine;->RENPY8:Lcom/minhub/gamehub/data/GameEngine;

    .line 328
    .line 329
    if-eq v6, v7, :cond_c

    .line 330
    .line 331
    invoke-static {v3}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    sget-object v7, Lcom/minhub/gamehub/data/GameEngine;->RENPY7:Lcom/minhub/gamehub/data/GameEngine;

    .line 336
    .line 337
    if-ne v6, v7, :cond_9

    .line 338
    .line 339
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-eqz v2, :cond_9

    .line 344
    .line 345
    goto/16 :goto_8

    .line 346
    .line 347
    :catchall_1
    move-exception v0

    .line 348
    goto/16 :goto_b

    .line 349
    .line 350
    :catch_0
    move-exception v0

    .line 351
    goto/16 :goto_9

    .line 352
    .line 353
    :cond_9
    sget-object v2, Lcom/minhub/gamehub/data/TranslationOverlayInstaller;->INSTANCE:Lcom/minhub/gamehub/data/TranslationOverlayInstaller;

    .line 354
    .line 355
    invoke-virtual {v2, v9, v14}, Lcom/minhub/gamehub/data/TranslationOverlayInstaller;->extractOverlayArchive(Ljava/io/File;Ljava/io/File;)V

    .line 356
    .line 357
    .line 358
    invoke-static {v4, v3}, Lcom/bumptech/glide/d;->a0(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;)Ljava/io/File;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    invoke-virtual {v2, v0, v14, v3}, Lcom/minhub/gamehub/data/TranslationOverlayInstaller;->installOverlayFromDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Lcom/minhub/gamehub/data/TranslationOverlayResult;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/TranslationOverlayResult;->getSuccess()Z

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    if-eqz v3, :cond_b

    .line 371
    .line 372
    invoke-static {v0}, Lkotlin/io/FilesKt;->walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    new-instance v3, LA1/e;

    .line 377
    .line 378
    const/16 v6, 0x11

    .line 379
    .line 380
    invoke-direct {v3, v6}, LA1/e;-><init>(I)V

    .line 381
    .line 382
    .line 383
    invoke-static {v0, v3}, Lkotlin/sequences/SequencesKt;->q(Lkotlin/io/FileTreeWalk;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    move-object v3, v0

    .line 392
    check-cast v3, Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 393
    .line 394
    if-eqz v3, :cond_b

    .line 395
    .line 396
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 397
    .line 398
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 399
    .line 400
    new-instance v6, Ljava/io/InputStreamReader;

    .line 401
    .line 402
    new-instance v7, Ljava/io/FileInputStream;

    .line 403
    .line 404
    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 405
    .line 406
    .line 407
    invoke-direct {v6, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 408
    .line 409
    .line 410
    new-instance v0, Ljava/io/BufferedReader;

    .line 411
    .line 412
    const/16 v7, 0x2000

    .line 413
    .line 414
    invoke-direct {v0, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 415
    .line 416
    .line 417
    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    const/16 v6, 0xc8

    .line 422
    .line 423
    invoke-static {v0, v6}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 431
    goto :goto_7

    .line 432
    :catchall_2
    move-exception v0

    .line 433
    :try_start_3
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 434
    .line 435
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    :goto_7
    const-string v6, "<err>"

    .line 444
    .line 445
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v7

    .line 449
    if-eqz v7, :cond_a

    .line 450
    .line 451
    move-object v0, v6

    .line 452
    :cond_a
    check-cast v0, Ljava/lang/String;

    .line 453
    .line 454
    const-string v6, "MinHub-Diag"

    .line 455
    .line 456
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    new-instance v7, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v3, "): "

    .line 469
    .line 470
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 481
    .line 482
    .line 483
    :cond_b
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 484
    .line 485
    .line 486
    invoke-static {v14}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 487
    .line 488
    .line 489
    goto :goto_a

    .line 490
    :cond_c
    :goto_8
    :try_start_4
    sget-object v2, Lcom/minhub/gamehub/data/TranslationOverlayInstaller;->INSTANCE:Lcom/minhub/gamehub/data/TranslationOverlayInstaller;

    .line 491
    .line 492
    invoke-static {v4, v3}, Lcom/bumptech/glide/d;->a0(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;)Ljava/io/File;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    invoke-virtual {v2, v0, v9, v3}, Lcom/minhub/gamehub/data/TranslationOverlayInstaller;->installRenpyGameZipPatch(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Lcom/minhub/gamehub/data/TranslationOverlayResult;

    .line 497
    .line 498
    .line 499
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 500
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 501
    .line 502
    .line 503
    invoke-static {v14}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 504
    .line 505
    .line 506
    goto :goto_d

    .line 507
    :goto_9
    :try_start_5
    new-instance v15, Lcom/minhub/gamehub/data/TranslationOverlayResult;

    .line 508
    .line 509
    invoke-static {v4, v0}, Lcom/bumptech/glide/d;->n(Lcom/minhub/gamehub/hub/GameDetailActivity;Ljava/lang/Exception;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v17

    .line 513
    const/16 v20, 0xc

    .line 514
    .line 515
    const/16 v21, 0x0

    .line 516
    .line 517
    const/16 v16, 0x0

    .line 518
    .line 519
    const/16 v18, 0x0

    .line 520
    .line 521
    const/16 v19, 0x0

    .line 522
    .line 523
    invoke-direct/range {v15 .. v21}, Lcom/minhub/gamehub/data/TranslationOverlayResult;-><init>(ZLjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 524
    .line 525
    .line 526
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 527
    .line 528
    .line 529
    invoke-static {v14}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 530
    .line 531
    .line 532
    move-object v2, v15

    .line 533
    :goto_a
    move-object v0, v2

    .line 534
    goto :goto_d

    .line 535
    :goto_b
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 536
    .line 537
    .line 538
    invoke-static {v14}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 539
    .line 540
    .line 541
    throw v0

    .line 542
    :cond_d
    :goto_c
    new-instance v2, Lcom/minhub/gamehub/data/TranslationOverlayResult;

    .line 543
    .line 544
    const/16 v7, 0xc

    .line 545
    .line 546
    const/4 v8, 0x0

    .line 547
    const/4 v3, 0x0

    .line 548
    const-string v4, "Game directory missing"

    .line 549
    .line 550
    const/4 v5, 0x0

    .line 551
    const/4 v6, 0x0

    .line 552
    invoke-direct/range {v2 .. v8}, Lcom/minhub/gamehub/data/TranslationOverlayResult;-><init>(ZLjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 553
    .line 554
    .line 555
    goto :goto_a

    .line 556
    :goto_d
    return-object v0

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
