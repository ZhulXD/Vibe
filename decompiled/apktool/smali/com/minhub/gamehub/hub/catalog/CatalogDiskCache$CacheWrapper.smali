.class final Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheWrapper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B)\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J/\u0010\u0014\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0008H\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;",
        "",
        "items",
        "",
        "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
        "savedAt",
        "",
        "etag",
        "",
        "<init>",
        "(Ljava/util/List;JLjava/lang/String;)V",
        "getItems",
        "()Ljava/util/List;",
        "getSavedAt",
        "()J",
        "getEtag",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final etag:Ljava/lang/String;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
            ">;"
        }
    .end annotation
.end field

.field private final savedAt:J


# direct methods
.method public constructor <init>(Ljava/util/List;JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->items:Ljava/util/List;

    .line 3
    iput-wide p2, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->savedAt:J

    .line 4
    iput-object p4, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->etag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;-><init>(Ljava/util/List;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;Ljava/util/List;JLjava/lang/String;ILjava/lang/Object;)Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->items:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-wide p2, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->savedAt:J

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p5, p5, 0x4

    .line 14
    .line 15
    if-eqz p5, :cond_2

    .line 16
    .line 17
    iget-object p4, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->etag:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->copy(Ljava/util/List;JLjava/lang/String;)Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
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
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->items:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->savedAt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->etag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/util/List;JLjava/lang/String;)Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
            ">;J",
            "Ljava/lang/String;",
            ")",
            "Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;"
        }
    .end annotation

    .line 1
    const-string v0, "items"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;-><init>(Ljava/util/List;JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;

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
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->items:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->items:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-wide v3, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->savedAt:J

    .line 25
    .line 26
    iget-wide v5, p1, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->savedAt:J

    .line 27
    .line 28
    cmp-long v1, v3, v5

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->etag:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->etag:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    return v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->etag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getItems()Ljava/util/List;
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
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->items:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSavedAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->savedAt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->items:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

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
    iget-wide v2, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->savedAt:J

    .line 11
    .line 12
    invoke-static {v2, v3, v0, v1}, LE/b;->c(JII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->etag:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :goto_0
    add-int/2addr v0, v1

    .line 27
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->items:Ljava/util/List;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->savedAt:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;->etag:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v5, "CacheWrapper(items="

    .line 10
    .line 11
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", savedAt="

    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", etag="

    .line 26
    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ")"

    .line 34
    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
