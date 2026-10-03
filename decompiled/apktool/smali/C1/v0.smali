.class public final LC1/v0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public c:I

.field public final synthetic d:Lcom/minhub/gamehub/hub/GameDetailActivity;

.field public final synthetic e:Lcom/minhub/gamehub/data/Game;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Landroid/content/Context;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LC1/v0;->b:I

    sget-object v0, LG1/g;->a:Ljava/lang/String;

    .line 1
    iput-object p1, p0, LC1/v0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    iput-object p2, p0, LC1/v0;->f:Landroid/content/Context;

    iput-object p3, p0, LC1/v0;->e:Lcom/minhub/gamehub/data/Game;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LC1/v0;->b:I

    sget-object v0, LG1/g;->a:Ljava/lang/String;

    .line 2
    iput-object p1, p0, LC1/v0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    iput-object p2, p0, LC1/v0;->e:Lcom/minhub/gamehub/data/Game;

    iput-object p3, p0, LC1/v0;->f:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    .line 1
    iget p1, p0, LC1/v0;->b:I

    .line 2
    .line 3
    iget-object v0, p0, LC1/v0;->f:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, LC1/v0;->e:Lcom/minhub/gamehub/data/Game;

    .line 6
    .line 7
    iget-object v2, p0, LC1/v0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p1, LC1/v0;

    .line 13
    .line 14
    sget-object v3, LG1/g;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {p1, v2, v1, v0, p2}, LC1/v0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :pswitch_0
    new-instance p1, LC1/v0;

    .line 21
    .line 22
    sget-object v3, LG1/g;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {p1, v2, v0, v1, p2}, LC1/v0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Landroid/content/Context;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;)V

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
    iget v0, p0, LC1/v0;->b:I

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
    invoke-virtual {p0, p1, p2}, LC1/v0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, LC1/v0;

    .line 15
    .line 16
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, LC1/v0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, LC1/v0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, LC1/v0;

    .line 28
    .line 29
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, LC1/v0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 9

    .line 1
    iget v0, p0, LC1/v0;->b:I

    .line 2
    .line 3
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 4
    .line 5
    iget-object v2, p0, LC1/v0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, p0, LC1/v0;->e:Lcom/minhub/gamehub/data/Game;

    .line 9
    .line 10
    iget-object v5, p0, LC1/v0;->f:Landroid/content/Context;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v8, p0, LC1/v0;->c:I

    .line 22
    .line 23
    if-eqz v8, :cond_1

    .line 24
    .line 25
    if-ne v8, v7, :cond_0

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, LV1/H;->b:Lc2/c;

    .line 41
    .line 42
    new-instance v1, LC1/u0;

    .line 43
    .line 44
    sget-object v8, LG1/g;->a:Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {v1, v5, v4, v6, v7}, LC1/u0;-><init>(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 47
    .line 48
    .line 49
    iput v7, p0, LC1/v0;->c:I

    .line 50
    .line 51
    invoke-static {p1, v1, p0}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p1, v0, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    :goto_0
    check-cast p1, LG1/e;

    .line 59
    .line 60
    instance-of v0, p1, LG1/b;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    move-object v6, p1

    .line 65
    check-cast v6, LG1/b;

    .line 66
    .line 67
    :cond_3
    if-eqz v6, :cond_5

    .line 68
    .line 69
    iget-boolean p1, v6, LG1/b;->b:Z

    .line 70
    .line 71
    if-nez p1, :cond_5

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_5

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    new-instance p1, LO0/b;

    .line 87
    .line 88
    invoke-direct {p1, v2, v3}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p1, Le/f;->c:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Le/b;

    .line 94
    .line 95
    const v1, 0x7f120163

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, LO0/b;->j(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v7, v6, LG1/b;->a:Ljava/lang/String;

    .line 106
    .line 107
    filled-new-array {v1, v7}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const v7, 0x7f120162

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iput-object v1, v0, Le/b;->f:Ljava/lang/CharSequence;

    .line 119
    .line 120
    sget-object v1, LG1/g;->a:Ljava/lang/String;

    .line 121
    .line 122
    new-instance v1, LC1/s0;

    .line 123
    .line 124
    invoke-direct {v1, v2, v5, v4}, LC1/s0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Landroid/content/Context;Lcom/minhub/gamehub/data/Game;)V

    .line 125
    .line 126
    .line 127
    const v7, 0x7f12015f

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v7, v1}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    new-instance v1, LC1/t0;

    .line 134
    .line 135
    invoke-direct {v1, v5, v4, v6, v2}, LC1/t0;-><init>(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;LG1/b;Lcom/minhub/gamehub/hub/GameDetailActivity;)V

    .line 136
    .line 137
    .line 138
    const v2, 0x7f12033a

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v2, v1}, LO0/b;->f(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    iput-boolean v3, v0, Le/b;->m:Z

    .line 145
    .line 146
    invoke-virtual {p1}, Le/f;->e()Le/g;

    .line 147
    .line 148
    .line 149
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    :goto_1
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-object p1, p1, Lw1/e;->e:Landroid/widget/Button;

    .line 157
    .line 158
    invoke-virtual {p1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 159
    .line 160
    .line 161
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 162
    .line 163
    :goto_2
    return-object v0

    .line 164
    :pswitch_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget v8, p0, LC1/v0;->c:I

    .line 169
    .line 170
    if-eqz v8, :cond_7

    .line 171
    .line 172
    if-ne v8, v7, :cond_6

    .line 173
    .line 174
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 179
    .line 180
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1

    .line 184
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    sget-object p1, LV1/H;->b:Lc2/c;

    .line 188
    .line 189
    new-instance v1, LC1/u0;

    .line 190
    .line 191
    sget-object v8, LG1/g;->a:Ljava/lang/String;

    .line 192
    .line 193
    invoke-direct {v1, v5, v4, v6, v3}, LC1/u0;-><init>(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;I)V

    .line 194
    .line 195
    .line 196
    iput v7, p0, LC1/v0;->c:I

    .line 197
    .line 198
    invoke-static {p1, v1, p0}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    if-ne p1, v0, :cond_8

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_8
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/GameDetailActivity;->n()Lw1/e;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iget-object v0, v0, Lw1/e;->e:Landroid/widget/Button;

    .line 216
    .line 217
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_a

    .line 225
    .line 226
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_a

    .line 231
    .line 232
    if-eqz p1, :cond_9

    .line 233
    .line 234
    const p1, 0x7f12015e

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_9
    const p1, 0x7f120161

    .line 239
    .line 240
    .line 241
    :goto_4
    invoke-static {v2, p1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 246
    .line 247
    .line 248
    :cond_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 249
    .line 250
    :goto_5
    return-object v0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
