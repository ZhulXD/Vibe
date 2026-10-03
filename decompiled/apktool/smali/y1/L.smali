.class public final Ly1/L;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/data/Game;

.field public final synthetic d:Lcom/minhub/gamehub/game/GameActivity;


# direct methods
.method public constructor <init>(Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/game/GameActivity;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ly1/L;->b:I

    .line 1
    iput-object p1, p0, Ly1/L;->c:Lcom/minhub/gamehub/data/Game;

    iput-object p2, p0, Ly1/L;->d:Lcom/minhub/gamehub/game/GameActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ly1/L;->b:I

    .line 2
    iput-object p1, p0, Ly1/L;->d:Lcom/minhub/gamehub/game/GameActivity;

    iput-object p2, p0, Ly1/L;->c:Lcom/minhub/gamehub/data/Game;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p1, p0, Ly1/L;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ly1/L;

    .line 7
    .line 8
    iget-object v0, p0, Ly1/L;->c:Lcom/minhub/gamehub/data/Game;

    .line 9
    .line 10
    iget-object v1, p0, Ly1/L;->d:Lcom/minhub/gamehub/game/GameActivity;

    .line 11
    .line 12
    invoke-direct {p1, v0, v1, p2}, Ly1/L;-><init>(Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/game/GameActivity;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_0
    new-instance p1, Ly1/L;

    .line 17
    .line 18
    iget-object v0, p0, Ly1/L;->d:Lcom/minhub/gamehub/game/GameActivity;

    .line 19
    .line 20
    iget-object v1, p0, Ly1/L;->c:Lcom/minhub/gamehub/data/Game;

    .line 21
    .line 22
    invoke-direct {p1, v0, v1, p2}, Ly1/L;-><init>(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Ly1/L;->b:I

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
    invoke-virtual {p0, p1, p2}, Ly1/L;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ly1/L;

    .line 15
    .line 16
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ly1/L;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Ly1/L;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ly1/L;

    .line 28
    .line 29
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ly1/L;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ly1/L;->b:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, v0, Ly1/L;->d:Lcom/minhub/gamehub/game/GameActivity;

    .line 7
    .line 8
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    iget-object v4, v0, Ly1/L;->c:Lcom/minhub/gamehub/data/Game;

    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    new-instance v8, Ljava/io/File;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v9, "runtime-locks"

    .line 44
    .line 45
    invoke-direct {v8, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getStreamUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    new-instance v4, Lcom/minhub/gamehub/hub/catalog/h;

    .line 53
    .line 54
    const/16 v9, 0xf

    .line 55
    .line 56
    invoke-direct {v4, v9}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 57
    .line 58
    .line 59
    const-string v9, "gameId"

    .line 60
    .line 61
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v10, "path"

    .line 65
    .line 66
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v11, "privateRoot"

    .line 70
    .line 71
    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v11, "streamUrl"

    .line 75
    .line 76
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v11, "resolveRoot"

    .line 80
    .line 81
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/16 v11, 0x1a

    .line 85
    .line 86
    if-ge v1, v11, :cond_0

    .line 87
    .line 88
    sget-object v1, LQ1/a;->c:LQ1/a;

    .line 89
    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :cond_0
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_9

    .line 97
    .line 98
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_9

    .line 106
    .line 107
    new-instance v1, Ljava/io/File;

    .line 108
    .line 109
    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/io/File;->isAbsolute()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_9

    .line 117
    .line 118
    new-instance v1, Lkotlin/text/Regex;

    .line 119
    .line 120
    const-string v3, "^[A-Za-z][A-Za-z0-9+.-]*://"

    .line 121
    .line 122
    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v6}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_9

    .line 130
    .line 131
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 132
    .line 133
    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v1}, Lcom/minhub/gamehub/hub/catalog/h;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Ljava/io/File;

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-nez v3, :cond_1

    .line 147
    .line 148
    sget-object v1, LQ1/a;->d:LQ1/a;

    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :cond_1
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v3, "content"

    .line 156
    .line 157
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance v3, LI1/c;

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    const-string v4, "getCanonicalPath(...)"

    .line 167
    .line 168
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-direct {v3, v5, v1}, LI1/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance v1, LI1/h;

    .line 175
    .line 176
    invoke-direct {v1, v8}, LI1/h;-><init>(Ljava/io/File;)V

    .line 177
    .line 178
    .line 179
    if-eqz v7, :cond_3

    .line 180
    .line 181
    const-string v9, "MV"

    .line 182
    .line 183
    const-string v10, "MZ"

    .line 184
    .line 185
    const-string v11, "TYRANO"

    .line 186
    .line 187
    const-string v12, "HTML"

    .line 188
    .line 189
    const-string v13, "BROWSE"

    .line 190
    .line 191
    const-string v14, "VXACE"

    .line 192
    .line 193
    const-string v15, "RENPY7"

    .line 194
    .line 195
    const-string v16, "RENPY8"

    .line 196
    .line 197
    const-string v17, "KIRI"

    .line 198
    .line 199
    const-string v18, "GODOT"

    .line 200
    .line 201
    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-static {v4}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_2

    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_2
    const/4 v7, 0x0

    .line 217
    :goto_0
    if-nez v7, :cond_4

    .line 218
    .line 219
    :cond_3
    const-string v7, "unknown"

    .line 220
    .line 221
    :cond_4
    const-string v4, "identity"

    .line 222
    .line 223
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    .line 225
    .line 226
    :try_start_1
    new-instance v4, LI1/e;

    .line 227
    .line 228
    const/4 v5, 0x0

    .line 229
    invoke-direct {v4, v1, v3, v7, v5}, LI1/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v4}, LI1/h;->e(LI1/e;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    check-cast v1, LI1/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    .line 238
    goto :goto_1

    .line 239
    :catch_0
    :try_start_2
    sget-object v1, LI1/a;->e:LI1/a;

    .line 240
    .line 241
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_8

    .line 246
    .line 247
    if-eq v1, v2, :cond_7

    .line 248
    .line 249
    const/4 v2, 0x2

    .line 250
    if-eq v1, v2, :cond_6

    .line 251
    .line 252
    const/4 v2, 0x3

    .line 253
    if-ne v1, v2, :cond_5

    .line 254
    .line 255
    sget-object v1, LQ1/a;->h:LQ1/a;

    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_5
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 259
    .line 260
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 261
    .line 262
    .line 263
    throw v1

    .line 264
    :cond_6
    sget-object v1, LQ1/a;->g:LQ1/a;

    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_7
    sget-object v1, LQ1/a;->f:LQ1/a;

    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_8
    sget-object v1, LQ1/a;->e:LQ1/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :catch_1
    sget-object v1, LQ1/a;->i:LQ1/a;

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_9
    sget-object v1, LQ1/a;->d:LQ1/a;

    .line 277
    .line 278
    :goto_2
    return-object v1

    .line 279
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    sget v1, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 283
    .line 284
    iget-object v1, v3, Lcom/minhub/gamehub/game/GameActivity;->k:Landroidx/lifecycle/ViewModelLazy;

    .line 285
    .line 286
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    check-cast v1, LC1/Z0;

    .line 291
    .line 292
    iget-object v4, v0, Ly1/L;->c:Lcom/minhub/gamehub/data/Game;

    .line 293
    .line 294
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getSaveCount()I

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    add-int/lit8 v20, v5, 0x1

    .line 299
    .line 300
    const v34, 0x7ffbfff

    .line 301
    .line 302
    .line 303
    const/16 v35, 0x0

    .line 304
    .line 305
    const/4 v5, 0x0

    .line 306
    const/4 v6, 0x0

    .line 307
    const/4 v7, 0x0

    .line 308
    const/4 v8, 0x0

    .line 309
    const/4 v9, 0x0

    .line 310
    const/4 v10, 0x0

    .line 311
    const/4 v11, 0x0

    .line 312
    const/4 v12, 0x0

    .line 313
    const/4 v13, 0x0

    .line 314
    const/4 v14, 0x0

    .line 315
    const/4 v15, 0x0

    .line 316
    const/16 v16, 0x0

    .line 317
    .line 318
    const/16 v17, 0x0

    .line 319
    .line 320
    const-wide/16 v18, 0x0

    .line 321
    .line 322
    const/16 v21, 0x0

    .line 323
    .line 324
    const/16 v22, 0x0

    .line 325
    .line 326
    const/16 v23, 0x0

    .line 327
    .line 328
    const/16 v24, 0x0

    .line 329
    .line 330
    const/16 v25, 0x0

    .line 331
    .line 332
    const/16 v26, 0x0

    .line 333
    .line 334
    const/16 v27, 0x0

    .line 335
    .line 336
    const/16 v28, 0x0

    .line 337
    .line 338
    const-wide/16 v29, 0x0

    .line 339
    .line 340
    const/16 v31, 0x0

    .line 341
    .line 342
    const/16 v32, 0x0

    .line 343
    .line 344
    const/16 v33, 0x0

    .line 345
    .line 346
    invoke-static/range {v4 .. v35}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-virtual {v1, v5}, LC1/Z0;->a(Lcom/minhub/gamehub/data/Game;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getSaveCount()I

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    add-int/lit8 v20, v1, 0x1

    .line 358
    .line 359
    const/4 v5, 0x0

    .line 360
    invoke-static/range {v4 .. v35}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    iput-object v1, v3, Lcom/minhub/gamehub/game/GameActivity;->o:Lcom/minhub/gamehub/data/Game;

    .line 365
    .line 366
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 367
    .line 368
    return-object v1

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
