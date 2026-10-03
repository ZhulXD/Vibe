.class public final LC1/u0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/minhub/gamehub/data/Game;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V
    .locals 1

    .line 1
    iput p4, p0, LC1/u0;->b:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    packed-switch p4, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    sget-object p4, LG1/g;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, LC1/u0;->c:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, LC1/u0;->d:Lcom/minhub/gamehub/data/Game;

    .line 12
    .line 13
    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    sget-object p4, LG1/g;->a:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, p0, LC1/u0;->c:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, LC1/u0;->d:Lcom/minhub/gamehub/data/Game;

    .line 22
    .line 23
    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    iget p1, p0, LC1/u0;->b:I

    .line 2
    .line 3
    iget-object v0, p0, LC1/u0;->d:Lcom/minhub/gamehub/data/Game;

    .line 4
    .line 5
    iget-object v1, p0, LC1/u0;->c:Landroid/content/Context;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, LC1/u0;

    .line 11
    .line 12
    sget-object v2, LG1/g;->a:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {p1, v1, v0, p2, v2}, LC1/u0;-><init>(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :pswitch_0
    new-instance p1, LC1/u0;

    .line 20
    .line 21
    sget-object v2, LG1/g;->a:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {p1, v1, v0, p2, v2}, LC1/u0;-><init>(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LC1/u0;->b:I

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
    invoke-virtual {p0, p1, p2}, LC1/u0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, LC1/u0;

    .line 15
    .line 16
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, LC1/u0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, LC1/u0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, LC1/u0;

    .line 28
    .line 29
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, LC1/u0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LC1/u0;->b:I

    .line 4
    .line 5
    const/16 v2, 0x194

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const-string v5, "ctx"

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const-string v7, "MinHub-GamePatch"

    .line 13
    .line 14
    const-string v8, "game="

    .line 15
    .line 16
    iget-object v10, v0, LC1/u0;->d:Lcom/minhub/gamehub/data/Game;

    .line 17
    .line 18
    iget-object v11, v0, LC1/u0;->c:Landroid/content/Context;

    .line 19
    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, LG1/g;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v10}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 35
    .line 36
    .line 37
    move-result-wide v12

    .line 38
    sget-object v1, LG1/c;->b:LG1/c;

    .line 39
    .line 40
    sget-object v10, LG1/g;->a:Ljava/lang/String;

    .line 41
    .line 42
    sget-object v10, LG1/c;->a:LG1/c;

    .line 43
    .line 44
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    cmp-long v3, v12, v3

    .line 48
    .line 49
    if-gtz v3, :cond_0

    .line 50
    .line 51
    :goto_0
    move-object v6, v10

    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_0
    invoke-static {v11, v12, v13}, LG1/g;->h(Landroid/content/Context;J)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const-string v4, "game_patch_ota"

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    invoke-virtual {v11, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v4, "folder_"

    .line 70
    .line 71
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, ""

    .line 86
    .line 87
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    move-object/from16 v16, v1

    .line 95
    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v14

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v6, "ota/patch_manifest_v2.json?t="

    .line 111
    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-static {v5}, LG1/g;->i(Ljava/lang/String;)Lkotlin/Pair;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    check-cast v6, Ljava/lang/Number;

    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    check-cast v5, [B

    .line 141
    .line 142
    invoke-static {v11, v12, v13}, LG1/g;->l(Landroid/content/Context;J)Ljava/io/File;

    .line 143
    .line 144
    .line 145
    move-result-object v14

    .line 146
    invoke-static {v14}, LG1/m;->a(Ljava/io/File;)Lkotlin/Pair;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    if-eqz v14, :cond_3

    .line 151
    .line 152
    invoke-virtual {v14}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v14

    .line 156
    check-cast v14, Ljava/lang/String;

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    const/4 v14, 0x0

    .line 160
    :goto_1
    if-ne v6, v2, :cond_5

    .line 161
    .line 162
    if-eqz v14, :cond_4

    .line 163
    .line 164
    invoke-static {v11, v12, v13}, LG1/g;->l(Landroid/content/Context;J)Ljava/io/File;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 169
    .line 170
    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v2, " patch withdrawn"

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    :cond_4
    invoke-static {v11, v12, v13}, LG1/g;->k(Landroid/content/Context;J)Ljava/io/File;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {v1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 196
    .line 197
    .line 198
    move-object v1, v10

    .line 199
    goto/16 :goto_6

    .line 200
    .line 201
    :cond_5
    if-eqz v5, :cond_1

    .line 202
    .line 203
    invoke-static {v3}, LG1/g;->j(Ljava/lang/String;)LN1/p;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    const-string v3, "raw"

    .line 208
    .line 209
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string v3, "p"

    .line 213
    .line 214
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v5}, LG1/m;->f([B)LN1/n;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    if-nez v3, :cond_6

    .line 222
    .line 223
    move-object/from16 v16, v1

    .line 224
    .line 225
    move-object v6, v10

    .line 226
    :goto_2
    const/4 v0, 0x0

    .line 227
    goto :goto_3

    .line 228
    :cond_6
    move-object v6, v10

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 230
    .line 231
    .line 232
    move-result-wide v9

    .line 233
    invoke-virtual {v3, v2, v9, v10}, LN1/n;->a(LN1/p;J)LN1/u;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    iget-object v2, v2, LN1/u;->a:Ljava/util/List;

    .line 238
    .line 239
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_8

    .line 244
    .line 245
    iget-wide v9, v3, LN1/n;->h:J

    .line 246
    .line 247
    array-length v2, v5

    .line 248
    move-object/from16 v16, v1

    .line 249
    .line 250
    int-to-long v0, v2

    .line 251
    cmp-long v0, v9, v0

    .line 252
    .line 253
    if-eqz v0, :cond_7

    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_7
    iget-object v0, v3, LN1/n;->b:Ljava/lang/String;

    .line 257
    .line 258
    iget v1, v3, LN1/n;->o:I

    .line 259
    .line 260
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    goto :goto_3

    .line 269
    :cond_8
    move-object/from16 v16, v1

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :goto_3
    if-nez v0, :cond_9

    .line 273
    .line 274
    goto/16 :goto_5

    .line 275
    .line 276
    :cond_9
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    check-cast v1, Ljava/lang/Number;

    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    const/16 v15, 0x4f

    .line 287
    .line 288
    if-le v1, v15, :cond_a

    .line 289
    .line 290
    :goto_4
    move-object v1, v6

    .line 291
    goto :goto_6

    .line 292
    :cond_a
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_b

    .line 301
    .line 302
    new-instance v1, LG1/d;

    .line 303
    .line 304
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    check-cast v0, Ljava/lang/String;

    .line 309
    .line 310
    invoke-direct {v1, v0}, LG1/d;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_b
    const/4 v1, 0x0

    .line 315
    invoke-virtual {v11, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    const-string v3, "declined_"

    .line 322
    .line 323
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    const/4 v3, 0x0

    .line 334
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v4, " patch v"

    .line 359
    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v2, " available (local="

    .line 367
    .line 368
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v2, ")"

    .line 375
    .line 376
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    new-instance v2, LG1/b;

    .line 387
    .line 388
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    check-cast v0, Ljava/lang/String;

    .line 393
    .line 394
    invoke-direct {v2, v0, v1}, LG1/b;-><init>(Ljava/lang/String;Z)V

    .line 395
    .line 396
    .line 397
    move-object v1, v2

    .line 398
    goto :goto_6

    .line 399
    :goto_5
    move-object/from16 v1, v16

    .line 400
    .line 401
    :goto_6
    return-object v1

    .line 402
    :pswitch_0
    move v1, v6

    .line 403
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    sget-object v0, LG1/g;->a:Ljava/lang/String;

    .line 410
    .line 411
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v10}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 415
    .line 416
    .line 417
    move-result-wide v9

    .line 418
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    cmp-long v0, v9, v3

    .line 422
    .line 423
    if-gtz v0, :cond_d

    .line 424
    .line 425
    :cond_c
    :goto_7
    move v6, v1

    .line 426
    goto/16 :goto_9

    .line 427
    .line 428
    :cond_d
    invoke-static {v11, v9, v10}, LG1/g;->h(Landroid/content/Context;J)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    if-nez v0, :cond_e

    .line 433
    .line 434
    goto :goto_7

    .line 435
    :cond_e
    invoke-static {v11, v9, v10}, LG1/g;->l(Landroid/content/Context;J)Ljava/io/File;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    if-eqz v4, :cond_f

    .line 444
    .line 445
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 446
    .line 447
    .line 448
    :cond_f
    const-string v4, "ota/patch_manifest_v2.json"

    .line 449
    .line 450
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    invoke-static {v0}, LG1/g;->j(Ljava/lang/String;)LN1/p;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    const/16 v15, 0x4f

    .line 459
    .line 460
    invoke-static {v3, v4, v5, v15}, LG1/m;->k(Ljava/io/File;Ljava/lang/String;LN1/p;I)LG1/k;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    iget-object v4, v3, LG1/k;->a:LG1/l;

    .line 465
    .line 466
    iget-object v3, v3, LG1/k;->b:Ljava/lang/String;

    .line 467
    .line 468
    new-instance v5, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string v6, " download status="

    .line 477
    .line 478
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    const-string v6, " "

    .line 485
    .line 486
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    const-string v3, "ota/pre/patch_manifest_v2.json"

    .line 500
    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 506
    .line 507
    .line 508
    move-result-wide v12

    .line 509
    new-instance v5, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const-string v14, "?t="

    .line 518
    .line 519
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    invoke-static {v5}, LG1/g;->i(Ljava/lang/String;)Lkotlin/Pair;

    .line 530
    .line 531
    .line 532
    move-result-object v5

    .line 533
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    check-cast v5, Ljava/lang/Number;

    .line 538
    .line 539
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 540
    .line 541
    .line 542
    move-result v5

    .line 543
    if-ne v5, v2, :cond_10

    .line 544
    .line 545
    invoke-static {v11, v9, v10}, LG1/g;->k(Landroid/content/Context;J)Ljava/io/File;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 550
    .line 551
    .line 552
    goto :goto_8

    .line 553
    :cond_10
    const/16 v2, 0xc8

    .line 554
    .line 555
    if-gt v2, v5, :cond_12

    .line 556
    .line 557
    const/16 v2, 0x12c

    .line 558
    .line 559
    if-ge v5, v2, :cond_12

    .line 560
    .line 561
    invoke-static {v11, v9, v10}, LG1/g;->k(Landroid/content/Context;J)Ljava/io/File;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 566
    .line 567
    .line 568
    move-result-object v5

    .line 569
    if-eqz v5, :cond_11

    .line 570
    .line 571
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 572
    .line 573
    .line 574
    :cond_11
    invoke-static {v0}, LG1/g;->j(Ljava/lang/String;)LN1/p;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    const/16 v15, 0x4f

    .line 579
    .line 580
    invoke-static {v2, v3, v0, v15}, LG1/m;->k(Ljava/io/File;Ljava/lang/String;LN1/p;I)LG1/k;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    iget-object v2, v0, LG1/k;->a:LG1/l;

    .line 585
    .line 586
    iget-object v0, v0, LG1/k;->b:Ljava/lang/String;

    .line 587
    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    .line 589
    .line 590
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    const-string v5, " pre download status="

    .line 597
    .line 598
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .line 616
    .line 617
    :cond_12
    :goto_8
    sget-object v0, LG1/l;->b:LG1/l;

    .line 618
    .line 619
    if-eq v4, v0, :cond_13

    .line 620
    .line 621
    sget-object v0, LG1/l;->c:LG1/l;

    .line 622
    .line 623
    if-ne v4, v0, :cond_c

    .line 624
    .line 625
    :cond_13
    const/4 v6, 0x1

    .line 626
    :goto_9
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    return-object v0

    .line 631
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
