.class public final LC1/I0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC1/I0;->b:Ljava/io/File;

    .line 2
    .line 3
    iput-object p2, p0, LC1/I0;->c:Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;

    .line 4
    .line 5
    iput-object p3, p0, LC1/I0;->d:Ljava/io/File;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance p1, LC1/I0;

    .line 2
    .line 3
    iget-object v0, p0, LC1/I0;->c:Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;

    .line 4
    .line 5
    iget-object v1, p0, LC1/I0;->d:Ljava/io/File;

    .line 6
    .line 7
    iget-object v2, p0, LC1/I0;->b:Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {p1, v2, v0, v1, p2}, LC1/I0;-><init>(Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
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
    invoke-virtual {p0, p1, p2}, LC1/I0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, LC1/I0;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, LC1/I0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lcom/minhub/gamehub/hub/catalog/PluginInstaller;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/PluginInstaller;

    .line 8
    .line 9
    iget-object v0, p0, LC1/I0;->c:Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;

    .line 10
    .line 11
    iget-object v1, p0, LC1/I0;->d:Ljava/io/File;

    .line 12
    .line 13
    iget-object v2, p0, LC1/I0;->b:Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {p1, v2, v0, v1}, Lcom/minhub/gamehub/hub/catalog/PluginInstaller;->install(Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;Ljava/io/File;)Lcom/minhub/gamehub/hub/catalog/PluginInstaller$InstallResult;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
