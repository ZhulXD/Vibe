.class public final Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u001b\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\"\u001a\u00020\nH\u00c6\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u000b\u0010$\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003Jb\u0010%\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010&J\u0013\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010*\u001a\u00020\u0008H\u00d6\u0001J\t\u0010+\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\n\n\u0002\u0010\u001b\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0011\u00a8\u0006,"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;",
        "",
        "id",
        "",
        "title",
        "zipUrl",
        "selectedUrl",
        "progress",
        "",
        "state",
        "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;",
        "importedGameId",
        "",
        "errorMessage",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "getTitle",
        "getZipUrl",
        "getSelectedUrl",
        "getProgress",
        "()I",
        "getState",
        "()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;",
        "getImportedGameId",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getErrorMessage",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final errorMessage:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final importedGameId:Ljava/lang/Long;

.field private final progress:I

.field private final selectedUrl:Ljava/lang/String;

.field private final state:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

.field private final title:Ljava/lang/String;

.field private final zipUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->id:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->title:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->zipUrl:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->selectedUrl:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->progress:I

    .line 7
    iput-object p6, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->state:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 8
    iput-object p7, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->importedGameId:Ljava/lang/Long;

    .line 9
    iput-object p8, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x40

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p7, v0

    :cond_0
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_1

    move-object p9, v0

    :goto_0
    move-object p8, p7

    move-object p7, p6

    move p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_1

    :cond_1
    move-object p9, p8

    goto :goto_0

    .line 10
    :goto_1
    invoke-direct/range {p1 .. p9}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;
    .locals 0

    .line 1
    and-int/lit8 p10, p9, 0x1

    .line 2
    .line 3
    if-eqz p10, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->id:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p10, p9, 0x2

    .line 8
    .line 9
    if-eqz p10, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->title:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p10, p9, 0x4

    .line 14
    .line 15
    if-eqz p10, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->zipUrl:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p10, p9, 0x8

    .line 20
    .line 21
    if-eqz p10, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->selectedUrl:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p10, p9, 0x10

    .line 26
    .line 27
    if-eqz p10, :cond_4

    .line 28
    .line 29
    iget p5, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->progress:I

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p10, p9, 0x20

    .line 32
    .line 33
    if-eqz p10, :cond_5

    .line 34
    .line 35
    iget-object p6, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->state:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p10, p9, 0x40

    .line 38
    .line 39
    if-eqz p10, :cond_6

    .line 40
    .line 41
    iget-object p7, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->importedGameId:Ljava/lang/Long;

    .line 42
    .line 43
    :cond_6
    and-int/lit16 p9, p9, 0x80

    .line 44
    .line 45
    if-eqz p9, :cond_7

    .line 46
    .line 47
    iget-object p8, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->errorMessage:Ljava/lang/String;

    .line 48
    .line 49
    :cond_7
    move-object p9, p7

    .line 50
    move-object p10, p8

    .line 51
    move p7, p5

    .line 52
    move-object p8, p6

    .line 53
    move-object p5, p3

    .line 54
    move-object p6, p4

    .line 55
    move-object p3, p1

    .line 56
    move-object p4, p2

    .line 57
    move-object p2, p0

    .line 58
    invoke-virtual/range {p2 .. p10}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->zipUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->selectedUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->progress:I

    .line 2
    .line 3
    return v0
.end method

.method public final component6()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->state:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->importedGameId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->errorMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;
    .locals 10

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "title"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "zipUrl"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "selectedUrl"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "state"

    .line 22
    .line 23
    move-object/from16 v7, p6

    .line 24
    .line 25
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 29
    .line 30
    move-object v2, p1

    .line 31
    move-object v3, p2

    .line 32
    move-object v4, p3

    .line 33
    move-object v5, p4

    .line 34
    move v6, p5

    .line 35
    move-object/from16 v8, p7

    .line 36
    .line 37
    move-object/from16 v9, p8

    .line 38
    .line 39
    invoke-direct/range {v1 .. v9}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
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
    instance-of v1, p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

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
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->id:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->title:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->title:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->zipUrl:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->zipUrl:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->selectedUrl:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->selectedUrl:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->progress:I

    .line 58
    .line 59
    iget v3, p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->progress:I

    .line 60
    .line 61
    if-eq v1, v3, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->state:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 65
    .line 66
    iget-object v3, p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->state:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 67
    .line 68
    if-eq v1, v3, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->importedGameId:Ljava/lang/Long;

    .line 72
    .line 73
    iget-object v3, p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->importedGameId:Ljava/lang/Long;

    .line 74
    .line 75
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->errorMessage:Ljava/lang/String;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->errorMessage:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_9

    .line 91
    .line 92
    return v2

    .line 93
    :cond_9
    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->errorMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImportedGameId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->importedGameId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->progress:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSelectedUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->selectedUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->state:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getZipUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->zipUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->title:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, LE/b;->d(Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->zipUrl:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, LE/b;->d(Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->selectedUrl:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, LE/b;->d(Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v2, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->progress:I

    .line 29
    .line 30
    invoke-static {v2, v0, v1}, LE/b;->a(III)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v2, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->state:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/2addr v2, v0

    .line 41
    mul-int/2addr v2, v1

    .line 42
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->importedGameId:Ljava/lang/Long;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    move v0, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    :goto_0
    add-int/2addr v2, v0

    .line 54
    mul-int/2addr v2, v1

    .line 55
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->errorMessage:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    :goto_1
    add-int/2addr v2, v3

    .line 65
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->id:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->title:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->zipUrl:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->selectedUrl:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->progress:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->state:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->importedGameId:Ljava/lang/Long;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->errorMessage:Ljava/lang/String;

    .line 16
    .line 17
    const-string v8, ", title="

    .line 18
    .line 19
    const-string v9, ", zipUrl="

    .line 20
    .line 21
    const-string v10, "CatalogDownloadJob(id="

    .line 22
    .line 23
    invoke-static {v10, v0, v8, v1, v9}, Lkotlin/collections/unsigned/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, ", selectedUrl="

    .line 28
    .line 29
    const-string v8, ", progress="

    .line 30
    .line 31
    invoke-static {v0, v2, v1, v3, v8}, Lkotlin/collections/unsigned/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", state="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ", importedGameId="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", errorMessage="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ")"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method
