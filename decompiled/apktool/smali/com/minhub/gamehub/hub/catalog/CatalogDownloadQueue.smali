.class public final Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 $2\u00020\u0001:\u0001$B[\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012*\u0010\u0004\u001a&\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0004\u0012\u00020\u000b0\u0005\u0012\u001a\u0008\u0002\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\r\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0018\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0007J\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J \u0010\u001a\u001a\u00020\n2\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0004\u0012\u00020\n0\u0008J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u0006J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u0007J \u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J$\u0010!\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u00072\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140\u0008H\u0002J(\u0010#\u001a\u00020\n2\u001e\u0010\"\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00130\u0008H\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u0004\u001a&\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0004\u0012\u00020\u000b0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\r\u0012\u0004\u0012\u00020\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0011\u001a\u001a\u0012\u0016\u0012\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0004\u0012\u00020\n0\u00080\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;",
        "",
        "appContext",
        "Landroid/content/Context;",
        "runDownload",
        "Lkotlin/Function3;",
        "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
        "",
        "Lkotlin/Function1;",
        "",
        "",
        "",
        "launch",
        "Lkotlin/Function0;",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;)V",
        "lock",
        "listeners",
        "",
        "",
        "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;",
        "jobs",
        "enqueue",
        "item",
        "selectedUrl",
        "getJobs",
        "observe",
        "listener",
        "jobForItem",
        "jobForUrl",
        "url",
        "runJob",
        "jobId",
        "updateJob",
        "transform",
        "updateJobs",
        "Companion",
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
        "SMAP\nCatalogDownloadQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogDownloadQueue.kt\ncom/minhub/gamehub/hub/catalog/CatalogDownloadQueue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1#2:123\n295#3:124\n1761#3,3:125\n296#3:128\n295#3,2:129\n1869#3,2:131\n827#3:133\n855#3,2:134\n1563#3:136\n1634#3,3:137\n*S KotlinDebug\n*F\n+ 1 CatalogDownloadQueue.kt\ncom/minhub/gamehub/hub/catalog/CatalogDownloadQueue\n*L\n46#1:124\n46#1:125,3\n46#1:128\n49#1:129,2\n105#1:131,2\n25#1:133\n25#1:134,2\n95#1:136\n95#1:137,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;

.field private static volatile INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private jobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;",
            ">;"
        }
    .end annotation
.end field

