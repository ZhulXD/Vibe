.class public final LC1/L0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public c:I

.field public final synthetic d:Lcom/minhub/gamehub/data/Game;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/minhub/gamehub/data/Game;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p6, p0, LC1/L0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/L0;->e:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, LC1/L0;->f:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, LC1/L0;->d:Lcom/minhub/gamehub/data/Game;

    .line 8
    .line 9
    iput-object p4, p0, LC1/L0;->g:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    iget p1, p0, LC1/L0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, LC1/L0;

    .line 7
    .line 8
    iget-object p1, p0, LC1/L0;->e:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v1, p1

    .line 11
    check-cast v1, Lcom/minhub/gamehub/game/GameActivity;

    .line 12
    .line 13
    iget-object p1, p0, LC1/L0;->f:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v2, p1

    .line 16
    check-cast v2, LQ1/d;

    .line 17
    .line 18
    iget-object p1, p0, LC1/L0;->g:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v4, p1

    .line 21
    check-cast v4, LG1/s;

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    iget-object v3, p0, LC1/L0;->d:Lcom/minhub/gamehub/data/Game;

    .line 25
    .line 26
    move-object v5, p2

    .line 27
    invoke-direct/range {v0 .. v6}, LC1/L0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/minhub/gamehub/data/Game;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_0
    move-object v5, p2

    .line 32
    new-instance v1, LC1/L0;

    .line 33
    .line 34
    iget-object p1, p0, LC1/L0;->e:Ljava/lang/Object;

    .line 35
    .line 36
    move-object v2, p1

    .line 37
    check-cast v2, Ljava/io/File;

    .line 38
    .line 39
    iget-object p1, p0, LC1/L0;->f:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v3, p1

    .line 42
    check-cast v3, LC1/X1;

    .line 43
    .line 44
    iget-object p1, p0, LC1/L0;->g:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    iget-object v4, p0, LC1/L0;->d:Lcom/minhub/gamehub/data/Game;

    .line 50
    .line 51
    move-object v6, v5

    .line 52
    move-object v5, p1

    .line 53
    invoke-direct/range {v1 .. v7}, LC1/L0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/minhub/gamehub/data/Game;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 54
    .line 55
    .line 56
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LC1/L0;->b:I

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
    invoke-virtual {p0, p1, p2}, LC1/L0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, LC1/L0;

    .line 15
    .line 16
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, LC1/L0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, LC1/L0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, LC1/L0;

    .line 28
    .line 29
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, LC1/L0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LC1/L0;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v2, v1, LC1/L0;->c:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object/from16 v2, p1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object v2, LV1/H;->b:Lc2/c;

    .line 37
    .line 38
    new-instance v4, LC1/T0;

    .line 39
    .line 40
    iget-object v5, v1, LC1/L0;->d:Lcom/minhub/gamehub/data/Game;

    .line 41
    .line 42
    iget-object v6, v1, LC1/L0;->g:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v6, LG1/s;

    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    invoke-direct {v4, v5, v6, v7}, LC1/T0;-><init>(Lcom/minhub/gamehub/data/Game;LG1/s;Lkotlin/coroutines/Continuation;)V

    .line 48
    .line 49
    .line 50
    iput v3, v1, LC1/L0;->c:I

    .line 51
    .line 52
    invoke-static {v2, v4, v1}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-ne v2, v0, :cond_2

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_2
    :goto_0
    check-cast v2, LH1/b;

    .line 60
    .line 61
    iget-object v0, v1, LC1/L0;->e:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lcom/minhub/gamehub/game/GameActivity;

    .line 64
    .line 65
    iget-object v3, v1, LC1/L0;->f:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v3, LQ1/d;

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iget-object v0, v1, LC1/L0;->f:Ljava/lang/Object;

    .line 76
    .line 77
    move-object v3, v0

    .line 78
    check-cast v3, LQ1/d;

    .line 79
    .line 80
    monitor-enter v3

    .line 81
    :try_start_0
    iget-boolean v0, v3, LQ1/d;->c:Z

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iput-object v2, v3, LQ1/d;->b:LH1/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    :goto_1
    monitor-exit v3

    .line 91
    goto :goto_3

    .line 92
    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw v0

    .line 94
    :cond_4
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 95
    .line 96
    :goto_4
    return-object v0

    .line 97
    :pswitch_0
    iget-object v0, v1, LC1/L0;->g:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 100
    .line 101
    iget-object v2, v1, LC1/L0;->d:Lcom/minhub/gamehub/data/Game;

    .line 102
    .line 103
    iget-object v3, v1, LC1/L0;->f:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v3, LC1/X1;

    .line 106
    .line 107
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iget v5, v1, LC1/L0;->c:I

    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    const/4 v7, 0x1

    .line 115
    if-eqz v5, :cond_6

    .line 116
    .line 117
    if-ne v5, v7, :cond_5

    .line 118
    .line 119
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    move-object/from16 v5, p1

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 128
    .line 129
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    sget-object v5, LV1/H;->b:Lc2/c;

    .line 137
    .line 138
    new-instance v8, LC1/K0;

    .line 139
    .line 140
    iget-object v9, v1, LC1/L0;->e:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v9, Ljava/io/File;

    .line 143
    .line 144
    invoke-direct {v8, v9, v3, v2, v6}, LC1/K0;-><init>(Ljava/io/File;LC1/X1;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;)V

    .line 145
    .line 146
    .line 147
    iput v7, v1, LC1/L0;->c:I

    .line 148
    .line 149
    invoke-static {v5, v8, v1}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    if-ne v5, v4, :cond_7

    .line 154
    .line 155
    goto/16 :goto_8

    .line 156
    .line 157
    :cond_7
    :goto_5
    check-cast v5, Lkotlin/Result;

    .line 158
    .line 159
    invoke-virtual {v5}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    iget-object v5, v1, LC1/L0;->e:Ljava/lang/Object;

    .line 164
    .line 165
    move-object v9, v5

    .line 166
    check-cast v9, Ljava/io/File;

    .line 167
    .line 168
    invoke-static {v4}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    const/4 v15, 0x0

    .line 173
    if-eqz v5, :cond_9

    .line 174
    .line 175
    move-object v5, v4

    .line 176
    check-cast v5, Lcom/minhub/gamehub/data/Game;

    .line 177
    .line 178
    new-instance v7, LC1/X1;

    .line 179
    .line 180
    invoke-virtual {v5}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    iget-object v10, v3, LC1/X1;->d:Ljava/util/List;

    .line 185
    .line 186
    const v11, 0x7f12013f

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v13

    .line 193
    const/16 v14, 0x10

    .line 194
    .line 195
    const/4 v12, 0x0

    .line 196
    move/from16 v16, v11

    .line 197
    .line 198
    move-object v11, v10

    .line 199
    move/from16 v6, v16

    .line 200
    .line 201
    invoke-direct/range {v7 .. v14}, LC1/X1;-><init>(ILjava/io/File;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    iput-object v7, v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->q:LC1/X1;

    .line 205
    .line 206
    iput-object v5, v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/GameDetailActivity;->q()LC1/Z0;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    invoke-virtual {v7, v5}, LC1/Z0;->a(Lcom/minhub/gamehub/data/Game;)V

    .line 213
    .line 214
    .line 215
    iget-object v7, v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->q:LC1/X1;

    .line 216
    .line 217
    if-nez v7, :cond_8

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_8
    invoke-static {v0, v5, v7}, Lcom/bumptech/glide/c;->G(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;LC1/X1;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-static {v0, v5, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 232
    .line 233
    .line 234
    :cond_9
    :goto_6
    invoke-static {v4}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    if-eqz v4, :cond_b

    .line 239
    .line 240
    iget-object v4, v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->q:LC1/X1;

    .line 241
    .line 242
    if-nez v4, :cond_a

    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_a
    move-object v3, v4

    .line 246
    :goto_7
    const v4, 0x7f12013e

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    const/16 v6, 0x1f

    .line 254
    .line 255
    const/4 v7, 0x0

    .line 256
    invoke-static {v3, v7, v5, v6}, LC1/X1;->a(LC1/X1;Ljava/util/List;Ljava/lang/String;I)LC1/X1;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    iput-object v3, v0, Lcom/minhub/gamehub/hub/GameDetailActivity;->q:LC1/X1;

    .line 261
    .line 262
    invoke-static {v0, v2, v3}, Lcom/bumptech/glide/c;->G(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;LC1/X1;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-static {v0, v2, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 274
    .line 275
    .line 276
    :cond_b
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 277
    .line 278
    :goto_8
    return-object v4

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
