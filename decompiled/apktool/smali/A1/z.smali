.class public final LA1/z;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:LA1/Y;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:LA1/L0;

.field public final synthetic k:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public constructor <init>(LA1/Y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;LA1/L0;Landroid/content/BroadcastReceiver$PendingResult;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, LA1/z;->d:LA1/Y;

    .line 2
    .line 3
    iput-object p2, p0, LA1/z;->e:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, LA1/z;->f:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, LA1/z;->g:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, LA1/z;->h:I

    .line 10
    .line 11
    iput-object p6, p0, LA1/z;->i:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, LA1/z;->j:LA1/L0;

    .line 14
    .line 15
    iput-object p8, p0, LA1/z;->k:Landroid/content/BroadcastReceiver$PendingResult;

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    new-instance v0, LA1/z;

    .line 2
    .line 3
    iget-object v7, p0, LA1/z;->j:LA1/L0;

    .line 4
    .line 5
    iget-object v8, p0, LA1/z;->k:Landroid/content/BroadcastReceiver$PendingResult;

    .line 6
    .line 7
    iget-object v1, p0, LA1/z;->d:LA1/Y;

    .line 8
    .line 9
    iget-object v2, p0, LA1/z;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, LA1/z;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, p0, LA1/z;->g:Ljava/lang/String;

    .line 14
    .line 15
    iget v5, p0, LA1/z;->h:I

    .line 16
    .line 17
    iget-object v6, p0, LA1/z;->i:Ljava/lang/String;

    .line 18
    .line 19
    move-object v9, p2

    .line 20
    invoke-direct/range {v0 .. v9}, LA1/z;-><init>(LA1/Y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;LA1/L0;Landroid/content/BroadcastReceiver$PendingResult;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
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
    invoke-virtual {p0, p1, p2}, LA1/z;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, LA1/z;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, LA1/z;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, LA1/z;->c:I

    .line 6
    .line 7
    iget-object v5, p0, LA1/z;->g:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, LA1/z;->f:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, LA1/z;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p0, LA1/z;->d:LA1/Y;

    .line 14
    .line 15
    iget-object v9, p0, LA1/z;->k:Landroid/content/BroadcastReceiver$PendingResult;

    .line 16
    .line 17
    const/4 v8, 0x3

    .line 18
    const/4 v10, 0x2

    .line 19
    const/4 v6, 0x1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    if-eq v1, v6, :cond_2

    .line 23
    .line 24
    if-eq v1, v10, :cond_1

    .line 25
    .line 26
    if-ne v1, v8, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, LA1/z;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, LA1/L0;

    .line 31
    .line 32
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    move-object p1, v0

    .line 38
    goto :goto_4

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    move-object v7, p0

    .line 51
    goto :goto_3

    .line 52
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    move-object v7, p0

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    move p1, v6

    .line 61
    :try_start_2
    iget v6, p0, LA1/z;->h:I

    .line 62
    .line 63
    iput p1, p0, LA1/z;->c:I

    .line 64
    .line 65
    move-object v7, p0

    .line 66
    invoke-virtual/range {v2 .. v7}, LA1/Y;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v0, :cond_4

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    :goto_0
    iget-object p1, v7, LA1/z;->i:Ljava/lang/String;

    .line 74
    .line 75
    const-string v1, "com.minhub.gamehub.action.GAME_SESSION_HEARTBEAT"

    .line 76
    .line 77
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    iget v6, v7, LA1/z;->h:I

    .line 84
    .line 85
    iput v10, v7, LA1/z;->c:I

    .line 86
    .line 87
    invoke-virtual/range {v2 .. v7}, LA1/Y;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-ne p1, v0, :cond_7

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    const-string v1, "com.minhub.gamehub.action.GAME_SESSION_STATUS"

    .line 95
    .line 96
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    move p1, v8

    .line 103
    move-object v8, v7

    .line 104
    iget-object v7, v8, LA1/z;->j:LA1/L0;

    .line 105
    .line 106
    if-eqz v7, :cond_7

    .line 107
    .line 108
    iget v6, v8, LA1/z;->h:I

    .line 109
    .line 110
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iput-object v1, v8, LA1/z;->b:Ljava/lang/Object;

    .line 115
    .line 116
    iput p1, v8, LA1/z;->c:I

    .line 117
    .line 118
    invoke-virtual/range {v2 .. v8}, LA1/Y;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILA1/L0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-ne p1, v0, :cond_6

    .line 123
    .line 124
    :goto_1
    return-object v0

    .line 125
    :cond_6
    :goto_2
    check-cast p1, LA1/M0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .line 127
    :cond_7
    :goto_3
    invoke-virtual {v9}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 128
    .line 129
    .line 130
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 131
    .line 132
    return-object p1

    .line 133
    :goto_4
    invoke-virtual {v9}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 134
    .line 135
    .line 136
    throw p1
.end method
