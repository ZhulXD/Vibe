.class public final LC1/w0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public c:I

.field public final synthetic d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LS1/c;Lcom/minhub/gamehub/data/Game;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p5, p0, LC1/w0;->b:I

    iput-object p1, p0, LC1/w0;->d:Ljava/lang/Object;

    iput-object p2, p0, LC1/w0;->e:Ljava/lang/Object;

    iput-object p3, p0, LC1/w0;->f:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LC1/w0;->b:I

    .line 2
    iput-object p1, p0, LC1/w0;->d:Ljava/lang/Object;

    iput-object p2, p0, LC1/w0;->f:Ljava/lang/Object;

    iput-object p3, p0, LC1/w0;->e:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/KeyEvent$Callback;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 3
    iput p5, p0, LC1/w0;->b:I

    iput-object p1, p0, LC1/w0;->e:Ljava/lang/Object;

    iput-object p2, p0, LC1/w0;->d:Ljava/lang/Object;

    iput-object p3, p0, LC1/w0;->f:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 4
    iput p4, p0, LC1/w0;->b:I

    iput-object p1, p0, LC1/w0;->d:Ljava/lang/Object;

    iput-object p2, p0, LC1/w0;->f:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    iget v0, p0, LC1/w0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v1, LC1/w0;

    .line 7
    .line 8
    iget-object p1, p0, LC1/w0;->d:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v2, p1

    .line 11
    check-cast v2, Lcom/minhub/gamehub/game/SplashGameActivity;

    .line 12
    .line 13
    iget-object p1, p0, LC1/w0;->e:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v3, p1

    .line 16
    check-cast v3, Lcom/minhub/gamehub/data/Game;

    .line 17
    .line 18
    iget-object p1, p0, LC1/w0;->f:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v4, p1

    .line 21
    check-cast v4, Ljava/lang/String;

    .line 22
    .line 23
    const/4 v6, 0x7

    .line 24
    move-object v5, p2

    .line 25
    invoke-direct/range {v1 .. v6}, LC1/w0;-><init>(LS1/c;Lcom/minhub/gamehub/data/Game;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :pswitch_0
    move-object v6, p2

    .line 30
    new-instance v2, LC1/w0;

    .line 31
    .line 32
    iget-object p1, p0, LC1/w0;->e:Ljava/lang/Object;

    .line 33
    .line 34
    move-object v3, p1

    .line 35
    check-cast v3, LS1/b;

    .line 36
    .line 37
    iget-object p1, p0, LC1/w0;->d:Ljava/lang/Object;

    .line 38
    .line 39
    move-object v4, p1

    .line 40
    check-cast v4, Landroid/webkit/WebView;

    .line 41
    .line 42
    iget-object p1, p0, LC1/w0;->f:Ljava/lang/Object;

    .line 43
    .line 44
    move-object v5, p1

    .line 45
    check-cast v5, Ljava/lang/String;

    .line 46
    .line 47
    const/4 v7, 0x6

    .line 48
    invoke-direct/range {v2 .. v7}, LC1/w0;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent$Callback;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)V

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :pswitch_1
    move-object v6, p2

    .line 53
    new-instance p1, LC1/w0;

    .line 54
    .line 55
    iget-object p2, p0, LC1/w0;->d:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p2, Lcom/minhub/gamehub/game/GameActivity;

    .line 58
    .line 59
    iget-object v0, p0, LC1/w0;->f:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, LQ1/d;

    .line 62
    .line 63
    iget-object v1, p0, LC1/w0;->e:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Lcom/minhub/gamehub/data/Game;

    .line 66
    .line 67
    invoke-direct {p1, p2, v0, v1, v6}, LC1/w0;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;)V

    .line 68
    .line 69
    .line 70
    return-object p1

    .line 71
    :pswitch_2
    move-object v6, p2

    .line 72
    new-instance v2, LC1/w0;

    .line 73
    .line 74
    iget-object p1, p0, LC1/w0;->d:Ljava/lang/Object;

    .line 75
    .line 76
    move-object v3, p1

    .line 77
    check-cast v3, Lcom/minhub/gamehub/game/GameActivity;

    .line 78
    .line 79
    iget-object p1, p0, LC1/w0;->e:Ljava/lang/Object;

    .line 80
    .line 81
    move-object v4, p1

    .line 82
    check-cast v4, Lcom/minhub/gamehub/data/Game;

    .line 83
    .line 84
    iget-object p1, p0, LC1/w0;->f:Ljava/lang/Object;

    .line 85
    .line 86
    move-object v5, p1

    .line 87
    check-cast v5, Ljava/lang/String;

    .line 88
    .line 89
    const/4 v7, 0x4

    .line 90
    invoke-direct/range {v2 .. v7}, LC1/w0;-><init>(LS1/c;Lcom/minhub/gamehub/data/Game;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 91
    .line 92
    .line 93
    return-object v2

    .line 94
    :pswitch_3
    move-object v6, p2

    .line 95
    new-instance p2, LC1/w0;

    .line 96
    .line 97
    iget-object v0, p0, LC1/w0;->d:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, LY1/c;

    .line 100
    .line 101
    iget-object v1, p0, LC1/w0;->f:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v1, LA1/d;

    .line 104
    .line 105
    const/4 v2, 0x3

    .line 106
    invoke-direct {p2, v0, v1, v6, v2}, LC1/w0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 107
    .line 108
    .line 109
    iput-object p1, p2, LC1/w0;->e:Ljava/lang/Object;

    .line 110
    .line 111
    return-object p2

    .line 112
    :pswitch_4
    move-object v6, p2

    .line 113
    new-instance p1, LC1/w0;

    .line 114
    .line 115
    iget-object p2, p0, LC1/w0;->d:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p2, LA1/y;

    .line 118
    .line 119
    iget-object v0, p0, LC1/w0;->f:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Lcom/minhub/gamehub/hub/HubActivity;

    .line 122
    .line 123
    const/4 v1, 0x2

    .line 124
    invoke-direct {p1, p2, v0, v6, v1}, LC1/w0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 125
    .line 126
    .line 127
    return-object p1

    .line 128
    :pswitch_5
    move-object v6, p2

    .line 129
    new-instance v2, LC1/w0;

    .line 130
    .line 131
    iget-object p1, p0, LC1/w0;->d:Ljava/lang/Object;

    .line 132
    .line 133
    move-object v3, p1

    .line 134
    check-cast v3, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 135
    .line 136
    iget-object p1, p0, LC1/w0;->e:Ljava/lang/Object;

    .line 137
    .line 138
    move-object v4, p1

    .line 139
    check-cast v4, Lcom/minhub/gamehub/data/Game;

    .line 140
    .line 141
    iget-object p1, p0, LC1/w0;->f:Ljava/lang/Object;

    .line 142
    .line 143
    move-object v5, p1

    .line 144
    check-cast v5, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 145
    .line 146
    const/4 v7, 0x1

    .line 147
    invoke-direct/range {v2 .. v7}, LC1/w0;-><init>(LS1/c;Lcom/minhub/gamehub/data/Game;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 148
    .line 149
    .line 150
    return-object v2

    .line 151
    :pswitch_6
    move-object v6, p2

    .line 152
    new-instance v2, LC1/w0;

    .line 153
    .line 154
    iget-object p1, p0, LC1/w0;->e:Ljava/lang/Object;

    .line 155
    .line 156
    move-object v3, p1

    .line 157
    check-cast v3, Lcom/minhub/gamehub/data/Game;

    .line 158
    .line 159
    iget-object p1, p0, LC1/w0;->d:Ljava/lang/Object;

    .line 160
    .line 161
    move-object v4, p1

    .line 162
    check-cast v4, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 163
    .line 164
    iget-object p1, p0, LC1/w0;->f:Ljava/lang/Object;

    .line 165
    .line 166
    move-object v5, p1

    .line 167
    check-cast v5, Ljava/lang/String;

    .line 168
    .line 169
    const/4 v7, 0x0

    .line 170
    invoke-direct/range {v2 .. v7}, LC1/w0;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent$Callback;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)V

    .line 171
    .line 172
    .line 173
    return-object v2

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
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
    iget v0, p0, LC1/w0;->b:I

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
    invoke-virtual {p0, p1, p2}, LC1/w0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, LC1/w0;

    .line 15
    .line 16
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, LC1/w0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, LC1/w0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, LC1/w0;

    .line 28
    .line 29
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, LC1/w0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :pswitch_1
    invoke-virtual {p0, p1, p2}, LC1/w0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, LC1/w0;

    .line 41
    .line 42
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, LC1/w0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :pswitch_2
    invoke-virtual {p0, p1, p2}, LC1/w0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, LC1/w0;

    .line 54
    .line 55
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, LC1/w0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :pswitch_3
    invoke-virtual {p0, p1, p2}, LC1/w0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, LC1/w0;

    .line 67
    .line 68
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, LC1/w0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :pswitch_4
    invoke-virtual {p0, p1, p2}, LC1/w0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, LC1/w0;

    .line 80
    .line 81
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, LC1/w0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    :pswitch_5
    invoke-virtual {p0, p1, p2}, LC1/w0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, LC1/w0;

    .line 93
    .line 94
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 95
    .line 96
    invoke-virtual {p1, p2}, LC1/w0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    :pswitch_6
    invoke-virtual {p0, p1, p2}, LC1/w0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, LC1/w0;

    .line 106
    .line 107
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, LC1/w0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    return-object p1

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
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
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LC1/w0;->b:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v1, LC1/w0;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/minhub/gamehub/data/Game;

    .line 14
    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, v1, LC1/w0;->c:I

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object v3, LA1/B;->a:LA1/B;

    .line 41
    .line 42
    iget-object v5, v1, LC1/w0;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, Lcom/minhub/gamehub/game/SplashGameActivity;

    .line 45
    .line 46
    invoke-virtual {v3, v5, v5}, LA1/B;->a(Landroid/content/Context;Landroid/app/Activity;)LA1/y;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    iget-object v0, v1, LC1/w0;->f:Ljava/lang/Object;

    .line 63
    .line 64
    move-object v10, v0

    .line 65
    check-cast v10, Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 71
    .line 72
    .line 73
    move-result-wide v5

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v11, "splash-"

    .line 77
    .line 78
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    sget-object v13, LA1/c0;->c:LA1/c0;

    .line 89
    .line 90
    const-string v0, "engine"

    .line 91
    .line 92
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string v0, "gamePath"

    .line 96
    .line 97
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v0, "processName"

    .line 101
    .line 102
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v0, "requestId"

    .line 106
    .line 107
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v0, "source"

    .line 111
    .line 112
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v5, LA1/e0;

    .line 116
    .line 117
    const-wide/16 v11, 0x0

    .line 118
    .line 119
    const/16 v14, 0x20

    .line 120
    .line 121
    invoke-direct/range {v5 .. v14}, LA1/e0;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLA1/c0;I)V

    .line 122
    .line 123
    .line 124
    iput v4, v1, LC1/w0;->c:I

    .line 125
    .line 126
    invoke-virtual {v3, v5, v1}, LA1/y;->f(LA1/e0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-ne v0, v2, :cond_2

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    :goto_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 134
    .line 135
    :goto_1
    return-object v2

    .line 136
    :pswitch_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget v5, v1, LC1/w0;->c:I

    .line 141
    .line 142
    if-eqz v5, :cond_4

    .line 143
    .line 144
    if-ne v5, v4, :cond_3

    .line 145
    .line 146
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 151
    .line 152
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 153
    .line 154
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :try_start_0
    iget-object v5, v1, LC1/w0;->e:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v5, LS1/b;

    .line 164
    .line 165
    iget-object v5, v5, LS1/b;->a:Ljava/io/File;

    .line 166
    .line 167
    invoke-static {v5}, Ly1/L1;->A(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .line 169
    .line 170
    :catch_0
    sget-object v5, LV1/H;->a:Lc2/d;

    .line 171
    .line 172
    sget-object v5, La2/p;->a:LW1/d;

    .line 173
    .line 174
    new-instance v6, LC1/O0;

    .line 175
    .line 176
    iget-object v7, v1, LC1/w0;->d:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v7, Landroid/webkit/WebView;

    .line 179
    .line 180
    iget-object v8, v1, LC1/w0;->f:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v8, Ljava/lang/String;

    .line 183
    .line 184
    invoke-direct {v6, v7, v8, v3, v2}, LC1/O0;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 185
    .line 186
    .line 187
    iput v4, v1, LC1/w0;->c:I

    .line 188
    .line 189
    invoke-static {v5, v6, v1}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    if-ne v2, v0, :cond_5

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_5
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 197
    .line 198
    :goto_3
    return-object v0

    .line 199
    :pswitch_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iget v2, v1, LC1/w0;->c:I

    .line 204
    .line 205
    if-eqz v2, :cond_7

    .line 206
    .line 207
    if-ne v2, v4, :cond_6

    .line 208
    .line 209
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    move-object/from16 v2, p1

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 216
    .line 217
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 218
    .line 219
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    sget-object v2, LV1/H;->b:Lc2/c;

    .line 227
    .line 228
    new-instance v5, Ly1/L;

    .line 229
    .line 230
    iget-object v6, v1, LC1/w0;->e:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v6, Lcom/minhub/gamehub/data/Game;

    .line 233
    .line 234
    iget-object v7, v1, LC1/w0;->d:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v7, Lcom/minhub/gamehub/game/GameActivity;

    .line 237
    .line 238
    invoke-direct {v5, v6, v7, v3}, Ly1/L;-><init>(Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/game/GameActivity;Lkotlin/coroutines/Continuation;)V

    .line 239
    .line 240
    .line 241
    iput v4, v1, LC1/w0;->c:I

    .line 242
    .line 243
    invoke-static {v2, v5, v1}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    if-ne v2, v0, :cond_8

    .line 248
    .line 249
    goto :goto_8

    .line 250
    :cond_8
    :goto_4
    check-cast v2, LQ1/a;

    .line 251
    .line 252
    iget-object v0, v1, LC1/w0;->d:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v0, Lcom/minhub/gamehub/game/GameActivity;

    .line 255
    .line 256
    iget-object v3, v1, LC1/w0;->f:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v3, LQ1/d;

    .line 259
    .line 260
    invoke-virtual {v0, v3}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_a

    .line 265
    .line 266
    iget-object v0, v1, LC1/w0;->f:Ljava/lang/Object;

    .line 267
    .line 268
    move-object v3, v0

    .line 269
    check-cast v3, LQ1/d;

    .line 270
    .line 271
    monitor-enter v3

    .line 272
    :try_start_1
    const-string v0, "value"

    .line 273
    .line 274
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-boolean v0, v3, LQ1/d;->c:Z

    .line 278
    .line 279
    if-eqz v0, :cond_9

    .line 280
    .line 281
    iput-object v2, v3, LQ1/d;->k:LQ1/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :catchall_0
    move-exception v0

    .line 285
    goto :goto_6

    .line 286
    :cond_9
    :goto_5
    monitor-exit v3

    .line 287
    goto :goto_7

    .line 288
    :goto_6
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    throw v0

    .line 290
    :cond_a
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 291
    .line 292
    :goto_8
    return-object v0

    .line 293
    :pswitch_2
    iget-object v0, v1, LC1/w0;->e:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v0, Lcom/minhub/gamehub/data/Game;

    .line 296
    .line 297
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    iget v3, v1, LC1/w0;->c:I

    .line 302
    .line 303
    if-eqz v3, :cond_c

    .line 304
    .line 305
    if-ne v3, v4, :cond_b

    .line 306
    .line 307
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    goto :goto_9

    .line 311
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 312
    .line 313
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 314
    .line 315
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw v0

    .line 319
    :cond_c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    sget-object v3, LA1/B;->a:LA1/B;

    .line 323
    .line 324
    iget-object v5, v1, LC1/w0;->d:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v5, Lcom/minhub/gamehub/game/GameActivity;

    .line 327
    .line 328
    invoke-virtual {v3, v5, v5}, LA1/B;->a(Landroid/content/Context;Landroid/app/Activity;)LA1/y;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v9

    .line 344
    iget-object v0, v1, LC1/w0;->f:Ljava/lang/Object;

    .line 345
    .line 346
    move-object v10, v0

    .line 347
    check-cast v10, Ljava/lang/String;

    .line 348
    .line 349
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 353
    .line 354
    .line 355
    move-result-wide v5

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    const-string v11, "native-redispatch-"

    .line 359
    .line 360
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    sget-object v13, LA1/c0;->d:LA1/c0;

    .line 371
    .line 372
    const-string v0, "engine"

    .line 373
    .line 374
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    const-string v0, "gamePath"

    .line 378
    .line 379
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    const-string v0, "processName"

    .line 383
    .line 384
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    const-string v0, "requestId"

    .line 388
    .line 389
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    const-string v0, "source"

    .line 393
    .line 394
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    new-instance v5, LA1/e0;

    .line 398
    .line 399
    const-wide/16 v11, 0x0

    .line 400
    .line 401
    const/16 v14, 0x20

    .line 402
    .line 403
    invoke-direct/range {v5 .. v14}, LA1/e0;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLA1/c0;I)V

    .line 404
    .line 405
    .line 406
    iput v4, v1, LC1/w0;->c:I

    .line 407
    .line 408
    invoke-virtual {v3, v5, v1}, LA1/y;->f(LA1/e0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    if-ne v0, v2, :cond_d

    .line 413
    .line 414
    goto :goto_a

    .line 415
    :cond_d
    :goto_9
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 416
    .line 417
    :goto_a
    return-object v2

    .line 418
    :pswitch_3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iget v5, v1, LC1/w0;->c:I

    .line 423
    .line 424
    if-eqz v5, :cond_f

    .line 425
    .line 426
    if-ne v5, v4, :cond_e

    .line 427
    .line 428
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    goto :goto_c

    .line 432
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 433
    .line 434
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 435
    .line 436
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    throw v0

    .line 440
    :cond_f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    iget-object v5, v1, LC1/w0;->e:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast v5, LV1/x;

    .line 446
    .line 447
    iget-object v6, v1, LC1/w0;->d:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v6, LY1/c;

    .line 450
    .line 451
    iget-object v7, v1, LC1/w0;->f:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v7, LA1/d;

    .line 454
    .line 455
    iget-object v8, v7, LA1/d;->c:Ljava/lang/Object;

    .line 456
    .line 457
    check-cast v8, Lkotlin/coroutines/CoroutineContext;

    .line 458
    .line 459
    new-instance v9, LC1/i1;

    .line 460
    .line 461
    const/4 v10, 0x4

    .line 462
    invoke-direct {v9, v7, v3, v10}, LC1/i1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 463
    .line 464
    .line 465
    new-instance v3, LX1/b;

    .line 466
    .line 467
    sget-object v7, LX1/f;->a:LX1/e;

    .line 468
    .line 469
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    .line 471
    .line 472
    sget v7, LX1/e;->b:I

    .line 473
    .line 474
    invoke-direct {v3, v7}, LX1/b;-><init>(I)V

    .line 475
    .line 476
    .line 477
    invoke-interface {v5}, LV1/x;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    invoke-static {v5, v8, v4}, LV1/q;->a(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Z)Lkotlin/coroutines/CoroutineContext;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    sget-object v7, LV1/H;->a:Lc2/d;

    .line 486
    .line 487
    if-eq v5, v7, :cond_10

    .line 488
    .line 489
    sget-object v8, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 490
    .line 491
    invoke-interface {v5, v8}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 492
    .line 493
    .line 494
    move-result-object v8

    .line 495
    if-nez v8, :cond_10

    .line 496
    .line 497
    invoke-interface {v5, v7}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 498
    .line 499
    .line 500
    move-result-object v5

    .line 501
    :cond_10
    new-instance v7, LX1/o;

    .line 502
    .line 503
    invoke-direct {v7, v5, v3}, LX1/g;-><init>(Lkotlin/coroutines/CoroutineContext;LX1/b;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v7, v2, v7, v9}, LV1/a;->L(ILV1/a;Lkotlin/jvm/functions/Function2;)V

    .line 507
    .line 508
    .line 509
    iput v4, v1, LC1/w0;->c:I

    .line 510
    .line 511
    invoke-static {v6, v7, v4, v1}, LY1/i;->a(LY1/c;LX1/o;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    if-ne v2, v3, :cond_11

    .line 520
    .line 521
    goto :goto_b

    .line 522
    :cond_11
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 523
    .line 524
    :goto_b
    if-ne v2, v0, :cond_12

    .line 525
    .line 526
    goto :goto_d

    .line 527
    :cond_12
    :goto_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 528
    .line 529
    :goto_d
    return-object v0

    .line 530
    :pswitch_4
    iget-object v0, v1, LC1/w0;->d:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast v0, LA1/y;

    .line 533
    .line 534
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    iget v3, v1, LC1/w0;->c:I

    .line 539
    .line 540
    const/4 v5, 0x2

    .line 541
    if-eqz v3, :cond_15

    .line 542
    .line 543
    if-eq v3, v4, :cond_14

    .line 544
    .line 545
    if-ne v3, v5, :cond_13

    .line 546
    .line 547
    iget-object v0, v1, LC1/w0;->e:Ljava/lang/Object;

    .line 548
    .line 549
    check-cast v0, Ljava/lang/String;

    .line 550
    .line 551
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    move-object/from16 v0, p1

    .line 555
    .line 556
    goto :goto_f

    .line 557
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 558
    .line 559
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 560
    .line 561
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    throw v0

    .line 565
    :cond_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    move-object/from16 v3, p1

    .line 569
    .line 570
    goto :goto_e

    .line 571
    :cond_15
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    iput v4, v1, LC1/w0;->c:I

    .line 575
    .line 576
    invoke-virtual {v0, v1}, LA1/y;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    if-ne v3, v2, :cond_16

    .line 581
    .line 582
    goto :goto_10

    .line 583
    :cond_16
    :goto_e
    check-cast v3, Ljava/lang/String;

    .line 584
    .line 585
    if-eqz v3, :cond_18

    .line 586
    .line 587
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    iput-object v4, v1, LC1/w0;->e:Ljava/lang/Object;

    .line 592
    .line 593
    iput v5, v1, LC1/w0;->c:I

    .line 594
    .line 595
    invoke-virtual {v0, v3, v1}, LA1/y;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    if-ne v0, v2, :cond_17

    .line 600
    .line 601
    goto :goto_10

    .line 602
    :cond_17
    :goto_f
    check-cast v0, LA1/m0;

    .line 603
    .line 604
    iget-object v2, v1, LC1/w0;->f:Ljava/lang/Object;

    .line 605
    .line 606
    check-cast v2, Lcom/minhub/gamehub/hub/HubActivity;

    .line 607
    .line 608
    invoke-static {v2, v0}, Lcom/minhub/gamehub/hub/HubActivity;->m(Lcom/minhub/gamehub/hub/HubActivity;LA1/m0;)V

    .line 609
    .line 610
    .line 611
    :cond_18
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 612
    .line 613
    :goto_10
    return-object v2

    .line 614
    :pswitch_5
    iget-object v0, v1, LC1/w0;->e:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast v0, Lcom/minhub/gamehub/data/Game;

    .line 617
    .line 618
    iget-object v2, v1, LC1/w0;->f:Ljava/lang/Object;

    .line 619
    .line 620
    check-cast v2, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 621
    .line 622
    iget-object v5, v1, LC1/w0;->d:Ljava/lang/Object;

    .line 623
    .line 624
    check-cast v5, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 625
    .line 626
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v6

    .line 630
    iget v7, v1, LC1/w0;->c:I

    .line 631
    .line 632
    if-eqz v7, :cond_1a

    .line 633
    .line 634
    if-ne v7, v4, :cond_19

    .line 635
    .line 636
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    move-object/from16 v3, p1

    .line 640
    .line 641
    goto :goto_11

    .line 642
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 643
    .line 644
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 645
    .line 646
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    throw v0

    .line 650
    :cond_1a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 651
    .line 652
    .line 653
    sget-object v7, LV1/H;->b:Lc2/c;

    .line 654
    .line 655
    new-instance v8, LC1/T0;

    .line 656
    .line 657
    invoke-direct {v8, v5, v0, v2, v3}, LC1/T0;-><init>(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;Lkotlin/coroutines/Continuation;)V

    .line 658
    .line 659
    .line 660
    iput v4, v1, LC1/w0;->c:I

    .line 661
    .line 662
    invoke-static {v7, v8, v1}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    if-ne v3, v6, :cond_1b

    .line 667
    .line 668
    goto/16 :goto_15

    .line 669
    .line 670
    :cond_1b
    :goto_11
    check-cast v3, Lcom/minhub/gamehub/data/TranslationOverlayResult;

    .line 671
    .line 672
    const/4 v6, 0x0

    .line 673
    iput-boolean v6, v5, Lcom/minhub/gamehub/hub/GameDetailActivity;->m:Z

    .line 674
    .line 675
    const-string v6, ""

    .line 676
    .line 677
    const-string v7, "<set-?>"

    .line 678
    .line 679
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    iput-object v6, v5, Lcom/minhub/gamehub/hub/GameDetailActivity;->n:Ljava/lang/String;

    .line 683
    .line 684
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/TranslationOverlayResult;->getSuccess()Z

    .line 685
    .line 686
    .line 687
    move-result v6

    .line 688
    if-eqz v6, :cond_1d

    .line 689
    .line 690
    iget-object v6, v5, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 691
    .line 692
    if-nez v6, :cond_1c

    .line 693
    .line 694
    move-object v7, v0

    .line 695
    goto :goto_12

    .line 696
    :cond_1c
    move-object v7, v6

    .line 697
    :goto_12
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getLabel()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v29

    .line 701
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getCode()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v30

    .line 705
    const v37, 0x7cfffff

    .line 706
    .line 707
    .line 708
    const/16 v38, 0x0

    .line 709
    .line 710
    const/4 v8, 0x0

    .line 711
    const/4 v9, 0x0

    .line 712
    const/4 v10, 0x0

    .line 713
    const/4 v11, 0x0

    .line 714
    const/4 v12, 0x0

    .line 715
    const/4 v13, 0x0

    .line 716
    const/4 v14, 0x0

    .line 717
    const/4 v15, 0x0

    .line 718
    const/16 v16, 0x0

    .line 719
    .line 720
    const/16 v17, 0x0

    .line 721
    .line 722
    const/16 v18, 0x0

    .line 723
    .line 724
    const/16 v19, 0x0

    .line 725
    .line 726
    const/16 v20, 0x0

    .line 727
    .line 728
    const-wide/16 v21, 0x0

    .line 729
    .line 730
    const/16 v23, 0x0

    .line 731
    .line 732
    const/16 v24, 0x0

    .line 733
    .line 734
    const/16 v25, 0x0

    .line 735
    .line 736
    const/16 v26, 0x0

    .line 737
    .line 738
    const/16 v27, 0x0

    .line 739
    .line 740
    const/16 v28, 0x0

    .line 741
    .line 742
    const/16 v31, 0x0

    .line 743
    .line 744
    const-wide/16 v32, 0x0

    .line 745
    .line 746
    const/16 v34, 0x0

    .line 747
    .line 748
    const/16 v35, 0x0

    .line 749
    .line 750
    const/16 v36, 0x0

    .line 751
    .line 752
    invoke-static/range {v7 .. v38}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    iput-object v0, v5, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 757
    .line 758
    invoke-virtual {v5}, Lcom/minhub/gamehub/hub/GameDetailActivity;->q()LC1/Z0;

    .line 759
    .line 760
    .line 761
    move-result-object v6

    .line 762
    invoke-virtual {v6, v0}, LC1/Z0;->a(Lcom/minhub/gamehub/data/Game;)V

    .line 763
    .line 764
    .line 765
    invoke-static {v5, v0}, Lcom/bumptech/glide/d;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;->getLabel()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/TranslationOverlayResult;->getOverwrittenFiles()I

    .line 773
    .line 774
    .line 775
    move-result v2

    .line 776
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 777
    .line 778
    .line 779
    move-result-object v2

    .line 780
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/TranslationOverlayResult;->getAddedFiles()I

    .line 781
    .line 782
    .line 783
    move-result v3

    .line 784
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    const v2, 0x7f12014a

    .line 793
    .line 794
    .line 795
    invoke-virtual {v5, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    invoke-static {v5, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 804
    .line 805
    .line 806
    goto :goto_14

    .line 807
    :cond_1d
    iget-object v2, v5, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 808
    .line 809
    if-nez v2, :cond_1e

    .line 810
    .line 811
    goto :goto_13

    .line 812
    :cond_1e
    move-object v0, v2

    .line 813
    :goto_13
    invoke-static {v5, v0}, Lcom/bumptech/glide/d;->d(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/TranslationOverlayResult;->getMessage()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 821
    .line 822
    .line 823
    move-result v2

    .line 824
    if-eqz v2, :cond_1f

    .line 825
    .line 826
    const v0, 0x7f1200e3

    .line 827
    .line 828
    .line 829
    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    const-string v2, "getString(...)"

    .line 834
    .line 835
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    :cond_1f
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    const v2, 0x7f120149

    .line 843
    .line 844
    .line 845
    invoke-virtual {v5, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    invoke-static {v5, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 854
    .line 855
    .line 856
    :goto_14
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 857
    .line 858
    :goto_15
    return-object v6

    .line 859
    :pswitch_6
    iget-object v0, v1, LC1/w0;->d:Ljava/lang/Object;

    .line 860
    .line 861
    check-cast v0, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 862
    .line 863
    const-string v2, "GameLaunch"

    .line 864
    .line 865
    iget-object v3, v1, LC1/w0;->e:Ljava/lang/Object;

    .line 866
    .line 867
    check-cast v3, Lcom/minhub/gamehub/data/Game;

    .line 868
    .line 869
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v5

    .line 873
    iget v6, v1, LC1/w0;->c:I

    .line 874
    .line 875
    if-eqz v6, :cond_21

    .line 876
    .line 877
    if-ne v6, v4, :cond_20

    .line 878
    .line 879
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 880
    .line 881
    .line 882
    move-object/from16 v6, p1

    .line 883
    .line 884
    goto/16 :goto_16

    .line 885
    .line 886
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 887
    .line 888
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 889
    .line 890
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    throw v0

    .line 894
    :cond_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 898
    .line 899
    .line 900
    move-result v6

    .line 901
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v7

    .line 905
    new-instance v8, Ljava/lang/StringBuilder;

    .line 906
    .line 907
    const-string v9, "detail.requestLaunch begin gameId="

    .line 908
    .line 909
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    const-string v6, " engine="

    .line 916
    .line 917
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v6

    .line 927
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .line 929
    .line 930
    sget-object v6, LA1/B;->a:LA1/B;

    .line 931
    .line 932
    invoke-virtual {v6, v0, v0}, LA1/B;->a(Landroid/content/Context;Landroid/app/Activity;)LA1/y;

    .line 933
    .line 934
    .line 935
    move-result-object v6

    .line 936
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 937
    .line 938
    .line 939
    move-result v9

    .line 940
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v10

    .line 944
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v11

    .line 948
    iget-object v7, v1, LC1/w0;->f:Ljava/lang/Object;

    .line 949
    .line 950
    move-object v12, v7

    .line 951
    check-cast v12, Ljava/lang/String;

    .line 952
    .line 953
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 954
    .line 955
    .line 956
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 957
    .line 958
    .line 959
    move-result-wide v7

    .line 960
    new-instance v13, Ljava/lang/StringBuilder;

    .line 961
    .line 962
    const-string v14, "detail-"

    .line 963
    .line 964
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 968
    .line 969
    .line 970
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v8

    .line 974
    sget-object v15, LA1/c0;->b:LA1/c0;

    .line 975
    .line 976
    const-string v7, "engine"

    .line 977
    .line 978
    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    const-string v7, "gamePath"

    .line 982
    .line 983
    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    const-string v7, "processName"

    .line 987
    .line 988
    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    const-string v7, "requestId"

    .line 992
    .line 993
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 994
    .line 995
    .line 996
    const-string v7, "source"

    .line 997
    .line 998
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    new-instance v7, LA1/e0;

    .line 1002
    .line 1003
    const-wide/16 v13, 0x0

    .line 1004
    .line 1005
    const/16 v16, 0x20

    .line 1006
    .line 1007
    invoke-direct/range {v7 .. v16}, LA1/e0;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLA1/c0;I)V

    .line 1008
    .line 1009
    .line 1010
    iput v4, v1, LC1/w0;->c:I

    .line 1011
    .line 1012
    invoke-virtual {v6, v7, v1}, LA1/y;->f(LA1/e0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v6

    .line 1016
    if-ne v6, v5, :cond_22

    .line 1017
    .line 1018
    goto/16 :goto_19

    .line 1019
    .line 1020
    :cond_22
    :goto_16
    check-cast v6, LA1/m0;

    .line 1021
    .line 1022
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 1023
    .line 1024
    .line 1025
    move-result v3

    .line 1026
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1027
    .line 1028
    const-string v7, "detail.requestLaunch result="

    .line 1029
    .line 1030
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    .line 1036
    const-string v7, " gameId="

    .line 1037
    .line 1038
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v3

    .line 1048
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    .line 1050
    .line 1051
    sget v2, Lcom/minhub/gamehub/hub/GameDetailActivity;->w:I

    .line 1052
    .line 1053
    const-string v2, "result"

    .line 1054
    .line 1055
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    .line 1057
    .line 1058
    instance-of v2, v6, LA1/i0;

    .line 1059
    .line 1060
    if-eqz v2, :cond_23

    .line 1061
    .line 1062
    goto :goto_18

    .line 1063
    :cond_23
    instance-of v3, v6, LA1/h0;

    .line 1064
    .line 1065
    if-eqz v3, :cond_24

    .line 1066
    .line 1067
    check-cast v6, LA1/h0;

    .line 1068
    .line 1069
    iget-object v2, v6, LA1/h0;->b:LA1/d0;

    .line 1070
    .line 1071
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v2

    .line 1075
    goto :goto_17

    .line 1076
    :cond_24
    instance-of v3, v6, LA1/f0;

    .line 1077
    .line 1078
    if-eqz v3, :cond_25

    .line 1079
    .line 1080
    const-string v2, "UNKNOWN_SESSION"

    .line 1081
    .line 1082
    goto :goto_17

    .line 1083
    :cond_25
    instance-of v3, v6, LA1/l0;

    .line 1084
    .line 1085
    if-eqz v3, :cond_26

    .line 1086
    .line 1087
    const-string v2, "WAITING_FOR_CLOSE"

    .line 1088
    .line 1089
    goto :goto_17

    .line 1090
    :cond_26
    instance-of v3, v6, LA1/j0;

    .line 1091
    .line 1092
    if-eqz v3, :cond_27

    .line 1093
    .line 1094
    const-string v2, "RUNTIME_INSTALL_REQUIRED"

    .line 1095
    .line 1096
    goto :goto_17

    .line 1097
    :cond_27
    instance-of v3, v6, LA1/k0;

    .line 1098
    .line 1099
    if-eqz v3, :cond_28

    .line 1100
    .line 1101
    const-string v2, "SUPERSEDED"

    .line 1102
    .line 1103
    goto :goto_17

    .line 1104
    :cond_28
    sget-object v3, LA1/g0;->a:LA1/g0;

    .line 1105
    .line 1106
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1107
    .line 1108
    .line 1109
    move-result v3

    .line 1110
    if-eqz v3, :cond_29

    .line 1111
    .line 1112
    const-string v2, "CANCELLED"

    .line 1113
    .line 1114
    :goto_17
    const v3, 0x7f12015d

    .line 1115
    .line 1116
    .line 1117
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v2

    .line 1121
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v2

    .line 1125
    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1130
    .line 1131
    .line 1132
    goto :goto_18

    .line 1133
    :cond_29
    if-eqz v2, :cond_2a

    .line 1134
    .line 1135
    :goto_18
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1136
    .line 1137
    :goto_19
    return-object v5

    .line 1138
    :cond_2a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 1139
    .line 1140
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 1141
    .line 1142
    .line 1143
    throw v0

    .line 1144
    nop

    .line 1145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
