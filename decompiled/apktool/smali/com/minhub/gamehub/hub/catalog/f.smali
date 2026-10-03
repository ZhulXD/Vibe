.class public final synthetic Lcom/minhub/gamehub/hub/catalog/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/f;->b:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/String;

    .line 4
    .line 5
    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/f;->b:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0, p1, p2, p3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;->a(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
