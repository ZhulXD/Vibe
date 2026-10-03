.class public final LC1/D0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public c:I

.field public final synthetic d:Landroid/widget/ProgressBar;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Lcom/minhub/gamehub/hub/GameDetailActivity;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/ProgressBar;Ljava/lang/String;Landroid/widget/TextView;Lcom/minhub/gamehub/hub/GameDetailActivity;LC1/j0;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LC1/D0;->b:I

    .line 1
    iput-object p1, p0, LC1/D0;->d:Landroid/widget/ProgressBar;

    iput-object p2, p0, LC1/D0;->e:Ljava/lang/String;

    iput-object p3, p0, LC1/D0;->f:Landroid/widget/TextView;

    iput-object p4, p0, LC1/D0;->g:Lcom/minhub/gamehub/hub/GameDetailActivity;

    iput-object p5, p0, LC1/D0;->h:Ljava/lang/Object;

    iput-object p6, p0, LC1/D0;->i:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Ly1/v1;Ljava/lang/String;Lcom/minhub/gamehub/hub/GameDetailActivity;LL1/a;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LC1/D0;->b:I

    .line 2
    iput-object p1, p0, LC1/D0;->h:Ljava/lang/Object;

    iput-object p2, p0, LC1/D0;->e:Ljava/lang/String;

    iput-object p3, p0, LC1/D0;->g:Lcom/minhub/gamehub/hub/GameDetailActivity;

    iput-object p4, p0, LC1/D0;->i:Ljava/lang/Object;

    iput-object p5, p0, LC1/D0;->d:Landroid/widget/ProgressBar;

    iput-object p6, p0, LC1/D0;->f:Landroid/widget/TextView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    iget p1, p0, LC1/D0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, LC1/D0;

    .line 7
    .line 8
    iget-object p1, p0, LC1/D0;->h:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v5, p1

    .line 11
    check-cast v5, LC1/j0;

    .line 12
    .line 13
    iget-object p1, p0, LC1/D0;->i:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v6, p1

    .line 16
    check-cast v6, Landroid/view/View;

    .line 17
    .line 18
    iget-object v1, p0, LC1/D0;->d:Landroid/widget/ProgressBar;

    .line 19
    .line 20
    iget-object v2, p0, LC1/D0;->e:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p0, LC1/D0;->f:Landroid/widget/TextView;

    .line 23
    .line 24
    iget-object v4, p0, LC1/D0;->g:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 25
    .line 26
    move-object v7, p2

    .line 27
    invoke-direct/range {v0 .. v7}, LC1/D0;-><init>(Landroid/widget/ProgressBar;Ljava/lang/String;Landroid/widget/TextView;Lcom/minhub/gamehub/hub/GameDetailActivity;LC1/j0;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_0
    move-object v7, p2

    .line 32
    new-instance v1, LC1/D0;

    .line 33
    .line 34
    iget-object p1, p0, LC1/D0;->h:Ljava/lang/Object;

    .line 35
    .line 36
    move-object v2, p1

    .line 37
    check-cast v2, Ly1/v1;

    .line 38
    .line 39
    iget-object p1, p0, LC1/D0;->i:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v5, p1

    .line 42
    check-cast v5, LL1/a;

    .line 43
    .line 44
    iget-object v6, p0, LC1/D0;->d:Landroid/widget/ProgressBar;

    .line 45
    .line 46
    move-object v8, v7

    .line 47
    iget-object v7, p0, LC1/D0;->f:Landroid/widget/TextView;

    .line 48
    .line 49
    iget-object v3, p0, LC1/D0;->e:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v4, p0, LC1/D0;->g:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 52
    .line 53
    invoke-direct/range {v1 .. v8}, LC1/D0;-><init>(Ly1/v1;Ljava/lang/String;Lcom/minhub/gamehub/hub/GameDetailActivity;LL1/a;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V

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
    iget v0, p0, LC1/D0;->b:I

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
    invoke-virtual {p0, p1, p2}, LC1/D0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, LC1/D0;

    .line 15
    .line 16
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, LC1/D0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, LC1/D0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, LC1/D0;

    .line 28
    .line 29
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, LC1/D0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 14

    .line 1
    iget v0, p0, LC1/D0;->b:I

    .line 2
    .line 3
    iget-object v1, p0, LC1/D0;->i:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, LC1/D0;->h:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, LC1/D0;->d:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    iget-object v6, p0, LC1/D0;->f:Landroid/widget/TextView;

    .line 13
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
    iget v7, p0, LC1/D0;->c:I

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    if-eqz v7, :cond_1

    .line 25
    .line 26
    if-ne v7, v5, :cond_0

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, LV1/H;->b:Lc2/c;

    .line 42
    .line 43
    new-instance v4, LC1/O0;

    .line 44
    .line 45
    iget-object v7, p0, LC1/D0;->e:Ljava/lang/String;

    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    invoke-direct {v4, v7, v9, v8}, LC1/O0;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 49
    .line 50
    .line 51
    iput v5, p0, LC1/D0;->c:I

    .line 52
    .line 53
    invoke-static {p1, v4, p0}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne p1, v0, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    :goto_0
    check-cast p1, Lkotlin/Result;

    .line 61
    .line 62
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/16 v0, 0x8

    .line 67
    .line 68
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    check-cast v2, LC1/j0;

    .line 72
    .line 73
    check-cast v1, Landroid/view/View;

    .line 74
    .line 75
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iget-object v3, p0, LC1/D0;->g:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    move-object v0, p1

    .line 84
    check-cast v0, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogResponse;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogResponse;->getItems()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_3

    .line 95
    .line 96
    const v0, 0x7f120346

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogResponse;->getItems()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v4, "list"

    .line 115
    .line 116
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iput-object v0, v2, LC1/j0;->f:Ljava/lang/Object;

    .line 120
    .line 121
    invoke-virtual {v2}, LP/W;->c()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_5

    .line 132
    .line 133
    const p1, 0x7f120347

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 147
    .line 148
    :goto_2
    return-object v0

    .line 149
    :pswitch_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget v7, p0, LC1/D0;->c:I

    .line 154
    .line 155
    if-eqz v7, :cond_7

    .line 156
    .line 157
    if-ne v7, v5, :cond_6

    .line 158
    .line 159
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    check-cast p1, Lkotlin/Result;

    .line 163
    .line 164
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    goto :goto_3

    .line 169
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 170
    .line 171
    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    sget-object p1, Ly1/y1;->a:Ly1/y1;

    .line 179
    .line 180
    move-object v8, v2

    .line 181
    check-cast v8, Ly1/v1;

    .line 182
    .line 183
    new-instance v11, LA1/r;

    .line 184
    .line 185
    const/4 p1, 0x2

    .line 186
    iget-object v10, p0, LC1/D0;->g:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 187
    .line 188
    invoke-direct {v11, v10, v3, v6, p1}, LA1/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 189
    .line 190
    .line 191
    move-object v12, v1

    .line 192
    check-cast v12, LL1/a;

    .line 193
    .line 194
    iput v5, p0, LC1/D0;->c:I

    .line 195
    .line 196
    sget-object v7, Ly1/y1;->a:Ly1/y1;

    .line 197
    .line 198
    iget-object v9, p0, LC1/D0;->e:Ljava/lang/String;

    .line 199
    .line 200
    move-object v13, p0

    .line 201
    invoke-virtual/range {v7 .. v13}, Ly1/y1;->i(Ly1/v1;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;LL1/a;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    if-ne p1, v0, :cond_8

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_8
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    :goto_4
    return-object v0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
