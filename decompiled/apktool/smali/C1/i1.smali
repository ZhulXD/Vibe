.class public final LC1/i1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public c:I

.field public final synthetic d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Game;ILkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LC1/i1;->b:I

    .line 1
    iput-object p1, p0, LC1/i1;->e:Ljava/lang/Object;

    iput-object p2, p0, LC1/i1;->d:Ljava/lang/Object;

    iput p3, p0, LC1/i1;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 2
    iput p4, p0, LC1/i1;->b:I

    iput-object p1, p0, LC1/i1;->e:Ljava/lang/Object;

    iput-object p2, p0, LC1/i1;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 3
    iput p3, p0, LC1/i1;->b:I

    iput-object p1, p0, LC1/i1;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    iget v0, p0, LC1/i1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, LC1/i1;

    .line 7
    .line 8
    iget-object v0, p0, LC1/i1;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/minhub/gamehub/game/GameActivity;

    .line 11
    .line 12
    iget-object v1, p0, LC1/i1;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lcom/minhub/gamehub/data/Game;

    .line 15
    .line 16
    iget v2, p0, LC1/i1;->c:I

    .line 17
    .line 18
    invoke-direct {p1, v0, v1, v2, p2}, LC1/i1;-><init>(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Game;ILkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    new-instance v0, LC1/i1;

    .line 23
    .line 24
    iget-object v1, p0, LC1/i1;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, LA1/d;

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    invoke-direct {v0, v1, p2, v2}, LC1/i1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, v0, LC1/i1;->e:Ljava/lang/Object;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_1
    new-instance p1, LC1/i1;

    .line 36
    .line 37
    iget-object v0, p0, LC1/i1;->e:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, LE1/w;

    .line 40
    .line 41
    iget-object v1, p0, LC1/i1;->d:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Landroid/content/Context;

    .line 44
    .line 45
    const/4 v2, 0x3

    .line 46
    invoke-direct {p1, v0, v1, p2, v2}, LC1/i1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_2
    new-instance p1, LC1/i1;

    .line 51
    .line 52
    iget-object v0, p0, LC1/i1;->e:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 55
    .line 56
    iget-object v1, p0, LC1/i1;->d:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Landroid/widget/Button;

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    invoke-direct {p1, v0, v1, p2, v2}, LC1/i1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :pswitch_3
    new-instance p1, LC1/i1;

    .line 66
    .line 67
    iget-object v0, p0, LC1/i1;->d:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lcom/minhub/gamehub/hub/HubActivity;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-direct {p1, v0, p2, v1}, LC1/i1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :pswitch_4
    new-instance p1, LC1/i1;

    .line 77
    .line 78
    iget-object v0, p0, LC1/i1;->e:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, LA1/y;

    .line 81
    .line 82
    iget-object v1, p0, LC1/i1;->d:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v1, Lcom/minhub/gamehub/hub/HubActivity;

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    invoke-direct {p1, v0, v1, p2, v2}, LC1/i1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 88
    .line 89
    .line 90
    return-object p1

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LC1/i1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, LV1/x;

    .line 7
    .line 8
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, LC1/i1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, LC1/i1;

    .line 15
    .line 16
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, LC1/i1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    check-cast p1, LX1/p;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, LC1/i1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, LC1/i1;

    .line 32
    .line 33
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, LC1/i1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :pswitch_1
    check-cast p1, LV1/x;

    .line 41
    .line 42
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    invoke-virtual {p0, p1, p2}, LC1/i1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, LC1/i1;

    .line 49
    .line 50
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, LC1/i1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :pswitch_2
    check-cast p1, LV1/x;

    .line 58
    .line 59
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 60
    .line 61
    invoke-virtual {p0, p1, p2}, LC1/i1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, LC1/i1;

    .line 66
    .line 67
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, LC1/i1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :pswitch_3
    check-cast p1, LV1/x;

    .line 75
    .line 76
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 77
    .line 78
    invoke-virtual {p0, p1, p2}, LC1/i1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, LC1/i1;

    .line 83
    .line 84
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, LC1/i1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :pswitch_4
    check-cast p1, LV1/x;

    .line 92
    .line 93
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 94
    .line 95
    invoke-virtual {p0, p1, p2}, LC1/i1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, LC1/i1;

    .line 100
    .line 101
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    .line 103
    invoke-virtual {p1, p2}, LC1/i1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LC1/i1;->b:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    iget-object v6, v0, LC1/i1;->d:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
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
    iget-object v1, v0, LC1/i1;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lcom/minhub/gamehub/game/GameActivity;

    .line 25
    .line 26
    sget v2, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 27
    .line 28
    iget-object v1, v1, Lcom/minhub/gamehub/game/GameActivity;->k:Landroidx/lifecycle/ViewModelLazy;

    .line 29
    .line 30
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, LC1/Z0;

    .line 35
    .line 36
    move-object v7, v6

    .line 37
    check-cast v7, Lcom/minhub/gamehub/data/Game;

    .line 38
    .line 39
    invoke-virtual {v7}, Lcom/minhub/gamehub/data/Game;->getPlaytimeMinutes()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget v3, v0, LC1/i1;->c:I

    .line 44
    .line 45
    add-int v20, v2, v3

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v21

    .line 51
    const v37, 0x7ffcfff

    .line 52
    .line 53
    .line 54
    const/16 v38, 0x0

    .line 55
    .line 56
    const/4 v8, 0x0

    .line 57
    const/4 v9, 0x0

    .line 58
    const/4 v10, 0x0

    .line 59
    const/4 v11, 0x0

    .line 60
    const/4 v12, 0x0

    .line 61
    const/4 v13, 0x0

    .line 62
    const/4 v14, 0x0

    .line 63
    const/4 v15, 0x0

    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    const/16 v17, 0x0

    .line 67
    .line 68
    const/16 v18, 0x0

    .line 69
    .line 70
    const/16 v19, 0x0

    .line 71
    .line 72
    const/16 v23, 0x0

    .line 73
    .line 74
    const/16 v24, 0x0

    .line 75
    .line 76
    const/16 v25, 0x0

    .line 77
    .line 78
    const/16 v26, 0x0

    .line 79
    .line 80
    const/16 v27, 0x0

    .line 81
    .line 82
    const/16 v28, 0x0

    .line 83
    .line 84
    const/16 v29, 0x0

    .line 85
    .line 86
    const/16 v30, 0x0

    .line 87
    .line 88
    const/16 v31, 0x0

    .line 89
    .line 90
    const-wide/16 v32, 0x0

    .line 91
    .line 92
    const/16 v34, 0x0

    .line 93
    .line 94
    const/16 v35, 0x0

    .line 95
    .line 96
    const/16 v36, 0x0

    .line 97
    .line 98
    invoke-static/range {v7 .. v38}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, LC1/Z0;->a(Lcom/minhub/gamehub/data/Game;)V

    .line 103
    .line 104
    .line 105
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 106
    .line 107
    return-object v1

    .line 108
    :pswitch_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget v2, v0, LC1/i1;->c:I

    .line 113
    .line 114
    if-eqz v2, :cond_1

    .line 115
    .line 116
    if-ne v2, v7, :cond_0

    .line 117
    .line 118
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v1

    .line 128
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object v2, v0, LC1/i1;->e:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v2, LX1/p;

    .line 134
    .line 135
    check-cast v6, LA1/d;

    .line 136
    .line 137
    iput v7, v0, LC1/i1;->c:I

    .line 138
    .line 139
    invoke-virtual {v6, v2, v0}, LA1/d;->h(LX1/p;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    if-ne v2, v1, :cond_2

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 147
    .line 148
    :goto_1
    return-object v1

    .line 149
    :pswitch_1
    iget-object v1, v0, LC1/i1;->e:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v1, LE1/w;

    .line 152
    .line 153
    check-cast v6, Landroid/content/Context;

    .line 154
    .line 155
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    iget v9, v0, LC1/i1;->c:I

    .line 160
    .line 161
    if-eqz v9, :cond_4

    .line 162
    .line 163
    if-ne v9, v7, :cond_3

    .line 164
    .line 165
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    move-object/from16 v5, p1

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 172
    .line 173
    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw v1

    .line 177
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    sget-object v5, LV1/H;->b:Lc2/c;

    .line 181
    .line 182
    new-instance v9, LC1/l1;

    .line 183
    .line 184
    invoke-direct {v9, v7, v6, v4}, LC1/l1;-><init>(ILandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 185
    .line 186
    .line 187
    iput v7, v0, LC1/i1;->c:I

    .line 188
    .line 189
    invoke-static {v5, v9, v0}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    if-ne v5, v8, :cond_5

    .line 194
    .line 195
    goto/16 :goto_5

    .line 196
    .line 197
    :cond_5
    :goto_2
    check-cast v5, LG1/i;

    .line 198
    .line 199
    iget-object v8, v1, LE1/w;->b:LM1/g;

    .line 200
    .line 201
    if-nez v8, :cond_6

    .line 202
    .line 203
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 204
    .line 205
    goto/16 :goto_5

    .line 206
    .line 207
    :cond_6
    invoke-virtual {v1, v6}, LE1/w;->b(Landroid/content/Context;)V

    .line 208
    .line 209
    .line 210
    iget-object v8, v1, LE1/w;->b:LM1/g;

    .line 211
    .line 212
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    iget-object v8, v8, LM1/g;->a:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v8, Landroid/widget/Button;

    .line 218
    .line 219
    invoke-virtual {v8, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 220
    .line 221
    .line 222
    invoke-static {v6}, LG1/m;->b(Landroid/content/Context;)I

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    const v10, 0x7f0c0048

    .line 231
    .line 232
    .line 233
    invoke-virtual {v9, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    const v9, 0x7f09037c

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    check-cast v9, Landroid/widget/TextView;

    .line 245
    .line 246
    const v10, 0x7f09037e

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    check-cast v10, Landroid/widget/TextView;

    .line 254
    .line 255
    const v11, 0x7f09037d

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v11

    .line 262
    check-cast v11, Landroid/widget/TextView;

    .line 263
    .line 264
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    const v12, 0x7f060019

    .line 269
    .line 270
    .line 271
    const-string v13, "\u2191"

    .line 272
    .line 273
    if-eqz v5, :cond_b

    .line 274
    .line 275
    if-eq v5, v7, :cond_9

    .line 276
    .line 277
    if-eq v5, v2, :cond_8

    .line 278
    .line 279
    const/4 v2, 0x3

    .line 280
    if-ne v5, v2, :cond_7

    .line 281
    .line 282
    const v2, 0x7f1203a8

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .line 291
    .line 292
    const v2, 0x7f1203ad

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    .line 301
    .line 302
    const-string v13, "!"

    .line 303
    .line 304
    const v12, 0x7f060036

    .line 305
    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_7
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 309
    .line 310
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 311
    .line 312
    .line 313
    throw v1

    .line 314
    :cond_8
    const v2, 0x7f1203a7

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .line 323
    .line 324
    const v2, 0x7f1203a4

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_9
    const v2, 0x7f1203ac

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    .line 344
    .line 345
    if-lez v8, :cond_a

    .line 346
    .line 347
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    const v5, 0x7f1203aa

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v5, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    goto :goto_3

    .line 363
    :cond_a
    const v2, 0x7f1203ab

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    :goto_3
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    .line 372
    .line 373
    const-string v13, "\u2713"

    .line 374
    .line 375
    const v12, 0x7f060313

    .line 376
    .line 377
    .line 378
    goto :goto_4

    .line 379
    :cond_b
    const v2, 0x7f1203a9

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    .line 388
    .line 389
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    const v5, 0x7f1203b0

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1, v5, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    .line 406
    .line 407
    :goto_4
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    .line 409
    .line 410
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 411
    .line 412
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v6, v12}, Landroid/content/Context;->getColor(I)I

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v9, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 426
    .line 427
    .line 428
    new-instance v1, LO0/b;

    .line 429
    .line 430
    invoke-direct {v1, v6, v3}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 431
    .line 432
    .line 433
    iget-object v2, v1, Le/f;->c:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v2, Le/b;

    .line 436
    .line 437
    iput-object v4, v2, Le/b;->t:Landroid/view/View;

    .line 438
    .line 439
    invoke-virtual {v1}, LO0/b;->c()Le/g;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    const-string v2, "create(...)"

    .line 444
    .line 445
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    if-eqz v2, :cond_c

    .line 453
    .line 454
    const v3, 0x106000d

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 458
    .line 459
    .line 460
    :cond_c
    const v2, 0x7f0900c5

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    check-cast v2, Landroid/widget/Button;

    .line 468
    .line 469
    new-instance v3, LC1/z;

    .line 470
    .line 471
    const/4 v4, 0x5

    .line 472
    invoke-direct {v3, v1, v4}, LC1/z;-><init>(Le/g;I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 479
    .line 480
    .line 481
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 482
    .line 483
    :goto_5
    return-object v8

    .line 484
    :pswitch_2
    check-cast v6, Landroid/widget/Button;

    .line 485
    .line 486
    iget-object v1, v0, LC1/i1;->e:Ljava/lang/Object;

    .line 487
    .line 488
    check-cast v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 489
    .line 490
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    iget v8, v0, LC1/i1;->c:I

    .line 495
    .line 496
    if-eqz v8, :cond_e

    .line 497
    .line 498
    if-ne v8, v7, :cond_d

    .line 499
    .line 500
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    move-object/from16 v4, p1

    .line 504
    .line 505
    goto :goto_6

    .line 506
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 507
    .line 508
    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    throw v1

    .line 512
    :cond_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    sget-object v5, LV1/H;->b:Lc2/c;

    .line 516
    .line 517
    new-instance v8, LC1/M1;

    .line 518
    .line 519
    invoke-direct {v8, v1, v4, v3}, LC1/M1;-><init>(Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;Lkotlin/coroutines/Continuation;I)V

    .line 520
    .line 521
    .line 522
    iput v7, v0, LC1/i1;->c:I

    .line 523
    .line 524
    invoke-static {v5, v8, v0}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    if-ne v4, v2, :cond_f

    .line 529
    .line 530
    goto :goto_8

    .line 531
    :cond_f
    :goto_6
    check-cast v4, Ljava/lang/Number;

    .line 532
    .line 533
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 534
    .line 535
    .line 536
    move-result-wide v4

    .line 537
    const-wide/16 v8, 0x0

    .line 538
    .line 539
    cmp-long v2, v4, v8

    .line 540
    .line 541
    if-lez v2, :cond_10

    .line 542
    .line 543
    sget v2, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->i:I

    .line 544
    .line 545
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->o()V

    .line 546
    .line 547
    .line 548
    goto :goto_7

    .line 549
    :cond_10
    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 550
    .line 551
    .line 552
    const v2, 0x7f1203e1

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    .line 561
    .line 562
    const v2, 0x7f1203e0

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 574
    .line 575
    .line 576
    :goto_7
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 577
    .line 578
    :goto_8
    return-object v2

    .line 579
    :pswitch_3
    check-cast v6, Lcom/minhub/gamehub/hub/HubActivity;

    .line 580
    .line 581
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    iget v3, v0, LC1/i1;->c:I

    .line 586
    .line 587
    if-eqz v3, :cond_13

    .line 588
    .line 589
    if-eq v3, v7, :cond_12

    .line 590
    .line 591
    if-ne v3, v2, :cond_11

    .line 592
    .line 593
    iget-object v1, v0, LC1/i1;->e:Ljava/lang/Object;

    .line 594
    .line 595
    check-cast v1, LA1/y;

    .line 596
    .line 597
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 598
    .line 599
    .line 600
    goto :goto_a

    .line 601
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 602
    .line 603
    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    throw v1

    .line 607
    :cond_12
    iget-object v3, v0, LC1/i1;->e:Ljava/lang/Object;

    .line 608
    .line 609
    check-cast v3, LA1/y;

    .line 610
    .line 611
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    move-object/from16 v5, p1

    .line 615
    .line 616
    goto :goto_9

    .line 617
    :cond_13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    sget-object v3, LA1/B;->a:LA1/B;

    .line 621
    .line 622
    invoke-virtual {v3, v6, v6}, LA1/B;->a(Landroid/content/Context;Landroid/app/Activity;)LA1/y;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    iput-object v3, v0, LC1/i1;->e:Ljava/lang/Object;

    .line 627
    .line 628
    iput v7, v0, LC1/i1;->c:I

    .line 629
    .line 630
    invoke-virtual {v3, v0}, LA1/y;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v5

    .line 634
    if-ne v5, v1, :cond_14

    .line 635
    .line 636
    goto :goto_b

    .line 637
    :cond_14
    :goto_9
    if-nez v5, :cond_15

    .line 638
    .line 639
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 640
    .line 641
    goto :goto_b

    .line 642
    :cond_15
    sget-object v5, LV1/H;->a:Lc2/d;

    .line 643
    .line 644
    sget-object v5, La2/p;->a:LW1/d;

    .line 645
    .line 646
    new-instance v8, LC1/O0;

    .line 647
    .line 648
    invoke-direct {v8, v6, v3, v4, v7}, LC1/O0;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 649
    .line 650
    .line 651
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    iput-object v3, v0, LC1/i1;->e:Ljava/lang/Object;

    .line 656
    .line 657
    iput v2, v0, LC1/i1;->c:I

    .line 658
    .line 659
    invoke-static {v5, v8, v0}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    if-ne v2, v1, :cond_16

    .line 664
    .line 665
    goto :goto_b

    .line 666
    :cond_16
    :goto_a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 667
    .line 668
    :goto_b
    return-object v1

    .line 669
    :pswitch_4
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    iget v2, v0, LC1/i1;->c:I

    .line 674
    .line 675
    if-eqz v2, :cond_18

    .line 676
    .line 677
    if-ne v2, v7, :cond_17

    .line 678
    .line 679
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 680
    .line 681
    .line 682
    move-object/from16 v2, p1

    .line 683
    .line 684
    goto :goto_c

    .line 685
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 686
    .line 687
    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    throw v1

    .line 691
    :cond_18
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 692
    .line 693
    .line 694
    iget-object v2, v0, LC1/i1;->e:Ljava/lang/Object;

    .line 695
    .line 696
    check-cast v2, LA1/y;

    .line 697
    .line 698
    iput v7, v0, LC1/i1;->c:I

    .line 699
    .line 700
    invoke-virtual {v2, v0}, LA1/y;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v2

    .line 704
    if-ne v2, v1, :cond_19

    .line 705
    .line 706
    goto :goto_d

    .line 707
    :cond_19
    :goto_c
    check-cast v2, LA1/m0;

    .line 708
    .line 709
    check-cast v6, Lcom/minhub/gamehub/hub/HubActivity;

    .line 710
    .line 711
    invoke-static {v6, v2}, Lcom/minhub/gamehub/hub/HubActivity;->m(Lcom/minhub/gamehub/hub/HubActivity;LA1/m0;)V

    .line 712
    .line 713
    .line 714
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 715
    .line 716
    :goto_d
    return-object v1

    .line 717
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
