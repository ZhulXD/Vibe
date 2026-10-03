.class public final LC1/N1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public c:I

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LC1/N1;->b:I

    .line 1
    iput-object p2, p0, LC1/N1;->d:Landroid/content/Context;

    iput p1, p0, LC1/N1;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LC1/N1;->b:I

    .line 2
    iput-object p1, p0, LC1/N1;->d:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p1, p0, LC1/N1;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, LC1/N1;

    .line 7
    .line 8
    iget-object v0, p0, LC1/N1;->d:Landroid/content/Context;

    .line 9
    .line 10
    iget v1, p0, LC1/N1;->c:I

    .line 11
    .line 12
    invoke-direct {p1, v1, v0, p2}, LC1/N1;-><init>(ILandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_0
    new-instance p1, LC1/N1;

    .line 17
    .line 18
    iget-object v0, p0, LC1/N1;->d:Landroid/content/Context;

    .line 19
    .line 20
    check-cast v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 21
    .line 22
    invoke-direct {p1, v0, p2}, LC1/N1;-><init>(Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;Lkotlin/coroutines/Continuation;)V

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
    iget v0, p0, LC1/N1;->b:I

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
    invoke-virtual {p0, p1, p2}, LC1/N1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, LC1/N1;

    .line 15
    .line 16
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, LC1/N1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, LC1/N1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, LC1/N1;

    .line 28
    .line 29
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, LC1/N1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LC1/N1;->b:I

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
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/minhub/gamehub/data/GameRepository;

    .line 15
    .line 16
    iget-object v2, v0, LC1/N1;->d:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/minhub/gamehub/data/GameRepository;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iget v2, v0, LC1/N1;->c:I

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v1, v2, v3}, Lcom/minhub/gamehub/data/GameRepository;->addPlaytime(II)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    .line 32
    return-object v1

    .line 33
    :pswitch_0
    iget-object v1, v0, LC1/N1;->d:Landroid/content/Context;

    .line 34
    .line 35
    check-cast v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 36
    .line 37
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget v3, v0, LC1/N1;->c:I

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    const/4 v5, 0x0

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    if-ne v3, v4, :cond_0

    .line 48
    .line 49
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    move-object/from16 v3, p1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object v3, LV1/H;->b:Lc2/c;

    .line 67
    .line 68
    new-instance v6, LC1/M1;

    .line 69
    .line 70
    const/4 v7, 0x1

    .line 71
    invoke-direct {v6, v1, v5, v7}, LC1/M1;-><init>(Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;Lkotlin/coroutines/Continuation;I)V

    .line 72
    .line 73
    .line 74
    iput v4, v0, LC1/N1;->c:I

    .line 75
    .line 76
    invoke-static {v3, v6, v0}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-ne v3, v2, :cond_2

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_2
    :goto_0
    check-cast v3, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 84
    .line 85
    if-eqz v3, :cond_6

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getContentHtml()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_6

    .line 96
    .line 97
    iget-object v2, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 98
    .line 99
    const-string v4, "item"

    .line 100
    .line 101
    if-nez v2, :cond_3

    .line 102
    .line 103
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    move-object v6, v5

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    move-object v6, v2

    .line 109
    :goto_1
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getContentHtml()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v14

    .line 113
    const v25, 0x1ffbf

    .line 114
    .line 115
    .line 116
    const/16 v26, 0x0

    .line 117
    .line 118
    const-wide/16 v7, 0x0

    .line 119
    .line 120
    const/4 v9, 0x0

    .line 121
    const/4 v10, 0x0

    .line 122
    const/4 v11, 0x0

    .line 123
    const/4 v12, 0x0

    .line 124
    const/4 v13, 0x0

    .line 125
    const/4 v15, 0x0

    .line 126
    const/16 v16, 0x0

    .line 127
    .line 128
    const/16 v17, 0x0

    .line 129
    .line 130
    const/16 v18, 0x0

    .line 131
    .line 132
    const/16 v19, 0x0

    .line 133
    .line 134
    const/16 v20, 0x0

    .line 135
    .line 136
    const/16 v21, 0x0

    .line 137
    .line 138
    const/16 v22, 0x0

    .line 139
    .line 140
    const/16 v23, 0x0

    .line 141
    .line 142
    const/16 v24, 0x0

    .line 143
    .line 144
    invoke-static/range {v6 .. v26}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->copy$default(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iput-object v2, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 149
    .line 150
    iget-object v2, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->e:Lw1/f;

    .line 151
    .line 152
    if-nez v2, :cond_4

    .line 153
    .line 154
    const-string v2, "b"

    .line 155
    .line 156
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    move-object v2, v5

    .line 160
    :cond_4
    iget-object v2, v2, Lw1/f;->x:Landroid/widget/TextView;

    .line 161
    .line 162
    iget-object v1, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 163
    .line 164
    if-nez v1, :cond_5

    .line 165
    .line 166
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_5
    move-object v5, v1

    .line 171
    :goto_2
    invoke-static {v5}, La/a;->C(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 179
    .line 180
    :goto_3
    return-object v2

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
