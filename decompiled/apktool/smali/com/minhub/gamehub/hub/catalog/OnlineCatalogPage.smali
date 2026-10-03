.class public final Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0003JA\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;",
        "",
        "page",
        "",
        "pageSize",
        "totalPages",
        "totalItems",
        "games",
        "",
        "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
        "<init>",
        "(IIIILjava/util/List;)V",
        "getPage",
        "()I",
        "getPageSize",
        "getTotalPages",
        "getTotalItems",
        "getGames",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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


# instance fields
.field private final games:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
            ">;"
        }
    .end annotation
.end field

.field private final page:I

.field private final pageSize:I

.field private final totalItems:I

.field private final totalPages:I


# direct methods
.method public constructor <init>(IIIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "games"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->page:I

    .line 10
    .line 11
    iput p2, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->pageSize:I

    .line 12
    .line 13
    iput p3, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalPages:I

    .line 14
    .line 15
    iput p4, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalItems:I

    .line 16
    .line 17
    iput-object p5, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->games:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic copy$default(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;IIIILjava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;
    .locals 0

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->page:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->pageSize:I

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p7, p6, 0x4

    .line 14
    .line 15
    if-eqz p7, :cond_2

    .line 16
    .line 17
    iget p3, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalPages:I

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p7, p6, 0x8

    .line 20
    .line 21
    if-eqz p7, :cond_3

    .line 22
    .line 23
    iget p4, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalItems:I

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p6, p6, 0x10

    .line 26
    .line 27
    if-eqz p6, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->games:Ljava/util/List;

    .line 30
    .line 31
    :cond_4
    move p6, p4

    .line 32
    move-object p7, p5

    .line 33
    move p4, p2

    .line 34
    move p5, p3

    .line 35
    move-object p2, p0

    .line 36
    move p3, p1

    .line 37
    invoke-virtual/range {p2 .. p7}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->copy(IIIILjava/util/List;)Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->page:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->pageSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalPages:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalItems:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Ljava/util/List;
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
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->games:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(IIIILjava/util/List;)Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
            ">;)",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;"
        }
    .end annotation

    .line 1
    const-string v0, "games"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 7
    .line 8
    move v2, p1

    .line 9
    move v3, p2

    .line 10
    move v4, p3

    .line 11
    move v5, p4

    .line 12
    move-object v6, p5

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;-><init>(IIIILjava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 12
    .line 13
    iget v1, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->page:I

    .line 14
    .line 15
    iget v3, p1, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->page:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->pageSize:I

    .line 21
    .line 22
    iget v3, p1, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->pageSize:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalPages:I

    .line 28
    .line 29
    iget v3, p1, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalPages:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalItems:I

    .line 35
    .line 36
    iget v3, p1, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalItems:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->games:Ljava/util/List;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->games:Ljava/util/List;

    .line 44
    .line 45
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    return v0
.end method

.method public final getGames()Ljava/util/List;
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
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->games:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->page:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->pageSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTotalItems()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalItems:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTotalPages()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalPages:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->page:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget v2, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->pageSize:I

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, LE/b;->a(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalPages:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, LE/b;->a(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v2, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalItems:I

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, LE/b;->a(III)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->games:Ljava/util/List;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v1, v0

    .line 35
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->page:I

    .line 2
    .line 3
    iget v1, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->pageSize:I

    .line 4
    .line 5
    iget v2, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalPages:I

    .line 6
    .line 7
    iget v3, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->totalItems:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->games:Ljava/util/List;

    .line 10
    .line 11
    const-string v5, ", pageSize="

    .line 12
    .line 13
    const-string v6, ", totalPages="

    .line 14
    .line 15
    const-string v7, "OnlineCatalogPage(page="

    .line 16
    .line 17
    invoke-static {v7, v0, v1, v5, v6}, LE/b;->p(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", totalItems="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", games="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ")"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method
