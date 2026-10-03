.class public final LE1/v;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public b:I

.field public final synthetic c:Le/g;

.field public final synthetic d:Ly1/v1;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:LL1/a;

.field public final synthetic h:LE1/w;

.field public final synthetic i:Landroid/widget/ProgressBar;

.field public final synthetic j:Landroid/widget/TextView;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Le/g;Ly1/v1;Ljava/lang/String;Landroid/content/Context;LL1/a;LE1/w;Landroid/widget/ProgressBar;Landroid/widget/TextView;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, LE1/v;->c:Le/g;

    .line 2
    .line 3
    iput-object p2, p0, LE1/v;->d:Ly1/v1;

    .line 4
    .line 5
    iput-object p3, p0, LE1/v;->e:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, LE1/v;->f:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, LE1/v;->g:LL1/a;

    .line 10
    .line 11
    iput-object p6, p0, LE1/v;->h:LE1/w;

    .line 12
    .line 13
    iput-object p7, p0, LE1/v;->i:Landroid/widget/ProgressBar;

    .line 14
    .line 15
    iput-object p8, p0, LE1/v;->j:Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object p9, p0, LE1/v;->k:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p10, p0, LE1/v;->l:Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-direct {p0, p1, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12

    .line 1
    new-instance v0, LE1/v;

    .line 2
    .line 3
    iget-object v9, p0, LE1/v;->k:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v10, p0, LE1/v;->l:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iget-object v1, p0, LE1/v;->c:Le/g;

    .line 8
    .line 9
    iget-object v2, p0, LE1/v;->d:Ly1/v1;

    .line 10
    .line 11
    iget-object v3, p0, LE1/v;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, p0, LE1/v;->f:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v5, p0, LE1/v;->g:LL1/a;

    .line 16
    .line 17
    iget-object v6, p0, LE1/v;->h:LE1/w;

    .line 18
    .line 19
    iget-object v7, p0, LE1/v;->i:Landroid/widget/ProgressBar;

    .line 20
    .line 21
    iget-object v8, p0, LE1/v;->j:Landroid/widget/TextView;

    .line 22
    .line 23
    move-object v11, p2

    .line 24
    invoke-direct/range {v0 .. v11}, LE1/v;-><init>(Le/g;Ly1/v1;Ljava/lang/String;Landroid/content/Context;LL1/a;LE1/w;Landroid/widget/ProgressBar;Landroid/widget/TextView;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
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
    invoke-virtual {p0, p1, p2}, LE1/v;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, LE1/v;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, LE1/v;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, LE1/v;->b:I

    .line 6
    .line 7
    iget-object v5, p0, LE1/v;->f:Landroid/content/Context;

    .line 8
    .line 9
    const/4 v11, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v11, :cond_0

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
    new-instance v2, LE1/u;

    .line 32
    .line 33
    iget-object v9, p0, LE1/v;->j:Landroid/widget/TextView;

    .line 34
    .line 35
    const/4 v10, 0x0

    .line 36
    iget-object v3, p0, LE1/v;->d:Ly1/v1;

    .line 37
    .line 38
    iget-object v4, p0, LE1/v;->e:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v6, p0, LE1/v;->g:LL1/a;

    .line 41
    .line 42
    iget-object v7, p0, LE1/v;->h:LE1/w;

    .line 43
    .line 44
    iget-object v8, p0, LE1/v;->i:Landroid/widget/ProgressBar;

    .line 45
    .line 46
    invoke-direct/range {v2 .. v10}, LE1/u;-><init>(Ly1/v1;Ljava/lang/String;Landroid/content/Context;LL1/a;LE1/w;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V

    .line 47
    .line 48
    .line 49
    iput v11, p0, LE1/v;->b:I

    .line 50
    .line 51
    invoke-static {p1, v2, p0}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p1, v0, :cond_2

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    :goto_0
    check-cast p1, Lkotlin/Result;

    .line 59
    .line 60
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v0, p0, LE1/v;->c:Le/g;

    .line 65
    .line 66
    invoke-virtual {v0}, Le/D;->dismiss()V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iget-object v1, p0, LE1/v;->h:LE1/w;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    move-object v0, p1

    .line 78
    check-cast v0, Lkotlin/Unit;

    .line 79
    .line 80
    const v0, 0x7f1200ee

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, LE1/v;->k:Ljava/lang/String;

    .line 84
    .line 85
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-static {v5, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, LE1/v;->l:Lkotlin/jvm/functions/Function0;

    .line 102
    .line 103
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v2, "Install "

    .line 115
    .line 116
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, LE1/v;->d:Ly1/v1;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v2, " (build="

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, LE1/v;->g:LL1/a;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v2, ") failed"

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v2, "PluginsSettings"

    .line 144
    .line 145
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-nez p1, :cond_4

    .line 153
    .line 154
    const-string p1, ""

    .line 155
    .line 156
    :cond_4
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    const v0, 0x7f1200ed

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v5, p1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 172
    .line 173
    .line 174
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 175
    .line 176
    return-object p1
.end method