.field private final launch:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;",
            ">;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final runDownload:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->Companion:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "runDownload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launch"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->appContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->runDownload:Lkotlin/jvm/functions/Function3;

    .line 4
    iput-object p3, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->launch:Lkotlin/jvm/functions/Function1;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->lock:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->listeners:Ljava/util/List;

    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->jobs:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 8
    new-instance p3, LL1/d;

    const/16 p4, 0x19

    invoke-direct {p3, p4}, LL1/d;-><init>(I)V

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/Thread;

    .line 7
    .line 8
    new-instance v1, LA1/o;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-direct {v1, v2, p0}, LA1/o;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    const-string p0, "catalog-download"

    .line 15
    .line 16
    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private static final _init_$lambda$1$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->_init_$lambda$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;
    .locals 1

    .line 1
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->_init_$lambda$1$lambda$0(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->updateJob$lambda$19(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->runJob$lambda$11(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;Ljava/lang/String;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->runJob$lambda$13(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;Ljava/lang/String;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic enqueue$default(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;ILjava/lang/Object;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getZipUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->enqueue(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static final enqueue$lambda$3(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;Ljava/util/List;)Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "current"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move-object v3, v2

    .line 30
    check-cast v3, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getSelectedUrl()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getSelectedUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    sget-object v4, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->FAILED:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 51
    .line 52
    if-eq v3, v4, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method private static final enqueue$lambda$5(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->runJob(Ljava/lang/String;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static synthetic f(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->enqueue$lambda$3(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Ljava/lang/Throwable;Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->runJob$lambda$17(Ljava/lang/Throwable;Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(JLcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->runJob$lambda$14(JLcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(ILcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->runJob$lambda$13$lambda$12(ILcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->enqueue$lambda$5(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final runJob(Ljava/lang/String;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, LL1/d;

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    invoke-direct {v0, v1}, LL1/d;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->updateJob(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->runDownload:Lkotlin/jvm/functions/Function3;

    .line 12
    .line 13
    new-instance v1, LA1/H;

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    invoke-direct {v1, v2, p0, p1}, LA1/H;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p2, p3, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    new-instance p2, Lcom/minhub/gamehub/hub/catalog/e;

    .line 30
    .line 31
    invoke-direct {p2, v0, v1}, Lcom/minhub/gamehub/hub/catalog/e;-><init>(J)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->updateJob(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p2

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, " FAILED: "

    .line 52
    .line 53
    const-string v3, ": "

    .line 54
    .line 55
    const-string v4, "Job "

    .line 56
    .line 57
    invoke-static {v4, p1, v2, v0, v3}, Lkotlin/collections/unsigned/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "MinHub-Job"

    .line 69
    .line 70
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->appContext:Landroid/content/Context;

    .line 74
    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    sget-object v1, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, p3, v2}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;->detectLimit(Ljava/lang/String;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    if-eqz p3, :cond_0

    .line 88
    .line 89
    invoke-virtual {v1, v0, p3}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;->markLimited(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;)V

    .line 90
    .line 91
    .line 92
    :cond_0
    new-instance p3, LA1/p;

    .line 93
    .line 94
    const/16 v0, 0xe

    .line 95
    .line 96
    invoke-direct {p3, v0, p2}, LA1/p;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, p1, p3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->updateJob(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method private static final runJob$lambda$11(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;
    .locals 12

    .line 1
    const-string v0, "current"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v7, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->RUNNING:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getProgress()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    const/16 v10, 0x4f

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    move-object v1, p0

    .line 27
    invoke-static/range {v1 .. v11}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->copy$default(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method private static final runJob$lambda$13(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;Ljava/lang/String;I)Lkotlin/Unit;
    .locals 2

    .line 1
    new-instance v0, LT1/k;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p2, v1}, LT1/k;-><init>(II)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->updateJob(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final runJob$lambda$13$lambda$12(ILcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;
    .locals 12

    .line 1
    const-string v0, "current"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v7, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->RUNNING:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getProgress()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x63

    .line 13
    .line 14
    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    const/16 v10, 0xcf

    .line 19
    .line 20
    const/4 v11, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    move-object v1, p1

    .line 28
    invoke-static/range {v1 .. v11}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->copy$default(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method private static final runJob$lambda$14(JLcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;
    .locals 12

    .line 1
    const-string v0, "current"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v7, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->COMPLETED:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 7
    .line 8
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v8

    .line 12
    const/16 v10, 0xf

    .line 13
    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/16 v6, 0x64

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    move-object v1, p2

    .line 23
    invoke-static/range {v1 .. v11}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->copy$default(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method private static final runJob$lambda$17(Ljava/lang/Throwable;Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;
    .locals 12

    .line 1
    const-string v0, "current"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v7, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->FAILED:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v1, ": "

    .line 21
    .line 22
    invoke-static {v0, v1, p0}, Lkotlin/collections/unsigned/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    const/16 v10, 0x5f

    .line 27
    .line 28
    const/4 v11, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    move-object v1, p1

    .line 36
    invoke-static/range {v1 .. v11}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->copy$default(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method private final updateJob(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;",
            "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, LA1/H;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1, p1, p2}, LA1/H;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->updateJobs(Lkotlin/jvm/functions/Function1;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static final updateJob$lambda$19(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "current"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 46
    .line 47
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0
.end method

.method private final updateJobs(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;",
            ">;+",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->jobs:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/util/List;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->jobs:Ljava/util/List;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->listeners:Ljava/util/List;

    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v0

    .line 25
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Iterable;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit v0

    .line 58
    throw p1
.end method


# virtual methods
.method public final enqueue(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;
    .locals 12

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
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 12
    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v0, "toString(...)"

    .line 22
    .line 23
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getZipUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    sget-object v7, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->QUEUED:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 35
    .line 36
    const/16 v10, 0xc0

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    move-object v5, p2

    .line 43
    invoke-direct/range {v1 .. v11}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    new-instance p2, LA1/p;

    .line 47
    .line 48
    const/16 v0, 0xd

    .line 49
    .line 50
    invoke-direct {p2, v0, v1}, LA1/p;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->updateJobs(Lkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->appContext:Landroid/content/Context;

    .line 57
    .line 58
    if-eqz p2, :cond_0

    .line 59
    .line 60
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;->Companion:Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService$Companion;

    .line 61
    .line 62
    invoke-virtual {v0, p2}, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService$Companion;->start(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object p2, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->launch:Lkotlin/jvm/functions/Function1;

    .line 66
    .line 67
    move-object v4, v1

    .line 68
    new-instance v1, LC1/K;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    move-object v3, p0

    .line 72
    move-object v6, v5

    .line 73
    move-object v5, p1

    .line 74
    invoke-direct/range {v1 .. v6}, LC1/K;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    move-object p1, v1

    .line 78
    move-object v1, v4

    .line 79
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    return-object v1
.end method

.method public final getJobs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->jobs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public final jobForItem(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;
    .locals 6

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->getJobs()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->effectiveDownloadLinks()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lcom/minhub/gamehub/hub/catalog/DownloadLink;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/minhub/gamehub/hub/catalog/DownloadLink;->getUrl()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getSelectedUrl()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getZipUrl()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getZipUrl()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    const/4 v1, 0x0

    .line 87
    :goto_1
    check-cast v1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 88
    .line 89
    return-object v1
.end method

.method public final jobForUrl(Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;
    .locals 3

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->getJobs()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getSelectedUrl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_0
    check-cast v1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 40
    .line 41
    return-object v1
.end method

.method public final observe(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->listeners:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->jobs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0

    .line 23
    throw p1
.end method
