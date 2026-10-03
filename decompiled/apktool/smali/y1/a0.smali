.class public final Ly1/a0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lcom/minhub/gamehub/data/Game;

.field public final synthetic l:Landroid/app/Activity;

.field public final synthetic m:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/minhub/gamehub/data/Game;Landroid/app/Activity;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly1/a0;->k:Lcom/minhub/gamehub/data/Game;

    .line 2
    .line 3
    iput-object p2, p0, Ly1/a0;->l:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Ly1/a0;->m:Landroid/content/Intent;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    .line 1
    new-instance v0, Ly1/a0;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/a0;->l:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Ly1/a0;->m:Landroid/content/Intent;

    .line 6
    .line 7
    iget-object v3, p0, Ly1/a0;->k:Lcom/minhub/gamehub/data/Game;

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2, p2}, Ly1/a0;-><init>(Lcom/minhub/gamehub/data/Game;Landroid/app/Activity;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Ly1/a0;->j:Ljava/lang/Object;

    .line 13
    .line 14
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
    invoke-virtual {p0, p1, p2}, Ly1/a0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ly1/a0;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ly1/a0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Ly1/a0;->j:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v2, v0

    .line 6
    check-cast v2, LV1/x;

    .line 7
    .line 8
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    iget v0, v1, Ly1/a0;->i:I

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x1

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-eq v0, v6, :cond_1

    .line 20
    .line 21
    if-ne v0, v4, :cond_0

    .line 22
    .line 23
    iget-object v0, v1, Ly1/a0;->h:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Landroid/content/Intent;

    .line 26
    .line 27
    iget-object v0, v1, Ly1/a0;->g:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, LM1/k;

    .line 30
    .line 31
    iget-object v0, v1, Ly1/a0;->f:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, LL1/a;

    .line 34
    .line 35
    iget-object v0, v1, Ly1/a0;->e:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ly1/v1;

    .line 38
    .line 39
    iget-object v0, v1, Ly1/a0;->d:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .line 43
    iget-object v0, v1, Ly1/a0;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Ljava/lang/String;

    .line 46
    .line 47
    iget-object v0, v1, Ly1/a0;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lcom/minhub/gamehub/data/GameEngine;

    .line 50
    .line 51
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move/from16 v16, v6

    .line 55
    .line 56
    goto/16 :goto_b

    .line 57
    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_1
    iget-object v0, v1, Ly1/a0;->g:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, LM1/k;

    .line 69
    .line 70
    iget-object v0, v1, Ly1/a0;->f:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, LL1/a;

    .line 73
    .line 74
    iget-object v0, v1, Ly1/a0;->e:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Ly1/v1;

    .line 77
    .line 78
    iget-object v0, v1, Ly1/a0;->d:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Ljava/lang/String;

    .line 81
    .line 82
    iget-object v0, v1, Ly1/a0;->c:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Ljava/lang/String;

    .line 85
    .line 86
    iget-object v0, v1, Ly1/a0;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Lcom/minhub/gamehub/data/GameEngine;

    .line 89
    .line 90
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_6

    .line 94
    .line 95
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->Companion:Lcom/minhub/gamehub/data/GameEngine$Companion;

    .line 99
    .line 100
    iget-object v7, v1, Ly1/a0;->k:Lcom/minhub/gamehub/data/Game;

    .line 101
    .line 102
    invoke-virtual {v7}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-virtual {v0, v8}, Lcom/minhub/gamehub/data/GameEngine$Companion;->fromString(Ljava/lang/String;)Lcom/minhub/gamehub/data/GameEngine;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v7}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    sget-object v0, Ly1/G1;->a:Lkotlin/text/Regex;

    .line 115
    .line 116
    new-instance v0, Ljava/io/File;

    .line 117
    .line 118
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0}, Ly1/G1;->a(Ljava/io/File;)Ljava/io/File;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->RENPY7:Lcom/minhub/gamehub/data/GameEngine;

    .line 130
    .line 131
    if-ne v8, v0, :cond_3

    .line 132
    .line 133
    move v11, v6

    .line 134
    goto :goto_0

    .line 135
    :cond_3
    move v11, v5

    .line 136
    :goto_0
    if-eqz v11, :cond_4

    .line 137
    .line 138
    sget-object v0, Ly1/v1;->i:Ly1/v1;

    .line 139
    .line 140
    :goto_1
    move-object v12, v0

    .line 141
    goto :goto_2

    .line 142
    :cond_4
    sget-object v0, Ly1/v1;->h:Ly1/v1;

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :goto_2
    invoke-virtual {v7}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    iget-object v13, v1, Ly1/a0;->l:Landroid/app/Activity;

    .line 150
    .line 151
    invoke-static {v13, v10, v0}, Ly1/G1;->f(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v8, v10, v0}, Ly1/G1;->g(Lcom/minhub/gamehub/data/GameEngine;Ljava/lang/String;Ljava/util/ArrayList;)LL1/c;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const/4 v14, 0x0

    .line 160
    if-eqz v0, :cond_5

    .line 161
    .line 162
    iget-object v0, v0, LL1/c;->a:LL1/a;

    .line 163
    .line 164
    move-object v15, v0

    .line 165
    goto :goto_3

    .line 166
    :cond_5
    move-object v15, v14

    .line 167
    :goto_3
    sget-object v0, Ly1/y1;->a:Ly1/y1;

    .line 168
    .line 169
    invoke-static {v15, v13, v12}, Ly1/y1;->k(LL1/a;Landroid/content/Context;Ly1/v1;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_6

    .line 174
    .line 175
    invoke-static {v15, v13, v12}, Ly1/y1;->r(LL1/a;Landroid/content/Context;Ly1/v1;)LM1/k;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    :goto_4
    move-object v4, v0

    .line 180
    goto :goto_5

    .line 181
    :cond_6
    new-instance v0, LM1/k;

    .line 182
    .line 183
    sget-object v6, LM1/j;->d:LM1/j;

    .line 184
    .line 185
    const/16 v4, 0xc

    .line 186
    .line 187
    invoke-direct {v0, v5, v6, v5, v4}, LM1/k;-><init>(ZLM1/j;ZI)V

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :goto_5
    iget-boolean v0, v4, LM1/k;->a:Z

    .line 192
    .line 193
    if-nez v0, :cond_8

    .line 194
    .line 195
    sget-object v0, LV1/H;->a:Lc2/d;

    .line 196
    .line 197
    sget-object v0, La2/p;->a:LW1/d;

    .line 198
    .line 199
    new-instance v6, LC1/l1;

    .line 200
    .line 201
    const/4 v7, 0x2

    .line 202
    invoke-direct {v6, v7, v13, v14}, LC1/l1;-><init>(ILandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iput-object v2, v1, Ly1/a0;->j:Ljava/lang/Object;

    .line 210
    .line 211
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    iput-object v2, v1, Ly1/a0;->b:Ljava/lang/Object;

    .line 216
    .line 217
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    iput-object v2, v1, Ly1/a0;->c:Ljava/lang/Object;

    .line 222
    .line 223
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    iput-object v2, v1, Ly1/a0;->d:Ljava/lang/Object;

    .line 228
    .line 229
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    iput-object v2, v1, Ly1/a0;->e:Ljava/lang/Object;

    .line 234
    .line 235
    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    iput-object v2, v1, Ly1/a0;->f:Ljava/lang/Object;

    .line 240
    .line 241
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    iput-object v2, v1, Ly1/a0;->g:Ljava/lang/Object;

    .line 246
    .line 247
    const/4 v2, 0x1

    .line 248
    iput v2, v1, Ly1/a0;->i:I

    .line 249
    .line 250
    invoke-static {v0, v6, v1}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    if-ne v0, v3, :cond_7

    .line 255
    .line 256
    goto/16 :goto_a

    .line 257
    .line 258
    :cond_7
    :goto_6
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    return-object v0

    .line 263
    :cond_8
    :try_start_0
    sget-object v0, Lcom/minhub/gamehub/data/RenpyTagFixer;->INSTANCE:Lcom/minhub/gamehub/data/RenpyTagFixer;

    .line 264
    .line 265
    new-instance v6, Ljava/io/File;

    .line 266
    .line 267
    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v6}, Lcom/minhub/gamehub/data/RenpyTagFixer;->fixTlFolder(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .line 272
    .line 273
    :catch_0
    const-string v0, "context"

    .line 274
    .line 275
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    const-string v0, "minhub_prefs"

    .line 279
    .line 280
    invoke-virtual {v13, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    const-string v5, "renpy_memory_saver"

    .line 285
    .line 286
    const/4 v6, 0x1

    .line 287
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    const-string v6, "GameLauncher"

    .line 292
    .line 293
    if-eqz v5, :cond_9

    .line 294
    .line 295
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 296
    .line 297
    sget-object v0, Ly1/E1;->a:Ljava/util/Set;

    .line 298
    .line 299
    new-instance v0, Ljava/io/File;

    .line 300
    .line 301
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-static {v0}, Ly1/E1;->b(Ljava/io/File;)Ly1/D1;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    goto :goto_7

    .line 313
    :catchall_0
    move-exception v0

    .line 314
    sget-object v17, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 315
    .line 316
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    if-eqz v0, :cond_9

    .line 329
    .line 330
    const-string v14, "Live2D texture prep failed"

    .line 331
    .line 332
    invoke-static {v6, v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .line 334
    .line 335
    :cond_9
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 336
    .line 337
    new-instance v0, Ljava/io/File;

    .line 338
    .line 339
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-static {v0, v5}, Ly1/L1;->z(Ljava/io/File;Z)Ly1/H1;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 350
    goto :goto_8

    .line 351
    :catchall_1
    move-exception v0

    .line 352
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 353
    .line 354
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    if-eqz v0, :cond_a

    .line 367
    .line 368
    const-string v5, "Translation prep failed"

    .line 369
    .line 370
    invoke-static {v6, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .line 372
    .line 373
    :cond_a
    new-instance v0, Landroid/content/Intent;

    .line 374
    .line 375
    if-eqz v11, :cond_b

    .line 376
    .line 377
    const-class v5, Lorg/renpy/android/PythonSDLActivityRenpy7;

    .line 378
    .line 379
    goto :goto_9

    .line 380
    :cond_b
    const-class v5, Lorg/renpy/android/PythonSDLActivity;

    .line 381
    .line 382
    :goto_9
    invoke-direct {v0, v13, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .line 384
    .line 385
    const-string v5, "gamePath"

    .line 386
    .line 387
    invoke-virtual {v0, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    .line 389
    .line 390
    const-string v5, "game_id"

    .line 391
    .line 392
    invoke-virtual {v7}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 393
    .line 394
    .line 395
    move-result v6

    .line 396
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    .line 398
    .line 399
    if-eqz v15, :cond_c

    .line 400
    .line 401
    const-string v5, "renpyRuntimeKey"

    .line 402
    .line 403
    invoke-virtual {v15}, LL1/a;->a()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    .line 409
    .line 410
    :cond_c
    const-string v5, "coverColor1"

    .line 411
    .line 412
    invoke-virtual {v7}, Lcom/minhub/gamehub/data/Game;->getCoverColor1()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    .line 418
    .line 419
    iget-object v5, v1, Ly1/a0;->m:Landroid/content/Intent;

    .line 420
    .line 421
    invoke-static {v5, v0}, Ly1/c0;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 422
    .line 423
    .line 424
    sget-object v5, LV1/H;->a:Lc2/d;

    .line 425
    .line 426
    sget-object v5, La2/p;->a:LW1/d;

    .line 427
    .line 428
    new-instance v6, LC1/O0;

    .line 429
    .line 430
    const/4 v7, 0x4

    .line 431
    const/4 v11, 0x0

    .line 432
    invoke-direct {v6, v13, v0, v11, v7}, LC1/O0;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 433
    .line 434
    .line 435
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    iput-object v2, v1, Ly1/a0;->j:Ljava/lang/Object;

    .line 440
    .line 441
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    iput-object v2, v1, Ly1/a0;->b:Ljava/lang/Object;

    .line 446
    .line 447
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    iput-object v2, v1, Ly1/a0;->c:Ljava/lang/Object;

    .line 452
    .line 453
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    iput-object v2, v1, Ly1/a0;->d:Ljava/lang/Object;

    .line 458
    .line 459
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    iput-object v2, v1, Ly1/a0;->e:Ljava/lang/Object;

    .line 464
    .line 465
    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    iput-object v2, v1, Ly1/a0;->f:Ljava/lang/Object;

    .line 470
    .line 471
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    iput-object v2, v1, Ly1/a0;->g:Ljava/lang/Object;

    .line 476
    .line 477
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    iput-object v0, v1, Ly1/a0;->h:Ljava/lang/Object;

    .line 482
    .line 483
    const/4 v7, 0x2

    .line 484
    iput v7, v1, Ly1/a0;->i:I

    .line 485
    .line 486
    invoke-static {v5, v6, v1}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    if-ne v0, v3, :cond_d

    .line 491
    .line 492
    :goto_a
    return-object v3

    .line 493
    :cond_d
    const/16 v16, 0x1

    .line 494
    .line 495
    :goto_b
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    return-object v0
.end method
