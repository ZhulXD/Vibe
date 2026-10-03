.class public final LC1/O0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, LC1/O0;->b:I

    iput-object p1, p0, LC1/O0;->c:Ljava/lang/Object;

    iput-object p2, p0, LC1/O0;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 2
    iput p3, p0, LC1/O0;->b:I

    iput-object p1, p0, LC1/O0;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    iget v0, p0, LC1/O0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, LC1/O0;

    .line 7
    .line 8
    iget-object v0, p0, LC1/O0;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroid/app/Activity;

    .line 11
    .line 12
    iget-object v1, p0, LC1/O0;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Landroid/content/Intent;

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-direct {p1, v0, v1, p2, v2}, LC1/O0;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_0
    new-instance p1, LC1/O0;

    .line 22
    .line 23
    iget-object v0, p0, LC1/O0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Landroid/webkit/WebView;

    .line 26
    .line 27
    iget-object v1, p0, LC1/O0;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    const/4 v2, 0x3

    .line 32
    invoke-direct {p1, v0, v1, p2, v2}, LC1/O0;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_1
    new-instance v0, LC1/O0;

    .line 37
    .line 38
    iget-object v1, p0, LC1/O0;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Lcom/minhub/gamehub/hub/HubActivity;

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-direct {v0, v1, p2, v2}, LC1/O0;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 44
    .line 45
    .line 46
    iput-object p1, v0, LC1/O0;->c:Ljava/lang/Object;

    .line 47
    .line 48
    return-object v0

    .line 49
    :pswitch_2
    new-instance p1, LC1/O0;

    .line 50
    .line 51
    iget-object v0, p0, LC1/O0;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lcom/minhub/gamehub/hub/HubActivity;

    .line 54
    .line 55
    iget-object v1, p0, LC1/O0;->d:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, LA1/y;

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    invoke-direct {p1, v0, v1, p2, v2}, LC1/O0;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    :pswitch_3
    new-instance v0, LC1/O0;

    .line 65
    .line 66
    iget-object v1, p0, LC1/O0;->d:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Ljava/lang/String;

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-direct {v0, v1, p2, v2}, LC1/O0;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 72
    .line 73
    .line 74
    iput-object p1, v0, LC1/O0;->c:Ljava/lang/Object;

    .line 75
    .line 76
    return-object v0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LC1/O0;->b:I

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
    invoke-virtual {p0, p1, p2}, LC1/O0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, LC1/O0;

    .line 15
    .line 16
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, LC1/O0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, LC1/O0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, LC1/O0;

    .line 28
    .line 29
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, LC1/O0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :pswitch_1
    invoke-virtual {p0, p1, p2}, LC1/O0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, LC1/O0;

    .line 41
    .line 42
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, LC1/O0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :pswitch_2
    invoke-virtual {p0, p1, p2}, LC1/O0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, LC1/O0;

    .line 54
    .line 55
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, LC1/O0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :pswitch_3
    invoke-virtual {p0, p1, p2}, LC1/O0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, LC1/O0;

    .line 67
    .line 68
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, LC1/O0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, LC1/O0;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, LC1/O0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, LC1/O0;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Landroid/app/Activity;

    .line 19
    .line 20
    check-cast v3, Landroid/content/Intent;

    .line 21
    .line 22
    invoke-virtual {p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p1

    .line 31
    :pswitch_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, LC1/O0;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Landroid/webkit/WebView;

    .line 40
    .line 41
    check-cast v3, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p1

    .line 49
    :pswitch_1
    const-string v0, "getApplicationContext(...)"

    .line 50
    .line 51
    iget-object v4, p0, LC1/O0;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v4, LV1/x;

    .line 54
    .line 55
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    check-cast v3, Lcom/minhub/gamehub/hub/HubActivity;

    .line 62
    .line 63
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 64
    .line 65
    sget-object p1, Lcom/minhub/gamehub/data/GameStorageMaintenance;->INSTANCE:Lcom/minhub/gamehub/data/GameStorageMaintenance;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v4}, Lcom/minhub/gamehub/data/GameStorageMaintenance;->sweepEmptyGameFolders(Landroid/content/Context;)I

    .line 75
    .line 76
    .line 77
    sget-object p1, Lcom/minhub/gamehub/data/GameInstallRepair;->INSTANCE:Lcom/minhub/gamehub/data/GameInstallRepair;

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v4}, Lcom/minhub/gamehub/data/GameInstallRepair;->repairAll(Landroid/content/Context;)I

    .line 87
    .line 88
    .line 89
    sget-object p1, Ly1/B1;->a:Ljava/util/List;

    .line 90
    .line 91
    invoke-virtual {v3, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Ly1/B1;->a(Ljava/io/File;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    filled-new-array {p1, v0}, [Ljava/io/File;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_0

    .line 132
    .line 133
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Ljava/io/File;

    .line 138
    .line 139
    new-instance v3, Ljava/io/File;

    .line 140
    .line 141
    const-string v4, "games"

    .line 142
    .line 143
    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catchall_0
    move-exception p1

    .line 151
    goto :goto_2

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    :goto_1
    if-ge v2, p1, :cond_1

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    add-int/lit8 v2, v2, 0x1

    .line 163
    .line 164
    check-cast v1, Ljava/io/File;

    .line 165
    .line 166
    invoke-static {v1}, Ly1/X;->b(Ljava/io/File;)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 171
    .line 172
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 177
    .line 178
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 186
    .line 187
    return-object p1

    .line 188
    :pswitch_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    new-instance p1, LO0/b;

    .line 195
    .line 196
    iget-object v0, p0, LC1/O0;->c:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v0, Lcom/minhub/gamehub/hub/HubActivity;

    .line 199
    .line 200
    invoke-direct {p1, v0, v2}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 201
    .line 202
    .line 203
    iget-object v1, p1, Le/f;->c:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v1, Le/b;

    .line 206
    .line 207
    const-string v4, "Resume game launch?"

    .line 208
    .line 209
    iput-object v4, v1, Le/b;->d:Ljava/lang/CharSequence;

    .line 210
    .line 211
    const-string v4, "A previous game launch did not finish."

    .line 212
    .line 213
    iput-object v4, v1, Le/b;->f:Ljava/lang/CharSequence;

    .line 214
    .line 215
    check-cast v3, LA1/y;

    .line 216
    .line 217
    new-instance v1, LC1/h1;

    .line 218
    .line 219
    invoke-direct {v1, v0, v3, v2}, LC1/h1;-><init>(Lcom/minhub/gamehub/hub/HubActivity;LA1/y;I)V

    .line 220
    .line 221
    .line 222
    const-string v2, "Retry"

    .line 223
    .line 224
    invoke-virtual {p1, v2, v1}, LO0/b;->i(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    new-instance v1, LC1/h1;

    .line 228
    .line 229
    const/4 v2, 0x1

    .line 230
    invoke-direct {v1, v0, v3, v2}, LC1/h1;-><init>(Lcom/minhub/gamehub/hub/HubActivity;LA1/y;I)V

    .line 231
    .line 232
    .line 233
    const-string v0, "Cancel"

    .line 234
    .line 235
    invoke-virtual {p1, v0, v1}, LO0/b;->g(Ljava/lang/String;LC1/h1;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Le/f;->e()Le/g;

    .line 239
    .line 240
    .line 241
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 242
    .line 243
    return-object p1

    .line 244
    :pswitch_3
    iget-object v0, p0, LC1/O0;->c:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v0, LV1/x;

    .line 247
    .line 248
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    check-cast v3, Ljava/lang/String;

    .line 255
    .line 256
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 257
    .line 258
    new-instance p1, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogRepository;

    .line 259
    .line 260
    const/4 v0, 0x3

    .line 261
    invoke-direct {p1, v1, v1, v0, v1}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogRepository;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v3}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogRepository;->fetch(Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogResponse;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 272
    goto :goto_4

    .line 273
    :catchall_1
    move-exception p1

    .line 274
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 275
    .line 276
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    return-object p1

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
