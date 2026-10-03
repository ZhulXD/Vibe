.class public final LC1/E0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public b:I

.field public final synthetic c:Le/g;

.field public final synthetic d:Ly1/v1;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/minhub/gamehub/hub/GameDetailActivity;

.field public final synthetic g:LL1/a;

.field public final synthetic h:Landroid/widget/ProgressBar;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/g;Ly1/v1;Ljava/lang/String;Lcom/minhub/gamehub/hub/GameDetailActivity;LL1/a;Landroid/widget/ProgressBar;Landroid/widget/TextView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC1/E0;->c:Le/g;

    .line 2
    .line 3
    iput-object p2, p0, LC1/E0;->d:Ly1/v1;

    .line 4
    .line 5
    iput-object p3, p0, LC1/E0;->e:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, LC1/E0;->f:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 8
    .line 9
    iput-object p5, p0, LC1/E0;->g:LL1/a;

    .line 10
    .line 11
    iput-object p6, p0, LC1/E0;->h:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    iput-object p7, p0, LC1/E0;->i:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p8, p0, LC1/E0;->j:Ljava/lang/String;

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
    new-instance v0, LC1/E0;

    .line 2
    .line 3
    iget-object v7, p0, LC1/E0;->i:Landroid/widget/TextView;

    .line 4
    .line 5
    iget-object v8, p0, LC1/E0;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, LC1/E0;->c:Le/g;

    .line 8
    .line 9
    iget-object v2, p0, LC1/E0;->d:Ly1/v1;

    .line 10
    .line 11
    iget-object v3, p0, LC1/E0;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, p0, LC1/E0;->f:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 14
    .line 15
    iget-object v5, p0, LC1/E0;->g:LL1/a;

    .line 16
    .line 17
    iget-object v6, p0, LC1/E0;->h:Landroid/widget/ProgressBar;

    .line 18
    .line 19
    move-object v9, p2

    .line 20
    invoke-direct/range {v0 .. v9}, LC1/E0;-><init>(Le/g;Ly1/v1;Ljava/lang/String;Lcom/minhub/gamehub/hub/GameDetailActivity;LL1/a;Landroid/widget/ProgressBar;Landroid/widget/TextView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, LC1/E0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, LC1/E0;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, LC1/E0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, LC1/E0;->b:I

    .line 6
    .line 7
    iget-object v5, p0, LC1/E0;->f:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 8
    .line 9
    const/4 v10, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v10, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, LV1/H;->b:Lc2/c;

    .line 30
    .line 31
    new-instance v2, LC1/D0;

    .line 32
    .line 33
    iget-object v8, p0, LC1/E0;->i:Landroid/widget/TextView;

    .line 34
    .line 35
    const/4 v9, 0x0

    .line 36
    iget-object v3, p0, LC1/E0;->d:Ly1/v1;

    .line 37
    .line 38
    iget-object v4, p0, LC1/E0;->e:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v6, p0, LC1/E0;->g:LL1/a;

    .line 41
    .line 42
    iget-object v7, p0, LC1/E0;->h:Landroid/widget/ProgressBar;

    .line 43
    .line 44
    invoke-direct/range {v2 .. v9}, LC1/D0;-><init>(Ly1/v1;Ljava/lang/String;Lcom/minhub/gamehub/hub/GameDetailActivity;LL1/a;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    iput v10, p0, LC1/E0;->b:I

    .line 48
    .line 49
    invoke-static {p1, v2, p0}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne p1, v0, :cond_2

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    :goto_0
    check-cast p1, Lkotlin/Result;

    .line 57
    .line 58
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v0, p0, LC1/E0;->c:Le/g;

    .line 63
    .line 64
    invoke-virtual {v0}, Le/D;->dismiss()V

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    move-object v0, p1

    .line 74
    check-cast v0, Lkotlin/Unit;

    .line 75
    .line 76
    const v0, 0x7f1200ee

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, LC1/E0;->j:Ljava/lang/String;

    .line 80
    .line 81
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-static {v5, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    .line 96
    .line 97
    iget-object v0, v5, Lcom/minhub/gamehub/hub/GameDetailActivity;->g:Lcom/minhub/gamehub/data/Game;

    .line 98
    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    :try_start_0
    invoke-static {v5, v0, v10}, Lcom/bumptech/glide/c;->c(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Z)V

    .line 103
    .line 104
    .line 105
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 106
    .line 107
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_6

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-nez p1, :cond_5

    .line 132
    .line 133
    const-string p1, ""

    .line 134
    .line 135
    :cond_5
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const v0, 0x7f1200ed

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {v5, p1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 151
    .line 152
    .line 153
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 154
    .line 155
    return-object p1
.end method
