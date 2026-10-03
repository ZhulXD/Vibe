.class public final Lcom/minhub/gamehub/data/GameStorageKt;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\'\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "",
        "json",
        "Li1/l;",
        "gson",
        "",
        "Lcom/minhub/gamehub/data/Game;",
        "parseStoredGamesJson",
        "(Ljava/lang/String;Li1/l;)Ljava/util/List;",
        "Lcom/minhub/gamehub/data/StoredParse;",
        "parseStoredGames",
        "(Ljava/lang/String;Li1/l;)Lcom/minhub/gamehub/data/StoredParse;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGameStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameStorage.kt\ncom/minhub/gamehub/data/GameStorageKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,320:1\n1#2:321\n1#2:332\n1617#3,9:322\n1869#3:331\n1870#3:333\n1626#3:334\n1563#3:335\n1634#3,3:336\n774#3:339\n865#3,2:340\n*S KotlinDebug\n*F\n+ 1 GameStorage.kt\ncom/minhub/gamehub/data/GameStorageKt\n*L\n57#1:332\n57#1:322,9\n57#1:331\n57#1:333\n57#1:334\n60#1:335\n60#1:336,3\n60#1:339\n60#1:340,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic access$parseStoredGames(Ljava/lang/String;Li1/l;)Lcom/minhub/gamehub/data/StoredParse;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames(Ljava/lang/String;Li1/l;)Lcom/minhub/gamehub/data/StoredParse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final parseStoredGames(Ljava/lang/String;Li1/l;)Lcom/minhub/gamehub/data/StoredParse;
    .locals 37

    .line 1
    const-string v1, "[]"

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 4
    .line 5
    invoke-static/range {p0 .. p0}, La/a;->E(Ljava/lang/String;)Li1/o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    move-object v0, v3

    .line 33
    :cond_0
    instance-of v2, v0, Li1/n;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    check-cast v0, Li1/n;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v0, v3

    .line 41
    :goto_1
    if-nez v0, :cond_2

    .line 42
    .line 43
    sget-object v0, Lcom/minhub/gamehub/data/StoredParse$Invalid;->INSTANCE:Lcom/minhub/gamehub/data/StoredParse$Invalid;

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    iget-object v0, v0, Li1/n;->b:Ljava/util/ArrayList;

    .line 47
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-string v0, "iterator(...)"

    .line 62
    .line 63
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Li1/o;

    .line 77
    .line 78
    instance-of v5, v0, Li1/r;

    .line 79
    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    check-cast v0, Li1/r;

    .line 83
    .line 84
    move-object v5, v0

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    move-object v5, v3

    .line 87
    :goto_3
    if-nez v5, :cond_4

    .line 88
    .line 89
    sget-object v0, Lcom/minhub/gamehub/data/StoredParse$Invalid;->INSTANCE:Lcom/minhub/gamehub/data/StoredParse$Invalid;

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_4
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 93
    .line 94
    const-string v0, "status"

    .line 95
    .line 96
    const-string v6, "INSTALLED"

    .line 97
    .line 98
    invoke-static {v5, v0, v6}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string(Li1/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v24

    .line 102
    invoke-static/range {v24 .. v24}, Lcom/minhub/gamehub/data/GameStatus;->valueOf(Ljava/lang/String;)Lcom/minhub/gamehub/data/GameStatus;

    .line 103
    .line 104
    .line 105
    new-instance v0, Lcom/minhub/gamehub/data/Game;

    .line 106
    .line 107
    const-string v6, "id"

    .line 108
    .line 109
    const/4 v11, 0x0

    .line 110
    const/4 v12, 0x4

    .line 111
    invoke-static {v5, v6, v11, v12, v3}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$int$default(Li1/r;Ljava/lang/String;IILjava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    move-result v13

    .line 115
    const-string v6, "title"

    .line 116
    .line 117
    invoke-static {v5, v6, v3, v12, v3}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string$default(Li1/r;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v14

    .line 121
    const-string v6, "engine"

    .line 122
    .line 123
    const-string v7, "MV"

    .line 124
    .line 125
    invoke-static {v5, v6, v7}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string(Li1/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    const-string v6, "version"

    .line 130
    .line 131
    const-string v7, "1.0.0"

    .line 132
    .line 133
    invoke-static {v5, v6, v7}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string(Li1/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v16

    .line 137
    const-string v6, "sizeLabel"

    .line 138
    .line 139
    const-string v7, "0 MB"

    .line 140
    .line 141
    invoke-static {v5, v6, v7}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string(Li1/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v17

    .line 145
    const-string v6, "gamePath"

    .line 146
    .line 147
    invoke-static {v5, v6, v3, v12, v3}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string$default(Li1/r;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v18

    .line 151
    const-string v6, "iconPath"

    .line 152
    .line 153
    invoke-static {v5, v6}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$nullableString(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v19

    .line 157
    const-string v6, "bgPath"

    .line 158
    .line 159
    invoke-static {v5, v6}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$nullableString(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v20

    .line 163
    const-string v6, "coverColor1"

    .line 164
    .line 165
    const-string v7, "#1e1b4b"

    .line 166
    .line 167
    invoke-static {v5, v6, v7}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string(Li1/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v21

    .line 171
    const-string v6, "coverColor2"

    .line 172
    .line 173
    const-string v7, "#060b18"

    .line 174
    .line 175
    invoke-static {v5, v6, v7}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string(Li1/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v22

    .line 179
    const-string v6, "description"

    .line 180
    .line 181
    invoke-static {v5, v6, v3, v12, v3}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string$default(Li1/r;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v23

    .line 185
    const-string v6, "favorite"

    .line 186
    .line 187
    invoke-static {v5, v6, v11, v12, v3}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$bool$default(Li1/r;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v25

    .line 191
    const-string v6, "playtimeMinutes"

    .line 192
    .line 193
    invoke-static {v5, v6, v11, v12, v3}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$int$default(Li1/r;Ljava/lang/String;IILjava/lang/Object;)I

    .line 194
    .line 195
    .line 196
    move-result v26

    .line 197
    const-string v6, "lastPlayedMs"

    .line 198
    .line 199
    const/4 v9, 0x4

    .line 200
    const/4 v10, 0x0

    .line 201
    const-wide/16 v7, 0x0

    .line 202
    .line 203
    invoke-static/range {v5 .. v10}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$long$default(Li1/r;Ljava/lang/String;JILjava/lang/Object;)J

    .line 204
    .line 205
    .line 206
    move-result-wide v27

    .line 207
    const-string v6, "saveCount"

    .line 208
    .line 209
    invoke-static {v5, v6, v11, v12, v3}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$int$default(Li1/r;Ljava/lang/String;IILjava/lang/Object;)I

    .line 210
    .line 211
    .line 212
    move-result v29

    .line 213
    const-string v6, "downloadProgress"

    .line 214
    .line 215
    invoke-static {v5, v6, v11, v12, v3}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$int$default(Li1/r;Ljava/lang/String;IILjava/lang/Object;)I

    .line 216
    .line 217
    .line 218
    move-result v30

    .line 219
    const-string v6, "pluginsJson"

    .line 220
    .line 221
    invoke-static {v5, v6, v1}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string(Li1/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v31

    .line 225
    const-string v6, "accentColor"

    .line 226
    .line 227
    const-string v7, "#EF4444"

    .line 228
    .line 229
    invoke-static {v5, v6, v7}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string(Li1/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v32

    .line 233
    const-string v6, "translationPackagesJson"

    .line 234
    .line 235
    invoke-static {v5, v6, v1}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string(Li1/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v33

    .line 239
    const-string v6, "activeTranslationLabel"

    .line 240
    .line 241
    invoke-static {v5, v6, v3, v12, v3}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string$default(Li1/r;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v34

    .line 245
    const-string v6, "activeTranslationCode"

    .line 246
    .line 247
    invoke-static {v5, v6, v3, v12, v3}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string$default(Li1/r;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v35

    .line 251
    const-string v6, "isPortraitGame"

    .line 252
    .line 253
    invoke-static {v5, v6, v11, v12, v3}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$bool$default(Li1/r;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v11

    .line 257
    const-string v6, "catalogPostId"

    .line 258
    .line 259
    const/4 v9, 0x4

    .line 260
    const/4 v10, 0x0

    .line 261
    const-wide/16 v7, 0x0

    .line 262
    .line 263
    invoke-static/range {v5 .. v10}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$long$default(Li1/r;Ljava/lang/String;JILjava/lang/Object;)J

    .line 264
    .line 265
    .line 266
    move-result-wide v6

    .line 267
    const-string v8, "streamUrl"

    .line 268
    .line 269
    invoke-static {v5, v8, v3, v12, v3}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string$default(Li1/r;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    const-string v9, "thumbnailUrl"

    .line 274
    .line 275
    invoke-static {v5, v9, v3, v12, v3}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string$default(Li1/r;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    const-string v10, "tags"

    .line 280
    .line 281
    invoke-static {v5, v10}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$stringList(Li1/r;Ljava/lang/String;)Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object v36

    .line 285
    move-object/from16 v10, v34

    .line 286
    .line 287
    move-object/from16 v34, v8

    .line 288
    .line 289
    move v8, v13

    .line 290
    move-object/from16 v13, v18

    .line 291
    .line 292
    move-object/from16 v18, v23

    .line 293
    .line 294
    move/from16 v23, v29

    .line 295
    .line 296
    move-object/from16 v29, v10

    .line 297
    .line 298
    move-object/from16 v10, v35

    .line 299
    .line 300
    move-object/from16 v35, v9

    .line 301
    .line 302
    move-object v9, v14

    .line 303
    move-object/from16 v14, v19

    .line 304
    .line 305
    move/from16 v19, v25

    .line 306
    .line 307
    move/from16 v25, v30

    .line 308
    .line 309
    move-object/from16 v30, v10

    .line 310
    .line 311
    move-object v10, v15

    .line 312
    move-object/from16 v12, v17

    .line 313
    .line 314
    move-object/from16 v15, v20

    .line 315
    .line 316
    move-object/from16 v17, v22

    .line 317
    .line 318
    move/from16 v20, v26

    .line 319
    .line 320
    move-object/from16 v26, v31

    .line 321
    .line 322
    move/from16 v31, v11

    .line 323
    .line 324
    move-object/from16 v11, v16

    .line 325
    .line 326
    move-object/from16 v16, v21

    .line 327
    .line 328
    move-wide/from16 v21, v27

    .line 329
    .line 330
    move-object/from16 v27, v32

    .line 331
    .line 332
    move-object/from16 v28, v33

    .line 333
    .line 334
    move-wide/from16 v32, v6

    .line 335
    .line 336
    move-object v7, v0

    .line 337
    invoke-direct/range {v7 .. v36}, Lcom/minhub/gamehub/data/Game;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 338
    .line 339
    .line 340
    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 344
    goto :goto_4

    .line 345
    :catchall_1
    move-exception v0

    .line 346
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 347
    .line 348
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-eqz v5, :cond_5

    .line 361
    .line 362
    move-object v0, v3

    .line 363
    :cond_5
    check-cast v0, Lcom/minhub/gamehub/data/Game;

    .line 364
    .line 365
    if-nez v0, :cond_6

    .line 366
    .line 367
    sget-object v0, Lcom/minhub/gamehub/data/StoredParse$Invalid;->INSTANCE:Lcom/minhub/gamehub/data/StoredParse$Invalid;

    .line 368
    .line 369
    return-object v0

    .line 370
    :cond_6
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    goto/16 :goto_2

    .line 374
    .line 375
    :cond_7
    new-instance v0, Lcom/minhub/gamehub/data/StoredParse$Valid;

    .line 376
    .line 377
    invoke-direct {v0, v2}, Lcom/minhub/gamehub/data/StoredParse$Valid;-><init>(Ljava/util/List;)V

    .line 378
    .line 379
    .line 380
    return-object v0
.end method

.method private static final parseStoredGames$bool(Li1/r;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    instance-of v0, p0, Li1/q;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-eqz p0, :cond_2

    .line 14
    .line 15
    instance-of p2, p0, Li1/s;

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Li1/o;->e()Li1/s;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget-object p2, p2, Li1/s;->b:Ljava/io/Serializable;

    .line 24
    .line 25
    instance-of p2, p2, Ljava/lang/Boolean;

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Li1/o;->b()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string p2, " is not boolean"

    .line 37
    .line 38
    invoke-static {p1, p2}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_2
    return p2
.end method

.method public static synthetic parseStoredGames$bool$default(Li1/r;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$bool(Li1/r;Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static final parseStoredGames$int(Li1/r;Ljava/lang/String;I)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    instance-of v0, p0, Li1/q;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-eqz p0, :cond_4

    .line 14
    .line 15
    instance-of p2, p0, Li1/s;

    .line 16
    .line 17
    const-string v0, " is not an integer"

    .line 18
    .line 19
    if-eqz p2, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Li1/o;->e()Li1/s;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget-object p2, p2, Li1/s;->b:Ljava/io/Serializable;

    .line 26
    .line 27
    instance-of p2, p2, Ljava/lang/Number;

    .line 28
    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Li1/o;->f()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    const-wide/32 v2, -0x80000000

    .line 49
    .line 50
    .line 51
    cmp-long p0, v2, v0

    .line 52
    .line 53
    if-gtz p0, :cond_1

    .line 54
    .line 55
    const-wide v2, 0x80000000L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    cmp-long p0, v0, v2

    .line 61
    .line 62
    if-gez p0, :cond_1

    .line 63
    .line 64
    long-to-int p0, v0

    .line 65
    return p0

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string p2, " is out of range"

    .line 69
    .line 70
    invoke-static {p1, p2}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    invoke-static {p1, v0}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    invoke-static {p1, v0}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_4
    return p2
.end method

.method public static synthetic parseStoredGames$int$default(Li1/r;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$int(Li1/r;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static final parseStoredGames$long(Li1/r;Ljava/lang/String;J)J
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    instance-of v0, p0, Li1/q;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-eqz p0, :cond_3

    .line 14
    .line 15
    instance-of p2, p0, Li1/s;

    .line 16
    .line 17
    const-string p3, " is not an integer"

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Li1/o;->e()Li1/s;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget-object p2, p2, Li1/s;->b:Ljava/io/Serializable;

    .line 26
    .line 27
    instance-of p2, p2, Ljava/lang/Number;

    .line 28
    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Li1/o;->f()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p2, "getAsString(...)"

    .line 36
    .line 37
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 47
    .line 48
    .line 49
    move-result-wide p0

    .line 50
    return-wide p0

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    invoke-static {p1, p3}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    invoke-static {p1, p3}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_3
    return-wide p2
.end method

.method public static synthetic parseStoredGames$long$default(Li1/r;Ljava/lang/String;JILjava/lang/Object;)J
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-wide/16 p2, 0x0

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$long(Li1/r;Ljava/lang/String;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method private static final parseStoredGames$nullableString(Li1/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_2

    .line 7
    .line 8
    instance-of v1, p0, Li1/q;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v0

    .line 14
    :goto_0
    if-eqz p0, :cond_2

    .line 15
    .line 16
    instance-of v0, p0, Li1/s;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Li1/o;->e()Li1/s;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Li1/s;->b:Ljava/io/Serializable;

    .line 25
    .line 26
    instance-of v0, v0, Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Li1/o;->f()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string v0, " is not a string"

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_2
    return-object v0
.end method

.method private static final parseStoredGames$string(Li1/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    instance-of v0, p0, Li1/q;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-eqz p0, :cond_3

    .line 14
    .line 15
    instance-of v0, p0, Li1/s;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Li1/o;->e()Li1/s;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Li1/s;->b:Ljava/io/Serializable;

    .line 24
    .line 25
    instance-of v0, v0, Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Li1/o;->f()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    return-object p0

    .line 37
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string p2, " is not a string"

    .line 40
    .line 41
    invoke-static {p1, p2}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_3
    :goto_1
    return-object p2
.end method

.method public static synthetic parseStoredGames$string$default(Li1/r;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p2, ""

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames$string(Li1/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static final parseStoredGames$stringList(Li1/r;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/r;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_b

    .line 6
    .line 7
    instance-of p1, p0, Li1/q;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v0

    .line 14
    :goto_0
    if-eqz p0, :cond_b

    .line 15
    .line 16
    instance-of p1, p0, Li1/n;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Li1/o;->c()Li1/n;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "getAsJsonArray(...)"

    .line 26
    .line 27
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Li1/n;->b:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    :cond_1
    :goto_1
    if-ge v1, v2, :cond_9

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    check-cast v3, Li1/o;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    instance-of v4, v3, Li1/s;

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-virtual {v3}, Li1/o;->e()Li1/s;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget-object v4, v4, Li1/s;->b:Ljava/io/Serializable;

    .line 63
    .line 64
    instance-of v4, v4, Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    invoke-virtual {v3}, Li1/o;->f()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move-object v3, v0

    .line 74
    :goto_2
    if-eqz v3, :cond_1

    .line 75
    .line 76
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    instance-of p1, p0, Li1/s;

    .line 81
    .line 82
    if-eqz p1, :cond_8

    .line 83
    .line 84
    invoke-virtual {p0}, Li1/o;->e()Li1/s;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p1, p1, Li1/s;->b:Ljava/io/Serializable;

    .line 89
    .line 90
    instance-of p1, p1, Ljava/lang/String;

    .line 91
    .line 92
    if-eqz p1, :cond_8

    .line 93
    .line 94
    invoke-virtual {p0}, Li1/o;->f()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const-string p1, "getAsString(...)"

    .line 99
    .line 100
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_4

    .line 116
    .line 117
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    goto :goto_5

    .line 122
    :cond_4
    const/4 p1, 0x1

    .line 123
    new-array p1, p1, [C

    .line 124
    .line 125
    const/16 v0, 0x2c

    .line 126
    .line 127
    aput-char v0, p1, v1

    .line 128
    .line 129
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->I(Ljava/lang/CharSequence;[C)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_5

    .line 151
    .line 152
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    :cond_6
    :goto_4
    if-ge v1, v0, :cond_7

    .line 180
    .line 181
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    add-int/lit8 v1, v1, 0x1

    .line 186
    .line 187
    move-object v3, v2

    .line 188
    check-cast v3, Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-lez v3, :cond_6

    .line 195
    .line 196
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_7
    move-object p1, p0

    .line 201
    goto :goto_5

    .line 202
    :cond_8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    :cond_9
    :goto_5
    if-nez p1, :cond_a

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_a
    return-object p1

    .line 210
    :cond_b
    :goto_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    return-object p0
.end method

.method public static final parseStoredGamesJson(Ljava/lang/String;Li1/l;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Li1/l;",
            ")",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/data/Game;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gson"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGames(Ljava/lang/String;Li1/l;)Lcom/minhub/gamehub/data/StoredParse;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    instance-of p1, p0, Lcom/minhub/gamehub/data/StoredParse$Valid;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    check-cast p0, Lcom/minhub/gamehub/data/StoredParse$Valid;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/minhub/gamehub/data/StoredParse$Valid;->getGames()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    sget-object p1, Lcom/minhub/gamehub/data/StoredParse$Invalid;->INSTANCE:Lcom/minhub/gamehub/data/StoredParse$Invalid;

    .line 27
    .line 28
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 40
    .line 41
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public static synthetic parseStoredGamesJson$default(Ljava/lang/String;Li1/l;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Li1/l;

    .line 6
    .line 7
    invoke-direct {p1}, Li1/l;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0, p1}, Lcom/minhub/gamehub/data/GameStorageKt;->parseStoredGamesJson(Ljava/lang/String;Li1/l;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
