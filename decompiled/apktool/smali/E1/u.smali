.class public final LE1/u;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public c:I

.field public final synthetic d:LE1/w;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:LL1/a;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(LE1/w;Landroid/content/Context;Landroid/widget/TextView;LL1/a;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p9, p0, LE1/u;->b:I

    iput-object p1, p0, LE1/u;->d:LE1/w;

    iput-object p2, p0, LE1/u;->e:Landroid/content/Context;

    iput-object p3, p0, LE1/u;->f:Landroid/widget/TextView;

    iput-object p4, p0, LE1/u;->g:LL1/a;

    iput-object p5, p0, LE1/u;->h:Ljava/lang/Object;

    iput-object p6, p0, LE1/u;->i:Ljava/lang/Object;

    iput-object p7, p0, LE1/u;->j:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Ly1/v1;Ljava/lang/String;Landroid/content/Context;LL1/a;LE1/w;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LE1/u;->b:I

    .line 2
    iput-object p1, p0, LE1/u;->h:Ljava/lang/Object;

    iput-object p2, p0, LE1/u;->i:Ljava/lang/Object;

    iput-object p3, p0, LE1/u;->e:Landroid/content/Context;

    iput-object p4, p0, LE1/u;->g:LL1/a;

    iput-object p5, p0, LE1/u;->d:LE1/w;

    iput-object p6, p0, LE1/u;->j:Landroid/view/View;

    iput-object p7, p0, LE1/u;->f:Landroid/widget/TextView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    .line 1
    iget p1, p0, LE1/u;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, LE1/u;

    .line 7
    .line 8
    iget-object p1, p0, LE1/u;->h:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v1, p1

    .line 11
    check-cast v1, Ly1/v1;

    .line 12
    .line 13
    iget-object p1, p0, LE1/u;->i:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v2, p1

    .line 16
    check-cast v2, Ljava/lang/String;

    .line 17
    .line 18
    iget-object p1, p0, LE1/u;->j:Landroid/view/View;

    .line 19
    .line 20
    move-object v6, p1

    .line 21
    check-cast v6, Landroid/widget/ProgressBar;

    .line 22
    .line 23
    iget-object v7, p0, LE1/u;->f:Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object v3, p0, LE1/u;->e:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v4, p0, LE1/u;->g:LL1/a;

    .line 28
    .line 29
    iget-object v5, p0, LE1/u;->d:LE1/w;

    .line 30
    .line 31
    move-object v8, p2

    .line 32
    invoke-direct/range {v0 .. v8}, LE1/u;-><init>(Ly1/v1;Ljava/lang/String;Landroid/content/Context;LL1/a;LE1/w;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_0
    move-object v9, p2

    .line 37
    new-instance v1, LE1/u;

    .line 38
    .line 39
    iget-object p1, p0, LE1/u;->h:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v6, p1

    .line 42
    check-cast v6, Landroid/widget/TextView;

    .line 43
    .line 44
    iget-object p1, p0, LE1/u;->i:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v7, p1

    .line 47
    check-cast v7, Landroid/widget/Button;

    .line 48
    .line 49
    iget-object p1, p0, LE1/u;->j:Landroid/view/View;

    .line 50
    .line 51
    move-object v8, p1

    .line 52
    check-cast v8, Landroid/widget/Button;

    .line 53
    .line 54
    const/4 v10, 0x1

    .line 55
    iget-object v2, p0, LE1/u;->d:LE1/w;

    .line 56
    .line 57
    iget-object v3, p0, LE1/u;->e:Landroid/content/Context;

    .line 58
    .line 59
    iget-object v4, p0, LE1/u;->f:Landroid/widget/TextView;

    .line 60
    .line 61
    iget-object v5, p0, LE1/u;->g:LL1/a;

    .line 62
    .line 63
    invoke-direct/range {v1 .. v10}, LE1/u;-><init>(LE1/w;Landroid/content/Context;Landroid/widget/TextView;LL1/a;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/coroutines/Continuation;I)V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :pswitch_1
    move-object v9, p2

    .line 68
    new-instance v1, LE1/u;

    .line 69
    .line 70
    iget-object p1, p0, LE1/u;->h:Ljava/lang/Object;

    .line 71
    .line 72
    move-object v6, p1

    .line 73
    check-cast v6, Landroid/widget/TextView;

    .line 74
    .line 75
    iget-object p1, p0, LE1/u;->i:Ljava/lang/Object;

    .line 76
    .line 77
    move-object v7, p1

    .line 78
    check-cast v7, Landroid/widget/Button;

    .line 79
    .line 80
    iget-object p1, p0, LE1/u;->j:Landroid/view/View;

    .line 81
    .line 82
    move-object v8, p1

    .line 83
    check-cast v8, Landroid/widget/Button;

    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    iget-object v2, p0, LE1/u;->d:LE1/w;

    .line 87
    .line 88
    iget-object v3, p0, LE1/u;->e:Landroid/content/Context;

    .line 89
    .line 90
    iget-object v4, p0, LE1/u;->f:Landroid/widget/TextView;

    .line 91
    .line 92
    iget-object v5, p0, LE1/u;->g:LL1/a;

    .line 93
    .line 94
    invoke-direct/range {v1 .. v10}, LE1/u;-><init>(LE1/w;Landroid/content/Context;Landroid/widget/TextView;LL1/a;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/coroutines/Continuation;I)V

    .line 95
    .line 96
    .line 97
    return-object v1

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LE1/u;->b:I

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
    invoke-virtual {p0, p1, p2}, LE1/u;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, LE1/u;

    .line 15
    .line 16
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, LE1/u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, LE1/u;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, LE1/u;

    .line 28
    .line 29
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, LE1/u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :pswitch_1
    invoke-virtual {p0, p1, p2}, LE1/u;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, LE1/u;

    .line 41
    .line 42
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, LE1/u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget v0, v6, LE1/u;->b:I

    .line 4
    .line 5
    const v1, 0x7f120355

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object v4, v6, LE1/u;->f:Landroid/widget/TextView;

    .line 11
    .line 12
    iget-object v5, v6, LE1/u;->j:Landroid/view/View;

    .line 13
    .line 14
    iget-object v7, v6, LE1/u;->i:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v8, v6, LE1/u;->h:Ljava/lang/Object;

    .line 17
    .line 18
    const-string v9, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    const/4 v10, 0x1

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v11

    .line 28
    iget v0, v6, LE1/u;->c:I

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    if-ne v0, v10, :cond_0

    .line 33
    .line 34
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    move-object/from16 v0, p1

    .line 38
    .line 39
    check-cast v0, Lkotlin/Result;

    .line 40
    .line 41
    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Ly1/y1;->a:Ly1/y1;

    .line 56
    .line 57
    move-object v1, v8

    .line 58
    check-cast v1, Ly1/v1;

    .line 59
    .line 60
    move-object v2, v7

    .line 61
    check-cast v2, Ljava/lang/String;

    .line 62
    .line 63
    check-cast v5, Landroid/widget/ProgressBar;

    .line 64
    .line 65
    new-instance v0, LA1/r;

    .line 66
    .line 67
    const/4 v3, 0x5

    .line 68
    iget-object v7, v6, LE1/u;->d:LE1/w;

    .line 69
    .line 70
    invoke-direct {v0, v7, v5, v4, v3}, LA1/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    iput v10, v6, LE1/u;->c:I

    .line 74
    .line 75
    move-object v4, v0

    .line 76
    sget-object v0, Ly1/y1;->a:Ly1/y1;

    .line 77
    .line 78
    iget-object v3, v6, LE1/u;->e:Landroid/content/Context;

    .line 79
    .line 80
    iget-object v5, v6, LE1/u;->g:LL1/a;

    .line 81
    .line 82
    invoke-virtual/range {v0 .. v6}, Ly1/y1;->i(Ly1/v1;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;LL1/a;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-ne v0, v11, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    :goto_1
    return-object v11

    .line 94
    :pswitch_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget v11, v6, LE1/u;->c:I

    .line 99
    .line 100
    iget-object v13, v6, LE1/u;->g:LL1/a;

    .line 101
    .line 102
    iget-object v12, v6, LE1/u;->e:Landroid/content/Context;

    .line 103
    .line 104
    if-eqz v11, :cond_4

    .line 105
    .line 106
    if-ne v11, v10, :cond_3

    .line 107
    .line 108
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    sget-object v9, LV1/H;->b:Lc2/c;

    .line 122
    .line 123
    new-instance v11, LE1/t;

    .line 124
    .line 125
    invoke-direct {v11, v12, v13, v2, v10}, LE1/t;-><init>(Landroid/content/Context;LL1/a;Lkotlin/coroutines/Continuation;I)V

    .line 126
    .line 127
    .line 128
    iput v10, v6, LE1/u;->c:I

    .line 129
    .line 130
    invoke-static {v9, v11, v6}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-ne v2, v0, :cond_5

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_5
    :goto_2
    iget-object v15, v6, LE1/u;->d:LE1/w;

    .line 138
    .line 139
    iget-object v0, v15, LE1/w;->b:LM1/g;

    .line 140
    .line 141
    if-nez v0, :cond_6

    .line 142
    .line 143
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v15, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v12, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    .line 164
    .line 165
    move-object v14, v8

    .line 166
    check-cast v14, Landroid/widget/TextView;

    .line 167
    .line 168
    move-object/from16 v16, v7

    .line 169
    .line 170
    check-cast v16, Landroid/widget/Button;

    .line 171
    .line 172
    move-object/from16 v17, v5

    .line 173
    .line 174
    check-cast v17, Landroid/widget/Button;

    .line 175
    .line 176
    invoke-static/range {v12 .. v17}, LE1/w;->e(Landroid/content/Context;LL1/a;Landroid/widget/TextView;LE1/w;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 177
    .line 178
    .line 179
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 180
    .line 181
    :goto_3
    return-object v0

    .line 182
    :pswitch_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget v11, v6, LE1/u;->c:I

    .line 187
    .line 188
    iget-object v13, v6, LE1/u;->g:LL1/a;

    .line 189
    .line 190
    iget-object v12, v6, LE1/u;->e:Landroid/content/Context;

    .line 191
    .line 192
    if-eqz v11, :cond_8

    .line 193
    .line 194
    if-ne v11, v10, :cond_7

    .line 195
    .line 196
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 201
    .line 202
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v0

    .line 206
    :cond_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    sget-object v9, LV1/H;->b:Lc2/c;

    .line 210
    .line 211
    new-instance v11, LE1/t;

    .line 212
    .line 213
    invoke-direct {v11, v12, v13, v2, v3}, LE1/t;-><init>(Landroid/content/Context;LL1/a;Lkotlin/coroutines/Continuation;I)V

    .line 214
    .line 215
    .line 216
    iput v10, v6, LE1/u;->c:I

    .line 217
    .line 218
    invoke-static {v9, v11, v6}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    if-ne v2, v0, :cond_9

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_9
    :goto_4
    iget-object v15, v6, LE1/u;->d:LE1/w;

    .line 226
    .line 227
    iget-object v0, v15, LE1/w;->b:LM1/g;

    .line 228
    .line 229
    if-nez v0, :cond_a

    .line 230
    .line 231
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_a
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v15, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v12, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 251
    .line 252
    .line 253
    move-object v14, v8

    .line 254
    check-cast v14, Landroid/widget/TextView;

    .line 255
    .line 256
    move-object/from16 v16, v7

    .line 257
    .line 258
    check-cast v16, Landroid/widget/Button;

    .line 259
    .line 260
    move-object/from16 v17, v5

    .line 261
    .line 262
    check-cast v17, Landroid/widget/Button;

    .line 263
    .line 264
    invoke-static/range {v12 .. v17}, LE1/w;->d(Landroid/content/Context;LL1/a;Landroid/widget/TextView;LE1/w;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 265
    .line 266
    .line 267
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 268
    .line 269
    :goto_5
    return-object v0

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
