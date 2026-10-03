.class public final LC1/J0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public b:I

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Lcom/minhub/gamehub/hub/GameDetailActivity;

.field public final synthetic e:Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;

.field public final synthetic f:Lcom/minhub/gamehub/data/Game;

.field public final synthetic g:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;Lcom/minhub/gamehub/data/Game;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC1/J0;->c:Ljava/io/File;

    .line 2
    .line 3
    iput-object p2, p0, LC1/J0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 4
    .line 5
    iput-object p3, p0, LC1/J0;->e:Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;

    .line 6
    .line 7
    iput-object p4, p0, LC1/J0;->f:Lcom/minhub/gamehub/data/Game;

    .line 8
    .line 9
    iput-object p5, p0, LC1/J0;->g:Ljava/io/File;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, LC1/J0;

    .line 2
    .line 3
    iget-object v4, p0, LC1/J0;->f:Lcom/minhub/gamehub/data/Game;

    .line 4
    .line 5
    iget-object v5, p0, LC1/J0;->g:Ljava/io/File;

    .line 6
    .line 7
    iget-object v1, p0, LC1/J0;->c:Ljava/io/File;

    .line 8
    .line 9
    iget-object v2, p0, LC1/J0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 10
    .line 11
    iget-object v3, p0, LC1/J0;->e:Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, LC1/J0;-><init>(Ljava/io/File;Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;Lcom/minhub/gamehub/data/Game;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
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
    invoke-virtual {p0, p1, p2}, LC1/J0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, LC1/J0;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, LC1/J0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, LC1/J0;->b:I

    .line 6
    .line 7
    iget-object v2, p0, LC1/J0;->c:Ljava/io/File;

    .line 8
    .line 9
    iget-object v3, p0, LC1/J0;->e:Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-ne v1, v4, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, LV1/H;->b:Lc2/c;

    .line 32
    .line 33
    new-instance v1, LC1/I0;

    .line 34
    .line 35
    iget-object v5, p0, LC1/J0;->g:Ljava/io/File;

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    invoke-direct {v1, v5, v3, v2, v6}, LC1/I0;-><init>(Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    iput v4, p0, LC1/J0;->b:I

    .line 42
    .line 43
    invoke-static {p1, v1, p0}, LV1/A;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-ne p1, v0, :cond_2

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_2
    :goto_0
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/PluginInstaller$InstallResult;

    .line 51
    .line 52
    invoke-static {v2}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/PluginInstaller$InstallResult;->getSuccess()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-object v1, p0, LC1/J0;->d:Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getTitle()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const v0, 0x7f12034a

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, LC1/J0;->f:Lcom/minhub/gamehub/data/Game;

    .line 87
    .line 88
    invoke-static {v1, p1, v4}, Lcom/bumptech/glide/c;->c(Lcom/minhub/gamehub/hub/GameDetailActivity;Lcom/minhub/gamehub/data/Game;Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/PluginInstaller$InstallResult;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    const-string p1, "unknown error"

    .line 103
    .line 104
    :cond_4
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const v0, 0x7f120349

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v1, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 120
    .line 121
    .line 122
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 123
    .line 124
    return-object p1
.end method
