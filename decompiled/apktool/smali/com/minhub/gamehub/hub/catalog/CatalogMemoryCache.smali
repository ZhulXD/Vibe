.class public final Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0016\u001a\u00020\u0006J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0007J\u0006\u0010\u001a\u001a\u00020\u0010J\u0006\u0010\u001b\u001a\u00020\u0018R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;",
        "",
        "<init>",
        "()V",
        "pages",
        "",
        "",
        "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;",
        "fullCatalogItems",
        "",
        "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
        "getFullCatalogItems",
        "()Ljava/util/List;",
        "setFullCatalogItems",
        "(Ljava/util/List;)V",
        "hasHydratedFullCatalog",
        "",
        "getHasHydratedFullCatalog",
        "()Z",
        "setHasHydratedFullCatalog",
        "(Z)V",
        "getPage",
        "page",
        "putPage",
        "",
        "data",
        "hasAnyPage",
        "invalidate",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;

.field private static fullCatalogItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
            ">;"
        }
    .end annotation
.end field

.field private static hasHydratedFullCatalog:Z

.field private static final pages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->pages:Ljava/util/Map;

    .line 14
    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->fullCatalogItems:Ljava/util/List;

    .line 20
    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getFullCatalogItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->fullCatalogItems:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHasHydratedFullCatalog()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->hasHydratedFullCatalog:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPage(I)Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;
    .locals 1

    .line 1
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->pages:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 12
    .line 13
    return-object p1
.end method

.method public final hasAnyPage()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->pages:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->pages:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->fullCatalogItems:Ljava/util/List;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->hasHydratedFullCatalog:Z

    .line 14
    .line 15
    return-void
.end method

.method public final putPage(ILcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->pages:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setFullCatalogItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->fullCatalogItems:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setHasHydratedFullCatalog(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->hasHydratedFullCatalog:Z

    .line 2
    .line 3
    return-void
.end method
