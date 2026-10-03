.class public final LC1/V0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public c:I

.field public final synthetic d:Lcom/minhub/gamehub/hub/GameDetailActivity;

.field public final synthetic e:Lcom/minhub/gamehub/data/Game;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, LC1/V0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/V0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 4
    .line 5
    iput-object p2, p0, LC1/V0;->e:Lcom/minhub/gamehub/data/Game;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    iget p1, p0, LC1/V0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, LC1/V0;

    .line 7
    .line 8
    iget-object v0, p0, LC1/V0;->e:Lcom/minhub/gamehub/data/Game;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    iget-object v2, p0, LC1/V0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 12
    .line 13
    invoke-direct {p1, v2, v0, p2, v1}, LC1/V0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, LC1/V0;

    .line 18
    .line 19
    iget-object v0, p0, LC1/V0;->e:Lcom/minhub/gamehub/data/Game;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iget-object v2, p0, LC1/V0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 23
    .line 24
    invoke-direct {p1, v2, v0, p2, v1}, LC1/V0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_1
    new-instance p1, LC1/V0;

    .line 29
    .line 30
    iget-object v0, p0, LC1/V0;->e:Lcom/minhub/gamehub/data/Game;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iget-object v2, p0, LC1/V0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 34
    .line 35
    invoke-direct {p1, v2, v0, p2, v1}, LC1/V0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LC1/V0;->b:I

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
    invoke-virtual {p0, p1, p2}, LC1/V0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, LC1/V0;

    .line 15
    .line 16
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, LC1/V0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, LC1/V0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, LC1/V0;

    .line 28
    .line 29
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, LC1/V0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :pswitch_1
    invoke-virtual {p0, p1, p2}, LC1/V0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, LC1/V0;

    .line 41
    .line 42
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, LC1/V0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LC1/V0;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget v2, v0, LC1/V0;->c:I

    .line 13
    .line 14
    iget-object v3, v0, LC1/V0;->e:Lcom/minhub/gamehub/data/Game;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    iget-object v5, v0, LC1/V0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    if-ne v2, v4, :cond_0

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    move-object/from16 v2, p1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object v2, LV1/H;->b:Lc2/c;

    .line 41
    .line 42
    new-instance v6, LC1/r0;

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x1

    .line 46
    invoke-direct {v6, v5, v3, v7, v8}, LC1/r0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 47
    .line 48
    .line 49
    iput v4, v0, LC1/V0;->c:I

    .line 50
    .line 51
    invoke-static {v2, v6, v0}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-ne v2, v1, :cond_2

    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_2
    :goto_0
    check-cast v2, Lcom/minhub/gamehub/data/TranslationOverlayResult;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    iput-boolean v1, v5, Lcom/minhub/gamehub/hub/GameDetailActivity;->m:Z

    .line 63
    .line 64
    const-string v1, "<set-?>"

    .line 65
    .line 66
    const-string v6, ""

    .line 67
    .line 68
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object v6, v5, Lcom/minhub/gamehub/hub/GameDetailActivity;->n:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/TranslationOverlayResult;->getSuccess()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    iget-object v1, v5, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 80
    .line 81
    if-nez v1, :cond_3

    .line 82
    .line 83
    move-object v6, v3

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    move-object v6, v1

    .line 86
    :goto_1
    const v36, 0x7cfffff

    .line 87
    .line 88
    .line 89
    const/16 v37, 0x0

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v8, 0x0

    .line 93
    const/4 v9, 0x0

    .line 94
    const/4 v10, 0x0

    .line 95
    const/4 v11, 0x0

    .line 96
    const/4 v12, 0x0

    .line 97
    const/4 v13, 0x0

    .line 98
    const/4 v14, 0x0

    .line 99
    const/4 v15, 0x0

    .line 100
    const/16 v16, 0x0

    .line 101
    .line 102
    const/16 v17, 0x0

    .line 103
    .line 104
    const/16 v18, 0x0

    .line 105
    .line 106
    const/16 v19, 0x0

    .line 107
    .line 108
    const-wide/16 v20, 0x0

    .line 109
    .line 110
    const/16 v22, 0x0

    .line 111
    .line 112
    const/16 v23, 0x0

    .line 113
    .line 114
    const/16 v24, 0x0

    .line 115
    .line 116
    const/16 v25, 0x0

    .line 117
    .line 118
    const/16 v26, 0x0

    .line 119
    .line 120
    const/16 v27, 0x0

    .line 121
    .line 122
    const-string v28, ""

    .line 123
    .line 124
    const-string v29, ""

    .line 125
    .line 126
    const/16 v30, 0x0

    .line 127
    .line 128
    const-wide/16 v31, 0x0

    .line 129
    .line 130
    const/16 v33, 0x0

    .line 131
    .line 132
    const/16 v34, 0x0

    .line 133
    .line 134
    const/16 v35, 0x0

    .line 135
    .line 136
    invoke-static/range {v6 .. v37}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v5, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 141
    .line 142
    invoke-virtual {v5}, Lcom/minhub/gamehub/hub/GameDetailActivity;->q()LC1/Z0;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2, v1}, LC1/Z0;->a(Lcom/minhub/gamehub/data/Game;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v5, v1}, Lcom/bumptech/glide/d;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;)V

    .line 150
    .line 151
    .line 152
    const v1, 0x7f120153

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v5, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_4
    iget-object v1, v5, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 168
    .line 169
    if-nez v1, :cond_5

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    move-object v3, v1

    .line 173
    :goto_2
    invoke-static {v5, v3}, Lcom/bumptech/glide/d;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/TranslationOverlayResult;->getMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_6

    .line 185
    .line 186
    const v1, 0x7f1200e3

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const-string v2, "getString(...)"

    .line 194
    .line 195
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_6
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    const v2, 0x7f120152

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-static {v5, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 214
    .line 215
    .line 216
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 217
    .line 218
    :goto_4
    return-object v1

    .line 219
    :pswitch_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iget v2, v0, LC1/V0;->c:I

    .line 224
    .line 225
    iget-object v3, v0, LC1/V0;->e:Lcom/minhub/gamehub/data/Game;

    .line 226
    .line 227
    const/4 v4, 0x1

    .line 228
    if-eqz v2, :cond_8

    .line 229
    .line 230
    if-ne v2, v4, :cond_7

    .line 231
    .line 232
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    move-object/from16 v2, p1

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 239
    .line 240
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 241
    .line 242
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw v1

    .line 246
    :cond_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    sget-object v2, LV1/H;->b:Lc2/c;

    .line 250
    .line 251
    new-instance v5, LC1/U0;

    .line 252
    .line 253
    const/4 v6, 0x0

    .line 254
    const/4 v7, 0x1

    .line 255
    invoke-direct {v5, v3, v6, v7}, LC1/U0;-><init>(Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 256
    .line 257
    .line 258
    iput v4, v0, LC1/V0;->c:I

    .line 259
    .line 260
    invoke-static {v2, v5, v0}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    if-ne v2, v1, :cond_9

    .line 265
    .line 266
    goto/16 :goto_7

    .line 267
    .line 268
    :cond_9
    :goto_5
    check-cast v2, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 269
    .line 270
    iget-object v1, v0, LC1/V0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 271
    .line 272
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    iget-object v5, v5, Lw1/e;->j:Landroid/widget/Button;

    .line 277
    .line 278
    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 279
    .line 280
    .line 281
    const/4 v4, 0x0

    .line 282
    if-nez v2, :cond_a

    .line 283
    .line 284
    const v2, 0x7f12014d

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 296
    .line 297
    .line 298
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 299
    .line 300
    goto/16 :goto_7

    .line 301
    .line 302
    :cond_a
    new-instance v5, Li1/l;

    .line 303
    .line 304
    invoke-direct {v5}, Li1/l;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTranslations()Ljava/util/List;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v5, v2}, Li1/l;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    iget-object v5, v1, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 316
    .line 317
    if-nez v5, :cond_b

    .line 318
    .line 319
    move-object v6, v3

    .line 320
    goto :goto_6

    .line 321
    :cond_b
    move-object v6, v5

    .line 322
    :goto_6
    invoke-virtual {v6}, Lcom/minhub/gamehub/data/Game;->getTranslationPackagesJson()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    if-eqz v3, :cond_c

    .line 331
    .line 332
    const v2, 0x7f12014f

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 344
    .line 345
    .line 346
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    const v36, 0x7f7ffff

    .line 353
    .line 354
    .line 355
    const/16 v37, 0x0

    .line 356
    .line 357
    const/4 v7, 0x0

    .line 358
    const/4 v8, 0x0

    .line 359
    const/4 v9, 0x0

    .line 360
    const/4 v10, 0x0

    .line 361
    const/4 v11, 0x0

    .line 362
    const/4 v12, 0x0

    .line 363
    const/4 v13, 0x0

    .line 364
    const/4 v14, 0x0

    .line 365
    const/4 v15, 0x0

    .line 366
    const/16 v16, 0x0

    .line 367
    .line 368
    const/16 v17, 0x0

    .line 369
    .line 370
    const/16 v18, 0x0

    .line 371
    .line 372
    const/16 v19, 0x0

    .line 373
    .line 374
    const-wide/16 v20, 0x0

    .line 375
    .line 376
    const/16 v22, 0x0

    .line 377
    .line 378
    const/16 v23, 0x0

    .line 379
    .line 380
    const/16 v24, 0x0

    .line 381
    .line 382
    const/16 v25, 0x0

    .line 383
    .line 384
    const/16 v26, 0x0

    .line 385
    .line 386
    const/16 v28, 0x0

    .line 387
    .line 388
    const/16 v29, 0x0

    .line 389
    .line 390
    const/16 v30, 0x0

    .line 391
    .line 392
    const-wide/16 v31, 0x0

    .line 393
    .line 394
    const/16 v33, 0x0

    .line 395
    .line 396
    const/16 v34, 0x0

    .line 397
    .line 398
    const/16 v35, 0x0

    .line 399
    .line 400
    move-object/from16 v27, v2

    .line 401
    .line 402
    invoke-static/range {v6 .. v37}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    iput-object v2, v1, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 407
    .line 408
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/GameDetailActivity;->q()LC1/Z0;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-virtual {v3, v2}, LC1/Z0;->a(Lcom/minhub/gamehub/data/Game;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    iput v3, v1, Lcom/minhub/gamehub/hub/GameDetailActivity;->p:I

    .line 420
    .line 421
    invoke-static {v1, v2}, Lcom/bumptech/glide/d;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;)V

    .line 422
    .line 423
    .line 424
    const v2, 0x7f120150

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 436
    .line 437
    .line 438
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 439
    .line 440
    :goto_7
    return-object v1

    .line 441
    :pswitch_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    iget v2, v0, LC1/V0;->c:I

    .line 446
    .line 447
    iget-object v3, v0, LC1/V0;->e:Lcom/minhub/gamehub/data/Game;

    .line 448
    .line 449
    const/4 v4, 0x1

    .line 450
    if-eqz v2, :cond_e

    .line 451
    .line 452
    if-ne v2, v4, :cond_d

    .line 453
    .line 454
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    move-object/from16 v2, p1

    .line 458
    .line 459
    goto :goto_8

    .line 460
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 461
    .line 462
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 463
    .line 464
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw v1

    .line 468
    :cond_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    sget-object v2, LV1/H;->b:Lc2/c;

    .line 472
    .line 473
    new-instance v5, LC1/U0;

    .line 474
    .line 475
    const/4 v6, 0x0

    .line 476
    const/4 v7, 0x0

    .line 477
    invoke-direct {v5, v3, v6, v7}, LC1/U0;-><init>(Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 478
    .line 479
    .line 480
    iput v4, v0, LC1/V0;->c:I

    .line 481
    .line 482
    invoke-static {v2, v5, v0}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    if-ne v2, v1, :cond_f

    .line 487
    .line 488
    goto :goto_9

    .line 489
    :cond_f
    :goto_8
    check-cast v2, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 490
    .line 491
    if-nez v2, :cond_10

    .line 492
    .line 493
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 494
    .line 495
    goto :goto_9

    .line 496
    :cond_10
    new-instance v1, Li1/l;

    .line 497
    .line 498
    invoke-direct {v1}, Li1/l;-><init>()V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTranslations()Ljava/util/List;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-virtual {v1, v2}, Li1/l;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    iget-object v2, v0, LC1/V0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 510
    .line 511
    iget-object v4, v2, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 512
    .line 513
    if-nez v4, :cond_11

    .line 514
    .line 515
    move-object v4, v3

    .line 516
    :cond_11
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getTranslationPackagesJson()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    if-eqz v3, :cond_12

    .line 525
    .line 526
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 527
    .line 528
    goto :goto_9

    .line 529
    :cond_12
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    const v34, 0x7f7ffff

    .line 533
    .line 534
    .line 535
    const/16 v35, 0x0

    .line 536
    .line 537
    const/4 v5, 0x0

    .line 538
    const/4 v6, 0x0

    .line 539
    const/4 v7, 0x0

    .line 540
    const/4 v8, 0x0

    .line 541
    const/4 v9, 0x0

    .line 542
    const/4 v10, 0x0

    .line 543
    const/4 v11, 0x0

    .line 544
    const/4 v12, 0x0

    .line 545
    const/4 v13, 0x0

    .line 546
    const/4 v14, 0x0

    .line 547
    const/4 v15, 0x0

    .line 548
    const/16 v16, 0x0

    .line 549
    .line 550
    const/16 v17, 0x0

    .line 551
    .line 552
    const-wide/16 v18, 0x0

    .line 553
    .line 554
    const/16 v20, 0x0

    .line 555
    .line 556
    const/16 v21, 0x0

    .line 557
    .line 558
    const/16 v22, 0x0

    .line 559
    .line 560
    const/16 v23, 0x0

    .line 561
    .line 562
    const/16 v24, 0x0

    .line 563
    .line 564
    const/16 v26, 0x0

    .line 565
    .line 566
    const/16 v27, 0x0

    .line 567
    .line 568
    const/16 v28, 0x0

    .line 569
    .line 570
    const-wide/16 v29, 0x0

    .line 571
    .line 572
    const/16 v31, 0x0

    .line 573
    .line 574
    const/16 v32, 0x0

    .line 575
    .line 576
    const/16 v33, 0x0

    .line 577
    .line 578
    move-object/from16 v25, v1

    .line 579
    .line 580
    invoke-static/range {v4 .. v35}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    iput-object v1, v2, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 585
    .line 586
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/GameDetailActivity;->q()LC1/Z0;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    invoke-virtual {v3, v1}, LC1/Z0;->a(Lcom/minhub/gamehub/data/Game;)V

    .line 591
    .line 592
    .line 593
    invoke-static {v2, v1}, Lcom/bumptech/glide/d;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;)V

    .line 594
    .line 595
    .line 596
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 597
    .line 598
    :goto_9
    return-object v1

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
