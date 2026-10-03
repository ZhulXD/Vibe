.class public final synthetic Lcom/minhub/gamehub/hub/catalog/e;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/minhub/gamehub/hub/catalog/e;->b:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/minhub/gamehub/hub/catalog/e;->b:J

    .line 2
    .line 3
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->h(JLcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
