.class public final synthetic LC1/S;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:LB1/d;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(LB1/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC1/S;->a:LB1/d;

    .line 5
    .line 6
    iput p2, p0, LC1/S;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, LC1/S;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, LC1/S;->a:LB1/d;

    .line 9
    .line 10
    invoke-virtual {v2, v0, v1}, LB1/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "null cannot be cast to non-null type com.minhub.gamehub.hub.catalog.CatalogFetchResult.Fresh"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast v0, Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult$Fresh;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult$Fresh;->getPage()Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->getGames()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
