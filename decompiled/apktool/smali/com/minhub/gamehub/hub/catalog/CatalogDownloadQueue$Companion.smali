.class public final Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;",
        "",
        "<init>",
        "()V",
        "INSTANCE",
        "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;",
        "getInstance",
        "context",
        "Landroid/content/Context;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCatalogDownloadQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogDownloadQueue.kt\ncom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,122:1\n1#2:123\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;->getInstance$lambda$2$lambda$0(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private static final getInstance$lambda$2$lambda$0(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)J
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "selectedUrl"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onProgress"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "getApplicationContext(...)"

    .line 21
    .line 22
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, p2, p3}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->importOnlineCatalogItem(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)J

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    return-wide p0
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->access$getINSTANCE$cp()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    invoke-static {}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->access$getINSTANCE$cp()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Lcom/minhub/gamehub/hub/catalog/f;

    .line 26
    .line 27
    invoke-direct {v3, p1}, Lcom/minhub/gamehub/hub/catalog/f;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x4

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->access$setINSTANCE$cp(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    move-object v0, v1

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object p1, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit p0

    .line 45
    return-object v0

    .line 46
    :goto_1
    monitor-exit p0

    .line 47
    throw p1

    .line 48
    :cond_1
    return-object v0
.end method
